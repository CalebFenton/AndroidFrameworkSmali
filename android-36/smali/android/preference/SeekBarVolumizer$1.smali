.class Landroid/preference/SeekBarVolumizer$1;
.super Landroid/media/AudioManager$VolumeGroupCallback;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;)V
    .registers 2
    .param p1, "this$0"    # Landroid/preference/SeekBarVolumizer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 94
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$1;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/media/AudioManager$VolumeGroupCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onAudioVolumeGroupChanged(II)V
    .registers 7
    .param p1, "group"    # I
    .param p2, "flags"    # I

    .line 97
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$1;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmHandler(Landroid/preference/SeekBarVolumizer;)Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_9

    .line 98
    return-void

    .line 100
    :cond_9
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 101
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 102
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 103
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$1;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmVolumeHandler(Landroid/preference/SeekBarVolumizer;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$1;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmHandler(Landroid/preference/SeekBarVolumizer;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 104
    return-void
.end method
