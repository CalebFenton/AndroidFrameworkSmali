.class final Landroid/preference/SeekBarVolumizer$Observer;
.super Landroid/database/ContentObserver;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Observer"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/preference/SeekBarVolumizer;


# direct methods
.method public constructor blacklist <init>(Landroid/preference/SeekBarVolumizer;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 597
    iput-object p1, p0, Landroid/preference/SeekBarVolumizer$Observer;->this$0:Landroid/preference/SeekBarVolumizer;

    .line 598
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 599
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 603
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 604
    iget-object v0, p0, Landroid/preference/SeekBarVolumizer$Observer;->this$0:Landroid/preference/SeekBarVolumizer;

    invoke-static {v0}, Landroid/preference/SeekBarVolumizer;->-$$Nest$mupdateSlider(Landroid/preference/SeekBarVolumizer;)V

    .line 605
    return-void
.end method
