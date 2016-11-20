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
.field private static final DO_ADD_HARDWARE_INPUT:I = 0x4

.field private static final DO_ADD_HDMI_INPUT:I = 0x6

.field private static final DO_CREATE_RECORDING_SESSION:I = 0x3

.field private static final DO_CREATE_SESSION:I = 0x1

.field private static final DO_NOTIFY_SESSION_CREATED:I = 0x2

.field private static final DO_REMOVE_HARDWARE_INPUT:I = 0x5

.field private static final DO_REMOVE_HDMI_INPUT:I = 0x7


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvInputService;


# direct methods
.method private constructor <init>(Landroid/media/tv/TvInputService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/tv/TvInputService;

    #@0
    .prologue
    .line 1952
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

.method private broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5
    .param p1, "deviceId"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    #@0
    .prologue
    .line 1962
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
    .line 1963
    .local v2, "n":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@d
    .line 1965
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
    invoke-interface {v3, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1963
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1966
    :catch_0
    move-exception v0

    #@20
    .line 1967
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputService"

    #@23
    const-string/jumbo v4, "error in broadcastAddHardwareInput"

    #@26
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    goto :goto_1

    #@2a
    .line 1970
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
    .line 1961
    return-void
.end method

.method private broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .locals 5
    .param p1, "id"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    #@0
    .prologue
    .line 1974
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
    .line 1975
    .local v2, "n":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@d
    .line 1977
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
    invoke-interface {v3, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1975
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1978
    :catch_0
    move-exception v0

    #@20
    .line 1979
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputService"

    #@23
    const-string/jumbo v4, "error in broadcastAddHdmiInput"

    #@26
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    goto :goto_1

    #@2a
    .line 1982
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
    .line 1973
    return-void
.end method

.method private broadcastRemoveHardwareInput(Ljava/lang/String;)V
    .locals 5
    .param p1, "inputId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1986
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
    .line 1987
    .local v2, "n":I
    const/4 v1, 0x0

    #@b
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@d
    .line 1989
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
    invoke-interface {v3, p1}, Landroid/media/tv/ITvInputServiceCallback;->removeHardwareInput(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 1987
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1990
    :catch_0
    move-exception v0

    #@20
    .line 1991
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TvInputService"

    #@23
    const-string/jumbo v4, "error in broadcastRemoveHardwareInput"

    #@26
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@29
    goto :goto_1

    #@2a
    .line 1994
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
    .line 1985
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 22
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 1999
    move-object/from16 v0, p1

    #@2
    iget v0, v0, Landroid/os/Message;->what:I

    #@4
    move/from16 v19, v0

    #@6
    packed-switch v19, :pswitch_data_0

    #@9
    .line 2130
    const-string/jumbo v19, "TvInputService"

    #@c
    new-instance v20, Ljava/lang/StringBuilder;

    #@e
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v21, "Unhandled message code: "

    #@14
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v20

    #@18
    move-object/from16 v0, p1

    #@1a
    iget v0, v0, Landroid/os/Message;->what:I

    #@1c
    move/from16 v21, v0

    #@1e
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@21
    move-result-object v20

    #@22
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v20

    #@26
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 2131
    return-void

    #@2a
    .line 2001
    :pswitch_0
    move-object/from16 v0, p1

    #@2c
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@2e
    check-cast v3, Lcom/android/internal/os/SomeArgs;

    #@30
    .line 2002
    .local v3, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v5, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@32
    check-cast v5, Landroid/view/InputChannel;

    #@34
    .line 2003
    .local v5, "channel":Landroid/view/InputChannel;
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@36
    check-cast v4, Landroid/media/tv/ITvInputSessionCallback;

    #@38
    .line 2004
    .local v4, "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v11, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@3a
    check-cast v11, Ljava/lang/String;

    #@3c
    .line 2005
    .local v11, "inputId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@3f
    .line 2006
    move-object/from16 v0, p0

    #@41
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@43
    move-object/from16 v19, v0

    #@45
    move-object/from16 v0, v19

    #@47
    invoke-virtual {v0, v11}, Landroid/media/tv/TvInputService;->onCreateSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$Session;

    #@4a
    move-result-object v16

    #@4b
    .line 2007
    .local v16, "sessionImpl":Landroid/media/tv/TvInputService$Session;
    if-nez v16, :cond_0

    #@4d
    .line 2010
    const/16 v19, 0x0

    #@4f
    const/16 v20, 0x0

    #@51
    :try_start_0
    move-object/from16 v0, v19

    #@53
    move-object/from16 v1, v20

    #@55
    invoke-interface {v4, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@58
    .line 2014
    :goto_0
    return-void

    #@59
    .line 2011
    :catch_0
    move-exception v7

    #@5a
    .line 2012
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v19, "TvInputService"

    #@5d
    const-string/jumbo v20, "error in onSessionCreated"

    #@60
    move-object/from16 v0, v19

    #@62
    move-object/from16 v1, v20

    #@64
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@67
    goto :goto_0

    #@68
    .line 2016
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v18, Landroid/media/tv/ITvInputSessionWrapper;

    #@6a
    move-object/from16 v0, p0

    #@6c
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@6e
    move-object/from16 v19, v0

    #@70
    move-object/from16 v0, v18

    #@72
    move-object/from16 v1, v19

    #@74
    move-object/from16 v2, v16

    #@76
    invoke-direct {v0, v1, v2, v5}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$Session;Landroid/view/InputChannel;)V

    #@79
    .line 2018
    .local v18, "stub":Landroid/media/tv/ITvInputSession;
    move-object/from16 v0, v16

    #@7b
    instance-of v0, v0, Landroid/media/tv/TvInputService$HardwareSession;

    #@7d
    move/from16 v19, v0

    #@7f
    if-eqz v19, :cond_3

    #@81
    move-object/from16 v14, v16

    #@83
    .line 2020
    check-cast v14, Landroid/media/tv/TvInputService$HardwareSession;

    #@85
    .line 2021
    .local v14, "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    invoke-virtual {v14}, Landroid/media/tv/TvInputService$HardwareSession;->getHardwareInputId()Ljava/lang/String;

    #@88
    move-result-object v9

    #@89
    .line 2022
    .local v9, "hardwareInputId":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@8c
    move-result v19

    #@8d
    if-nez v19, :cond_1

    #@8f
    .line 2023
    move-object/from16 v0, p0

    #@91
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@93
    move-object/from16 v19, v0

    #@95
    move-object/from16 v0, v19

    #@97
    invoke-static {v0, v9}, Landroid/media/tv/TvInputService;->-wrap0(Landroid/media/tv/TvInputService;Ljava/lang/String;)Z

    #@9a
    move-result v19

    #@9b
    if-eqz v19, :cond_1

    #@9d
    .line 2037
    move-object/from16 v0, v18

    #@9f
    invoke-static {v14, v0}, Landroid/media/tv/TvInputService$HardwareSession;->-set1(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSession;)Landroid/media/tv/ITvInputSession;

    #@a2
    .line 2038
    invoke-static {v14, v4}, Landroid/media/tv/TvInputService$HardwareSession;->-set2(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSessionCallback;)Landroid/media/tv/ITvInputSessionCallback;

    #@a5
    .line 2039
    move-object/from16 v0, p0

    #@a7
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@a9
    move-object/from16 v19, v0

    #@ab
    invoke-static/range {v19 .. v19}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    #@ae
    move-result-object v19

    #@af
    move-object/from16 v0, v19

    #@b1
    invoke-static {v14, v0}, Landroid/media/tv/TvInputService$HardwareSession;->-set3(Landroid/media/tv/TvInputService$HardwareSession;Landroid/os/Handler;)Landroid/os/Handler;

    #@b4
    .line 2040
    move-object/from16 v0, p0

    #@b6
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@b8
    move-object/from16 v19, v0

    #@ba
    .line 2041
    const-string/jumbo v20, "tv_input"

    #@bd
    .line 2040
    invoke-virtual/range {v19 .. v20}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@c0
    move-result-object v13

    #@c1
    check-cast v13, Landroid/media/tv/TvInputManager;

    #@c3
    .line 2043
    .local v13, "manager":Landroid/media/tv/TvInputManager;
    invoke-static {v14}, Landroid/media/tv/TvInputService$HardwareSession;->-get1(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$SessionCallback;

    #@c6
    move-result-object v19

    #@c7
    move-object/from16 v0, p0

    #@c9
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@cb
    move-object/from16 v20, v0

    #@cd
    invoke-static/range {v20 .. v20}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    #@d0
    move-result-object v20

    #@d1
    .line 2042
    move-object/from16 v0, v19

    #@d3
    move-object/from16 v1, v20

    #@d5
    invoke-virtual {v13, v9, v0, v1}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    #@d8
    .line 2053
    .end local v9    # "hardwareInputId":Ljava/lang/String;
    .end local v13    # "manager":Landroid/media/tv/TvInputManager;
    .end local v14    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    :goto_1
    return-void

    #@d9
    .line 2024
    .restart local v9    # "hardwareInputId":Ljava/lang/String;
    .restart local v14    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@dc
    move-result v19

    #@dd
    if-eqz v19, :cond_2

    #@df
    .line 2025
    const-string/jumbo v19, "TvInputService"

    #@e2
    const-string/jumbo v20, "Hardware input id is not setup yet."

    #@e5
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e8
    .line 2029
    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    #@eb
    .line 2031
    const/16 v19, 0x0

    #@ed
    const/16 v20, 0x0

    #@ef
    :try_start_1
    move-object/from16 v0, v19

    #@f1
    move-object/from16 v1, v20

    #@f3
    invoke-interface {v4, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@f6
    .line 2035
    :goto_3
    return-void

    #@f7
    .line 2027
    :cond_2
    const-string/jumbo v19, "TvInputService"

    #@fa
    new-instance v20, Ljava/lang/StringBuilder;

    #@fc
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@ff
    const-string/jumbo v21, "Invalid hardware input id : "

    #@102
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@105
    move-result-object v20

    #@106
    move-object/from16 v0, v20

    #@108
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10b
    move-result-object v20

    #@10c
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10f
    move-result-object v20

    #@110
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@113
    goto :goto_2

    #@114
    .line 2032
    :catch_1
    move-exception v7

    #@115
    .line 2033
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string/jumbo v19, "TvInputService"

    #@118
    const-string/jumbo v20, "error in onSessionCreated"

    #@11b
    move-object/from16 v0, v19

    #@11d
    move-object/from16 v1, v20

    #@11f
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@122
    goto :goto_3

    #@123
    .line 2045
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v9    # "hardwareInputId":Ljava/lang/String;
    .end local v14    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    :cond_3
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    #@126
    move-result-object v17

    #@127
    .line 2046
    .local v17, "someArgs":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, v16

    #@129
    move-object/from16 v1, v17

    #@12b
    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@12d
    .line 2047
    move-object/from16 v0, v18

    #@12f
    move-object/from16 v1, v17

    #@131
    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@133
    .line 2048
    move-object/from16 v0, v17

    #@135
    iput-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@137
    .line 2049
    const/16 v19, 0x0

    #@139
    move-object/from16 v0, v19

    #@13b
    move-object/from16 v1, v17

    #@13d
    iput-object v0, v1, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@13f
    .line 2050
    move-object/from16 v0, p0

    #@141
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@143
    move-object/from16 v19, v0

    #@145
    invoke-static/range {v19 .. v19}, Landroid/media/tv/TvInputService;->-get1(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    #@148
    move-result-object v19

    #@149
    const/16 v20, 0x2

    #@14b
    move-object/from16 v0, v19

    #@14d
    move/from16 v1, v20

    #@14f
    move-object/from16 v2, v17

    #@151
    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@154
    move-result-object v19

    #@155
    invoke-virtual/range {v19 .. v19}, Landroid/os/Message;->sendToTarget()V

    #@158
    goto :goto_1

    #@159
    .line 2056
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v5    # "channel":Landroid/view/InputChannel;
    .end local v11    # "inputId":Ljava/lang/String;
    .end local v16    # "sessionImpl":Landroid/media/tv/TvInputService$Session;
    .end local v17    # "someArgs":Lcom/android/internal/os/SomeArgs;
    .end local v18    # "stub":Landroid/media/tv/ITvInputSession;
    :pswitch_1
    move-object/from16 v0, p1

    #@15b
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@15d
    check-cast v3, Lcom/android/internal/os/SomeArgs;

    #@15f
    .line 2057
    .restart local v3    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@161
    move-object/from16 v16, v0

    #@163
    check-cast v16, Landroid/media/tv/TvInputService$Session;

    #@165
    .line 2058
    .restart local v16    # "sessionImpl":Landroid/media/tv/TvInputService$Session;
    iget-object v0, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@167
    move-object/from16 v18, v0

    #@169
    check-cast v18, Landroid/media/tv/ITvInputSession;

    #@16b
    .line 2059
    .restart local v18    # "stub":Landroid/media/tv/ITvInputSession;
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    #@16d
    check-cast v4, Landroid/media/tv/ITvInputSessionCallback;

    #@16f
    .line 2060
    .restart local v4    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v10, v3, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    #@171
    check-cast v10, Landroid/os/IBinder;

    #@173
    .line 2062
    .local v10, "hardwareSessionToken":Landroid/os/IBinder;
    :try_start_2
    move-object/from16 v0, v18

    #@175
    invoke-interface {v4, v0, v10}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@178
    .line 2066
    :goto_4
    if-eqz v16, :cond_4

    #@17a
    .line 2067
    move-object/from16 v0, v16

    #@17c
    invoke-static {v0, v4}, Landroid/media/tv/TvInputService$Session;->-wrap0(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/ITvInputSessionCallback;)V

    #@17f
    .line 2069
    :cond_4
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@182
    .line 2070
    return-void

    #@183
    .line 2063
    :catch_2
    move-exception v7

    #@184
    .line 2064
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string/jumbo v19, "TvInputService"

    #@187
    const-string/jumbo v20, "error in onSessionCreated"

    #@18a
    move-object/from16 v0, v19

    #@18c
    move-object/from16 v1, v20

    #@18e
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@191
    goto :goto_4

    #@192
    .line 2073
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v10    # "hardwareSessionToken":Landroid/os/IBinder;
    .end local v16    # "sessionImpl":Landroid/media/tv/TvInputService$Session;
    .end local v18    # "stub":Landroid/media/tv/ITvInputSession;
    :pswitch_2
    move-object/from16 v0, p1

    #@194
    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@196
    check-cast v3, Lcom/android/internal/os/SomeArgs;

    #@198
    .line 2074
    .restart local v3    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v4, v3, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    #@19a
    check-cast v4, Landroid/media/tv/ITvInputSessionCallback;

    #@19c
    .line 2075
    .restart local v4    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v11, v3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    #@19e
    check-cast v11, Ljava/lang/String;

    #@1a0
    .line 2076
    .restart local v11    # "inputId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/os/SomeArgs;->recycle()V

    #@1a3
    .line 2077
    move-object/from16 v0, p0

    #@1a5
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@1a7
    move-object/from16 v19, v0

    #@1a9
    move-object/from16 v0, v19

    #@1ab
    invoke-virtual {v0, v11}, Landroid/media/tv/TvInputService;->onCreateRecordingSession(Ljava/lang/String;)Landroid/media/tv/TvInputService$RecordingSession;

    #@1ae
    move-result-object v15

    #@1af
    .line 2078
    .local v15, "recordingSessionImpl":Landroid/media/tv/TvInputService$RecordingSession;
    if-nez v15, :cond_5

    #@1b1
    .line 2081
    const/16 v19, 0x0

    #@1b3
    const/16 v20, 0x0

    #@1b5
    :try_start_3
    move-object/from16 v0, v19

    #@1b7
    move-object/from16 v1, v20

    #@1b9
    invoke-interface {v4, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    #@1bc
    .line 2085
    :goto_5
    return-void

    #@1bd
    .line 2082
    :catch_3
    move-exception v7

    #@1be
    .line 2083
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string/jumbo v19, "TvInputService"

    #@1c1
    const-string/jumbo v20, "error in onSessionCreated"

    #@1c4
    move-object/from16 v0, v19

    #@1c6
    move-object/from16 v1, v20

    #@1c8
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1cb
    goto :goto_5

    #@1cc
    .line 2087
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_5
    new-instance v18, Landroid/media/tv/ITvInputSessionWrapper;

    #@1ce
    move-object/from16 v0, p0

    #@1d0
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@1d2
    move-object/from16 v19, v0

    #@1d4
    move-object/from16 v0, v18

    #@1d6
    move-object/from16 v1, v19

    #@1d8
    invoke-direct {v0, v1, v15}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$RecordingSession;)V

    #@1db
    .line 2090
    .restart local v18    # "stub":Landroid/media/tv/ITvInputSession;
    const/16 v19, 0x0

    #@1dd
    :try_start_4
    move-object/from16 v0, v18

    #@1df
    move-object/from16 v1, v19

    #@1e1
    invoke-interface {v4, v0, v1}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    #@1e4
    .line 2094
    :goto_6
    invoke-static {v15, v4}, Landroid/media/tv/TvInputService$RecordingSession;->-wrap0(Landroid/media/tv/TvInputService$RecordingSession;Landroid/media/tv/ITvInputSessionCallback;)V

    #@1e7
    .line 2095
    return-void

    #@1e8
    .line 2091
    :catch_4
    move-exception v7

    #@1e9
    .line 2092
    .restart local v7    # "e":Landroid/os/RemoteException;
    const-string/jumbo v19, "TvInputService"

    #@1ec
    const-string/jumbo v20, "error in onSessionCreated"

    #@1ef
    move-object/from16 v0, v19

    #@1f1
    move-object/from16 v1, v20

    #@1f3
    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1f6
    goto :goto_6

    #@1f7
    .line 2098
    .end local v3    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v4    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v7    # "e":Landroid/os/RemoteException;
    .end local v11    # "inputId":Ljava/lang/String;
    .end local v15    # "recordingSessionImpl":Landroid/media/tv/TvInputService$RecordingSession;
    .end local v18    # "stub":Landroid/media/tv/ITvInputSession;
    :pswitch_3
    move-object/from16 v0, p1

    #@1f9
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@1fb
    check-cast v8, Landroid/media/tv/TvInputHardwareInfo;

    #@1fd
    .line 2099
    .local v8, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    move-object/from16 v0, p0

    #@1ff
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@201
    move-object/from16 v19, v0

    #@203
    move-object/from16 v0, v19

    #@205
    invoke-virtual {v0, v8}, Landroid/media/tv/TvInputService;->onHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo;

    #@208
    move-result-object v12

    #@209
    .line 2100
    .local v12, "inputInfo":Landroid/media/tv/TvInputInfo;
    if-eqz v12, :cond_6

    #@20b
    .line 2101
    invoke-virtual {v8}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    #@20e
    move-result v19

    #@20f
    move-object/from16 v0, p0

    #@211
    move/from16 v1, v19

    #@213
    invoke-direct {v0, v1, v12}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V

    #@216
    .line 2103
    :cond_6
    return-void

    #@217
    .line 2106
    .end local v8    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v12    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :pswitch_4
    move-object/from16 v0, p1

    #@219
    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@21b
    check-cast v8, Landroid/media/tv/TvInputHardwareInfo;

    #@21d
    .line 2107
    .restart local v8    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    move-object/from16 v0, p0

    #@21f
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@221
    move-object/from16 v19, v0

    #@223
    move-object/from16 v0, v19

    #@225
    invoke-virtual {v0, v8}, Landroid/media/tv/TvInputService;->onHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    #@228
    move-result-object v11

    #@229
    .line 2108
    .restart local v11    # "inputId":Ljava/lang/String;
    if-eqz v11, :cond_7

    #@22b
    .line 2109
    move-object/from16 v0, p0

    #@22d
    invoke-direct {v0, v11}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    #@230
    .line 2111
    :cond_7
    return-void

    #@231
    .line 2114
    .end local v8    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v11    # "inputId":Ljava/lang/String;
    :pswitch_5
    move-object/from16 v0, p1

    #@233
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@235
    check-cast v6, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@237
    .line 2115
    .local v6, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    move-object/from16 v0, p0

    #@239
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@23b
    move-object/from16 v19, v0

    #@23d
    move-object/from16 v0, v19

    #@23f
    invoke-virtual {v0, v6}, Landroid/media/tv/TvInputService;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo;

    #@242
    move-result-object v12

    #@243
    .line 2116
    .restart local v12    # "inputInfo":Landroid/media/tv/TvInputInfo;
    if-eqz v12, :cond_8

    #@245
    .line 2117
    invoke-virtual {v6}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    #@248
    move-result v19

    #@249
    move-object/from16 v0, p0

    #@24b
    move/from16 v1, v19

    #@24d
    invoke-direct {v0, v1, v12}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V

    #@250
    .line 2119
    :cond_8
    return-void

    #@251
    .line 2122
    .end local v6    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v12    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :pswitch_6
    move-object/from16 v0, p1

    #@253
    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    #@255
    check-cast v6, Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@257
    .line 2123
    .restart local v6    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    move-object/from16 v0, p0

    #@259
    iget-object v0, v0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    #@25b
    move-object/from16 v19, v0

    #@25d
    move-object/from16 v0, v19

    #@25f
    invoke-virtual {v0, v6}, Landroid/media/tv/TvInputService;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    #@262
    move-result-object v11

    #@263
    .line 2124
    .restart local v11    # "inputId":Ljava/lang/String;
    if-eqz v11, :cond_9

    #@265
    .line 2125
    move-object/from16 v0, p0

    #@267
    invoke-direct {v0, v11}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    #@26a
    .line 2127
    :cond_9
    return-void

    #@26b
    .line 1999
    nop

    #@26c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
