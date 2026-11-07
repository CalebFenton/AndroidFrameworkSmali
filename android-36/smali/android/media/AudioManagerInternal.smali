.class public abstract Landroid/media/AudioManagerInternal;
.super Ljava/lang/Object;
.source "AudioManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioManagerInternal$RingerModeDelegate;
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist addAssistantServiceUid(II)V
.end method

.method public abstract greylist-max-o getRingerModeInternal()I
.end method

.method public abstract blacklist removeAssistantServiceUid(I)V
.end method

.method public abstract greylist-max-o setAccessibilityServiceUids(Landroid/util/IntArray;)V
.end method

.method public abstract blacklist setActiveAssistantServicesUids(Landroid/util/IntArray;)V
.end method

.method public abstract blacklist setInputMethodServiceUid(I)V
.end method

.method public abstract greylist-max-o setRingerModeDelegate(Landroid/media/AudioManagerInternal$RingerModeDelegate;)V
.end method

.method public abstract greylist-max-o setRingerModeInternal(ILjava/lang/String;)V
.end method

.method public abstract greylist-max-o silenceRingerModeInternal(Ljava/lang/String;)V
.end method

.method public abstract greylist-max-o updateRingerModeAffectedStreamsInternal()V
.end method
