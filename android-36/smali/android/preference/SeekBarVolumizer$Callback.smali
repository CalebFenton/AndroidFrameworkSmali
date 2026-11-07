.class public interface abstract Landroid/preference/SeekBarVolumizer$Callback;
.super Ljava/lang/Object;
.source "SeekBarVolumizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/SeekBarVolumizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract greylist-max-o onMuted(ZZ)V
.end method

.method public abstract greylist-max-o onProgressChanged(Landroid/widget/SeekBar;IZ)V
.end method

.method public abstract greylist-max-o onSampleStarting(Landroid/preference/SeekBarVolumizer;)V
.end method

.method public abstract blacklist onStartTrackingTouch(Landroid/preference/SeekBarVolumizer;)V
.end method

.method public blacklist onStopTrackingTouch(Landroid/preference/SeekBarVolumizer;)V
    .registers 2
    .param p1, "sbv"    # Landroid/preference/SeekBarVolumizer;

    .line 84
    return-void
.end method
