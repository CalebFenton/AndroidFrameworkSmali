.class public abstract Landroid/service/voice/VoiceInteractionManagerInternal;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;,
        Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getHotwordDetectionServiceIdentity()Landroid/service/voice/VoiceInteractionManagerInternal$HotwordDetectionServiceIdentity;
.end method

.method public abstract blacklist getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;
.end method

.method public abstract blacklist hasActiveSession(Ljava/lang/String;)Z
.end method

.method public abstract blacklist onPreCreatedUserConversion(I)V
.end method

.method public abstract blacklist startListeningFromWearable(Landroid/os/ParcelFileDescriptor;Landroid/media/AudioFormat;Landroid/os/PersistableBundle;Landroid/content/ComponentName;ILandroid/service/voice/VoiceInteractionManagerInternal$WearableHotwordDetectionCallback;)V
.end method

.method public abstract blacklist startLocalVoiceInteraction(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract greylist-max-o stopLocalVoiceInteraction(Landroid/os/IBinder;)V
.end method

.method public abstract greylist-max-o supportsLocalVoiceInteraction()Z
.end method
