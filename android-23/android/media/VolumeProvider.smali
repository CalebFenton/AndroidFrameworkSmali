.class public abstract Landroid/media/VolumeProvider;
.super Ljava/lang/Object;
.source "VolumeProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/VolumeProvider$Callback;
    }
.end annotation


# static fields
.field public static final VOLUME_CONTROL_ABSOLUTE:I = 0x2

.field public static final VOLUME_CONTROL_FIXED:I = 0x0

.field public static final VOLUME_CONTROL_RELATIVE:I = 0x1


# instance fields
.field private mCallback:Landroid/media/VolumeProvider$Callback;

.field private final mControlType:I

.field private mCurrentVolume:I

.field private final mMaxVolume:I


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "volumeControl"    # I
    .param p2, "maxVolume"    # I
    .param p3, "currentVolume"    # I

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 65
    iput p1, p0, Landroid/media/VolumeProvider;->mControlType:I

    #@5
    .line 66
    iput p2, p0, Landroid/media/VolumeProvider;->mMaxVolume:I

    #@7
    .line 67
    iput p3, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    #@9
    .line 64
    return-void
.end method


# virtual methods
.method public final getCurrentVolume()I
    .locals 1

    #@0
    .prologue
    .line 95
    iget v0, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    #@2
    return v0
.end method

.method public final getMaxVolume()I
    .locals 1

    #@0
    .prologue
    .line 85
    iget v0, p0, Landroid/media/VolumeProvider;->mMaxVolume:I

    #@2
    return v0
.end method

.method public final getVolumeControl()I
    .locals 1

    #@0
    .prologue
    .line 76
    iget v0, p0, Landroid/media/VolumeProvider;->mControlType:I

    #@2
    return v0
.end method

.method public onAdjustVolume(I)V
    .locals 0
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 130
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 0
    .param p1, "volume"    # I

    #@0
    .prologue
    .line 118
    return-void
.end method

.method public setCallback(Landroid/media/VolumeProvider$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/media/VolumeProvider$Callback;

    #@0
    .prologue
    .line 138
    iput-object p1, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    #@2
    .line 137
    return-void
.end method

.method public final setCurrentVolume(I)V
    .locals 1
    .param p1, "currentVolume"    # I

    #@0
    .prologue
    .line 105
    iput p1, p0, Landroid/media/VolumeProvider;->mCurrentVolume:I

    #@2
    .line 106
    iget-object v0, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 107
    iget-object v0, p0, Landroid/media/VolumeProvider;->mCallback:Landroid/media/VolumeProvider$Callback;

    #@8
    invoke-virtual {v0, p0}, Landroid/media/VolumeProvider$Callback;->onVolumeChanged(Landroid/media/VolumeProvider;)V

    #@b
    .line 104
    :cond_0
    return-void
.end method
