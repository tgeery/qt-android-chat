#include "player.h"
#include <QQuickView>
#include "core/Audio.h"
#include "core/Common.h"
#include "core/Instance.h"
#include "core/Media.h"
#include "core/MediaPlayer.h"
//#include "widgets/WidgetVideo.h"

Player::Player(QObject * parent) : QObject(parent)
{
    QStringList list;
    VlcInstance * instance = new VlcInstance(list, parent);
    if(instance->status())
    {
//        VlcWidgetVideo * ui = qobject_cast<VlcWidgetVideo *>(obj);
        VlcMediaPlayer * player = new VlcMediaPlayer(instance);
//        player->setVideoWidget(ui);
//        ui->setMediaPlayer(player);
        VlcMedia * media = new VlcMedia("file:///home/travis/Videos/Dead_trees.mp4", instance);
        player->open(media);
    }
    else
    {
        qDebug() << "Error Initializing VlcInstance\n";
    }
}
