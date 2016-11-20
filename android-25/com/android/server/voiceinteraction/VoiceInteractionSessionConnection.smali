.class final Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.super Ljava/lang/Object;
.source "VoiceInteractionSessionConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;,
        Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;
    }
.end annotation


# static fields
.field private static final KEY_RECEIVER_EXTRA_COUNT:Ljava/lang/String; = "count"

.field private static final KEY_RECEIVER_EXTRA_INDEX:Ljava/lang/String; = "index"

.field static final TAG:Ljava/lang/String; = "VoiceInteractionServiceManager"


# instance fields
.field final mAm:Landroid/app/IActivityManager;

.field final mAppOps:Landroid/app/AppOpsManager;

.field mAssistData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;",
            ">;"
        }
    .end annotation
.end field

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

.field mPendingAssistDataCount:I

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
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 69
    new-instance v2, Landroid/os/Binder;

    #@5
    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    #@8
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    #@a
    .line 93
    new-instance v2, Ljava/util/ArrayList;

    #@c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    #@11
    .line 96
    new-instance v2, Ljava/util/ArrayList;

    #@13
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@16
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    #@18
    .line 114
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;

    #@1a
    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$1;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    #@1d
    .line 113
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@1f
    .line 138
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;

    #@21
    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$2;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    #@24
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    #@26
    .line 147
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;

    #@28
    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$3;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    #@2b
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistReceiver:Lcom/android/internal/os/IResultReceiver;

    #@2d
    .line 160
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;

    #@2f
    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$4;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    #@32
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshotReceiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

    #@34
    .line 593
    new-instance v2, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;

    #@36
    invoke-direct {v2, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$5;-><init>(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    #@39
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    #@3b
    .line 175
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    #@3d
    .line 176
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    #@3f
    .line 177
    iput p3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    #@41
    .line 178
    iput-object p4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@43
    .line 179
    iput-object p5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    #@45
    .line 180
    iput p6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    #@47
    .line 181
    iput-object p7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    #@49
    .line 182
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@4c
    move-result-object v2

    #@4d
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@4f
    .line 184
    const-string/jumbo v2, "window"

    #@52
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@55
    move-result-object v2

    #@56
    .line 183
    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    #@59
    move-result-object v2

    #@5a
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    #@5c
    .line 185
    const-class v2, Landroid/app/AppOpsManager;

    #@5e
    invoke-virtual {p4, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@61
    move-result-object v2

    #@62
    check-cast v2, Landroid/app/AppOpsManager;

    #@64
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAppOps:Landroid/app/AppOpsManager;

    #@66
    .line 186
    const/4 v1, 0x0

    #@67
    .line 188
    .local v1, "permOwner":Landroid/os/IBinder;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@69
    new-instance v3, Ljava/lang/StringBuilder;

    #@6b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@6e
    const-string/jumbo v4, "voicesession:"

    #@71
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v3

    #@75
    .line 189
    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    .line 188
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v3

    #@81
    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@84
    move-result-object v1

    #@85
    .line 193
    .end local v1    # "permOwner":Landroid/os/IBinder;
    :goto_0
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    #@87
    .line 194
    new-instance v2, Landroid/content/Intent;

    #@89
    const-string/jumbo v3, "android.service.voice.VoiceInteractionService"

    #@8c
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@8f
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    #@91
    .line 195
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    #@93
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    #@95
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@98
    .line 196
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@9a
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    #@9c
    .line 198
    new-instance v4, Landroid/os/UserHandle;

    #@9e
    iget v5, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    #@a0
    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    #@a3
    .line 197
    const/16 v5, 0x31

    #@a5
    .line 196
    invoke-virtual {v2, v3, p0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@a8
    move-result v2

    #@a9
    iput-boolean v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    #@ab
    .line 199
    iget-boolean v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    #@ad
    if-eqz v2, :cond_0

    #@af
    .line 201
    :try_start_1
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    #@b1
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    #@b3
    .line 202
    const/16 v4, 0x7ef

    #@b5
    .line 201
    invoke-interface {v2, v3, v4}, Landroid/view/IWindowManager;->addWindowToken(Landroid/os/IBinder;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@b8
    .line 174
    :goto_1
    return-void

    #@b9
    .line 190
    .restart local v1    # "permOwner":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    #@ba
    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "voicesession"

    #@bd
    const-string/jumbo v3, "AM dead"

    #@c0
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@c3
    goto :goto_0

    #@c4
    .line 203
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "permOwner":Landroid/os/IBinder;
    :catch_1
    move-exception v0

    #@c5
    .line 204
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "VoiceInteractionServiceManager"

    #@c8
    const-string/jumbo v3, "Failed adding window token"

    #@cb
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@ce
    goto :goto_1

    #@cf
    .line 207
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const-string/jumbo v2, "VoiceInteractionServiceManager"

    #@d2
    new-instance v3, Ljava/lang/StringBuilder;

    #@d4
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@d7
    const-string/jumbo v4, "Failed binding to voice interaction session service "

    #@da
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v3

    #@de
    .line 208
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    #@e0
    .line 207
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v3

    #@e4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e7
    move-result-object v3

    #@e8
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@eb
    goto :goto_1
.end method

.method private deliverSessionDataLocked(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;)V
    .locals 13
    .param p1, "assistDataForActivity"    # Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;

    #@0
    .prologue
    .line 418
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    #@2
    .line 419
    const-string/jumbo v2, "data"

    #@5
    .line 418
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@8
    move-result-object v10

    #@9
    .line 420
    .local v10, "assistData":Landroid/os/Bundle;
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    #@b
    .line 421
    const-string/jumbo v2, "structure"

    #@e
    .line 420
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@11
    move-result-object v6

    #@12
    check-cast v6, Landroid/app/assist/AssistStructure;

    #@14
    .line 422
    .local v6, "structure":Landroid/app/assist/AssistStructure;
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    #@16
    .line 423
    const-string/jumbo v2, "content"

    #@19
    .line 422
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    #@1c
    move-result-object v7

    #@1d
    check-cast v7, Landroid/app/assist/AssistContent;

    #@1f
    .line 424
    .local v7, "content":Landroid/app/assist/AssistContent;
    iget-object v0, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    #@21
    const-string/jumbo v2, "android.intent.extra.ASSIST_UID"

    #@24
    const/4 v4, -0x1

    #@25
    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    #@28
    move-result v3

    #@29
    .line 425
    .local v3, "uid":I
    if-ltz v3, :cond_1

    #@2b
    if-eqz v7, :cond_1

    #@2d
    .line 426
    invoke-virtual {v7}, Landroid/app/assist/AssistContent;->getIntent()Landroid/content/Intent;

    #@30
    move-result-object v12

    #@31
    .line 427
    .local v12, "intent":Landroid/content/Intent;
    if-eqz v12, :cond_0

    #@33
    .line 428
    invoke-virtual {v12}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    #@36
    move-result-object v1

    #@37
    .line 429
    .local v1, "data":Landroid/content/ClipData;
    if-eqz v1, :cond_0

    #@39
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    #@3c
    move-result v0

    #@3d
    invoke-static {v0}, Landroid/content/Intent;->isAccessUriMode(I)Z

    #@40
    move-result v0

    #@41
    if-eqz v0, :cond_0

    #@43
    .line 430
    invoke-virtual {v12}, Landroid/content/Intent;->getFlags()I

    #@46
    move-result v2

    #@47
    .line 431
    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    #@49
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    #@4b
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@4e
    move-result-object v5

    #@4f
    move-object v0, p0

    #@50
    .line 430
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    #@53
    .line 434
    .end local v1    # "data":Landroid/content/ClipData;
    :cond_0
    invoke-virtual {v7}, Landroid/app/assist/AssistContent;->getClipData()Landroid/content/ClipData;

    #@56
    move-result-object v1

    #@57
    .line 435
    .restart local v1    # "data":Landroid/content/ClipData;
    if-eqz v1, :cond_1

    #@59
    .line 438
    iget v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    #@5b
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    #@5d
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@60
    move-result-object v5

    #@61
    .line 437
    const/4 v2, 0x1

    #@62
    move-object v0, p0

    #@63
    .line 436
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->grantClipDataPermissions(Landroid/content/ClipData;IIILjava/lang/String;)V

    #@66
    .line 442
    .end local v1    # "data":Landroid/content/ClipData;
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@68
    .line 443
    iget v8, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->activityIndex:I

    #@6a
    iget v9, p1, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->activityCount:I

    #@6c
    move-object v5, v10

    #@6d
    .line 442
    invoke-interface/range {v4 .. v9}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@70
    .line 417
    :goto_0
    return-void

    #@71
    .line 444
    :catch_0
    move-exception v11

    #@72
    .local v11, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private notifyPendingShowCallbacksFailedLocked()V
    .locals 3

    #@0
    .prologue
    .line 547
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
    .line 549
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
    .line 547
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 553
    :cond_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@1c
    .line 546
    return-void

    #@1d
    .line 550
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
    .line 537
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
    .line 539
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
    .line 537
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@16
    goto :goto_0

    #@17
    .line 543
    :cond_0
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    #@19
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    #@1c
    .line 536
    return-void

    #@1d
    .line 540
    :catch_0
    move-exception v0

    #@1e
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method


# virtual methods
.method public cancelLocked(Z)V
    .locals 5
    .param p1, "finishTask"    # Z

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 487
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->hideLocked()Z

    #@5
    .line 488
    const/4 v1, 0x1

    #@6
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z

    #@8
    .line 489
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    #@a
    if-eqz v1, :cond_2

    #@c
    .line 490
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@12
    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 497
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    #@17
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 499
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@1d
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@1f
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    #@22
    .line 503
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@24
    invoke-virtual {v1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@27
    .line 505
    :try_start_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    #@29
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mToken:Landroid/os/IBinder;

    #@2b
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->removeWindowToken(Landroid/os/IBinder;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    #@2e
    .line 509
    :goto_2
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    #@30
    .line 510
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    #@32
    .line 511
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@34
    .line 512
    iput-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@36
    .line 514
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 515
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@3c
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    #@3e
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@41
    .line 516
    iput-boolean v4, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    #@43
    .line 486
    :cond_3
    return-void

    #@44
    .line 493
    :catch_0
    move-exception v0

    #@45
    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    #@48
    const-string/jumbo v2, "Voice interation session already dead"

    #@4b
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    goto :goto_0

    #@4f
    .line 506
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@50
    .line 507
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "VoiceInteractionServiceManager"

    #@53
    const-string/jumbo v2, "Failed removing window token"

    #@56
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@59
    goto :goto_2

    #@5a
    .line 500
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    #@5b
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public deliverNewSessionLocked(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)Z
    .locals 4
    .param p1, "session"    # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;

    #@0
    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@2
    .line 523
    iput-object p2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mInteractor:Lcom/android/internal/app/IVoiceInteractor;

    #@4
    .line 524
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 526
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    #@a
    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    #@c
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowCallback:Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;

    #@e
    invoke-interface {p1, v1, v2, v3}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    #@11
    .line 527
    const/4 v1, 0x0

    #@12
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    #@14
    .line 528
    const/4 v1, 0x0

    #@15
    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 531
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked()V

    #@1a
    .line 533
    :cond_0
    const/4 v1, 0x1

    #@1b
    return v1

    #@1c
    .line 529
    :catch_0
    move-exception v0

    #@1d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method deliverSessionDataLocked()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 374
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 375
    return-void

    #@7
    .line 377
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@9
    if-eqz v0, :cond_2

    #@b
    .line 379
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_4

    #@13
    .line 382
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@15
    const/4 v1, 0x0

    #@16
    const/4 v2, 0x0

    #@17
    const/4 v3, 0x0

    #@18
    const/4 v4, 0x0

    #@19
    const/4 v5, 0x0

    #@1a
    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    #@1d
    .line 403
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    #@1f
    if-gtz v0, :cond_2

    #@21
    .line 404
    iput-boolean v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@23
    .line 407
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    #@25
    if-eqz v0, :cond_3

    #@27
    .line 409
    :try_start_1
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@29
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    #@2b
    invoke-interface {v0, v1}, Landroid/service/voice/IVoiceInteractionSession;->handleScreenshot(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@2e
    .line 412
    :goto_1
    iput-object v8, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    #@30
    .line 413
    iput-boolean v9, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    #@32
    .line 373
    :cond_3
    return-void

    #@33
    .line 386
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    #@35
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    #@38
    move-result v0

    #@39
    if-nez v0, :cond_1

    #@3b
    .line 387
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    #@3d
    if-gtz v0, :cond_5

    #@3f
    .line 388
    const-string/jumbo v0, "VoiceInteractionServiceManager"

    #@42
    new-instance v1, Ljava/lang/StringBuilder;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@47
    const-string/jumbo v2, "mPendingAssistDataCount is "

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@57
    move-result-object v1

    #@58
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5b
    .line 390
    :cond_5
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    #@5d
    add-int/lit8 v0, v0, -0x1

    #@5f
    iput v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    #@61
    .line 391
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    #@63
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@66
    move-result-object v6

    #@67
    check-cast v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;

    #@69
    .line 392
    .local v6, "assistData":Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;
    iget-object v0, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    #@6b
    if-nez v0, :cond_6

    #@6d
    .line 394
    :try_start_2
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@6f
    iget v4, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->activityIndex:I

    #@71
    .line 395
    iget v5, v6, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->activityCount:I

    #@73
    .line 394
    const/4 v1, 0x0

    #@74
    const/4 v2, 0x0

    #@75
    const/4 v3, 0x0

    #@76
    invoke-interface/range {v0 .. v5}, Landroid/service/voice/IVoiceInteractionSession;->handleAssist(Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@79
    goto :goto_2

    #@7a
    .line 396
    :catch_0
    move-exception v7

    #@7b
    .local v7, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@7c
    .line 399
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_6
    invoke-direct {p0, v6}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;)V

    #@7f
    goto :goto_2

    #@80
    .line 410
    .end local v6    # "assistData":Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;
    :catch_1
    move-exception v7

    #@81
    .restart local v7    # "e":Landroid/os/RemoteException;
    goto :goto_1

    #@82
    .line 383
    .end local v7    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v7

    #@83
    .restart local v7    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 577
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
    .line 578
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
    .line 579
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
    .line 580
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
    .line 581
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
    .line 582
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    #@4c
    if-eqz v0, :cond_0

    #@4e
    .line 583
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
    .line 584
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
    .line 585
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
    .line 587
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
    .line 588
    iget-boolean v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@88
    if-eqz v0, :cond_1

    #@8a
    .line 589
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@8d
    const-string/jumbo v0, "mAssistData="

    #@90
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@93
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    #@95
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@98
    .line 576
    :cond_1
    return-void
.end method

.method public getUserDisabledShowContextLocked()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 213
    const/4 v0, 0x0

    #@2
    .line 214
    .local v0, "flags":I
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@4
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v1

    #@8
    .line 215
    const-string/jumbo v2, "assist_structure_enabled"

    #@b
    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    #@d
    .line 214
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_0

    #@13
    .line 216
    const/4 v0, 0x1

    #@14
    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@16
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@19
    move-result-object v1

    #@1a
    .line 219
    const-string/jumbo v2, "assist_screenshot_enabled"

    #@1d
    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    #@1f
    .line 218
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    #@22
    move-result v1

    #@23
    if-nez v1, :cond_1

    #@25
    .line 220
    or-int/lit8 v0, v0, 0x2

    #@27
    .line 222
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
    .line 356
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 357
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
    .line 359
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    #@15
    move-result-object v6

    #@16
    .line 360
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_1

    #@18
    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    #@1b
    move-result-object v0

    #@1c
    if-eqz v0, :cond_1

    #@1e
    .line 361
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
    .line 355
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
    .line 367
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    #@3
    move-result v6

    #@4
    .line 368
    .local v6, "N":I
    const/4 v7, 0x0

    #@5
    .local v7, "i":I
    :goto_0
    if-ge v7, v6, :cond_0

    #@7
    .line 369
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
    .line 368
    add-int/lit8 v7, v7, 0x1

    #@15
    goto :goto_0

    #@16
    .line 366
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
    .line 332
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
    .line 333
    return-void

    #@e
    .line 335
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@11
    move-result-wide v10

    #@12
    .line 338
    .local v10, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@14
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@17
    move-result-object v3

    #@18
    .line 339
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    #@1b
    move-result v1

    #@1c
    invoke-static {p1, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@1f
    move-result v5

    #@20
    .line 338
    const/4 v2, 0x0

    #@21
    move v1, p3

    #@22
    move v4, p2

    #@23
    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I

    #@26
    .line 341
    iget v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    #@28
    invoke-static {p1, v0}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    #@2b
    move-result v6

    #@2c
    .line 342
    .local v6, "sourceUserId":I
    invoke-static {p1}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    #@2f
    move-result-object p1

    #@30
    .line 343
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@32
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    #@34
    .line 344
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
    .line 343
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3e
    .line 349
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@41
    .line 331
    .end local v6    # "sourceUserId":I
    :goto_0
    return-void

    #@42
    .line 346
    :catch_0
    move-exception v9

    #@43
    .line 347
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
    .line 349
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4f
    goto :goto_0

    #@50
    .line 345
    .end local v9    # "e":Ljava/lang/SecurityException;
    :catch_1
    move-exception v8

    #@51
    .line 349
    .local v8, "e":Landroid/os/RemoteException;
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@54
    goto :goto_0

    #@55
    .line 348
    .end local v8    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@56
    .line 349
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@59
    .line 348
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
    .line 449
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    #@4
    if-eqz v1, :cond_4

    #@6
    .line 450
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    #@8
    if-eqz v1, :cond_2

    #@a
    .line 451
    iput-boolean v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    #@c
    .line 452
    iput-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    #@e
    .line 453
    iput v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    #@10
    .line 454
    iput-boolean v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@12
    .line 455
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    #@14
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@17
    .line 456
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@1d
    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    #@20
    .line 463
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@22
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPermissionOwner:Landroid/os/IBinder;

    #@24
    .line 466
    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    #@26
    .line 463
    const/4 v4, 0x0

    #@27
    .line 464
    const/4 v5, 0x3

    #@28
    .line 463
    invoke-interface {v1, v2, v4, v5, v3}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@2b
    .line 469
    :goto_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@2d
    if-eqz v1, :cond_1

    #@2f
    .line 471
    :try_start_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@31
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@33
    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    #@36
    .line 475
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    #@38
    invoke-interface {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->onSessionHidden(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    #@3b
    .line 477
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    #@3d
    if-eqz v1, :cond_3

    #@3f
    .line 478
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@41
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    #@43
    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    #@46
    .line 479
    iput-boolean v6, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    #@48
    .line 481
    :cond_3
    const/4 v1, 0x1

    #@49
    return v1

    #@4a
    .line 483
    :cond_4
    return v6

    #@4b
    .line 472
    :catch_0
    move-exception v0

    #@4c
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_2

    #@4d
    .line 467
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    #@4e
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1

    #@4f
    .line 459
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v0

    #@50
    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 558
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 559
    :try_start_0
    invoke-static {p2}, Landroid/service/voice/IVoiceInteractionSessionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/voice/IVoiceInteractionSessionService;

    #@6
    move-result-object v1

    #@7
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    #@9
    .line 560
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    if-nez v1, :cond_0

    #@d
    .line 562
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
    .line 557
    return-void

    #@1a
    .line 563
    :catch_0
    move-exception v0

    #@1b
    .line 564
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
    .line 558
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
    .line 572
    iget-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    #@2
    invoke-interface {v0, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->sessionConnectionGone(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    #@5
    .line 573
    const/4 v0, 0x0

    #@6
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mService:Landroid/service/voice/IVoiceInteractionSessionService;

    #@8
    .line 571
    return-void
.end method

.method public showLocked(Landroid/os/Bundle;IILcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;Ljava/util/List;)Z
    .locals 15
    .param p1, "args"    # Landroid/os/Bundle;
    .param p2, "flags"    # I
    .param p3, "disabledContext"    # I
    .param p4, "showCallback"    # Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;
    .param p5, "activityToken"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "II",
            "Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;",
            "Landroid/os/IBinder;",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 228
    .local p6, "topActivities":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBound:Z

    #@2
    if-eqz v1, :cond_13

    #@4
    .line 229
    iget-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    #@6
    if-nez v1, :cond_0

    #@8
    .line 230
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@a
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mBindIntent:Landroid/content/Intent;

    #@c
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullConnection:Landroid/content/ServiceConnection;

    #@e
    .line 233
    new-instance v6, Landroid/os/UserHandle;

    #@10
    iget v7, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mUser:I

    #@12
    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    #@15
    .line 231
    const v7, 0xc000001

    #@18
    .line 230
    invoke-virtual {v1, v2, v3, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    #@1b
    move-result v1

    #@1c
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mFullyBound:Z

    #@1e
    .line 235
    :cond_0
    const/4 v1, 0x1

    #@1f
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShown:Z

    #@21
    .line 236
    const/4 v11, 0x1

    #@22
    .line 238
    .local v11, "isAssistDataAllowed":Z
    :try_start_0
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@24
    invoke-interface {v1}, Landroid/app/IActivityManager;->isAssistDataAllowedOnCurrentActivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    #@27
    move-result v11

    #@28
    .line 241
    .end local v11    # "isAssistDataAllowed":Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->getUserDisabledShowContextLocked()I

    #@2b
    move-result v1

    #@2c
    or-int p3, p3, v1

    #@2e
    .line 242
    if-eqz v11, :cond_3

    #@30
    .line 243
    and-int/lit8 v1, p3, 0x1

    #@32
    if-nez v1, :cond_2

    #@34
    const/4 v14, 0x1

    #@35
    .line 244
    .local v14, "structureEnabled":Z
    :goto_1
    if-eqz v11, :cond_5

    #@37
    if-eqz v14, :cond_5

    #@39
    .line 245
    and-int/lit8 v1, p3, 0x2

    #@3b
    if-nez v1, :cond_4

    #@3d
    const/4 v13, 0x1

    #@3e
    .line 246
    .local v13, "screenshotEnabled":Z
    :goto_2
    move-object/from16 v0, p1

    #@40
    iput-object v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    #@42
    .line 247
    move/from16 v0, p2

    #@44
    iput v0, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    #@46
    .line 248
    const/4 v1, 0x0

    #@47
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@49
    .line 249
    const/4 v1, 0x0

    #@4a
    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    #@4c
    .line 250
    const/4 v12, 0x0

    #@4d
    .line 251
    .local v12, "needDisclosure":Z
    and-int/lit8 v1, p2, 0x1

    #@4f
    if-eqz v1, :cond_f

    #@51
    .line 252
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAppOps:Landroid/app/AppOpsManager;

    #@53
    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    #@55
    .line 253
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    #@57
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@5a
    move-result-object v3

    #@5b
    .line 252
    const/16 v6, 0x31

    #@5d
    invoke-virtual {v1, v6, v2, v3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    #@60
    move-result v1

    #@61
    if-nez v1, :cond_e

    #@63
    if-eqz v14, :cond_e

    #@65
    .line 255
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    #@67
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@6a
    .line 256
    if-eqz p5, :cond_6

    #@6c
    const/4 v8, 0x1

    #@6d
    .line 258
    .local v8, "count":I
    :goto_3
    const/4 v10, 0x0

    #@6e
    .local v10, "i":I
    :goto_4
    if-ge v10, v8, :cond_b

    #@70
    const/4 v1, 0x1

    #@71
    if-ge v10, v1, :cond_b

    #@73
    .line 259
    const/4 v1, 0x1

    #@74
    if-ne v8, v1, :cond_7

    #@76
    move-object/from16 v5, p5

    #@78
    .line 261
    .local v5, "topActivity":Landroid/os/IBinder;
    :goto_5
    :try_start_1
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@7a
    const-string/jumbo v2, "assist_with_context"

    #@7d
    const/4 v3, 0x1

    #@7e
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@81
    .line 262
    new-instance v4, Landroid/os/Bundle;

    #@83
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    #@86
    .line 263
    .local v4, "receiverExtras":Landroid/os/Bundle;
    const-string/jumbo v1, "index"

    #@89
    invoke-virtual {v4, v1, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@8c
    .line 264
    const-string/jumbo v1, "count"

    #@8f
    invoke-virtual {v4, v1, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@92
    .line 265
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAm:Landroid/app/IActivityManager;

    #@94
    .line 266
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistReceiver:Lcom/android/internal/os/IResultReceiver;

    #@96
    .line 267
    if-nez v10, :cond_8

    #@98
    const/4 v6, 0x1

    #@99
    :goto_6
    if-nez v10, :cond_9

    #@9b
    const/4 v7, 0x1

    #@9c
    .line 265
    :goto_7
    const/4 v2, 0x1

    #@9d
    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->requestAssistContextExtras(ILcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    #@a0
    move-result v1

    #@a1
    if-eqz v1, :cond_a

    #@a3
    .line 268
    const/4 v12, 0x1

    #@a4
    .line 269
    iget v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I

    #@a6
    add-int/lit8 v1, v1, 0x1

    #@a8
    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingAssistDataCount:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    #@aa
    .line 258
    .end local v4    # "receiverExtras":Landroid/os/Bundle;
    :cond_1
    :goto_8
    add-int/lit8 v10, v10, 0x1

    #@ac
    goto :goto_4

    #@ad
    .line 243
    .end local v5    # "topActivity":Landroid/os/IBinder;
    .end local v8    # "count":I
    .end local v10    # "i":I
    .end local v12    # "needDisclosure":Z
    .end local v13    # "screenshotEnabled":Z
    .end local v14    # "structureEnabled":Z
    :cond_2
    const/4 v14, 0x0

    #@ae
    .restart local v14    # "structureEnabled":Z
    goto :goto_1

    #@af
    .line 242
    .end local v14    # "structureEnabled":Z
    :cond_3
    const/4 v14, 0x0

    #@b0
    .restart local v14    # "structureEnabled":Z
    goto :goto_1

    #@b1
    .line 245
    :cond_4
    const/4 v13, 0x0

    #@b2
    .restart local v13    # "screenshotEnabled":Z
    goto :goto_2

    #@b3
    .line 244
    .end local v13    # "screenshotEnabled":Z
    :cond_5
    const/4 v13, 0x0

    #@b4
    .restart local v13    # "screenshotEnabled":Z
    goto :goto_2

    #@b5
    .line 256
    .restart local v12    # "needDisclosure":Z
    :cond_6
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    #@b8
    move-result v8

    #@b9
    .restart local v8    # "count":I
    goto :goto_3

    #@ba
    .line 259
    .restart local v10    # "i":I
    :cond_7
    move-object/from16 v0, p6

    #@bc
    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@bf
    move-result-object v5

    #@c0
    check-cast v5, Landroid/os/IBinder;

    #@c2
    .restart local v5    # "topActivity":Landroid/os/IBinder;
    goto :goto_5

    #@c3
    .line 267
    .restart local v4    # "receiverExtras":Landroid/os/Bundle;
    :cond_8
    const/4 v6, 0x0

    #@c4
    goto :goto_6

    #@c5
    :cond_9
    const/4 v7, 0x0

    #@c6
    goto :goto_7

    #@c7
    .line 270
    :cond_a
    if-nez v10, :cond_1

    #@c9
    .line 272
    const/4 v1, 0x1

    #@ca
    :try_start_2
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@cc
    .line 273
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    #@ce
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    #@d1
    .line 274
    const/4 v13, 0x0

    #@d2
    .line 287
    .end local v4    # "receiverExtras":Landroid/os/Bundle;
    .end local v5    # "topActivity":Landroid/os/IBinder;
    .end local v8    # "count":I
    .end local v10    # "i":I
    :cond_b
    :goto_9
    const/4 v1, 0x0

    #@d3
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    #@d5
    .line 288
    and-int/lit8 v1, p2, 0x2

    #@d7
    if-eqz v1, :cond_11

    #@d9
    .line 289
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAppOps:Landroid/app/AppOpsManager;

    #@db
    iget v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallingUid:I

    #@dd
    .line 290
    iget-object v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    #@df
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@e2
    move-result-object v3

    #@e3
    .line 289
    const/16 v6, 0x32

    #@e5
    invoke-virtual {v1, v6, v2, v3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    #@e8
    move-result v1

    #@e9
    if-nez v1, :cond_10

    #@eb
    if-eqz v13, :cond_10

    #@ed
    .line 293
    :try_start_3
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@ef
    const-string/jumbo v2, "assist_with_screen"

    #@f2
    const/4 v3, 0x1

    #@f3
    invoke-static {v1, v2, v3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    #@f6
    .line 294
    const/4 v12, 0x1

    #@f7
    .line 295
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mIWindowManager:Landroid/view/IWindowManager;

    #@f9
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshotReceiver:Lcom/android/internal/app/IAssistScreenshotReceiver;

    #@fb
    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->requestAssistScreenshot(Lcom/android/internal/app/IAssistScreenshotReceiver;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    #@fe
    .line 305
    :goto_a
    if-eqz v12, :cond_c

    #@100
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mContext:Landroid/content/Context;

    #@102
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSessionComponentName:Landroid/content/ComponentName;

    #@104
    invoke-static {v1, v2}, Lcom/android/internal/app/AssistUtils;->shouldDisclose(Landroid/content/Context;Landroid/content/ComponentName;)Z

    #@107
    move-result v1

    #@108
    if-eqz v1, :cond_c

    #@10a
    .line 306
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHandler:Landroid/os/Handler;

    #@10c
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowAssistDisclosureRunnable:Ljava/lang/Runnable;

    #@10e
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    #@111
    .line 308
    :cond_c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@113
    if-eqz v1, :cond_12

    #@115
    .line 310
    :try_start_4
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mSession:Landroid/service/voice/IVoiceInteractionSession;

    #@117
    iget-object v2, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    #@119
    iget v3, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I

    #@11b
    move-object/from16 v0, p4

    #@11d
    invoke-interface {v1, v2, v3, v0}, Landroid/service/voice/IVoiceInteractionSession;->show(Landroid/os/Bundle;ILcom/android/internal/app/IVoiceInteractionSessionShowCallback;)V

    #@120
    .line 311
    const/4 v1, 0x0

    #@121
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowArgs:Landroid/os/Bundle;

    #@123
    .line 312
    const/4 v1, 0x0

    #@124
    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mShowFlags:I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    #@126
    .line 315
    :goto_b
    invoke-virtual {p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->deliverSessionDataLocked()V

    #@129
    .line 319
    :cond_d
    :goto_c
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mCallback:Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;

    #@12b
    invoke-interface {v1, p0}, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$Callback;->onSessionShown(Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;)V

    #@12e
    .line 320
    const/4 v1, 0x1

    #@12f
    return v1

    #@130
    .line 281
    :cond_e
    const/4 v1, 0x1

    #@131
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveAssistData:Z

    #@133
    .line 282
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    #@135
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@138
    goto :goto_9

    #@139
    .line 285
    :cond_f
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mAssistData:Ljava/util/ArrayList;

    #@13b
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    #@13e
    goto :goto_9

    #@13f
    .line 299
    :cond_10
    const/4 v1, 0x1

    #@140
    iput-boolean v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mHaveScreenshot:Z

    #@142
    .line 300
    const/4 v1, 0x0

    #@143
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    #@145
    goto :goto_a

    #@146
    .line 303
    :cond_11
    const/4 v1, 0x0

    #@147
    iput-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mScreenshot:Landroid/graphics/Bitmap;

    #@149
    goto :goto_a

    #@14a
    .line 316
    :cond_12
    if-eqz p4, :cond_d

    #@14c
    .line 317
    iget-object v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;->mPendingShowCallbacks:Ljava/util/ArrayList;

    #@14e
    move-object/from16 v0, p4

    #@150
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@153
    goto :goto_c

    #@154
    .line 322
    .end local v12    # "needDisclosure":Z
    .end local v13    # "screenshotEnabled":Z
    .end local v14    # "structureEnabled":Z
    :cond_13
    if-eqz p4, :cond_14

    #@156
    .line 324
    :try_start_5
    invoke-interface/range {p4 .. p4}, Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;->onFailed()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    #@159
    .line 328
    :cond_14
    :goto_d
    const/4 v1, 0x0

    #@15a
    return v1

    #@15b
    .line 325
    :catch_0
    move-exception v9

    #@15c
    .local v9, "e":Landroid/os/RemoteException;
    goto :goto_d

    #@15d
    .line 313
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v12    # "needDisclosure":Z
    .restart local v13    # "screenshotEnabled":Z
    .restart local v14    # "structureEnabled":Z
    :catch_1
    move-exception v9

    #@15e
    .restart local v9    # "e":Landroid/os/RemoteException;
    goto :goto_b

    #@15f
    .line 296
    .end local v9    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v9

    #@160
    .restart local v9    # "e":Landroid/os/RemoteException;
    goto :goto_a

    #@161
    .line 277
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v5    # "topActivity":Landroid/os/IBinder;
    .restart local v8    # "count":I
    .restart local v10    # "i":I
    :catch_3
    move-exception v9

    #@162
    .restart local v9    # "e":Landroid/os/RemoteException;
    goto/16 :goto_8

    #@164
    .line 239
    .end local v5    # "topActivity":Landroid/os/IBinder;
    .end local v8    # "count":I
    .end local v9    # "e":Landroid/os/RemoteException;
    .end local v10    # "i":I
    .end local v12    # "needDisclosure":Z
    .end local v13    # "screenshotEnabled":Z
    .end local v14    # "structureEnabled":Z
    .restart local v11    # "isAssistDataAllowed":Z
    :catch_4
    move-exception v9

    #@165
    .restart local v9    # "e":Landroid/os/RemoteException;
    goto/16 :goto_0
.end method
