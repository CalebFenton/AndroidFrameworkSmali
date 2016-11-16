.class Landroid/location/LocationManager$GnssStatusListenerTransport;
.super Landroid/location/IGnssStatusListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GnssStatusListenerTransport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;,
        Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;
    }
.end annotation


# static fields
.field private static final NMEA_RECEIVED:I = 0x3e8


# instance fields
.field private final mGnssCallback:Landroid/location/GnssStatus$Callback;

.field private final mGnssHandler:Landroid/os/Handler;

.field private final mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

.field private final mGpsListener:Landroid/location/GpsStatus$Listener;

.field private final mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field private final mNmeaBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;",
            ">;"
        }
    .end annotation
.end field

.field private final mOldGnssCallback:Landroid/location/GnssStatusCallback;

.field private final mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method static synthetic -get0(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatus$Callback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/OnNmeaMessageListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$NmeaListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    #@2
    return-object v0
.end method

.method static synthetic -get4(Landroid/location/LocationManager$GnssStatusListenerTransport;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get5(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssStatusCallback;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssCallback:Landroid/location/GnssStatusCallback;

    #@2
    return-object v0
.end method

.method static synthetic -get6(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GnssNmeaListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssNmeaListener;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/GnssNmeaListener;

    #@0
    .prologue
    .line 1564
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GnssNmeaListener;Landroid/os/Handler;)V

    #@4
    .line 1563
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssNmeaListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/GnssNmeaListener;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1567
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #@3
    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    #@6
    .line 1568
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    #@8
    .line 1569
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssCallback:Landroid/location/GnssStatusCallback;

    #@a
    .line 1570
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    #@c
    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    #@f
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    #@11
    .line 1571
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

    #@13
    .line 1572
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$4;

    #@15
    invoke-direct {v0, p0}, Landroid/location/LocationManager$GnssStatusListenerTransport$4;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;)V

    #@18
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    #@1a
    .line 1578
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    #@1c
    .line 1579
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    #@1e
    .line 1580
    new-instance v0, Ljava/util/ArrayList;

    #@20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@23
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    #@25
    .line 1567
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "callback"    # Landroid/location/GnssStatus$Callback;

    #@0
    .prologue
    .line 1549
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)V

    #@4
    .line 1548
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssStatus$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "callback"    # Landroid/location/GnssStatus$Callback;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1552
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #@3
    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    #@6
    .line 1553
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssCallback:Landroid/location/GnssStatusCallback;

    #@8
    .line 1554
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    #@a
    .line 1555
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    #@c
    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    #@f
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    #@11
    .line 1556
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

    #@13
    .line 1557
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    #@15
    .line 1558
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    #@17
    .line 1559
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    #@19
    .line 1560
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    #@1b
    .line 1552
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssStatusCallback;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "callback"    # Landroid/location/GnssStatusCallback;

    #@0
    .prologue
    .line 1514
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GnssStatusCallback;Landroid/os/Handler;)V

    #@4
    .line 1513
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GnssStatusCallback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "callback"    # Landroid/location/GnssStatusCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1517
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #@3
    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    #@6
    .line 1518
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssCallback:Landroid/location/GnssStatusCallback;

    #@8
    .line 1519
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$3;

    #@a
    invoke-direct {v0, p0}, Landroid/location/LocationManager$GnssStatusListenerTransport$3;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;)V

    #@d
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    #@f
    .line 1540
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    #@11
    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    #@14
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    #@16
    .line 1541
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

    #@18
    .line 1542
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    #@1a
    .line 1543
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    #@1c
    .line 1544
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    #@1e
    .line 1545
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    #@20
    .line 1517
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/GpsStatus$Listener;

    #@0
    .prologue
    .line 1459
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;Landroid/os/Handler;)V

    #@4
    .line 1458
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/GpsStatus$Listener;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1462
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #@3
    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    #@6
    .line 1463
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    #@8
    .line 1464
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    #@a
    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    #@d
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    #@f
    .line 1465
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    #@11
    .line 1466
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    #@13
    .line 1467
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssCallback:Landroid/location/GnssStatusCallback;

    #@15
    .line 1468
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$1;

    #@17
    invoke-direct {v0, p0}, Landroid/location/LocationManager$GnssStatusListenerTransport$1;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;)V

    #@1a
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    #@1c
    .line 1489
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

    #@1e
    .line 1490
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    #@20
    .line 1462
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/GpsStatus$NmeaListener;

    #@0
    .prologue
    .line 1494
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;Landroid/os/Handler;)V

    #@4
    .line 1493
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/GpsStatus$NmeaListener;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1497
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #@3
    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    #@6
    .line 1498
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    #@8
    .line 1499
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    #@a
    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    #@d
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    #@f
    .line 1500
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    #@11
    .line 1501
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    #@18
    .line 1502
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssCallback:Landroid/location/GnssStatusCallback;

    #@1a
    .line 1503
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    #@1c
    .line 1504
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

    #@1e
    .line 1505
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$2;

    #@20
    invoke-direct {v0, p0}, Landroid/location/LocationManager$GnssStatusListenerTransport$2;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;)V

    #@23
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    #@25
    .line 1497
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/OnNmeaMessageListener;

    #@0
    .prologue
    .line 1584
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)V

    #@4
    .line 1583
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/OnNmeaMessageListener;
    .param p3, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1587
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #@3
    invoke-direct {p0}, Landroid/location/IGnssStatusListener$Stub;-><init>()V

    #@6
    .line 1588
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssCallback:Landroid/location/GnssStatusCallback;

    #@8
    .line 1589
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    #@a
    .line 1590
    new-instance v0, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;

    #@c
    invoke-direct {v0, p0, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$GnssHandler;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/os/Handler;)V

    #@f
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    #@11
    .line 1591
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mOldGnssNmeaListener:Landroid/location/GnssNmeaListener;

    #@13
    .line 1592
    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    #@15
    .line 1593
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    #@17
    .line 1594
    iput-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    #@19
    .line 1595
    new-instance v0, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    #@20
    .line 1587
    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 2
    .param p1, "ttff"    # I

    #@0
    .prologue
    .line 1618
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1619
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #@6
    invoke-static {v1, p1}, Landroid/location/LocationManager;->-set1(Landroid/location/LocationManager;I)I

    #@9
    .line 1620
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@c
    move-result-object v0

    #@d
    .line 1621
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    #@e
    iput v1, v0, Landroid/os/Message;->what:I

    #@10
    .line 1622
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    #@12
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@15
    .line 1617
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGnssStarted()V
    .locals 2

    #@0
    .prologue
    .line 1600
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1601
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 1602
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@9
    iput v1, v0, Landroid/os/Message;->what:I

    #@b
    .line 1603
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    #@d
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 1599
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGnssStopped()V
    .locals 2

    #@0
    .prologue
    .line 1609
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGpsListener:Landroid/location/GpsStatus$Listener;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1610
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 1611
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    #@9
    iput v1, v0, Landroid/os/Message;->what:I

    #@b
    .line 1612
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    #@d
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 1608
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 5
    .param p1, "timestamp"    # J
    .param p3, "nmea"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v4, 0x3e8

    #@2
    .line 1642
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssNmeaListener:Landroid/location/OnNmeaMessageListener;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1643
    iget-object v2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    #@8
    monitor-enter v2

    #@9
    .line 1644
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    #@b
    new-instance v3, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;

    #@d
    invoke-direct {v3, p0, p1, p2, p3}, Landroid/location/LocationManager$GnssStatusListenerTransport$Nmea;-><init>(Landroid/location/LocationManager$GnssStatusListenerTransport;JLjava/lang/String;)V

    #@10
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 1646
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@17
    move-result-object v0

    #@18
    .line 1647
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    #@1a
    .line 1649
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    #@1c
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@1f
    .line 1650
    iget-object v1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    #@21
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@24
    .line 1641
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    #@25
    .line 1643
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1
.end method

