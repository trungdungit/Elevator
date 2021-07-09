#ifndef ELEVATOR_H
#define ELEVATOR_H

#include <QObject>
#include <iostream>
#include <thread>

#define LEVEL 6

enum eDoorState
{
    OPEN = 1,
    CLOSE,
    LOCK,
    OPENING,
    CLOSING,
};

enum eElevatorState
{
    STOP = 1,
    UP,
    DOWN
};

enum eElevatorDirection
{
    LIFT = 1,
    DROP,
    SUSPEND
};

enum eDoorButton
{
    NONE,
    OPENDOOR,
    CLOSEDOOR
};

struct ElevatorHeight
{
    ElevatorHeight():nowHeight(0), levelHigh(1000), fullLevel(LEVEL), moveSpeed(5){}
    int nowHeight;
    const int levelHigh;
    const int fullLevel;
    const int moveSpeed;
};

struct DoorWidth
{
    DoorWidth():nowWidth(0), fullWidth(1000), openSpeed(5), waitTime(100){}
    int nowWidth;
    const int fullWidth ;
    const int openSpeed ;
    const int waitTime;
};

class Elevator : public QObject
{
    Q_OBJECT
public:
    Q_PROPERTY(bool validUse READ validUse WRITE setValidUse NOTIFY validUseChanged)
    Q_PROPERTY(int elevatorX READ elevatorX WRITE setElevatorX NOTIFY elevatorXChanged)
    Q_PROPERTY(int elevatorY READ elevatorY WRITE setElevatorY NOTIFY elevatorYChanged)
    Q_PROPERTY(int width READ width WRITE setWidth NOTIFY widthChanged)
    Q_PROPERTY(int level READ level WRITE setLevel NOTIFY levelChanged)

    bool validUse() {return m_validUse;}
    void setValidUse(bool _valid);

    int elevatorX() {return m_eleX;}
    void setElevatorX(int _x);

    int elevatorY() {return m_eleY;}
    void setElevatorY(int _y);

    int width() {return m_width;}
    void setWidth(int _width);

    int level() {return m_level;}
    void setLevel(int _level);

    int height, level1, width1;

    Elevator(QObject* parent = nullptr);
    ~Elevator();

    int floorUpList[LEVEL];
    int floorDownList[LEVEL];
    int panelButtonList[LEVEL];

    enum eElevatorState elevatorState;
    enum eElevatorDirection liftDirection;
    enum eDoorState doorState;
    enum eDoorButton doorButton;

    struct ElevatorHeight elevatorHeight;
    struct DoorWidth  doorWidth;

    void elevatorThread();
    void doorThread();
    void startElevator();
    void syncDoorWidth();

    Q_INVOKABLE void addPanelList(int floor);
    Q_INVOKABLE void addPanelUpList(int floor);
    Q_INVOKABLE void addPanelDownList(int floor);

    Q_INVOKABLE void on_startBtn_clicked();
    Q_INVOKABLE void on_closeBtn_clicked();

    Q_INVOKABLE void openBtn();
    Q_INVOKABLE void closeBtn();

    void on_elevatorBtn_clicked();
    void on_leftDoor_clicked();
    void on_rightDoor_clicked();

Q_SIGNALS:
    void elevatorXChanged();
    void elevatorYChanged();
    void validUseChanged();
    void widthChanged();
    void levelChanged();

private:
    void doorClose();
    void doorLock();
    void doorOpening();
    void doorClosing();
    void doorOpen();

    void liftUp();
    void liftStop();
    void liftDown();

    bool m_validUse = false;
    int m_eleX, m_eleY, m_width, m_level;
    std::thread thread1, thread2, thread3, thread4;
};

#endif // ELEVATOR_H
