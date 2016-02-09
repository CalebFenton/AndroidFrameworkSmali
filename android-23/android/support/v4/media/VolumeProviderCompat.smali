.class public abstract Landroid/support/v4/media/VolumeProviderCompat;
.super Ljava/lang/Object;
.source "VolumeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/VolumeProviderCompat$ControlType;,
        Landroid/support/v4/media/VolumeProviderCompat$Callback;
    }
.end annotation


# static fields
.field public static final VOLUME_CONTROL_ABSOLUTE:I = 0x2

.field public static final VOLUME_CONTROL_FIXED:I = 0x0

.field public static final VOLUME_CONTROL_RELATIVE:I = 0x1


# instance fields
.field private mCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

.field private final mControlType:I

.field private mCurrentVolume:I

.field private final mMaxVolume:I

.field private mVolumeProviderObj:Ljava/lang/Object;


# direct methods
.method public constructor <init>(III)V
    .locals 0
    .param p1, "volumeControl"    # I
    .param p2, "maxVolume"    # I
    .param p3, "currentVolume"    # I

    #@0
    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 78
    iput p1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mControlType:I

    #@5
    .line 79
    iput p2, p0, Landroid/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    #@7
    .line 80
    iput p3, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    #@9
    .line 77
    return-void
.end method


# virtual methods
.method public final getCurrentVolume()I
    .locals 1

    #@0
    .prologue
    .line 89
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    #@2
    return v0
.end method

.method public final getMaxVolume()I
    .locals 1

    #@0
    .prologue
    .line 108
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    #@2
    return v0
.end method

.method public final getVolumeControl()I
    .locals 1

    #@0
    .prologue
    .line 99
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mControlType:I

    #@2
    return v0
.end method

.method public getVolumeProvider()Ljava/lang/Object;
    .locals 4

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    #@2
    if-nez v0, :cond_0

    #@4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@6
    const/16 v1, 0x15

    #@8
    if-ge v0, v1, :cond_1

    #@a
    .line 164
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    #@c
    return-object v0

    #@d
    .line 168
    :cond_1
    iget v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mControlType:I

    #@f
    iget v1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mMaxVolume:I

    #@11
    iget v2, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    #@13
    new-instance v3, Landroid/support/v4/media/VolumeProviderCompat$1;

    #@15
    invoke-direct {v3, p0}, Landroid/support/v4/media/VolumeProviderCompat$1;-><init>(Landroid/support/v4/media/VolumeProviderCompat;)V

    #@18
    .line 167
    invoke-static {v0, v1, v2, v3}, Landroid/support/v4/media/VolumeProviderCompatApi21;->createVolumeProvider(IIILandroid/support/v4/media/VolumeProviderCompatApi21$Delegate;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    #@1e
    .line 180
    iget-object v0, p0, Landroid/support/v4/media/VolumeProviderCompat;->mVolumeProviderObj:Ljava/lang/Object;

    #@20
    return-object v0
.end method

.method public onAdjustVolume(I)V
    .locals 0
    .param p1, "direction"    # I

    #@0
    .prologue
    .line 141
    return-void
.end method

.method public onSetVolumeTo(I)V
    .locals 0
    .param p1, "volume"    # I

    #@0
    .prologue
    .line 133
    return-void
.end method

.method public setCallback(Landroid/support/v4/media/VolumeProviderCompat$Callback;)V
    .locals 0
    .param p1, "callback"    # Landroid/support/v4/media/VolumeProviderCompat$Callback;

    #@0
    .prologue
    .line 151
    iput-object p1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    #@2
    .line 150
    return-void
.end method

.method public final setCurrentVolume(I)V
    .locals 2
    .param p1, "currentVolume"    # I

    #@0
    .prologue
    .line 118
    iput p1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCurrentVolume:I

    #@2
    .line 119
    invoke-virtual {p0}, Landroid/support/v4/media/VolumeProviderCompat;->getVolumeProvider()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    .line 120
    .local v0, "volumeProviderObj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    #@8
    .line 121
    invoke-static {v0, p1}, Landroid/support/v4/media/VolumeProviderCompatApi21;->setCurrentVolume(Ljava/lang/Object;I)V

    #@b
    .line 123
    :cond_0
    iget-object v1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 124
    iget-object v1, p0, Landroid/support/v4/media/VolumeProviderCompat;->mCallback:Landroid/support/v4/media/VolumeProviderCompat$Callback;

    #@11
    invoke-virtual {v1, p0}, Landroid/support/v4/media/VolumeProviderCompat$Callback;->onVolumeChanged(Landroid/support/v4/media/VolumeProviderCompat;)V

    #@14
    .line 117
    :cond_1
    return-void
.end method
