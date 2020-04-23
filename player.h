#ifndef PLAYER_H
#define PLAYER_H

#include <QObject>

class Player : public QObject
{
public:
    Player(QObject * parent = nullptr);
};

#endif // PLAYER_H
