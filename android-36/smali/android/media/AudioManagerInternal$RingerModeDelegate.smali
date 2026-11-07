.class public interface abstract Landroid/media/AudioManagerInternal$RingerModeDelegate;
.super Ljava/lang/Object;
.source "AudioManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RingerModeDelegate"
.end annotation


# virtual methods
.method public abstract greylist-max-o canVolumeDownEnterSilent()Z
.end method

.method public abstract greylist-max-o getRingerModeAffectedStreams(I)I
.end method

.method public abstract greylist-max-o onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
.end method

.method public abstract greylist-max-o onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
.end method
