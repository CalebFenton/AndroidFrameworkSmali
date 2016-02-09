.class final Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.super Ljava/lang/Object;
.source "VoiceInteractionSessionConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceManager"


# instance fields
.field final mAm:Landroid/app/IActivityManager;

.field final mAppOps:Landroid/app/AppOpsManager;

.field mAssistData:Landroid/os/Bundle;

.field final mAssistReceiver:Lcom/android/internal/os/IResultReceiver;

.field final mBindIntent:Landroid/content/Intent;

.field mBound:Z

.field final mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

.field final mCallingUid:I

.field mCanceled:Z

.field final mContext:Landroid/content/Context;

.field final mFullConnection:Landroid/content/ServiceConnection;

.field mFullyBound:Z

.field final mHandler:Landroid/os/Handler;

.field mHaveAssistData:Z

.field mHaveScreenshot:Z

.field final mIWindowManager:Landroid/view/IWindowManager;

.field mInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field final mLock:Ljava/lang/Object;

.field mPendingShowCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mPermissionOwner:Landroid/os/IBinder;

.field mScreenshot:Landroid/graphics/Bitmap;

.field final mScreenshotReceiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

.field mService:Landroid/service/voice/IVoiceInteractionSessionService;

.field mSession:Landroid/service/voice/IVoiceInteractionSession;

.field final mSessionComponentName:Landroid/content/ComponentName;

.field mShowArgs:Landroid/os/Bundle;

.field private mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

.field mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

.field mShowFlags:I

.field mShown:Z

.field final mToken:Landroid/os/IBinder;

.field final mUser:I


