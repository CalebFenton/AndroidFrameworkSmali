.class Landroid/bluetooth/AudioInputControl$1;
.super Landroid/bluetooth/IAudioInputCallback$Stub;
.source "AudioInputControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/AudioInputControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/AudioInputControl;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/AudioInputControl;)V
    .registers 2
    .param p1, "this$0"    # Landroid/bluetooth/AudioInputControl;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 269
    iput-object p1, p0, Landroid/bluetooth/AudioInputControl$1;->this$0:Landroid/bluetooth/AudioInputControl;

    invoke-direct {p0}, Landroid/bluetooth/IAudioInputCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onDescriptionChanged$0(Ljava/lang/String;Landroid/bluetooth/AudioInputControl$AudioInputCallback;)V
    .registers 2
    .param p0, "description"    # Ljava/lang/String;
    .param p1, "cb"    # Landroid/bluetooth/AudioInputControl$AudioInputCallback;

    .line 273
    invoke-interface {p1, p0}, Landroid/bluetooth/AudioInputControl$AudioInputCallback;->onDescriptionChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist lambda$onSetGainModeFailed$6(Landroid/bluetooth/AudioInputControl$AudioInputCallback;)V
    .registers 1
    .param p0, "cb"    # Landroid/bluetooth/AudioInputControl$AudioInputCallback;

    .line 299
    invoke-interface {p0}, Landroid/bluetooth/AudioInputControl$AudioInputCallback;->onSetGainModeFailed()V

    return-void
.end method

.method static synthetic blacklist lambda$onSetGainSettingFailed$5(Landroid/bluetooth/AudioInputControl$AudioInputCallback;)V
    .registers 1
    .param p0, "cb"    # Landroid/bluetooth/AudioInputControl$AudioInputCallback;

    .line 293
    invoke-interface {p0}, Landroid/bluetooth/AudioInputControl$AudioInputCallback;->onSetGainSettingFailed()V

    return-void
.end method

.method static synthetic blacklist lambda$onSetMuteFailed$7(Landroid/bluetooth/AudioInputControl$AudioInputCallback;)V
    .registers 1
    .param p0, "cb"    # Landroid/bluetooth/AudioInputControl$AudioInputCallback;

    .line 305
    invoke-interface {p0}, Landroid/bluetooth/AudioInputControl$AudioInputCallback;->onSetMuteFailed()V

    return-void
.end method

.method static synthetic blacklist lambda$onStateChanged$2(ILandroid/bluetooth/AudioInputControl$AudioInputCallback;)V
    .registers 2
    .param p0, "gainSetting"    # I
    .param p1, "cb"    # Landroid/bluetooth/AudioInputControl$AudioInputCallback;

    .line 285
    invoke-interface {p1, p0}, Landroid/bluetooth/AudioInputControl$AudioInputCallback;->onGainSettingChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onStateChanged$3(ILandroid/bluetooth/AudioInputControl$AudioInputCallback;)V
    .registers 2
    .param p0, "mute"    # I
    .param p1, "cb"    # Landroid/bluetooth/AudioInputControl$AudioInputCallback;

    .line 286
    invoke-interface {p1, p0}, Landroid/bluetooth/AudioInputControl$AudioInputCallback;->onMuteChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onStateChanged$4(ILandroid/bluetooth/AudioInputControl$AudioInputCallback;)V
    .registers 2
    .param p0, "gainMode"    # I
    .param p1, "cb"    # Landroid/bluetooth/AudioInputControl$AudioInputCallback;

    .line 287
    invoke-interface {p1, p0}, Landroid/bluetooth/AudioInputControl$AudioInputCallback;->onGainModeChanged(I)V

    return-void
.end method

.method static synthetic blacklist lambda$onStatusChanged$1(ILandroid/bluetooth/AudioInputControl$AudioInputCallback;)V
    .registers 2
    .param p0, "status"    # I
    .param p1, "cb"    # Landroid/bluetooth/AudioInputControl$AudioInputCallback;

    .line 279
    invoke-interface {p1, p0}, Landroid/bluetooth/AudioInputControl$AudioInputCallback;->onAudioInputStatusChanged(I)V

    return-void
.end method


# virtual methods
.method public blacklist onDescriptionChanged(Ljava/lang/String;)V
    .registers 4
    .param p1, "description"    # Ljava/lang/String;

    .line 273
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl$1;->this$0:Landroid/bluetooth/AudioInputControl;

    invoke-static {v0}, Landroid/bluetooth/AudioInputControl;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/AudioInputControl;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda7;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 274
    return-void
.end method

.method public blacklist onSetGainModeFailed()V
    .registers 3

    .line 299
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl$1;->this$0:Landroid/bluetooth/AudioInputControl;

    invoke-static {v0}, Landroid/bluetooth/AudioInputControl;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/AudioInputControl;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 300
    return-void
.end method

.method public blacklist onSetGainSettingFailed()V
    .registers 3

    .line 293
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl$1;->this$0:Landroid/bluetooth/AudioInputControl;

    invoke-static {v0}, Landroid/bluetooth/AudioInputControl;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/AudioInputControl;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 294
    return-void
.end method

.method public blacklist onSetMuteFailed()V
    .registers 3

    .line 305
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl$1;->this$0:Landroid/bluetooth/AudioInputControl;

    invoke-static {v0}, Landroid/bluetooth/AudioInputControl;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/AudioInputControl;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 306
    return-void
.end method

.method public blacklist onStateChanged(III)V
    .registers 6
    .param p1, "gainSetting"    # I
    .param p2, "mute"    # I
    .param p3, "gainMode"    # I

    .line 285
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl$1;->this$0:Landroid/bluetooth/AudioInputControl;

    invoke-static {v0}, Landroid/bluetooth/AudioInputControl;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/AudioInputControl;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 286
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl$1;->this$0:Landroid/bluetooth/AudioInputControl;

    invoke-static {v0}, Landroid/bluetooth/AudioInputControl;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/AudioInputControl;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 287
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl$1;->this$0:Landroid/bluetooth/AudioInputControl;

    invoke-static {v0}, Landroid/bluetooth/AudioInputControl;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/AudioInputControl;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p3}, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda3;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 288
    return-void
.end method

.method public blacklist onStatusChanged(I)V
    .registers 4
    .param p1, "status"    # I

    .line 279
    iget-object v0, p0, Landroid/bluetooth/AudioInputControl$1;->this$0:Landroid/bluetooth/AudioInputControl;

    invoke-static {v0}, Landroid/bluetooth/AudioInputControl;->-$$Nest$fgetmCallbackWrapper(Landroid/bluetooth/AudioInputControl;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Landroid/bluetooth/AudioInputControl$1$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 280
    return-void
.end method
