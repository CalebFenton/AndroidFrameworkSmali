.class abstract Lcom/android/server/hdmi/HdmiCecFeatureAction;
.super Ljava/lang/Object;
.source "HdmiCecFeatureAction.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;,
        Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;
    }
.end annotation


# static fields
.field protected static final MSG_TIMEOUT:I = 0x64

.field protected static final STATE_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "HdmiCecFeatureAction"


# instance fields
.field protected mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

.field private mOnFinishedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            "Ljava/lang/Runnable;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/hdmi/HdmiControlService;

.field private final mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

.field protected mState:I


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1
    .param p1, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    const/4 v0, 0x0

    #@4
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    #@6
    .line 65
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@8
    .line 66
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@a
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getService()Lcom/android/server/hdmi/HdmiControlService;

    #@d
    move-result-object v0

    #@e
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@10
    .line 67
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@12
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->getServiceLooper()Landroid/os/Looper;

    #@15
    move-result-object v0

    #@16
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->createActionTimer(Landroid/os/Looper;)Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    #@1c
    .line 64
    return-void
.end method

.method private createActionTimer(Landroid/os/Looper;)Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    #@0
    .prologue
    .line 156
    new-instance v0, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimerHandler;-><init>(Lcom/android/server/hdmi/HdmiCecFeatureAction;Landroid/os/Looper;)V

    #@5
    return-object v0
.end method


# virtual methods
.method protected final addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .locals 1
    .param p1, "action"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;

    #@0
    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->addAndStartAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@5
    .line 178
    return-void
.end method

.method protected final addOnFinishedCallback(Lcom/android/server/hdmi/HdmiCecFeatureAction;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "action"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 273
    new-instance v0, Ljava/util/ArrayList;

    #@6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    #@b
    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    #@d
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@14
    .line 271
    return-void
.end method

.method protected addTimer(II)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "delayMillis"    # I

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    #@2
    int-to-long v2, p2

    #@3
    invoke-interface {v0, p1, v2, v3}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->sendTimerMessage(IJ)V

    #@6
    .line 161
    return-void
.end method

.method clear()V
    .locals 1

    #@0
    .prologue
    .line 220
    const/4 v0, 0x0

    #@1
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    #@3
    .line 222
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    #@5
    invoke-interface {v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;->clearTimerMessage()V

    #@8
    .line 219
    return-void
.end method

.method protected finish()V
    .locals 1

    #@0
    .prologue
    .line 229
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish(Z)V

    #@4
    .line 228
    return-void
.end method

.method finish(Z)V
    .locals 4
    .param p1, "removeSelf"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 233
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->clear()V

    #@4
    .line 234
    if-eqz p1, :cond_0

    #@6
    .line 235
    invoke-virtual {p0, p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@9
    .line 237
    :cond_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    #@b
    if-eqz v2, :cond_3

    #@d
    .line 238
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    #@f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "actionCallbackPair$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/util/Pair;

    #@1f
    .line 239
    .local v0, "actionCallbackPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/hdmi/HdmiCecFeatureAction;Ljava/lang/Runnable;>;"
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    #@21
    check-cast v2, Lcom/android/server/hdmi/HdmiCecFeatureAction;

    #@23
    iget v2, v2, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    #@25
    if-eqz v2, :cond_1

    #@27
    .line 240
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    #@29
    check-cast v2, Ljava/lang/Runnable;

    #@2b
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    #@2e
    goto :goto_0

    #@2f
    .line 243
    .end local v0    # "actionCallbackPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/hdmi/HdmiCecFeatureAction;Ljava/lang/Runnable;>;"
    :cond_2
    iput-object v3, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mOnFinishedCallbacks:Ljava/util/ArrayList;

    #@31
    .line 232
    .end local v1    # "actionCallbackPair$iterator":Ljava/util/Iterator;
    :cond_3
    return-void
.end method

.method protected final getActions(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 183
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getActions(Ljava/lang/Class;)Ljava/util/List;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected final getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getCecMessageCache()Lcom/android/server/hdmi/HdmiCecMessageCache;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method protected final getSourceAddress()I
    .locals 1

    #@0
    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method protected final getSourcePath()I
    .locals 1

    #@0
    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getPhysicalAddress()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method abstract handleTimerEvent(I)V
.end method

.method protected final localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;
    .locals 1

    #@0
    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2
    return-object v0
.end method

.method protected final playback()Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;
    .locals 1

    #@0
    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    #@4
    return-object v0
.end method

.method protected final pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;II)V
    .locals 2
    .param p1, "callback"    # Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;
    .param p2, "pickStrategy"    # I
    .param p3, "retryCount"    # I

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/android/server/hdmi/HdmiControlService;->pollDevices(Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;III)V

    #@9
    .line 210
    return-void
.end method

.method abstract processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
.end method

.method protected final removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .locals 1
    .param p1, "action"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;

    #@0
    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeAction(Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@5
    .line 196
    return-void
.end method

.method protected final removeAction(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 201
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, p1, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@6
    .line 200
    return-void
.end method

.method protected final removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V
    .locals 1
    .param p2, "exception"    # Lcom/android/server/hdmi/HdmiCecFeatureAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/android/server/hdmi/HdmiCecFeatureAction;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 206
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->removeActionExcept(Ljava/lang/Class;Lcom/android/server/hdmi/HdmiCecFeatureAction;)V

    #@5
    .line 205
    return-void
.end method

.method protected final sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;

    #@0
    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    #@5
    .line 169
    return-void
.end method

.method protected final sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 1
    .param p1, "cmd"    # Lcom/android/server/hdmi/HdmiCecMessage;
    .param p2, "callback"    # Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    #@0
    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mService:Lcom/android/server/hdmi/HdmiControlService;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    #@5
    .line 174
    return-void
.end method

.method protected final sendUserControlPressedAndReleased(II)V
    .locals 1
    .param p1, "targetAddress"    # I
    .param p2, "uiCommand"    # I

    #@0
    .prologue
    .line 268
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->sendUserControlPressedAndReleased(II)V

    #@5
    .line 267
    return-void
.end method

.method setActionTimer(Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;)V
    .locals 0
    .param p1, "actionTimer"    # Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    #@0
    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mActionTimer:Lcom/android/server/hdmi/HdmiCecFeatureAction$ActionTimer;

    #@2
    .line 71
    return-void
.end method

.method abstract start()Z
.end method

.method started()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 166
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method protected final tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;
    .locals 1

    #@0
    .prologue
    .line 256
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mSource:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    #@2
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    #@4
    return-object v0
.end method