# direct methods
.method static synthetic -wrap0(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->notifyPendingShowCallbacksFailedLocked()V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->notifyPendingShowCallbacksShownLocked()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Landroid/content/ComponentName;ILandroid/content/Context;Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;ILandroid/os/Handler;)V
    .locals 6
    .param p1, "lock"    # Ljava/lang/Object;
    .param p2, "component"    # Landroid/content/ComponentName;
    .param p3, "user"    # I
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "callback"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;
    .param p6, "callingUid"    # I
    .param p7, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    new-instance v2, Landroid/os/Binder;

    #@5
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    #@a
    .line 88
    new-instance v2, Ljava/util/ArrayList;

    #@c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    #@11
    .line 91
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;

    #@13
    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    #@16
    .line 90
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@18
    .line 113
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;

    #@1a
    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    #@1d
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    #@1f
    .line 122
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;

    #@21
    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    #@24
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistReceiver:Lcom/android/internal/os/IResultReceiver;

    #@26
    .line 135
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;

    #@28
    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    #@2b
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshotReceiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

    #@2d
    .line 528
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;

    #@2f
    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    #@32
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    #@34
    .line 150
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    #@36
    .line 151
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    #@38
    .line 152
    iput p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    #@3a
    .line 153
    iput-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@3c
    .line 154
    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    #@3e
    .line 155
    iput p6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    #@40
    .line 156
    iput-object p7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    #@42
    .line 157
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@45
    move-result-object v2

    #@46
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@48
    .line 159
    const-string/jumbo v2, "window"

    #@4b
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@4e
    move-result-object v2

    #@4f
    .line 158
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@52
    move-result-object v2

    #@53
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    #@55
    .line 160
    const-class v2, Landroid/app/AppOpsManager;

    #@57
    invoke-virtual {p4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@5a
    move-result-object v2

    #@5b
    check-cast v2, Landroid/app/AppOpsManager;

    #@5d
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAppOps:Landroid/app/AppOpsManager;

    #@5f
    .line 161
    const/4 v1, 0x0

    #@60
    .line 163
    .local v1, "permOwner":Landroid/os/IBinder;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@62
    new-instance v3, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v4, "voicesession:"

    #@6a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v3

    #@6e
    .line 164
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@71
    move-result-object v4

    #@72
    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v3

    #@76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v3

    #@7a
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@7d
    move-result-object v1

    #@7e
    .line 168
    .end local v1    # "permOwner":Landroid/os/IBinder;
    :goto_0
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    #@80
    .line 169
    new-instance v2, Landroid/content/Intent;

    #@82
    const-string/jumbo v3, "android.service.voice.VoiceInteractionService"

    #@85
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@88
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    #@8a
    .line 170
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    #@8c
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    #@8e
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@91
    .line 171
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@93
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    #@95
    .line 173
    new-instance v4, Landroid/os/UserHandle;

    #@97
    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    #@99
    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    #@9c
    .line 172
    const/16 v5, 0x31

    #@9e
    .line 171
    invoke-virtual {v2, v3, p0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@a1
    move-result v2

    #@a2
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    #@a4
    .line 174
    iget-boolean v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    #@a6
    if-eqz v2, :cond_0

    #@a8
    .line 176
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    #@aa
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    #@ac
    .line 177
    const/16 v4, 0x7ef

    #@ae
    .line 176
    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@b1
    .line 149
    :goto_1
    return-void

    #@b2
    .line 165
    .restart local v1    # "permOwner":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    #@b3
    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "voicesession"

    #@b6
    const-string/jumbo v3, "AM dead"

    #@b9
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@bc
    goto :goto_0

    #@bd
    .line 178
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "permOwner":Landroid/os/IBinder;
    :catch_1
    move-exception v0

    #@be
    .line 179
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "VoiceInteractionServiceManager"

    #@c1
    const-string/jumbo v3, "Failed adding window token"

    #@c4
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c7
    goto :goto_1

    #@c8
    .line 182
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v2, "VoiceInteractionServiceManager"

    #@cb
    new-instance v3, Ljava/lang/StringBuilder;

    #@cd
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d0
    const-string/jumbo v4, "Failed binding to voice interaction session service "

    #@d3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d6
    move-result-object v3

    #@d7
    .line 183
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    #@d9
    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v3

    #@dd
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e0
    move-result-object v3

    #@e1
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e4
    goto :goto_1
.end method

.method private notifyPendingShowCallbacksFailedLocked()V
    .locals 3

    #@0
    .prologue
    .line 482
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_0

    #@9
    .line 484
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@11
    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 482
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 488
    :cond_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@1c
    .line 481
    return-void

    #@1d
    .line 485
    :catch_0
    move-exception v0

    #@1e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private notifyPendingShowCallbacksShownLocked()V
    .locals 3

    #@0
    .prologue
    .line 472
    const/4 v1, 0x0

    #@1
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    #@3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@6
    move-result v2

    #@7
    if-ge v1, v2, :cond_0

    #@9
    .line 474
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@11
    invoke-interface {v2}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onShown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 472
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 478
    :cond_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@1c
    .line 471
    return-void

    #@1d
    .line 475
    :catch_0
    move-exception v0

    #@1e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method


# virtual methods
.method public cancelLocked()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 422
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->hideLocked()Z

    #@5
    .line 423
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z

    #@8
    .line 424
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 425
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 427
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@12
    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 432
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@17
    if-eqz v1, :cond_1

    #@19
    .line 434
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@1b
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@1d
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    .line 438
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@22
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@25
    .line 440
    :try_start_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    #@27
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    #@29
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@2c
    .line 444
    :goto_2
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    #@2e
    .line 445
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    #@30
    .line 446
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@32
    .line 447
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@34
    .line 449
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    #@36
    if-eqz v1, :cond_3

    #@38
    .line 450
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@3a
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    #@3c
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@3f
    .line 451
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    #@41
    .line 421
    :cond_3
    return-void

    #@42
    .line 428
    :catch_0
    move-exception v0

    #@43
    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    #@46
    const-string/jumbo v2, "Voice interation session already dead"

    #@49
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4c
    goto :goto_0

    #@4d
    .line 441
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@4e
    .line 442
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    #@51
    const-string/jumbo v2, "Failed removing window token"

    #@54
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@57
    goto :goto_2

    #@58
    .line 435
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    #@59
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public deliverNewSessionLocked(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .locals 4
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    #@0
    .prologue
    .line 457
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@2
    .line 458
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@4
    .line 459
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 461
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    #@a
    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    #@c
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@e
    invoke-interface {p1, v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    #@11
    .line 462
    const/4 v1, 0x0

    #@12
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    #@14
    .line 463
    const/4 v1, 0x0

    #@15
    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 466
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked()V

    #@1a
    .line 468
    :cond_0
    const/4 v1, 0x1

    #@1b
    return v1

    #@1c
    .line 464
    :catch_0
    move-exception v0

    #@1d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method deliverSessionDataLocked()V
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v11, 0x0

    #@2
    .line 334
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 335
    return-void

    #@7
    .line 337
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@9
    if-eqz v0, :cond_3

    #@b
    .line 341
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Landroid/os/Bundle;

    #@d
    if-eqz v0, :cond_5

    #@f
    .line 342
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Landroid/os/Bundle;

    #@11
    const-string/jumbo v2, "data"

    #@14
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@17
    move-result-object v6

    #@18
    .line 343
    .local v6, "assistData":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Landroid/os/Bundle;

    #@1a
    const-string/jumbo v2, "structure"

    #@1d
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@20
    move-result-object v10

    #@21
    check-cast v10, Landroid/app/assist/AssistStructure;

    #@23
    .line 344
    .local v10, "structure":Landroid/app/assist/AssistStructure;
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Landroid/os/Bundle;

    #@25
    const-string/jumbo v2, "content"

    #@28
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@2b
    move-result-object v7

    #@2c
    check-cast v7, Landroid/app/assist/AssistContent;

    #@2e
    .line 345
    .local v7, "content":Landroid/app/assist/AssistContent;
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Landroid/os/Bundle;

    #@30
    const-string/jumbo v2, "android.intent.extra.ASSIST_UID"

    #@33
    const/4 v4, -0x1

    #@34
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@37
    move-result v3

    #@38
    .line 346
    .local v3, "uid":I
    if-ltz v3, :cond_2

    #@3a
    if-eqz v7, :cond_2

    #@3c
    .line 347
    invoke-virtual {v7}, Landroid/app/assist/AssistContent;->getIntent()Landroid/content/Intent;

    #@3f
    move-result-object v9

    #@40
    .line 348
    .local v9, "intent":Landroid/content/Intent;
    if-eqz v9, :cond_1

    #@42
    .line 349
    invoke-virtual {v9}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    #@45
    move-result-object v1

    #@46
    .line 350
    .local v1, "data":Landroid/content/ClipData;
    if-eqz v1, :cond_1

    #@48
    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    #@4b
    move-result v0

    #@4c
    invoke-static {v0}, Landroid/content/Intent;->isAccessUriMode(I)Z

    #@4f
    move-result v0

    #@50
    if-eqz v0, :cond_1

    #@52
    .line 351
    invoke-virtual {v9}, Landroid/content/Intent;->getFlags()I

    #@55
    move-result v2

    #@56
    .line 352
    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    #@58
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    #@5a
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    move-object v0, p0

    #@5f
    .line 351
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    #@62
    .line 355
    .end local v1    # "data":Landroid/content/ClipData;
    :cond_1
    invoke-virtual {v7}, Landroid/app/assist/AssistContent;->getClipData()Landroid/content/ClipData;

    #@65
    move-result-object v1

    #@66
    .line 356
    .restart local v1    # "data":Landroid/content/ClipData;
    if-eqz v1, :cond_2

    #@68
    .line 359
    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    #@6a
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    #@6c
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@6f
    move-result-object v5

    #@70
    .line 358
    const/4 v2, 0x1

    #@71
    move-object v0, p0

    #@72
    .line 357
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    #@75
    .line 368
    .end local v1    # "data":Landroid/content/ClipData;
    .end local v3    # "uid":I
    .end local v6    # "assistData":Landroid/os/Bundle;
    .end local v7    # "content":Landroid/app/assist/AssistContent;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "structure":Landroid/app/assist/AssistStructure;
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@77
    invoke-interface {v0, v6, v10, v7}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    #@7a
    .line 371
    :goto_1
    iput-object v11, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Landroid/os/Bundle;

    #@7c
    .line 372
    iput-boolean v12, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@7e
    .line 374
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    #@80
    if-eqz v0, :cond_4

    #@82
    .line 376
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@84
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    #@86
    invoke-interface {v0, v2}, Landroid/service/voice/IVoiceInteractionSession;->handleScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@89
    .line 379
    :goto_2
    iput-object v11, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    #@8b
    .line 380
    iput-boolean v12, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    #@8d
    .line 333
    :cond_4
    return-void

    #@8e
    .line 363
    :cond_5
    const/4 v6, 0x0

    #@8f
    .line 364
    .local v6, "assistData":Landroid/os/Bundle;
    const/4 v10, 0x0

    #@90
    .line 365
    .local v10, "structure":Landroid/app/assist/AssistStructure;
    const/4 v7, 0x0

    #@91
    .local v7, "content":Landroid/app/assist/AssistContent;
    goto :goto_0

    #@92
    .line 377
    .end local v6    # "assistData":Landroid/os/Bundle;
    .end local v7    # "content":Landroid/app/assist/AssistContent;
    .end local v10    # "structure":Landroid/app/assist/AssistStructure;
    :catch_0
    move-exception v8

    #@93
    .local v8, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@94
    .line 369
    .end local v8    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v8

    #@95
    .restart local v8    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 512
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    const-string/jumbo v0, "mToken="

    #@6
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    #@b
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@e
    .line 513
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@11
    const-string/jumbo v0, "mShown="

    #@14
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@17
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    #@19
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@1c
    .line 514
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@1f
    const-string/jumbo v0, "mShowArgs="

    #@22
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@25
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    #@27
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@2a
    .line 515
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2d
    const-string/jumbo v0, "mShowFlags=0x"

    #@30
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@33
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    #@35
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3c
    .line 516
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3f
    const-string/jumbo v0, "mBound="

    #@42
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@45
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    #@47
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@4a
    .line 517
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    #@4c
    if-eqz v0, :cond_0

    #@4e
    .line 518
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    const-string/jumbo v0, "mService="

    #@54
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@57
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    #@59
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@5c
    .line 519
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@5f
    const-string/jumbo v0, "mSession="

    #@62
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@67
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@6a
    .line 520
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6d
    const-string/jumbo v0, "mInteractor="

    #@70
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@73
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@75
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@78
    .line 522
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7b
    const-string/jumbo v0, "mHaveAssistData="

    #@7e
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@81
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@83
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    #@86
    .line 523
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@88
    if-eqz v0, :cond_1

    #@8a
    .line 524
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    const-string/jumbo v0, "mAssistData="

    #@90
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@93
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Landroid/os/Bundle;

    #@95
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@98
    .line 511
    :cond_1
    return-void
.end method

.method public getUserDisabledShowContextLocked()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 188
    const/4 v0, 0x0

    #@2
    .line 189
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 190
    const-string/jumbo v2, "assist_structure_enabled"

    #@b
    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    #@d
    .line 189
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 191
    const/4 v0, 0x1

    #@14
    .line 193
    :cond_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@16
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@19
    move-result-object v1

    #@1a
    .line 194
    const-string/jumbo v2, "assist_screenshot_enabled"

    #@1d
    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    #@1f
    .line 193
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_1

    #@25
    .line 195
    or-int/lit8 v0, v0, 0x2

    #@27
    .line 197
    :cond_1
    return v0
.end method

.method grantClipDataItemPermission(Landroid/content/ClipData$Item;IIILjava/lang/String;)V
    .locals 7
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "mode"    # I
    .param p3, "srcUid"    # I
    .param p4, "destUid"    # I
    .param p5, "destPkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 316
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 317
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@9
    move-result-object v1

    #@a
    move-object v0, p0

    #@b
    move v2, p2

    #@c
    move v3, p3

    #@d
    move v4, p4

    #@e
    move-object v5, p5

    #@f
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    #@12
    .line 319
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    #@15
    move-result-object v6

    #@16
    .line 320
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_1

    #@18
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 321
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@21
    move-result-object v1

    #@22
    move-object v0, p0

    #@23
    move v2, p2

    #@24
    move v3, p3

    #@25
    move v4, p4

    #@26
    move-object v5, p5

    #@27
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V

    #@2a
    .line 315
    :cond_1
    return-void
.end method

.method grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V
    .locals 8
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "mode"    # I
    .param p3, "srcUid"    # I
    .param p4, "destUid"    # I
    .param p5, "destPkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 327
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    #@3
    move-result v6

    #@4
    .line 328
    .local v6, "N":I
    const/4 v7, 0x0

    #@5
    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    #@7
    .line 329
    invoke-virtual {p1, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    #@a
    move-result-object v1

    #@b
    move-object v0, p0

    #@c
    move v2, p2

    #@d
    move v3, p3

    #@e
    move v4, p4

    #@f
    move-object v5, p5

    #@10
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataItemPermission(Landroid/content/ClipData$Item;IIILjava/lang/String;)V

    #@13
    .line 328
    add-int/lit8 v7, v7, 0x1

    #@15
    goto :goto_0

    #@16
    .line 326
    :cond_0
    return-void
.end method

.method grantUriPermission(Landroid/net/Uri;IIILjava/lang/String;)V
    .locals 12
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mode"    # I
    .param p3, "srcUid"    # I
    .param p4, "destUid"    # I
    .param p5, "destPkg"    # Ljava/lang/String;

    #@0
    .prologue
    .line 292
    const-string/jumbo v0, "content"

    #@3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 293
    return-void

    #@e
    .line 295
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v10

    #@12
    .line 298
    .local v10, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@14
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@17
    move-result-object v3

    #@18
    .line 299
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@1b
    move-result v1

    #@1c
    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@1f
    move-result v5

    #@20
    .line 298
    const/4 v2, 0x0

    #@21
    move v1, p3

    #@22
    move v4, p2

    #@23
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    #@26
    .line 301
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    #@28
    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@2b
    move-result v6

    #@2c
    .line 302
    .local v6, "sourceUserId":I
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@2f
    move-result-object p1

    #@30
    .line 303
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@32
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    #@34
    .line 304
    iget v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    #@36
    const/4 v5, 0x1

    #@37
    move v2, p3

    #@38
    move-object/from16 v3, p5

    #@3a
    move-object v4, p1

    #@3b
    .line 303
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 309
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@41
    .line 291
    .end local v6    # "sourceUserId":I
    :goto_0
    return-void

    #@42
    .line 306
    :catch_0
    move-exception v9

    #@43
    .line 307
    .local v9, "e":Ljava/lang/SecurityException;
    :try_start_1
    const-string/jumbo v0, "VoiceInteractionServiceManager"

    #@46
    const-string/jumbo v1, "Can\'t propagate permission"

    #@49
    invoke-static {v0, v1, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    .line 309
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    goto :goto_0

    #@50
    .line 305
    .end local v9    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v8

    #@51
    .line 309
    .local v8, "e":Landroid/os/RemoteException;
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@54
    goto :goto_0

    #@55
    .line 308
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@56
    .line 309
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@59
    .line 308
    throw v0
.end method

.method public hideLocked()Z
    .locals 7

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 385
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    #@4
    if-eqz v1, :cond_3

    #@6
    .line 386
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 387
    iput-boolean v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    #@c
    .line 388
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    #@e
    .line 389
    iput v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    #@10
    .line 390
    iput-boolean v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@12
    .line 391
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Landroid/os/Bundle;

    #@14
    .line 392
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 394
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@1a
    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    #@1d
    .line 399
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@1f
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    #@21
    .line 402
    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    #@23
    .line 399
    const/4 v4, 0x0

    #@24
    .line 400
    const/4 v5, 0x3

    #@25
    .line 399
    invoke-interface {v1, v2, v4, v5, v3}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@28
    .line 405
    :goto_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@2a
    if-eqz v1, :cond_1

    #@2c
    .line 407
    :try_start_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@2e
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@30
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@33
    .line 412
    :cond_1
    :goto_2
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    #@35
    if-eqz v1, :cond_2

    #@37
    .line 413
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@39
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    #@3b
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@3e
    .line 414
    iput-boolean v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    #@40
    .line 416
    :cond_2
    const/4 v1, 0x1

    #@41
    return v1

    #@42
    .line 418
    :cond_3
    return v6

    #@43
    .line 408
    :catch_0
    move-exception v0

    #@44
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@45
    .line 403
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@46
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    #@47
    .line 395
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    #@48
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 493
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 494
    :try_start_0
    invoke-static {p2}, Landroid/service/voice/IVoiceInteractionSessionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSessionService;

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    #@9
    .line 495
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    if-nez v1, :cond_0

    #@d
    .line 497
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    #@f
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    #@11
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    #@13
    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    #@15
    invoke-interface {v1, v3, v4, v5}, Landroid/service/voice/IVoiceInteractionSessionService;->newSession(Landroid/os/IBinder;Landroid/os/Bundle;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    :cond_0
    :goto_0
    monitor-exit v2

    #@19
    .line 492
    return-void

    #@1a
    .line 498
    :catch_0
    move-exception v0

    #@1b
    .line 499
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    #@1e
    const-string/jumbo v3, "Failed adding window token"

    #@21
    invoke-static {v1, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@24
    goto :goto_0

    #@25
    .line 493
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@26
    monitor-exit v2

    #@27
    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    #@2
    invoke-interface {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->sessionConnectionGone(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    #@5
    .line 508
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    #@8
    .line 506
    return-void
.end method

.method public showLocked(Landroid/os/Bundle;IILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z
    .locals 10
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I
    .param p3, "disabledContext"    # I
    .param p4, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p5, "activityToken"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 202
    iget-boolean v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    #@2
    if-eqz v5, :cond_d

    #@4
    .line 203
    iget-boolean v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    #@6
    if-nez v5, :cond_0

    #@8
    .line 204
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@a
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    #@c
    iget-object v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    #@e
    .line 207
    new-instance v8, Landroid/os/UserHandle;

    #@10
    iget v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    #@12
    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    #@15
    .line 205
    const v9, 0xc000001

    #@18
    .line 204
    invoke-virtual {v5, v6, v7, v9, v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@1b
    move-result v5

    #@1c
    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    #@1e
    .line 209
    :cond_0
    const/4 v5, 0x1

    #@1f
    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    #@21
    .line 210
    const/4 v1, 0x1

    #@22
    .line 212
    .local v1, "isAssistDataAllowed":Z
    :try_start_0
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@24
    invoke-interface {v5}, Landroid/app/IActivityManager;->isAssistDataAllowedOnCurrentActivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    #@27
    move-result v1

    #@28
    .line 215
    .end local v1    # "isAssistDataAllowed":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getUserDisabledShowContextLocked()I

    #@2b
    move-result v5

    #@2c
    or-int/2addr p3, v5

    #@2d
    .line 216
    if-eqz v1, :cond_4

    #@2f
    .line 217
    and-int/lit8 v5, p3, 0x1

    #@31
    if-nez v5, :cond_3

    #@33
    const/4 v4, 0x1

    #@34
    .line 218
    .local v4, "structureEnabled":Z
    :goto_1
    if-eqz v1, :cond_6

    #@36
    if-eqz v4, :cond_6

    #@38
    .line 219
    and-int/lit8 v5, p3, 0x2

    #@3a
    if-nez v5, :cond_5

    #@3c
    const/4 v3, 0x1

    #@3d
    .line 220
    .local v3, "screenshotEnabled":Z
    :goto_2
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    #@3f
    .line 221
    iput p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    #@41
    .line 222
    const/4 v5, 0x0

    #@42
    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@44
    .line 223
    const/4 v2, 0x0

    #@45
    .line 224
    .local v2, "needDisclosure":Z
    and-int/lit8 v5, p2, 0x1

    #@47
    if-eqz v5, :cond_9

    #@49
    .line 225
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAppOps:Landroid/app/AppOpsManager;

    #@4b
    iget v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    #@4d
    .line 226
    iget-object v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    #@4f
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@52
    move-result-object v7

    #@53
    .line 225
    const/16 v8, 0x31

    #@55
    invoke-virtual {v5, v8, v6, v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    #@58
    move-result v5

    #@59
    if-nez v5, :cond_8

    #@5b
    if-eqz v4, :cond_8

    #@5d
    .line 229
    :try_start_1
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@5f
    const-string/jumbo v6, "assist_with_context"

    #@62
    const/4 v7, 0x1

    #@63
    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@66
    .line 230
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@68
    .line 231
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistReceiver:Lcom/android/internal/os/IResultReceiver;

    #@6a
    .line 230
    const/4 v7, 0x1

    #@6b
    invoke-interface {v5, v7, v6, p5}, Landroid/app/IActivityManager;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/IBinder;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    #@6e
    move-result v5

    #@6f
    if-eqz v5, :cond_7

    #@71
    .line 232
    const/4 v2, 0x1

    #@72
    .line 248
    :goto_3
    const/4 v5, 0x0

    #@73
    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    #@75
    .line 249
    and-int/lit8 v5, p2, 0x2

    #@77
    if-eqz v5, :cond_b

    #@79
    .line 250
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAppOps:Landroid/app/AppOpsManager;

    #@7b
    iget v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    #@7d
    .line 251
    iget-object v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    #@7f
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@82
    move-result-object v7

    #@83
    .line 250
    const/16 v8, 0x32

    #@85
    invoke-virtual {v5, v8, v6, v7}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    #@88
    move-result v5

    #@89
    if-nez v5, :cond_a

    #@8b
    if-eqz v3, :cond_a

    #@8d
    .line 254
    :try_start_2
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@8f
    const-string/jumbo v6, "assist_with_screen"

    #@92
    const/4 v7, 0x1

    #@93
    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@96
    .line 255
    const/4 v2, 0x1

    #@97
    .line 256
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    #@99
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshotReceiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

    #@9b
    invoke-interface {v5, v6}, Landroid/view/IWindowManager;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    #@9e
    .line 266
    :goto_4
    if-eqz v2, :cond_1

    #@a0
    .line 267
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    #@a2
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    #@a4
    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@a7
    .line 269
    :cond_1
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@a9
    if-eqz v5, :cond_c

    #@ab
    .line 271
    :try_start_3
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@ad
    iget-object v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    #@af
    iget v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    #@b1
    invoke-interface {v5, v6, v7, p4}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    #@b4
    .line 272
    const/4 v5, 0x0

    #@b5
    iput-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    #@b7
    .line 273
    const/4 v5, 0x0

    #@b8
    iput v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    #@ba
    .line 276
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked()V

    #@bd
    .line 280
    :cond_2
    :goto_6
    const/4 v5, 0x1

    #@be
    return v5

    #@bf
    .line 217
    .end local v2    # "needDisclosure":Z
    .end local v3    # "screenshotEnabled":Z
    .end local v4    # "structureEnabled":Z
    :cond_3
    const/4 v4, 0x0

    #@c0
    .restart local v4    # "structureEnabled":Z
    goto/16 :goto_1

    #@c2
    .line 216
    .end local v4    # "structureEnabled":Z
    :cond_4
    const/4 v4, 0x0

    #@c3
    .restart local v4    # "structureEnabled":Z
    goto/16 :goto_1

    #@c5
    .line 219
    :cond_5
    const/4 v3, 0x0

    #@c6
    .restart local v3    # "screenshotEnabled":Z
    goto/16 :goto_2

    #@c8
    .line 218
    .end local v3    # "screenshotEnabled":Z
    :cond_6
    const/4 v3, 0x0

    #@c9
    .restart local v3    # "screenshotEnabled":Z
    goto/16 :goto_2

    #@cb
    .line 235
    .restart local v2    # "needDisclosure":Z
    :cond_7
    const/4 v5, 0x1

    #@cc
    :try_start_4
    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@ce
    .line 236
    const/4 v5, 0x0

    #@cf
    iput-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Landroid/os/Bundle;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    #@d1
    .line 237
    const/4 v3, 0x0

    #@d2
    goto :goto_3

    #@d3
    .line 242
    :cond_8
    const/4 v5, 0x1

    #@d4
    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@d6
    .line 243
    const/4 v5, 0x0

    #@d7
    iput-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Landroid/os/Bundle;

    #@d9
    goto :goto_3

    #@da
    .line 246
    :cond_9
    const/4 v5, 0x0

    #@db
    iput-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Landroid/os/Bundle;

    #@dd
    goto :goto_3

    #@de
    .line 260
    :cond_a
    const/4 v5, 0x1

    #@df
    iput-boolean v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    #@e1
    .line 261
    const/4 v5, 0x0

    #@e2
    iput-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    #@e4
    goto :goto_4

    #@e5
    .line 264
    :cond_b
    const/4 v5, 0x0

    #@e6
    iput-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    #@e8
    goto :goto_4

    #@e9
    .line 277
    :cond_c
    if-eqz p4, :cond_2

    #@eb
    .line 278
    iget-object v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    #@ed
    invoke-virtual {v5, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@f0
    goto :goto_6

    #@f1
    .line 282
    .end local v2    # "needDisclosure":Z
    .end local v3    # "screenshotEnabled":Z
    .end local v4    # "structureEnabled":Z
    :cond_d
    if-eqz p4, :cond_e

    #@f3
    .line 284
    :try_start_5
    invoke-interface {p4}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    #@f6
    .line 288
    :cond_e
    :goto_7
    const/4 v5, 0x0

    #@f7
    return v5

    #@f8
    .line 285
    :catch_0
    move-exception v0

    #@f9
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_7

    #@fa
    .line 274
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v2    # "needDisclosure":Z
    .restart local v3    # "screenshotEnabled":Z
    .restart local v4    # "structureEnabled":Z
    :catch_1
    move-exception v0

    #@fb
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_5

    #@fc
    .line 257
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    #@fd
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_4

    #@fe
    .line 239
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v0

    #@ff
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_3

    #@101
    .line 213
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v2    # "needDisclosure":Z
    .end local v3    # "screenshotEnabled":Z
    .end local v4    # "structureEnabled":Z
    .restart local v1    # "isAssistDataAllowed":Z
    :catch_4
    move-exception v0

    #@102
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method
