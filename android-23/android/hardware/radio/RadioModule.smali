.class public Landroid/hardware/radio/RadioModule;
.super Landroid/hardware/radio/RadioTuner;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;
    }
.end annotation


# static fields
.field static final EVENT_AF_SWITCH:I = 0x6

.field static final EVENT_ANTENNA:I = 0x2

.field static final EVENT_CONFIG:I = 0x1

.field static final EVENT_CONTROL:I = 0x64

.field static final EVENT_HW_FAILURE:I = 0x0

.field static final EVENT_METADATA:I = 0x4

.field static final EVENT_SERVER_DIED:I = 0x65

.field static final EVENT_TA:I = 0x5

.field static final EVENT_TUNED:I = 0x3


# instance fields
.field private mEventHandlerDelegate:Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;

.field private mId:I

.field private mNativeContext:J


# direct methods
.method constructor <init>(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V
    .locals 2
    .param p1, "moduleId"    # I
    .param p2, "config"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .param p3, "withAudio"    # Z
    .param p4, "callback"    # Landroid/hardware/radio/RadioTuner$Callback;
    .param p5, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Landroid/hardware/radio/RadioTuner;-><init>()V

    #@3
    .line 35
    const-wide/16 v0, 0x0

    #@5
    iput-wide v0, p0, Landroid/hardware/radio/RadioModule;->mNativeContext:J

    #@7
    .line 41
    iput p1, p0, Landroid/hardware/radio/RadioModule;->mId:I

    #@9
    .line 42
    new-instance v0, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;

    #@b
    invoke-direct {v0, p0, p4, p5}, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;-><init>(Landroid/hardware/radio/RadioModule;Landroid/hardware/radio/RadioTuner$Callback;Landroid/os/Handler;)V

    #@e
    iput-object v0, p0, Landroid/hardware/radio/RadioModule;->mEventHandlerDelegate:Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;

    #@10
    .line 43
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@12
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@15
    invoke-direct {p0, v0, p2, p3}, Landroid/hardware/radio/RadioModule;->native_setup(Ljava/lang/Object;Landroid/hardware/radio/RadioManager$BandConfig;Z)V

    #@18
    .line 40
    return-void
.end method

.method private native native_finalize()V
.end method

.method private native native_setup(Ljava/lang/Object;Landroid/hardware/radio/RadioManager$BandConfig;Z)V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .param p0, "module_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 203
    check-cast p0, Ljava/lang/ref/WeakReference;

    #@2
    .end local p0    # "module_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@5
    move-result-object v3

    #@6
    check-cast v3, Landroid/hardware/radio/RadioModule;

    #@8
    .line 204
    .local v3, "module":Landroid/hardware/radio/RadioModule;
    if-nez v3, :cond_0

    #@a
    .line 205
    return-void

    #@b
    .line 208
    :cond_0
    iget-object v0, v3, Landroid/hardware/radio/RadioModule;->mEventHandlerDelegate:Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;

    #@d
    .line 209
    .local v0, "delegate":Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;
    if-eqz v0, :cond_1

    #@f
    .line 210
    invoke-virtual {v0}, Landroid/hardware/radio/RadioModule$NativeEventHandlerDelegate;->handler()Landroid/os/Handler;

    #@12
    move-result-object v1

    #@13
    .line 211
    .local v1, "handler":Landroid/os/Handler;
    if-eqz v1, :cond_1

    #@15
    .line 212
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    #@18
    move-result-object v2

    #@19
    .line 213
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    #@1c
    .line 202
    .end local v1    # "handler":Landroid/os/Handler;
    .end local v2    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method public native cancel()I
.end method

.method public native close()V
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 50
    invoke-direct {p0}, Landroid/hardware/radio/RadioModule;->native_finalize()V

    #@3
    .line 49
    return-void
.end method

.method public native getConfiguration([Landroid/hardware/radio/RadioManager$BandConfig;)I
.end method

.method public native getMute()Z
.end method

.method public native getProgramInformation([Landroid/hardware/radio/RadioManager$ProgramInfo;)I
.end method

.method public native hasControl()Z
.end method

.method initCheck()Z
    .locals 4

    #@0
    .prologue
    .line 55
    iget-wide v0, p0, Landroid/hardware/radio/RadioModule;->mNativeContext:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public native isAntennaConnected()Z
.end method

.method public native scan(IZ)I
.end method

.method public native setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)I
.end method

.method public native setMute(Z)I
.end method

.method public native step(IZ)I
.end method

.method public native tune(II)I
.end method
