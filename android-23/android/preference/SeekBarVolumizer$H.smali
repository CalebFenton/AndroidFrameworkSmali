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
.field private static final UPDATE_SLIDER:I = 0x1


# instance fields
.field final synthetic this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method private constructor <init>(Landroid/preference/SeekBarVolumizer;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/SeekBarVolumizer;

    #@0
    .prologue
    .line 328
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    #@2
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer$H;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/SeekBarVolumizer;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$H;-><init>(Landroid/preference/SeekBarVolumizer;)V

    #@3
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    .line 333
    iget v1, p1, Landroid/os/Message;->what:I

    #@2
    const/4 v2, 0x1

    #@3
    if-ne v1, v2, :cond_1

    #@5
    .line 334
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    #@7
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get8(Landroid/preference/SeekBarVolumizer;)Landroid/widget/SeekBar;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_1

    #@d
    .line 335
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    #@f
    iget v2, p1, Landroid/os/Message;->arg1:I

    #@11
    invoke-static {v1, v2}, Landroid/preference/SeekBarVolumizer;->-set1(Landroid/preference/SeekBarVolumizer;I)I

    #@14
    .line 336
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    #@16
    iget v2, p1, Landroid/os/Message;->arg2:I

    #@18
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    #@1b
    move-result v2

    #@1c
    invoke-static {v1, v2}, Landroid/preference/SeekBarVolumizer;->-set0(Landroid/preference/SeekBarVolumizer;I)I

    #@1f
    .line 337
    iget v1, p1, Landroid/os/Message;->arg2:I

    #@21
    if-gez v1, :cond_2

    #@23
    const/4 v0, 0x1

    #@24
    .line 338
    .local v0, "muted":Z
    :goto_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    #@26
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get5(Landroid/preference/SeekBarVolumizer;)Z

    #@29
    move-result v1

    #@2a
    if-eq v0, v1, :cond_0

    #@2c
    .line 339
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    #@2e
    invoke-static {v1, v0}, Landroid/preference/SeekBarVolumizer;->-set2(Landroid/preference/SeekBarVolumizer;Z)Z

    #@31
    .line 340
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    #@33
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get2(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    #@36
    move-result-object v1

    #@37
    if-eqz v1, :cond_0

    #@39
    .line 341
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    #@3b
    invoke-static {v1}, Landroid/preference/SeekBarVolumizer;->-get2(Landroid/preference/SeekBarVolumizer;)Landroid/preference/SeekBarVolumizer$Callback;

    #@3e
    move-result-object v1

    #@3f
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    #@41
    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-get5(Landroid/preference/SeekBarVolumizer;)Z

    #@44
    move-result v2

    #@45
    iget-object v3, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    #@47
    invoke-static {v3}, Landroid/preference/SeekBarVolumizer;->-wrap1(Landroid/preference/SeekBarVolumizer;)Z

    #@4a
    move-result v3

    #@4b
    invoke-interface {v1, v2, v3}, Landroid/preference/SeekBarVolumizer$Callback;->onMuted(ZZ)V

    #@4e
    .line 344
    :cond_0
    iget-object v1, p0, Landroid/preference/SeekBarVolumizer$H;->this$0:Landroid/preference/SeekBarVolumizer;

    #@50
    invoke-virtual {v1}, Landroid/preference/SeekBarVolumizer;->updateSeekBar()V

    #@53
    .line 332
    .end local v0    # "muted":Z
    :cond_1
    return-void

    #@54
    .line 337
    :cond_2
    const/4 v0, 0x0

    #@55
    .restart local v0    # "muted":Z
    goto :goto_0
.end method

.method public postUpdateSlider(IIZ)V
    .locals 3
    .param p1, "volume"    # I
    .param p2, "lastAudibleVolume"    # I
    .param p3, "mute"    # Z

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 350
    if-eqz p3, :cond_0

    #@3
    const/4 v1, -0x1

    #@4
    :goto_0
    mul-int v0, p2, v1

    #@6
    .line 351
    .local v0, "arg2":I
    invoke-virtual {p0, v2, p1, v0}, Landroid/preference/SeekBarVolumizer$H;->obtainMessage(III)Landroid/os/Message;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    #@d
    .line 349
    return-void

    #@e
    .end local v0    # "arg2":I
    :cond_0
    move v1, v2

    #@f
    .line 350
    goto :goto_0
.end method
