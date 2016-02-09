.class public Landroid/service/voice/VoiceInteractionService;
.super Landroid/app/Service;
.source "VoiceInteractionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VoiceInteractionService$MyHandler;,
        Landroid/service/voice/VoiceInteractionService$1;
    }
.end annotation


# static fields
.field static final MSG_LAUNCH_VOICE_ASSIST_FROM_KEYGUARD:I = 0x4

.field static final MSG_READY:I = 0x1

.field static final MSG_SHUTDOWN:I = 0x2

.field static final MSG_SOUND_MODELS_CHANGED:I = 0x3

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.service.voice.VoiceInteractionService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.voice_interaction"


# instance fields
.field mHandler:Landroid/service/voice/VoiceInteractionService$MyHandler;

.field private mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

.field mInterface:Landroid/service/voice/IVoiceInteractionService;

.field private mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

.field private final mLock:Ljava/lang/Object;

.field mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;


# direct methods
.method static synthetic -wrap0(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdownInternal()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Landroid/service/voice/VoiceInteractionService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->onSoundModelsChangedInternal()V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 72
    new-instance v0, Landroid/service/voice/VoiceInteractionService$1;

    #@5
    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$1;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    #@8
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    #@a
    .line 92
    new-instance v0, Ljava/lang/Object;

    #@c
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@f
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    #@11
    .line 53
    return-void
.end method

.method public static isActiveService(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 143
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@4
    move-result-object v2

    #@5
    .line 144
    const-string/jumbo v3, "voice_interaction_service"

    #@8
    .line 143
    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 145
    .local v0, "cur":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@e
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 146
    :cond_0
    return v4

    #@15
    .line 148
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    #@18
    move-result-object v1

    #@19
    .line 149
    .local v1, "curComp":Landroid/content/ComponentName;
    if-nez v1, :cond_2

    #@1b
    .line 150
    return v4

    #@1c
    .line 152
    :cond_2
    invoke-virtual {v1, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    #@1f
    move-result v2

    #@20
    return v2
.end method

.method private onShutdownInternal()V
    .locals 0

    #@0
    .prologue
    .line 230
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->onShutdown()V

    #@3
    .line 236
    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownHotwordDetector()V

    #@6
    .line 229
    return-void
.end method

.method private onSoundModelsChangedInternal()V
    .locals 1

    #@0
    .prologue
    .line 248
    monitor-enter p0

    #@1
    .line 249
    :try_start_0
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 251
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@7
    invoke-virtual {v0}, Landroid/service/voice/AlwaysOnHotwordDetector;->onSoundModelsChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    :cond_0
    monitor-exit p0

    #@b
    .line 247
    return-void

    #@c
    .line 248
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method

.method private safelyShutdownHotwordDetector()V
    .locals 3

    #@0
    .prologue
    .line 292
    :try_start_0
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    .line 293
    :try_start_1
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 294
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@9
    invoke-virtual {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->stopRecognition()Z

    #@c
    .line 295
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@e
    invoke-virtual {v1}, Landroid/service/voice/AlwaysOnHotwordDetector;->invalidate()V

    #@11
    .line 296
    const/4 v1, 0x0

    #@12
    iput-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    :cond_0
    :try_start_2
    monitor-exit v2

    #@15
    .line 290
    :goto_0
    return-void

    #@16
    .line 292
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    #@19
    .line 299
    :catch_0
    move-exception v0

    #@1a
    .local v0, "ex":Ljava/lang/Exception;
    goto :goto_0
.end method


# virtual methods
.method public final createAlwaysOnHotwordDetector(Ljava/lang/String;Ljava/util/Locale;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;)Landroid/service/voice/AlwaysOnHotwordDetector;
    .locals 8
    .param p1, "keyphrase"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "callback"    # Landroid/service/voice/AlwaysOnHotwordDetector$Callback;

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 270
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Not available until onReady() is called"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 272
    :cond_0
    iget-object v7, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    #@f
    monitor-enter v7

    #@10
    .line 274
    :try_start_0
    invoke-direct {p0}, Landroid/service/voice/VoiceInteractionService;->safelyShutdownHotwordDetector()V

    #@13
    .line 275
    new-instance v0, Landroid/service/voice/AlwaysOnHotwordDetector;

    #@15
    .line 276
    iget-object v4, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    #@17
    iget-object v5, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    #@19
    iget-object v6, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@1b
    move-object v1, p1

    #@1c
    move-object v2, p2

    #@1d
    move-object v3, p3

    #@1e
    .line 275
    invoke-direct/range {v0 .. v6}, Landroid/service/voice/AlwaysOnHotwordDetector;-><init>(Ljava/lang/String;Ljava/util/Locale;Landroid/service/voice/AlwaysOnHotwordDetector$Callback;Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;Landroid/service/voice/IVoiceInteractionService;Lcom/android/internal/app/IVoiceInteractionManagerService;)V

    #@21
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v7

    #@24
    .line 278
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@26
    return-object v0

    #@27
    .line 272
    :catchall_0
    move-exception v0

    #@28
    monitor-exit v7

    #@29
    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 306
    const-string/jumbo v0, "VOICE INTERACTION"

    #@3
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6
    .line 307
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mLock:Ljava/lang/Object;

    #@8
    monitor-enter v1

    #@9
    .line 308
    :try_start_0
    const-string/jumbo v0, "  AlwaysOnHotwordDetector"

    #@c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@f
    .line 309
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@11
    if-nez v0, :cond_0

    #@13
    .line 310
    const-string/jumbo v0, "    NULL"

    #@16
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    :goto_0
    monitor-exit v1

    #@1a
    .line 305
    return-void

    #@1b
    .line 312
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mHotwordDetector:Landroid/service/voice/AlwaysOnHotwordDetector;

    #@1d
    const-string/jumbo v2, "    "

    #@20
    invoke-virtual {v0, v2, p2}, Landroid/service/voice/AlwaysOnHotwordDetector;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    goto :goto_0

    #@24
    .line 307
    :catchall_0
    move-exception v0

    #@25
    monitor-exit v1

    #@26
    throw v0
.end method

.method public getDisabledShowContext()I
    .locals 2

    #@0
    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@2
    invoke-interface {v1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->getDisabledShowContext()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 175
    :catch_0
    move-exception v0

    #@8
    .line 176
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method protected final getKeyphraseEnrollmentInfo()Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;
    .locals 1

    #@0
    .prologue
    .line 287
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    #@2
    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 210
    const-string/jumbo v0, "android.service.voice.VoiceInteractionService"

    #@3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 211
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    #@f
    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionService;->asBinder()Landroid/os/IBinder;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 213
    :cond_0
    const/4 v0, 0x0

    #@15
    return-object v0
.end method

.method public onCreate()V
    .locals 1

    #@0
    .prologue
    .line 204
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    #@3
    .line 205
    new-instance v0, Landroid/service/voice/VoiceInteractionService$MyHandler;

    #@5
    invoke-direct {v0, p0}, Landroid/service/voice/VoiceInteractionService$MyHandler;-><init>(Landroid/service/voice/VoiceInteractionService;)V

    #@8
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mHandler:Landroid/service/voice/VoiceInteractionService$MyHandler;

    #@a
    .line 203
    return-void
.end method

.method public onLaunchVoiceAssistFromKeyguard()V
    .locals 0

    #@0
    .prologue
    .line 135
    return-void
.end method

.method public onReady()V
    .locals 2

    #@0
    .prologue
    .line 225
    const-string/jumbo v0, "voiceinteraction"

    #@3
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@6
    move-result-object v0

    #@7
    .line 224
    invoke-static {v0}, Lcom/android/internal/app/IVoiceInteractionManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@d
    .line 226
    new-instance v0, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    #@f
    invoke-virtual {p0}, Landroid/service/voice/VoiceInteractionService;->getPackageManager()Landroid/content/pm/PackageManager;

    #@12
    move-result-object v1

    #@13
    invoke-direct {v0, v1}, Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;-><init>(Landroid/content/pm/PackageManager;)V

    #@16
    iput-object v0, p0, Landroid/service/voice/VoiceInteractionService;->mKeyphraseEnrollmentInfo:Landroid/hardware/soundtrigger/KeyphraseEnrollmentInfo;

    #@18
    .line 223
    return-void
.end method

.method public onShutdown()V
    .locals 0

    #@0
    .prologue
    .line 244
    return-void
.end method

.method public setDisabledShowContext(I)V
    .locals 2
    .param p1, "flags"    # I

    #@0
    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@2
    invoke-interface {v1, p1}, Lcom/android/internal/app/IVoiceInteractionManagerService;->setDisabledShowContext(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 162
    :goto_0
    return-void

    #@6
    .line 165
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public showSession(Landroid/os/Bundle;I)V
    .locals 3
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 193
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 194
    new-instance v1, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v2, "Not available until onReady() is called"

    #@9
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v1

    #@d
    .line 197
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/service/voice/VoiceInteractionService;->mSystemService:Lcom/android/internal/app/IVoiceInteractionManagerService;

    #@f
    iget-object v2, p0, Landroid/service/voice/VoiceInteractionService;->mInterface:Landroid/service/voice/IVoiceInteractionService;

    #@11
    invoke-interface {v1, v2, p1, p2}, Lcom/android/internal/app/IVoiceInteractionManagerService;->showSession(Landroid/service/voice/IVoiceInteractionService;Landroid/os/Bundle;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 192
    :goto_0
    return-void

    #@15
    .line 198
    :catch_0
    move-exception v0

    #@16
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
