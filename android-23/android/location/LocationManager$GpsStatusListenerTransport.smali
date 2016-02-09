.class Landroid/location/LocationManager$GpsStatusListenerTransport;
.super Landroid/location/IGpsStatusListener$Stub;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/location/LocationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GpsStatusListenerTransport"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;,
        Landroid/location/LocationManager$GpsStatusListenerTransport$1;
    }
.end annotation


# static fields
.field private static final NMEA_RECEIVED:I = 0x3e8


# instance fields
.field private final mGpsHandler:Landroid/os/Handler;

.field private final mListener:Landroid/location/GpsStatus$Listener;

.field private mNmeaBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;",
            ">;"
        }
    .end annotation
.end field

.field private final mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

.field final synthetic this$0:Landroid/location/LocationManager;


# direct methods
.method static synthetic -get0(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$Listener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/location/LocationManager$GpsStatusListenerTransport;)Ljava/util/ArrayList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/location/LocationManager$GpsStatusListenerTransport;)Landroid/location/GpsStatus$NmeaListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    #@2
    return-object v0
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/GpsStatus$Listener;

    #@0
    .prologue
    .line 1412
    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #@2
    invoke-direct {p0}, Landroid/location/IGpsStatusListener$Stub;-><init>()V

    #@5
    .line 1481
    new-instance v0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;

    #@7
    invoke-direct {v0, p0}, Landroid/location/LocationManager$GpsStatusListenerTransport$1;-><init>(Landroid/location/LocationManager$GpsStatusListenerTransport;)V

    #@a
    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    #@c
    .line 1413
    iput-object p2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    #@e
    .line 1414
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    #@11
    .line 1412
    return-void
.end method

.method constructor <init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$NmeaListener;)V
    .locals 1
    .param p1, "this$0"    # Landroid/location/LocationManager;
    .param p2, "listener"    # Landroid/location/GpsStatus$NmeaListener;

    #@0
    .prologue
    .line 1417
    iput-object p1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #@2
    invoke-direct {p0}, Landroid/location/IGpsStatusListener$Stub;-><init>()V

    #@5
    .line 1481
    new-instance v0, Landroid/location/LocationManager$GpsStatusListenerTransport$1;

    #@7
    invoke-direct {v0, p0}, Landroid/location/LocationManager$GpsStatusListenerTransport$1;-><init>(Landroid/location/LocationManager$GpsStatusListenerTransport;)V

    #@a
    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    #@c
    .line 1418
    iput-object p2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    #@e
    .line 1419
    const/4 v0, 0x0

    #@f
    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    #@11
    .line 1420
    new-instance v0, Ljava/util/ArrayList;

    #@13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    #@18
    .line 1417
    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 2
    .param p1, "ttff"    # I

    #@0
    .prologue
    .line 1443
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1444
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #@6
    invoke-static {v1}, Landroid/location/LocationManager;->-get0(Landroid/location/LocationManager;)Landroid/location/GpsStatus;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1, p1}, Landroid/location/GpsStatus;->setTimeToFirstFix(I)V

    #@d
    .line 1445
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@10
    move-result-object v0

    #@11
    .line 1446
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x3

    #@12
    iput v1, v0, Landroid/os/Message;->what:I

    #@14
    .line 1447
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    #@16
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@19
    .line 1442
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGpsStarted()V
    .locals 2

    #@0
    .prologue
    .line 1425
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1426
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 1427
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    #@9
    iput v1, v0, Landroid/os/Message;->what:I

    #@b
    .line 1428
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    #@d
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 1424
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method public onGpsStopped()V
    .locals 2

    #@0
    .prologue
    .line 1434
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1435
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@7
    move-result-object v0

    #@8
    .line 1436
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x2

    #@9
    iput v1, v0, Landroid/os/Message;->what:I

    #@b
    .line 1437
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    #@d
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@10
    .line 1433
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
    .line 1469
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaListener:Landroid/location/GpsStatus$NmeaListener;

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 1470
    iget-object v2, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    #@8
    monitor-enter v2

    #@9
    .line 1471
    :try_start_0
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mNmeaBuffer:Ljava/util/ArrayList;

    #@b
    new-instance v3, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;

    #@d
    invoke-direct {v3, p0, p1, p2, p3}, Landroid/location/LocationManager$GpsStatusListenerTransport$Nmea;-><init>(Landroid/location/LocationManager$GpsStatusListenerTransport;JLjava/lang/String;)V

    #@10
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    monitor-exit v2

    #@14
    .line 1473
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@17
    move-result-object v0

    #@18
    .line 1474
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    #@1a
    .line 1476
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    #@1c
    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@1f
    .line 1477
    iget-object v1, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    #@21
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@24
    .line 1468
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void

    #@25
    .line 1470
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1
.end method

.method public onSvStatusChanged(I[I[F[F[FIII)V
    .locals 10
    .param p1, "svCount"    # I
    .param p2, "prns"    # [I
    .param p3, "snrs"    # [F
    .param p4, "elevations"    # [F
    .param p5, "azimuths"    # [F
    .param p6, "ephemerisMask"    # I
    .param p7, "almanacMask"    # I
    .param p8, "usedInFixMask"    # I

    #@0
    .prologue
    .line 1455
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mListener:Landroid/location/GpsStatus$Listener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1456
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->this$0:Landroid/location/LocationManager;

    #@6
    invoke-static {v0}, Landroid/location/LocationManager;->-get0(Landroid/location/LocationManager;)Landroid/location/GpsStatus;

    #@9
    move-result-object v0

    #@a
    move v1, p1

    #@b
    move-object v2, p2

    #@c
    move-object v3, p3

    #@d
    move-object v4, p4

    #@e
    move-object v5, p5

    #@f
    move/from16 v6, p6

    #@11
    move/from16 v7, p7

    #@13
    move/from16 v8, p8

    #@15
    invoke-virtual/range {v0 .. v8}, Landroid/location/GpsStatus;->setStatus(I[I[F[F[FIII)V

    #@18
    .line 1459
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    #@1b
    move-result-object v9

    #@1c
    .line 1460
    .local v9, "msg":Landroid/os/Message;
    const/4 v0, 0x4

    #@1d
    iput v0, v9, Landroid/os/Message;->what:I

    #@1f
    .line 1462
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    #@21
    const/4 v1, 0x4

    #@22
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    #@25
    .line 1463
    iget-object v0, p0, Landroid/location/LocationManager$GpsStatusListenerTransport;->mGpsHandler:Landroid/os/Handler;

    #@27
    invoke-virtual {v0, v9}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@2a
    .line 1454
    .end local v9    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method
