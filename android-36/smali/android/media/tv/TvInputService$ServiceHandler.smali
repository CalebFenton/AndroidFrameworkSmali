.class final Landroid/media/tv/TvInputService$ServiceHandler;
.super Landroid/os/Handler;
.source "TvInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# static fields
.field private static final greylist-max-o DO_ADD_HARDWARE_INPUT:I = 0x4

.field private static final greylist-max-o DO_ADD_HDMI_INPUT:I = 0x6

.field private static final greylist-max-o DO_CREATE_RECORDING_SESSION:I = 0x3

.field private static final greylist-max-o DO_CREATE_SESSION:I = 0x1

.field private static final greylist-max-o DO_NOTIFY_SESSION_CREATED:I = 0x2

.field private static final greylist-max-o DO_REMOVE_HARDWARE_INPUT:I = 0x5

.field private static final greylist-max-o DO_REMOVE_HDMI_INPUT:I = 0x7

.field private static final blacklist DO_UPDATE_HDMI_INPUT:I = 0x8


# instance fields
.field final synthetic blacklist this$0:Landroid/media/tv/TvInputService;


# direct methods
.method private constructor blacklist <init>(Landroid/media/tv/TvInputService;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 2882
    iput-object p1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/tv/TvInputService;Landroid/media/tv/TvInputService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/tv/TvInputService$ServiceHandler;-><init>(Landroid/media/tv/TvInputService;)V

    return-void
.end method

.method private greylist-max-o broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 8
    .param p1, "deviceId"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 2893
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2894
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_28

    .line 2896
    :try_start_d
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v2, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHardwareInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1d

    .line 2899
    goto :goto_25

    .line 2897
    :catch_1d
    move-exception v2

    .line 2898
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputService"

    const-string v4, "error in broadcastAddHardwareInput"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2894
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2901
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2902
    return-void
.end method

.method private greylist-max-o broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    .registers 8
    .param p1, "id"    # I
    .param p2, "inputInfo"    # Landroid/media/tv/TvInputInfo;

    .line 2905
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2906
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_28

    .line 2908
    :try_start_d
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v2, p1, p2}, Landroid/media/tv/ITvInputServiceCallback;->addHdmiInput(ILandroid/media/tv/TvInputInfo;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1d

    .line 2911
    goto :goto_25

    .line 2909
    :catch_1d
    move-exception v2

    .line 2910
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputService"

    const-string v4, "error in broadcastAddHdmiInput"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2906
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2913
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2914
    return-void
.end method

.method private greylist-max-o broadcastRemoveHardwareInput(Ljava/lang/String;)V
    .registers 7
    .param p1, "inputId"    # Ljava/lang/String;

    .line 2917
    iget-object v0, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 2918
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_b
    if-ge v1, v0, :cond_28

    .line 2920
    :try_start_d
    iget-object v2, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v2}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/media/tv/ITvInputServiceCallback;

    invoke-interface {v2, p1}, Landroid/media/tv/ITvInputServiceCallback;->removeHardwareInput(Ljava/lang/String;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1c} :catch_1d

    .line 2923
    goto :goto_25

    .line 2921
    :catch_1d
    move-exception v2

    .line 2922
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TvInputService"

    const-string v4, "error in broadcastRemoveHardwareInput"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2918
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2925
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v1}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmCallbacks(Landroid/media/tv/TvInputService;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2926
    return-void
.end method


# virtual methods
.method public final whitelist handleMessage(Landroid/os/Message;)V
    .registers 18
    .param p1, "msg"    # Landroid/os/Message;

    .line 2930
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const-string v3, "error in onSessionCreated"

    const/4 v4, 0x0

    const-string v5, "TvInputService"

    packed-switch v0, :pswitch_data_1a6

    .line 3071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message code: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Landroid/os/Message;->what:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3072
    return-void

    .line 3066
    :pswitch_27
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 3067
    .local v0, "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v3, v1, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v3, v0}, Landroid/media/tv/TvInputService;->onHdmiDeviceUpdated(Landroid/hardware/hdmi/HdmiDeviceInfo;)V

    .line 3068
    return-void

    .line 3058
    .end local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    :pswitch_31
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 3059
    .restart local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v3, v1, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v3, v0}, Landroid/media/tv/TvInputService;->onHdmiDeviceRemoved(Landroid/hardware/hdmi/HdmiDeviceInfo;)Ljava/lang/String;

    move-result-object v3

    .line 3060
    .local v3, "inputId":Ljava/lang/String;
    if-eqz v3, :cond_40

    .line 3061
    invoke-direct {v1, v3}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    .line 3063
    :cond_40
    return-void

    .line 3050
    .end local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v3    # "inputId":Ljava/lang/String;
    :pswitch_41
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/hdmi/HdmiDeviceInfo;

    .line 3051
    .restart local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    iget-object v3, v1, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v3, v0}, Landroid/media/tv/TvInputService;->onHdmiDeviceAdded(Landroid/hardware/hdmi/HdmiDeviceInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v3

    .line 3052
    .local v3, "inputInfo":Landroid/media/tv/TvInputInfo;
    if-eqz v3, :cond_54

    .line 3053
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getId()I

    move-result v4

    invoke-direct {v1, v4, v3}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHdmiInput(ILandroid/media/tv/TvInputInfo;)V

    .line 3055
    :cond_54
    return-void

    .line 3042
    .end local v0    # "deviceInfo":Landroid/hardware/hdmi/HdmiDeviceInfo;
    .end local v3    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :pswitch_55
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 3043
    .local v0, "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v3, v1, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v3, v0}, Landroid/media/tv/TvInputService;->onHardwareRemoved(Landroid/media/tv/TvInputHardwareInfo;)Ljava/lang/String;

    move-result-object v3

    .line 3044
    .local v3, "inputId":Ljava/lang/String;
    if-eqz v3, :cond_64

    .line 3045
    invoke-direct {v1, v3}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastRemoveHardwareInput(Ljava/lang/String;)V

    .line 3047
    :cond_64
    return-void

    .line 3034
    .end local v0    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v3    # "inputId":Ljava/lang/String;
    :pswitch_65
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/media/tv/TvInputHardwareInfo;

    .line 3035
    .restart local v0    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    iget-object v3, v1, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-virtual {v3, v0}, Landroid/media/tv/TvInputService;->onHardwareAdded(Landroid/media/tv/TvInputHardwareInfo;)Landroid/media/tv/TvInputInfo;

    move-result-object v3

    .line 3036
    .local v3, "inputInfo":Landroid/media/tv/TvInputInfo;
    if-eqz v3, :cond_78

    .line 3037
    invoke-virtual {v0}, Landroid/media/tv/TvInputHardwareInfo;->getDeviceId()I

    move-result v4

    invoke-direct {v1, v4, v3}, Landroid/media/tv/TvInputService$ServiceHandler;->broadcastAddHardwareInput(ILandroid/media/tv/TvInputInfo;)V

    .line 3039
    :cond_78
    return-void

    .line 3007
    .end local v0    # "hardwareInfo":Landroid/media/tv/TvInputHardwareInfo;
    .end local v3    # "inputInfo":Landroid/media/tv/TvInputInfo;
    :pswitch_79
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 3008
    .local v6, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/media/tv/ITvInputSessionCallback;

    .line 3009
    .local v7, "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 3010
    .local v8, "inputId":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 3011
    .local v9, "sessionId":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3012
    iget-object v0, v1, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    .line 3013
    invoke-virtual {v0, v8, v9}, Landroid/media/tv/TvInputService;->onCreateRecordingSession(Ljava/lang/String;Ljava/lang/String;)Landroid/media/tv/TvInputService$RecordingSession;

    move-result-object v10

    .line 3014
    .local v10, "recordingSessionImpl":Landroid/media/tv/TvInputService$RecordingSession;
    if-nez v10, :cond_a1

    .line 3017
    :try_start_98
    invoke-interface {v7, v4, v4}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_9b
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_9b} :catch_9c

    .line 3020
    goto :goto_a0

    .line 3018
    :catch_9c
    move-exception v0

    .line 3019
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3021
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a0
    return-void

    .line 3023
    :cond_a1
    new-instance v0, Landroid/media/tv/ITvInputSessionWrapper;

    iget-object v11, v1, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {v0, v11, v10}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$RecordingSession;)V

    move-object v11, v0

    .line 3026
    .local v11, "stub":Landroid/media/tv/ITvInputSession;
    :try_start_a9
    invoke-interface {v7, v11, v4}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_ac
    .catch Landroid/os/RemoteException; {:try_start_a9 .. :try_end_ac} :catch_ad

    .line 3029
    goto :goto_b1

    .line 3027
    :catch_ad
    move-exception v0

    .line 3028
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3030
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_b1
    invoke-static {v10, v7}, Landroid/media/tv/TvInputService$RecordingSession;->-$$Nest$minitialize(Landroid/media/tv/TvInputService$RecordingSession;Landroid/media/tv/ITvInputSessionCallback;)V

    .line 3031
    return-void

    .line 2990
    .end local v6    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v7    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v8    # "inputId":Ljava/lang/String;
    .end local v9    # "sessionId":Ljava/lang/String;
    .end local v10    # "recordingSessionImpl":Landroid/media/tv/TvInputService$RecordingSession;
    .end local v11    # "stub":Landroid/media/tv/ITvInputSession;
    :pswitch_b5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/internal/os/SomeArgs;

    .line 2991
    .local v4, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v4, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/media/tv/TvInputService$Session;

    .line 2992
    .local v6, "sessionImpl":Landroid/media/tv/TvInputService$Session;
    iget-object v0, v4, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/media/tv/ITvInputSession;

    .line 2993
    .local v7, "stub":Landroid/media/tv/ITvInputSession;
    iget-object v0, v4, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/media/tv/ITvInputSessionCallback;

    .line 2994
    .local v8, "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v0, v4, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Landroid/os/IBinder;

    .line 2996
    .local v9, "hardwareSessionToken":Landroid/os/IBinder;
    :try_start_ce
    invoke-interface {v8, v7, v9}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_ce .. :try_end_d1} :catch_d2

    .line 2999
    goto :goto_d6

    .line 2997
    :catch_d2
    move-exception v0

    .line 2998
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3000
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_d6
    if-eqz v6, :cond_db

    .line 3001
    invoke-static {v6, v8}, Landroid/media/tv/TvInputService$Session;->-$$Nest$minitialize(Landroid/media/tv/TvInputService$Session;Landroid/media/tv/ITvInputSessionCallback;)V

    .line 3003
    :cond_db
    invoke-virtual {v4}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3004
    return-void

    .line 2932
    .end local v4    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v6    # "sessionImpl":Landroid/media/tv/TvInputService$Session;
    .end local v7    # "stub":Landroid/media/tv/ITvInputSession;
    .end local v8    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    .end local v9    # "hardwareSessionToken":Landroid/os/IBinder;
    :pswitch_df
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/android/internal/os/SomeArgs;

    .line 2933
    .local v6, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Landroid/view/InputChannel;

    .line 2934
    .local v7, "channel":Landroid/view/InputChannel;
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Landroid/media/tv/ITvInputSessionCallback;

    .line 2935
    .restart local v8    # "cb":Landroid/media/tv/ITvInputSessionCallback;
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    move-object v9, v0

    check-cast v9, Ljava/lang/String;

    .line 2936
    .local v9, "inputId":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 2937
    .local v10, "sessionId":Ljava/lang/String;
    iget-object v0, v6, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    move-object v11, v0

    check-cast v11, Landroid/content/AttributionSource;

    .line 2938
    .local v11, "tvAppAttributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v6}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2939
    iget-object v0, v1, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    .line 2940
    invoke-virtual {v0, v9, v10, v11}, Landroid/media/tv/TvInputService;->onCreateSession(Ljava/lang/String;Ljava/lang/String;Landroid/content/AttributionSource;)Landroid/media/tv/TvInputService$Session;

    move-result-object v12

    .line 2941
    .local v12, "sessionImpl":Landroid/media/tv/TvInputService$Session;
    if-nez v12, :cond_111

    .line 2944
    :try_start_108
    invoke-interface {v8, v4, v4}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_10b
    .catch Landroid/os/RemoteException; {:try_start_108 .. :try_end_10b} :catch_10c

    .line 2947
    goto :goto_110

    .line 2945
    :catch_10c
    move-exception v0

    .line 2946
    .restart local v0    # "e":Landroid/os/RemoteException;
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2948
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_110
    return-void

    .line 2950
    :cond_111
    new-instance v0, Landroid/media/tv/ITvInputSessionWrapper;

    iget-object v13, v1, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-direct {v0, v13, v12, v7}, Landroid/media/tv/ITvInputSessionWrapper;-><init>(Landroid/content/Context;Landroid/media/tv/TvInputService$Session;Landroid/view/InputChannel;)V

    move-object v13, v0

    .line 2952
    .local v13, "stub":Landroid/media/tv/ITvInputSession;
    instance-of v0, v12, Landroid/media/tv/TvInputService$HardwareSession;

    if-eqz v0, :cond_189

    .line 2953
    move-object v14, v12

    check-cast v14, Landroid/media/tv/TvInputService$HardwareSession;

    .line 2955
    .local v14, "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    invoke-virtual {v14}, Landroid/media/tv/TvInputService$HardwareSession;->getHardwareInputId()Ljava/lang/String;

    move-result-object v15

    .line 2956
    .local v15, "hardwareInputId":Ljava/lang/String;
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15a

    iget-object v0, v1, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    .line 2957
    invoke-static {v0, v15}, Landroid/media/tv/TvInputService;->-$$Nest$misPassthroughInput(Landroid/media/tv/TvInputService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_133

    goto :goto_15a

    .line 2971
    :cond_133
    invoke-static {v14, v13}, Landroid/media/tv/TvInputService$HardwareSession;->-$$Nest$fputmProxySession(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSession;)V

    .line 2972
    invoke-static {v14, v8}, Landroid/media/tv/TvInputService$HardwareSession;->-$$Nest$fputmProxySessionCallback(Landroid/media/tv/TvInputService$HardwareSession;Landroid/media/tv/ITvInputSessionCallback;)V

    .line 2973
    iget-object v0, v1, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v0}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/media/tv/TvInputService$HardwareSession;->-$$Nest$fputmServiceHandler(Landroid/media/tv/TvInputService$HardwareSession;Landroid/os/Handler;)V

    .line 2974
    iget-object v0, v1, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    const-string v3, "tv_input"

    invoke-virtual {v0, v3}, Landroid/media/tv/TvInputService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/tv/TvInputManager;

    .line 2976
    .local v0, "manager":Landroid/media/tv/TvInputManager;
    invoke-static {v14}, Landroid/media/tv/TvInputService$HardwareSession;->-$$Nest$fgetmHardwareSessionCallback(Landroid/media/tv/TvInputService$HardwareSession;)Landroid/media/tv/TvInputManager$SessionCallback;

    move-result-object v3

    iget-object v4, v1, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v4}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v0, v15, v11, v3, v4}, Landroid/media/tv/TvInputManager;->createSession(Ljava/lang/String;Landroid/content/AttributionSource;Landroid/media/tv/TvInputManager$SessionCallback;Landroid/os/Handler;)V

    .line 2978
    .end local v0    # "manager":Landroid/media/tv/TvInputManager;
    .end local v14    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    .end local v15    # "hardwareInputId":Ljava/lang/String;
    goto :goto_1a4

    .line 2958
    .restart local v14    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    .restart local v15    # "hardwareInputId":Ljava/lang/String;
    :cond_15a
    :goto_15a
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_166

    .line 2959
    const-string v0, "Hardware input id is not setup yet."

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17c

    .line 2961
    :cond_166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid hardware input id : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2963
    :goto_17c
    invoke-virtual {v12}, Landroid/media/tv/TvInputService$Session;->onRelease()V

    .line 2965
    const/4 v0, 0x0

    :try_start_180
    invoke-interface {v8, v0, v0}, Landroid/media/tv/ITvInputSessionCallback;->onSessionCreated(Landroid/media/tv/ITvInputSession;Landroid/os/IBinder;)V
    :try_end_183
    .catch Landroid/os/RemoteException; {:try_start_180 .. :try_end_183} :catch_184

    .line 2968
    goto :goto_188

    .line 2966
    :catch_184
    move-exception v0

    .line 2967
    .local v0, "e":Landroid/os/RemoteException;
    invoke-static {v5, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2969
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_188
    return-void

    .line 2979
    .end local v14    # "proxySession":Landroid/media/tv/TvInputService$HardwareSession;
    .end local v15    # "hardwareInputId":Ljava/lang/String;
    :cond_189
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 2980
    .local v0, "someArgs":Lcom/android/internal/os/SomeArgs;
    iput-object v12, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 2981
    iput-object v13, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 2982
    iput-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 2983
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 2984
    iget-object v3, v1, Landroid/media/tv/TvInputService$ServiceHandler;->this$0:Landroid/media/tv/TvInputService;

    invoke-static {v3}, Landroid/media/tv/TvInputService;->-$$Nest$fgetmServiceHandler(Landroid/media/tv/TvInputService;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 2985
    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 2987
    .end local v0    # "someArgs":Lcom/android/internal/os/SomeArgs;
    :goto_1a4
    return-void

    nop

    :pswitch_data_1a6
    .packed-switch 0x1
        :pswitch_df
        :pswitch_b5
        :pswitch_79
        :pswitch_65
        :pswitch_55
        :pswitch_41
        :pswitch_31
        :pswitch_27
    .end packed-switch
.end method
