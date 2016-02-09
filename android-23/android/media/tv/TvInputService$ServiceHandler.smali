.class final Landroid/media/tv/TvInputService$ServiceHandler;
.super Landroid/os/Handler;
.source "TvInputService.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field private static final DO_ADD_HARDWARE_TV_INPUT:I = 0x3

.field private static final DO_ADD_HDMI_TV_INPUT:I = 0x5

.field private static final DO_CREATE_SESSION:I = 0x1

.field private static final DO_NOTIFY_SESSION_CREATED:I = 0x2

.field private static final DO_REMOVE_HARDWARE_TV_INPUT:I = 0x4

.field private static final DO_REMOVE_HDMI_TV_INPUT:I = 0x6


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputService;

    #@0
    .prologue
    .line 1588
    iput-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/media/tv/TvInputService;Landroid/media/tv/TvInputService$ServiceHandler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputService;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$ServiceHandler;-><init>(Landroid/media/tv/TvInputService;)V

    #@3
    return-void
.end method

.method private broadcastAddHardwareTvInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    #@0
    .prologue
    .line 1597
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@2
    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@9
    move-result v2

    #@a
    .line 1598
    .local v2, "n":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@d
    .line 1600
    :try_start_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@f
    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Landroid/media/tv/ITvInputServiceCallback;

    #@19
    invoke-interface {v3, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHardwareTvInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1598
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1601
    :catch_0
    move-exception v0

    #@20
    .line 1602
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputService"

    #@23
    const-string/jumbo v4, "error in broadcastAddHardwareTvInput"

    #@26
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    goto :goto_1

    #@2a
    .line 1605
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@2c
    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@33
    .line 1596
    return-void
.end method

.method private broadcastAddHdmiTvInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    #@0
    .prologue
    .line 1609
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@2
    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@9
    move-result v2

    #@a
    .line 1610
    .local v2, "n":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@d
    .line 1612
    :try_start_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@f
    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Landroid/media/tv/ITvInputServiceCallback;

    #@19
    invoke-interface {v3, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHdmiTvInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1610
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1613
    :catch_0
    move-exception v0

    #@20
    .line 1614
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputService"

    #@23
    const-string/jumbo v4, "error in broadcastAddHdmiTvInput"

    #@26
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    goto :goto_1

    #@2a
    .line 1617
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@2c
    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@33
    .line 1608
    return-void
.end method

.method private broadcastRemoveTvInput(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1621
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@2
    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    #@9
    move-result v2

    #@a
    .line 1622
    .local v2, "n":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@d
    .line 1624
    :try_start_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@f
    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    #@16
    move-result-object v3

    #@17
    check-cast v3, Landroid/media/tv/ITvInputServiceCallback;

    #@19
    invoke-interface {v3, p1}, Landroid/media/tv/ITvInputServiceCallback;->removeTvInput(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1622
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1625
    :catch_0
    move-exception v0

    #@20
    .line 1626
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputService"

    #@23
    const-string/jumbo v4, "error in broadcastRemoveTvInput"

    #@26
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    goto :goto_1

    #@2a
    .line 1629
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v3, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@2c
    invoke-static {v3}, Landroid/media/tv/TvInputService;->-get0(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    #@33
    .line 1620
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 20
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1634
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v17, v0

    #@6
    packed-switch v17, :pswitch_data_0

    #@9
    .line 1740
    const-string/jumbo v17, "TvInputService"

    #@c
    new-instance v18, Ljava/lang/StringBuilder;

    #@e
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v19, "Unhandled message code: "

    #@14
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v18

    #@18
    move-object/from16 v0, p1

    #@1a
    iget v0, v0, Landroid/os/Message;->what:I

    #@1c
    move/from16 v19, v0

    #@1e
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v18

    #@22
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v18

    #@26
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 1741
    return-void

    #@2a
    .line 1636
    :pswitch_0
    move-object/from16 v0, p1

    #@2c
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    #@30
    .line 1637
    .local v2, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@32
    check-cast v4, Landroid/view/InputChannel;

    #@34
    .line 1638
    .local v4, "channel":Landroid/view/InputChannel;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@36
    check-cast v3, Landroid/media/tv/ITvInputSessionCallback;

    #@38
    .line 1639
    .local v3, "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v10, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@3a
    check-cast v10, Ljava/lang/String;

    #@3c
    .line 1640
    .local v10, "inputId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@3f
    .line 1641
    move-object/from16 v0, p0

    #@41
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@43
    move-object/from16 v17, v0

    #@45
    move-object/from16 v0, v17

    #@47
    invoke-virtual {v0, v10}, Landroid/media/tv/TvInputService;->onCreateSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;

    #@4a
    move-result-object v14

    #@4b
    .line 1642
    .local v14, "sessionImpl":Landroid/media/tv/TvInputService$Session;
    if-nez v14, :cond_0

    #@4d
    .line 1645
    const/16 v17, 0x0

    #@4f
    const/16 v18, 0x0

    #@51
    :try_start_0
    move-object/from16 v0, v17

    #@53
    move-object/from16 v1, v18

    #@55
    invoke-interface {v3, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    .line 1649
    :goto_0
    return-void

    #@59
    .line 1646
    :catch_0
    move-exception v6

    #@5a
    .line 1647
    .local v6, "e":Landroid/os/RemoteException;
    const-string/jumbo v17, "TvInputService"

    #@5d
    const-string/jumbo v18, "error in onSessionCreated"

    #@60
    move-object/from16 v0, v17

    #@62
    move-object/from16 v1, v18

    #@64
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@67
    goto :goto_0

    #@68
    .line 1651
    .end local v6    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v16, Landroid/media/tv/ITvInputSessionWrapper;

    #@6a
    move-object/from16 v0, p0

    #@6c
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@6e
    move-object/from16 v17, v0

    #@70
    move-object/from16 v0, v16

    #@72
    move-object/from16 v1, v17

    #@74
    invoke-direct {v0, v1, v14, v4}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$Session;Landroid/view/InputChannel;)V

    #@77
    .line 1653
    .local v16, "stub":Landroid/media/tv/ITvInputSession;
    instance-of v0, v14, Landroid/media/tv/TvInputService$HardwareSession;

    #@79
    move/from16 v17, v0

    #@7b
    if-eqz v17, :cond_3

    #@7d
    move-object v13, v14

    #@7e
    .line 1655
    check-cast v13, Landroid/media/tv/TvInputService$HardwareSession;

    #@80
    .line 1656
    .local v13, "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    invoke-virtual {v13}, Landroid/media/tv/TvInputService$HardwareSession;->getHardwareInputId()Ljava/lang/String;

    #@83
    move-result-object v8

    #@84
    .line 1657
    .local v8, "hardwareInputId":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@87
    move-result v17

    #@88
    if-nez v17, :cond_1

    #@8a
    .line 1658
    move-object/from16 v0, p0

    #@8c
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@8e
    move-object/from16 v17, v0

    #@90
    move-object/from16 v0, v17

    #@92
    invoke-static {v0, v8}, Landroid/media/tv/TvInputService;->-wrap0(Landroid/media/tv/TvInputService;Ljava/lang/String;)Z

    #@95
    move-result v17

    #@96
    if-eqz v17, :cond_1

    #@98
    .line 1672
    move-object/from16 v0, v16

    #@9a
    invoke-static {v13, v0}, Landroid/media/tv/TvInputService$HardwareSession;->-set1(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    #@9d
    .line 1673
    invoke-static {v13, v3}, Landroid/media/tv/TvInputService$HardwareSession;->-set2(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSessionCallback;)Landroid/media/tv/ITvInputSessionCallback;

    #@a0
    .line 1674
    move-object/from16 v0, p0

    #@a2
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@a4
    move-object/from16 v17, v0

    #@a6
    invoke-static/range {v17 .. v17}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    #@a9
    move-result-object v17

    #@aa
    move-object/from16 v0, v17

    #@ac
    invoke-static {v13, v0}, Landroid/media/tv/TvInputService$HardwareSession;->-set3(Landroid/media/tv/TvInputService$HardwareSession;Landroid/os/Handler;)Landroid/os/Handler;

    #@af
    .line 1675
    move-object/from16 v0, p0

    #@b1
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@b3
    move-object/from16 v17, v0

    #@b5
    .line 1676
    const-string/jumbo v18, "tv_input"

    #@b8
    .line 1675
    invoke-virtual/range {v17 .. v18}, Landroid/media/tv/TvInputService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@bb
    move-result-object v12

    #@bc
    check-cast v12, Landroid/media/tv/TvInputManager;

    #@be
    .line 1678
    .local v12, "manager":Landroid/media/tv/TvInputManager;
    invoke-static {v13}, Landroid/media/tv/TvInputService$HardwareSession;->-get1(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$SessionCallback;

    #@c1
    move-result-object v17

    #@c2
    move-object/from16 v0, p0

    #@c4
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@c6
    move-object/from16 v18, v0

    #@c8
    invoke-static/range {v18 .. v18}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    #@cb
    move-result-object v18

    #@cc
    .line 1677
    move-object/from16 v0, v17

    #@ce
    move-object/from16 v1, v18

    #@d0
    invoke-virtual {v12, v8, v0, v1}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    #@d3
    .line 1688
    .end local v8    # "hardwareInputId":Ljava/lang/String;
    .end local v12    # "manager":Landroid/media/tv/TvInputManager;
    .end local v13    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    :goto_1
    return-void

    #@d4
    .line 1659
    .restart local v8    # "hardwareInputId":Ljava/lang/String;
    .restart local v13    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    :cond_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@d7
    move-result v17

    #@d8
    if-eqz v17, :cond_2

    #@da
    .line 1660
    const-string/jumbo v17, "TvInputService"

    #@dd
    const-string/jumbo v18, "Hardware input id is not setup yet."

    #@e0
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e3
    .line 1664
    :goto_2
    invoke-virtual {v14}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    #@e6
    .line 1666
    const/16 v17, 0x0

    #@e8
    const/16 v18, 0x0

    #@ea
    :try_start_1
    move-object/from16 v0, v17

    #@ec
    move-object/from16 v1, v18

    #@ee
    invoke-interface {v3, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@f1
    .line 1670
    :goto_3
    return-void

    #@f2
    .line 1662
    :cond_2
    const-string/jumbo v17, "TvInputService"

    #@f5
    new-instance v18, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    const-string/jumbo v19, "Invalid hardware input id : "

    #@fd
    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@100
    move-result-object v18

    #@101
    move-object/from16 v0, v18

    #@103
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v18

    #@107
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v18

    #@10b
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@10e
    goto :goto_2

    #@10f
    .line 1667
    :catch_1
    move-exception v6

    #@110
    .line 1668
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v17, "TvInputService"

    #@113
    const-string/jumbo v18, "error in onSessionCreated"

    #@116
    move-object/from16 v0, v17

    #@118
    move-object/from16 v1, v18

    #@11a
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@11d
    goto :goto_3

    #@11e
    .line 1680
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v8    # "hardwareInputId":Ljava/lang/String;
    .end local v13    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    :cond_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@121
    move-result-object v15

    #@122
    .line 1681
    .local v15, "someArgs":Lcom/android/internal/os/SomeArgs;
    iput-object v14, v15, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@124
    .line 1682
    move-object/from16 v0, v16

    #@126
    iput-object v0, v15, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@128
    .line 1683
    iput-object v3, v15, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@12a
    .line 1684
    const/16 v17, 0x0

    #@12c
    move-object/from16 v0, v17

    #@12e
    iput-object v0, v15, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@130
    .line 1685
    move-object/from16 v0, p0

    #@132
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@134
    move-object/from16 v17, v0

    #@136
    invoke-static/range {v17 .. v17}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    #@139
    move-result-object v17

    #@13a
    const/16 v18, 0x2

    #@13c
    move-object/from16 v0, v17

    #@13e
    move/from16 v1, v18

    #@140
    invoke-virtual {v0, v1, v15}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@143
    move-result-object v17

    #@144
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V

    #@147
    goto :goto_1

    #@148
    .line 1691
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v4    # "channel":Landroid/view/InputChannel;
    .end local v10    # "inputId":Ljava/lang/String;
    .end local v14    # "sessionImpl":Landroid/media/tv/TvInputService$Session;
    .end local v15    # "someArgs":Lcom/android/internal/os/SomeArgs;
    .end local v16    # "stub":Landroid/media/tv/ITvInputSession;
    :pswitch_1
    move-object/from16 v0, p1

    #@14a
    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@14c
    check-cast v2, Lcom/android/internal/os/SomeArgs;

    #@14e
    .line 1692
    .restart local v2    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v14, v2, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@150
    check-cast v14, Landroid/media/tv/TvInputService$Session;

    #@152
    .line 1693
    .restart local v14    # "sessionImpl":Landroid/media/tv/TvInputService$Session;
    iget-object v0, v2, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@154
    move-object/from16 v16, v0

    #@156
    check-cast v16, Landroid/media/tv/ITvInputSession;

    #@158
    .line 1694
    .restart local v16    # "stub":Landroid/media/tv/ITvInputSession;
    iget-object v3, v2, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@15a
    check-cast v3, Landroid/media/tv/ITvInputSessionCallback;

    #@15c
    .line 1695
    .restart local v3    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v9, v2, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@15e
    check-cast v9, Landroid/os/IBinder;

    #@160
    .line 1697
    .local v9, "hardwareSessionToken":Landroid/os/IBinder;
    :try_start_2
    move-object/from16 v0, v16

    #@162
    invoke-interface {v3, v0, v9}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@165
    .line 1701
    :goto_4
    if-eqz v14, :cond_4

    #@167
    .line 1702
    invoke-static {v14, v3}, Landroid/media/tv/TvInputService$Session;->-wrap0(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/ITvInputSessionCallback;)V

    #@16a
    .line 1704
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@16d
    .line 1705
    return-void

    #@16e
    .line 1698
    :catch_2
    move-exception v6

    #@16f
    .line 1699
    .restart local v6    # "e":Landroid/os/RemoteException;
    const-string/jumbo v17, "TvInputService"

    #@172
    const-string/jumbo v18, "error in onSessionCreated"

    #@175
    move-object/from16 v0, v17

    #@177
    move-object/from16 v1, v18

    #@179
    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17c
    goto :goto_4

    #@17d
    .line 1708
    .end local v2    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v3    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v6    # "e":Landroid/os/RemoteException;
    .end local v9    # "hardwareSessionToken":Landroid/os/IBinder;
    .end local v14    # "sessionImpl":Landroid/media/tv/TvInputService$Session;
    .end local v16    # "stub":Landroid/media/tv/ITvInputSession;
    :pswitch_2
    move-object/from16 v0, p1

    #@17f
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@181
    check-cast v7, Landroid/media/tv/TvInputHardwareInfo;

    #@183
    .line 1709
    .local v7, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    move-object/from16 v0, p0

    #@185
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@187
    move-object/from16 v17, v0

    #@189
    move-object/from16 v0, v17

    #@18b
    invoke-virtual {v0, v7}, Landroid/media/tv/TvInputService;->onHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo;

    #@18e
    move-result-object v11

    #@18f
    .line 1710
    .local v11, "inputInfo":Landroid/media/tv/TvInputInfo;
    if-eqz v11, :cond_5

    #@191
    .line 1711
    invoke-virtual {v7}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    #@194
    move-result v17

    #@195
    move-object/from16 v0, p0

    #@197
    move/from16 v1, v17

    #@199
    invoke-direct {v0, v1, v11}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHardwareTvInput(ILandroid/media/tv/TvInputInfo;)V

    #@19c
    .line 1713
    :cond_5
    return-void

    #@19d
    .line 1716
    .end local v7    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v11    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :pswitch_3
    move-object/from16 v0, p1

    #@19f
    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1a1
    check-cast v7, Landroid/media/tv/TvInputHardwareInfo;

    #@1a3
    .line 1717
    .restart local v7    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    move-object/from16 v0, p0

    #@1a5
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@1a7
    move-object/from16 v17, v0

    #@1a9
    move-object/from16 v0, v17

    #@1ab
    invoke-virtual {v0, v7}, Landroid/media/tv/TvInputService;->onHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    #@1ae
    move-result-object v10

    #@1af
    .line 1718
    .restart local v10    # "inputId":Ljava/lang/String;
    if-eqz v10, :cond_6

    #@1b1
    .line 1719
    move-object/from16 v0, p0

    #@1b3
    invoke-direct {v0, v10}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveTvInput(Ljava/lang/String;)V

    #@1b6
    .line 1721
    :cond_6
    return-void

    #@1b7
    .line 1724
    .end local v7    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v10    # "inputId":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p1

    #@1b9
    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1bb
    check-cast v5, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@1bd
    .line 1725
    .local v5, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    move-object/from16 v0, p0

    #@1bf
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@1c1
    move-object/from16 v17, v0

    #@1c3
    move-object/from16 v0, v17

    #@1c5
    invoke-virtual {v0, v5}, Landroid/media/tv/TvInputService;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo;

    #@1c8
    move-result-object v11

    #@1c9
    .line 1726
    .restart local v11    # "inputInfo":Landroid/media/tv/TvInputInfo;
    if-eqz v11, :cond_7

    #@1cb
    .line 1727
    invoke-virtual {v5}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    #@1ce
    move-result v17

    #@1cf
    move-object/from16 v0, p0

    #@1d1
    move/from16 v1, v17

    #@1d3
    invoke-direct {v0, v1, v11}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHdmiTvInput(ILandroid/media/tv/TvInputInfo;)V

    #@1d6
    .line 1729
    :cond_7
    return-void

    #@1d7
    .line 1732
    .end local v5    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v11    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :pswitch_5
    move-object/from16 v0, p1

    #@1d9
    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1db
    check-cast v5, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@1dd
    .line 1733
    .restart local v5    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    move-object/from16 v0, p0

    #@1df
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@1e1
    move-object/from16 v17, v0

    #@1e3
    move-object/from16 v0, v17

    #@1e5
    invoke-virtual {v0, v5}, Landroid/media/tv/TvInputService;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    #@1e8
    move-result-object v10

    #@1e9
    .line 1734
    .restart local v10    # "inputId":Ljava/lang/String;
    if-eqz v10, :cond_8

    #@1eb
    .line 1735
    move-object/from16 v0, p0

    #@1ed
    invoke-direct {v0, v10}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveTvInput(Ljava/lang/String;)V

    #@1f0
    .line 1737
    :cond_8
    return-void

    #@1f1
    .line 1634
    nop

    #@1f2
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
