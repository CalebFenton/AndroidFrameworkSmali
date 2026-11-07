.class Landroid/preference/SeekBarVolumizer$VolumeHandler;
.super Landroid/os/Handler;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeHandler"
.end annotation


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

    .line 702
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$VolumeHandler;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;Landroid/preference/SeekBarVolumizer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/preference/SeekBarVolumizer$VolumeHandler;-><init>(Landroid/preference/SeekBarVolumizer;)V

    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 705
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 706
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2c

    goto :goto_2b

    .line 708
    :pswitch_a
    iget-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 709
    .local v1, "group":I
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$VolumeHandler;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmVolumeGroupId(Landroid/preference/SeekBarVolumizer;)I

    move-result v2

    if-ne v2, v1, :cond_2a

    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$VolumeHandler;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$fgetmVolumeGroupId(Landroid/preference/SeekBarVolumizer;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_24

    goto :goto_2a

    .line 713
    :cond_24
    iget-object v2, p0, Landroid/preference/SeekBarVolumizer$VolumeHandler;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v2}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    goto :goto_2b

    .line 711
    :cond_2a
    :goto_2a
    return-void

    .line 716
    .end local v1    # "group":I
    :goto_2b
    return-void

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method
