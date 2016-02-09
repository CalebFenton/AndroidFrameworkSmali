.class Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;
.super Ljava/lang/Object;
.source "VoiceInteractionManagerServiceImpl.java"

# interfaces
.implements Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;,
        Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;
    }
.end annotation


# static fields
.field static final CLOSE_REASON_VOICE_INTERACTION:Ljava/lang/String; = "voiceinteraction"

.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceManager"


# instance fields
.field mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

.field final mAm:Landroid/app/IActivityManager;

.field mBound:Z

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mComponent:Landroid/content/ComponentName;

.field final mConnection:Landroid/content/ServiceConnection;

.field final mContext:Landroid/content/Context;

.field mDisabledShowContext:I

.field final mHandler:Landroid/os/Handler;

.field final mIWindowManager:Landroid/view/IWindowManager;

.field final mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

.field final mLock:Ljava/lang/Object;

.field mService:Landroid/service/voice/IVoiceInteractionService;

.field final mSessionComponentName:Landroid/content/ComponentName;

.field final mUser:I

.field final mValid:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;ILandroid/content/ComponentName;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "lock"    # Ljava/lang/Object;
    .param p4, "userHandle"    # I
    .param p5, "service"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 64
    iput-boolean v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    #@7
    .line 70
    new-instance v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;

    #@9
    invoke-direct {v3, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    #@c
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@e
    .line 89
    new-instance v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;

    #@10
    invoke-direct {v3, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;)V

    #@13
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mConnection:Landroid/content/ServiceConnection;

    #@15
    .line 109
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    #@17
    .line 110
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    #@19
    .line 111
    iput-object p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mLock:Ljava/lang/Object;

    #@1b
    .line 112
    iput p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    #@1d
    .line 113
    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    #@1f
    .line 114
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@22
    move-result-object v3

    #@23
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAm:Landroid/app/IActivityManager;

    #@25
    .line 117
    :try_start_0
    new-instance v2, Landroid/service/voice/VoiceInteractionServiceInfo;

    #@27
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@2a
    move-result-object v3

    #@2b
    invoke-direct {v2, v3, p5}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 126
    .local v2, "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@30
    .line 127
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@32
    invoke-virtual {v3}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    #@35
    move-result-object v3

    #@36
    if-eqz v3, :cond_0

    #@38
    .line 128
    const-string/jumbo v3, "VoiceInteractionServiceManager"

    #@3b
    new-instance v4, Ljava/lang/StringBuilder;

    #@3d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@40
    const-string/jumbo v5, "Bad voice interaction service: "

    #@43
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v4

    #@47
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@49
    invoke-virtual {v5}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@58
    .line 129
    iput-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    #@5a
    .line 130
    iput-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mIWindowManager:Landroid/view/IWindowManager;

    #@5c
    .line 131
    iput-boolean v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    #@5e
    .line 132
    return-void

    #@5f
    .line 118
    .end local v2    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :catch_0
    move-exception v0

    #@60
    .line 119
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "VoiceInteractionServiceManager"

    #@63
    new-instance v4, Ljava/lang/StringBuilder;

    #@65
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@68
    const-string/jumbo v5, "Voice interaction service not found: "

    #@6b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v4

    #@6f
    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v4

    #@73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@76
    move-result-object v4

    #@77
    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7a
    .line 120
    iput-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@7c
    .line 121
    iput-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    #@7e
    .line 122
    iput-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mIWindowManager:Landroid/view/IWindowManager;

    #@80
    .line 123
    iput-boolean v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    #@82
    .line 124
    return-void

    #@83
    .line 134
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "info":Landroid/service/voice/VoiceInteractionServiceInfo;
    :cond_0
    const/4 v3, 0x1

    #@84
    iput-boolean v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    #@86
    .line 135
    new-instance v3, Landroid/content/ComponentName;

    #@88
    invoke-virtual {p5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@8b
    move-result-object v4

    #@8c
    .line 136
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@8e
    invoke-virtual {v5}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSessionService()Ljava/lang/String;

    #@91
    move-result-object v5

    #@92
    .line 135
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@95
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    #@97
    .line 138
    const-string/jumbo v3, "window"

    #@9a
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@9d
    move-result-object v3

    #@9e
    .line 137
    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@a1
    move-result-object v3

    #@a2
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mIWindowManager:Landroid/view/IWindowManager;

    #@a4
    .line 139
    new-instance v1, Landroid/content/IntentFilter;

    #@a6
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    #@a9
    .line 140
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    #@ac
    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    #@af
    .line 141
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    #@b1
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@b3
    invoke-virtual {v3, v4, v1, v6, p2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    #@b6
    .line 108
    return-void
.end method


# virtual methods
.method public closeSystemDialogsLocked(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@6
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    #@8
    if-eq p1, v1, :cond_1

    #@a
    .line 208
    :cond_0
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    #@d
    const-string/jumbo v2, "closeSystemDialogs does not match active session"

    #@10
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 209
    return-void

    #@14
    .line 211
    :cond_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAm:Landroid/app/IActivityManager;

    #@16
    const-string/jumbo v2, "voiceinteraction"

    #@19
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 205
    return-void

    #@1d
    .line 212
    :catch_0
    move-exception v0

    #@1e
    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@20
    const-string/jumbo v2, "Unexpected remote error"

    #@23
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@26
    throw v1
.end method

.method public deliverNewSessionLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    #@0
    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@6
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    #@8
    if-eq p1, v0, :cond_1

    #@a
    .line 164
    :cond_0
    const-string/jumbo v0, "VoiceInteractionServiceManager"

    #@d
    const-string/jumbo v1, "deliverNewSession does not match active session"

    #@10
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 165
    const/4 v0, 0x0

    #@14
    return v0

    #@15
    .line 167
    :cond_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@17
    invoke-virtual {v0, p2, p3}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverNewSessionLocked(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z

    #@1a
    .line 168
    const/4 v0, 0x1

    #@1b
    return v0
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    #@2
    if-nez v0, :cond_1

    #@4
    .line 255
    const-string/jumbo v0, "  NOT VALID: "

    #@7
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@a
    .line 256
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@c
    if-nez v0, :cond_0

    #@e
    .line 257
    const-string/jumbo v0, "no info"

    #@11
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@14
    .line 261
    :goto_0
    return-void

    #@15
    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@17
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getParseError()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    goto :goto_0

    #@1f
    .line 263
    :cond_1
    const-string/jumbo v0, "  mComponent="

    #@22
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    #@27
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2e
    .line 264
    const-string/jumbo v0, "  Session service="

    #@31
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@34
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@36
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSessionService()Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3d
    .line 265
    const-string/jumbo v0, "  Settings activity="

    #@40
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@45
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    #@48
    move-result-object v0

    #@49
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@4c
    .line 266
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    #@4e
    if-eqz v0, :cond_2

    #@50
    .line 267
    const-string/jumbo v0, "  mDisabledShowContext="

    #@53
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@56
    .line 268
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    #@58
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@5b
    move-result-object v0

    #@5c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@5f
    .line 270
    :cond_2
    const-string/jumbo v0, "  mBound="

    #@62
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    #@67
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    #@6a
    const-string/jumbo v0, " mService="

    #@6d
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@70
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@72
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@75
    .line 271
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@77
    if-eqz v0, :cond_3

    #@79
    .line 272
    const-string/jumbo v0, "  Active session:"

    #@7c
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@7f
    .line 273
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@81
    const-string/jumbo v1, "    "

    #@84
    invoke-virtual {v0, v1, p2}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    #@87
    .line 253
    :cond_3
    return-void
.end method

.method public finishLocked(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 218
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@7
    iget-object v0, v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    #@9
    if-eq p1, v0, :cond_1

    #@b
    .line 219
    :cond_0
    const-string/jumbo v0, "VoiceInteractionServiceManager"

    #@e
    const-string/jumbo v1, "finish does not match active session"

    #@11
    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@14
    .line 220
    return-void

    #@15
    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@17
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->cancelLocked()V

    #@1a
    .line 223
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@1c
    .line 217
    return-void
.end method

.method public getDisabledShowContextLocked(I)I
    .locals 4
    .param p1, "callingUid"    # I

    #@0
    .prologue
    .line 236
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@2
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@5
    move-result-object v1

    #@6
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@a
    .line 237
    .local v0, "activeUid":I
    if-eq p1, v0, :cond_0

    #@c
    .line 238
    new-instance v1, Ljava/lang/SecurityException;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Calling uid "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    .line 239
    const-string/jumbo v3, " does not match active uid "

    #@21
    .line 238
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 241
    :cond_0
    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    #@33
    return v1
.end method

.method public getUserDisabledShowContextLocked(I)I
    .locals 4
    .param p1, "callingUid"    # I

    #@0
    .prologue
    .line 245
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@2
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@5
    move-result-object v1

    #@6
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@a
    .line 246
    .local v0, "activeUid":I
    if-eq p1, v0, :cond_0

    #@c
    .line 247
    new-instance v1, Ljava/lang/SecurityException;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Calling uid "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    .line 248
    const-string/jumbo v3, " does not match active uid "

    #@21
    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 250
    :cond_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@33
    if-eqz v1, :cond_1

    #@35
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@37
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getUserDisabledShowContextLocked()I

    #@3a
    move-result v1

    #@3b
    :goto_0
    return v1

    #@3c
    :cond_1
    const/4 v1, 0x0

    #@3d
    goto :goto_0
.end method

.method public hideSessionLocked()Z
    .locals 1

    #@0
    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 156
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@6
    invoke-virtual {v0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->hideLocked()Z

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 158
    :cond_0
    const/4 v0, 0x0

    #@c
    return v0
.end method

.method public launchVoiceAssistFromKeyguard()V
    .locals 4

    #@0
    .prologue
    .line 288
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 289
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Not bound to voice interaction service "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 290
    return-void

    #@21
    .line 293
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@23
    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionService;->launchVoiceAssistFromKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 287
    :goto_0
    return-void

    #@27
    .line 294
    :catch_0
    move-exception v0

    #@28
    .line 295
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    #@2b
    const-string/jumbo v2, "RemoteException while calling launchVoiceAssistFromKeyguard"

    #@2e
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    goto :goto_0
.end method

.method notifySoundModelsChangedLocked()V
    .locals 4

    #@0
    .prologue
    .line 324
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 325
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    #@7
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v3, "Not bound to voice interaction service "

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@20
    .line 326
    return-void

    #@21
    .line 329
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@23
    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionService;->soundModelsChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 323
    :goto_0
    return-void

    #@27
    .line 330
    :catch_0
    move-exception v0

    #@28
    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    #@2b
    const-string/jumbo v2, "RemoteException while calling soundModelsChanged"

    #@2e
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@31
    goto :goto_0
.end method

.method public sessionConnectionGone(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .locals 2
    .param p1, "connection"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@0
    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 338
    :try_start_0
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    #@5
    invoke-virtual {p0, v0}, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->finishLocked(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 336
    return-void

    #@a
    .line 337
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public setDisabledShowContextLocked(II)V
    .locals 4
    .param p1, "callingUid"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 227
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@2
    invoke-virtual {v1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@5
    move-result-object v1

    #@6
    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@a
    .line 228
    .local v0, "activeUid":I
    if-eq p1, v0, :cond_0

    #@c
    .line 229
    new-instance v1, Ljava/lang/SecurityException;

    #@e
    new-instance v2, Ljava/lang/StringBuilder;

    #@10
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@13
    const-string/jumbo v3, "Calling uid "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    .line 230
    const-string/jumbo v3, " does not match active uid "

    #@21
    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    #@30
    throw v1

    #@31
    .line 232
    :cond_0
    iput p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    #@33
    .line 226
    return-void
.end method

.method public setKeepAwakeLocked(Landroid/os/IBinder;Z)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "keepAwake"    # Z

    #@0
    .prologue
    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@6
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    #@8
    if-eq p1, v1, :cond_1

    #@a
    .line 196
    :cond_0
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    #@d
    const-string/jumbo v2, "setKeepAwake does not match active session"

    #@10
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 197
    return-void

    #@14
    .line 199
    :cond_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAm:Landroid/app/IActivityManager;

    #@16
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@18
    iget-object v2, v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@1a
    invoke-interface {v1, v2, p2}, Landroid/app/IActivityManager;->setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1d
    .line 193
    return-void

    #@1e
    .line 200
    :catch_0
    move-exception v0

    #@1f
    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/IllegalStateException;

    #@21
    const-string/jumbo v2, "Unexpected remote error"

    #@24
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@27
    throw v1
.end method

.method public showSessionLocked(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .locals 8
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I
    .param p3, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p4, "activityToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 147
    new-instance v0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@6
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mLock:Ljava/lang/Object;

    #@8
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mSessionComponentName:Landroid/content/ComponentName;

    #@a
    .line 148
    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    #@c
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    #@e
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mInfo:Landroid/service/voice/VoiceInteractionServiceInfo;

    #@10
    invoke-virtual {v5}, Landroid/service/voice/VoiceInteractionServiceInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    #@13
    move-result-object v5

    #@14
    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@16
    iget v6, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    #@18
    iget-object v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mHandler:Landroid/os/Handler;

    #@1a
    move-object v5, p0

    #@1b
    .line 147
    invoke-direct/range {v0 .. v7}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;-><init>(Ljava/lang/Object;Landroid/content/ComponentName;ILandroid/content/Context;Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;ILandroid/os/Handler;)V

    #@1e
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@20
    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@22
    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mDisabledShowContext:I

    #@24
    move-object v1, p1

    #@25
    move v2, p2

    #@26
    move-object v4, p3

    #@27
    move-object v5, p4

    #@28
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->showLocked(Landroid/os/Bundle;IILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    #@2b
    move-result v0

    #@2c
    return v0
.end method

.method shutdownLocked()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 302
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 303
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@7
    invoke-virtual {v1}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->cancelLocked()V

    #@a
    .line 304
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@c
    .line 307
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 308
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mService:Landroid/service/voice/IVoiceInteractionService;

    #@12
    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionService;->shutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 314
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 315
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    #@1b
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mConnection:Landroid/content/ServiceConnection;

    #@1d
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@20
    .line 316
    const/4 v1, 0x0

    #@21
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    #@23
    .line 318
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mValid:Z

    #@25
    if-eqz v1, :cond_3

    #@27
    .line 319
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    #@29
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    #@2b
    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@2e
    .line 299
    :cond_3
    return-void

    #@2f
    .line 310
    :catch_0
    move-exception v0

    #@30
    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    #@33
    const-string/jumbo v2, "RemoteException in shutdown"

    #@36
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@39
    goto :goto_0
.end method

.method startLocked()V
    .locals 5

    #@0
    .prologue
    .line 278
    new-instance v0, Landroid/content/Intent;

    #@2
    const-string/jumbo v1, "android.service.voice.VoiceInteractionService"

    #@5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8
    .line 279
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    #@a
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@d
    .line 280
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mContext:Landroid/content/Context;

    #@f
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mConnection:Landroid/content/ServiceConnection;

    #@11
    .line 281
    new-instance v3, Landroid/os/UserHandle;

    #@13
    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    #@15
    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    #@18
    const v4, 0x4000001

    #@1b
    .line 280
    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@1e
    move-result v1

    #@1f
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    #@21
    .line 282
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mBound:Z

    #@23
    if-nez v1, :cond_0

    #@25
    .line 283
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    #@28
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v3, "Failed binding to voice interaction service "

    #@30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    #@36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@41
    .line 277
    :cond_0
    return-void
.end method

.method public startVoiceActivityLocked(IILandroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;)I
    .locals 14
    .param p1, "callingPid"    # I
    .param p2, "callingUid"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "resolvedType"    # Ljava/lang/String;

    #@0
    .prologue
    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@6
    iget-object v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    #@8
    move-object/from16 v0, p3

    #@a
    if-eq v0, v1, :cond_1

    #@c
    .line 175
    :cond_0
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    #@f
    const-string/jumbo v2, "startVoiceActivity does not match active session"

    #@12
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 176
    const/4 v1, -0x6

    #@16
    return v1

    #@17
    .line 178
    :cond_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@19
    iget-boolean v1, v1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    #@1b
    if-nez v1, :cond_2

    #@1d
    .line 179
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    #@20
    const-string/jumbo v2, "startVoiceActivity not allowed on hidden session"

    #@23
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@26
    .line 180
    const/4 v1, -0x6

    #@27
    return v1

    #@28
    .line 182
    :cond_2
    new-instance v5, Landroid/content/Intent;

    #@2a
    move-object/from16 v0, p4

    #@2c
    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2f
    .line 183
    .end local p4    # "intent":Landroid/content/Intent;
    .local v5, "intent":Landroid/content/Intent;
    :try_start_1
    const-string/jumbo v1, "android.intent.category.VOICE"

    #@32
    invoke-virtual {v5, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@35
    .line 184
    const/high16 v1, 0x18000000

    #@37
    invoke-virtual {v5, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@3a
    .line 185
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mAm:Landroid/app/IActivityManager;

    #@3c
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mComponent:Landroid/content/ComponentName;

    #@3e
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    .line 186
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@44
    iget-object v7, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@46
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mActiveSession:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;

    #@48
    iget-object v8, v3, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@4a
    .line 187
    iget v12, p0, Lcom/android/server/voiceinteraction/VoiceInteractionManagerServiceImpl;->mUser:I

    #@4c
    const/4 v9, 0x0

    #@4d
    const/4 v10, 0x0

    #@4e
    const/4 v11, 0x0

    #@4f
    move v3, p1

    #@50
    move/from16 v4, p2

    #@52
    move-object/from16 v6, p5

    #@54
    .line 185
    invoke-interface/range {v1 .. v12}, Landroid/app/IActivityManager;->startVoiceActivity(Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@57
    move-result v1

    #@58
    return v1

    #@59
    .line 188
    .end local v5    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v13

    #@5a
    .line 189
    .local v13, "e":Landroid/os/RemoteException;
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    #@5c
    const-string/jumbo v2, "Unexpected remote error"

    #@5f
    invoke-direct {v1, v2, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@62
    throw v1

    #@63
    .line 188
    .end local v13    # "e":Landroid/os/RemoteException;
    .end local p4    # "intent":Landroid/content/Intent;
    .restart local v5    # "intent":Landroid/content/Intent;
    :catch_1
    move-exception v13

    #@64
    .restart local v13    # "e":Landroid/os/RemoteException;
    move-object/from16 p4, v5

    #@66
    .end local v5    # "intent":Landroid/content/Intent;
    .restart local p4    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method
