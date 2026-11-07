.class final Landroid/preference/SeekBarVolumizer$H;
.super Landroid/os/Handler;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final greylist-max-o UPDATE_SLIDER:I = 0x1


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 560
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 565
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_52

    .line 566
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmSeekBar(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_52

    .line 567
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmLastProgress(Landroid/preference/SeekBarVolumizer;I)V

    .line 568
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmLastAudibleStreamVolume(Landroid/preference/SeekBarVolumizer;I)V

    .line 569
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 570
    .local v0, "muted":Z
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmMuted(Landroid/preference/SeekBarVolumizer;)Z

    move-result v1

    if-eq v0, v1, :cond_4d

    .line 571
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1, v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fputmMuted(Landroid/preference/SeekBarVolumizer;Z)V

    .line 572
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmCallback(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 573
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmCallback(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    move-result-object v1

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmMuted(Landroid/preference/SeekBarVolumizer;)Z

    move-result v2

    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-$$Nest$misZenMuted(Landroid/preference/SeekBarVolumizer;)Z

    move-result v3

    invoke-interface {v1, v2, v3}, Landroid/preference/SeekBarVolumizer$Callback;->onMuted(ZZ)V

    .line 576
    :cond_4d
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-virtual {v1}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    .line 579
    .end local v0    # "muted":Z
    :cond_52
    return-void
.end method

.method public greylist-max-o postUpdateSlider(IIZ)V
    .registers 6
    .param p1, "volume"    # I
    .param p2, "lastAudibleVolume"    # I
    .param p3, "mute"    # Z

    .line 582
    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, p1, p2, v1}, Landroid/preference/SeekBarVolumizer$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 583
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 584
    return-void
.end method
