.class public final Landroid/media/voice/KeyphraseModelManager;
.super Ljava/lang/Object;
.source "KeyphraseModelManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist DBG:Z = false

.field private static final blacklist TAG:Ljava/lang/String; = "KeyphraseModelManager"


# instance fields
.field private final blacklist mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/app/IVoiceInteractionManagerService;)V
    .registers 2
    .param p1, "voiceInteractionManagerService"    # Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroid/media/voice/KeyphraseModelManager;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 62
    return-void
.end method


# virtual methods
.method public whitelist deleteKeyphraseSoundModel(ILjava/util/Locale;)V
    .registers 5
    .param p1, "keyphraseId"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .line 148
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :try_start_3
    iget-object v0, p0, Landroid/media/voice/KeyphraseModelManager;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 151
    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 150
    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->deleteKeyphraseSoundModel(ILjava/lang/String;)I

    move-result v0

    .line 152
    .local v0, "status":I
    if-nez v0, :cond_11

    .line 157
    .end local v0    # "status":I
    nop

    .line 158
    return-void

    .line 153
    .restart local v0    # "status":I
    :cond_11
    new-instance v1, Landroid/os/ServiceSpecificException;

    invoke-direct {v1, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .end local p0    # "this":Landroid/media/voice/KeyphraseModelManager;
    .end local p1    # "keyphraseId":I
    .end local p2    # "locale":Ljava/util/Locale;
    throw v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_17} :catch_17

    .line 155
    .end local v0    # "status":I
    .restart local p0    # "this":Landroid/media/voice/KeyphraseModelManager;
    .restart local p1    # "keyphraseId":I
    .restart local p2    # "locale":Ljava/util/Locale;
    :catch_17
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getKeyphraseSoundModel(ILjava/util/Locale;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    .registers 5
    .param p1, "keyphraseId"    # I
    .param p2, "locale"    # Ljava/util/Locale;

    .line 87
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :try_start_3
    iget-object v0, p0, Landroid/media/voice/KeyphraseModelManager;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    .line 90
    invoke-virtual {p2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getKeyphraseSoundModel(ILjava/lang/String;)Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_d} :catch_e

    return-object v0

    .line 91
    :catch_e
    move-exception v0

    .line 92
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setModelDatabaseForTestEnabled(Z)V
    .registers 4
    .param p1, "enabled"    # Z

    .line 173
    :try_start_0
    iget-object v0, p0, Landroid/media/voice/KeyphraseModelManager;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, p1, v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setModelDatabaseForTestEnabled(ZLandroid/os/IBinder;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_c

    .line 176
    nop

    .line 177
    return-void

    .line 174
    :catch_c
    move-exception v0

    .line 175
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)V
    .registers 4
    .param p1, "model"    # Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;

    .line 116
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    :try_start_3
    iget-object v0, p0, Landroid/media/voice/KeyphraseModelManager;->mVoiceInteractionManagerService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->updateKeyphraseSoundModel(Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;)I

    move-result v0

    .line 119
    .local v0, "status":I
    if-nez v0, :cond_d

    .line 124
    .end local v0    # "status":I
    nop

    .line 125
    return-void

    .line 120
    .restart local v0    # "status":I
    :cond_d
    new-instance v1, Landroid/os/ServiceSpecificException;

    invoke-direct {v1, v0}, Landroid/os/ServiceSpecificException;-><init>(I)V

    .end local p0    # "this":Landroid/media/voice/KeyphraseModelManager;
    .end local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_13} :catch_13

    .line 122
    .end local v0    # "status":I
    .restart local p0    # "this":Landroid/media/voice/KeyphraseModelManager;
    .restart local p1    # "model":Landroid/hardware/soundtrigger/SoundTrigger$KeyphraseSoundModel;
    :catch_13
    move-exception v0

    .line 123
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