.method public onSvStatusChanged(I[I[F[F[F)V
    .locals 9
    .param p1, "svCount"    # I
    .param p2, "prnWithFlags"    # [I
    .param p3, "cn0s"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    .line 1629
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssCallback:Landroid/location/GnssStatus$Callback;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1630
    iget-object v7, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #@7
    new-instance v0, Landroid/location/GnssStatus;

    #@9
    move v1, p1

    #@a
    move-object v2, p2

    #@b
    move-object v3, p3

    #@c
    move-object v4, p4

    #@d
    move-object v5, p5

    #@e
    invoke-direct/range {v0 .. v5}, Landroid/location/GnssStatus;-><init>(I[I[F[F[F)V

    #@11
    invoke-static {v7, v0}, Landroid/location/LocationManager;->-set0(Landroid/location/LocationManager;Landroid/location/GnssStatus;)Landroid/location/GnssStatus;

    #@14
    .line 1632
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@17
    move-result-object v6

    #@18
    .line 1633
    .local v6, "msg":Landroid/os/Message;
    iput v8, v6, Landroid/os/Message;->what:I

    #@1a
    .line 1635
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    #@1c
    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    #@1f
    .line 1636
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport;->mGnssHandler:Landroid/os/Handler;

    #@21
    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@24
    .line 1628
    .end local v6    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
