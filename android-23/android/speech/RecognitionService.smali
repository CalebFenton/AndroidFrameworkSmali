.class public abstract Landroid/speech/RecognitionService;
.super Landroid/app/Service;
.source "RecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/RecognitionService$StartListeningArgs;,
        Landroid/speech/RecognitionService$Callback;,
        Landroid/speech/RecognitionService$RecognitionServiceBinder;,
        Landroid/speech/RecognitionService$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_RESET:I = 0x4

.field private static final MSG_START_LISTENING:I = 0x1

.field private static final MSG_STOP_LISTENING:I = 0x2

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.speech.RecognitionService"

.field public static final SERVICE_META_DATA:Ljava/lang/String; = "android.speech"

.field private static final TAG:Ljava/lang/String; = "RecognitionService"


# instance fields
.field private mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

.field private mCurrentCallback:Landroid/speech/RecognitionService$Callback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/speech/RecognitionService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)Z
    .locals 1
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->checkPermissions(Landroid/speech/IRecognitionListener;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchCancel(Landroid/speech/IRecognitionListener;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Landroid/speech/RecognitionService;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/speech/RecognitionService;->dispatchClearCallback()V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Landroid/speech/RecognitionService;Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;
    .param p3, "callingUid"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/speech/RecognitionService;->dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/speech/RecognitionService;->dispatchStopListening(Landroid/speech/IRecognitionListener;)V

    #@3
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    .line 60
    new-instance v0, Landroid/speech/RecognitionService$RecognitionServiceBinder;

    #@5
    invoke-direct {v0, p0}, Landroid/speech/RecognitionService$RecognitionServiceBinder;-><init>(Landroid/speech/RecognitionService;)V

    #@8
    iput-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    #@a
    .line 66
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    #@d
    .line 76
    new-instance v0, Landroid/speech/RecognitionService$1;

    #@f
    invoke-direct {v0, p0}, Landroid/speech/RecognitionService$1;-><init>(Landroid/speech/RecognitionService;)V

    #@12
    iput-object v0, p0, Landroid/speech/RecognitionService;->mHandler:Landroid/os/Handler;

    #@14
    .line 39
    return-void
.end method

.method private checkPermissions(Landroid/speech/IRecognitionListener;)Z
    .locals 4
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 177
    const-string/jumbo v1, "android.permission.RECORD_AUDIO"

    #@4
    invoke-virtual {p0, v1}, Landroid/speech/RecognitionService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 179
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 182
    :cond_0
    :try_start_0
    const-string/jumbo v1, "RecognitionService"

    #@f
    const-string/jumbo v2, "call for recognition service without RECORD_AUDIO permissions"

    #@12
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@15
    .line 183
    const/16 v1, 0x9

    #@17
    invoke-interface {p1, v1}, Landroid/speech/IRecognitionListener;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 187
    :goto_0
    return v3

    #@1b
    .line 184
    :catch_0
    move-exception v0

    #@1c
    .line 185
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "RecognitionService"

    #@1f
    const-string/jumbo v2, "sending ERROR_INSUFFICIENT_PERMISSIONS message failed"

    #@22
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@25
    goto :goto_0
.end method

.method private dispatchCancel(Landroid/speech/IRecognitionListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 141
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 140
    :goto_0
    return-void

    #@6
    .line 143
    :cond_0
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    #@8
    invoke-static {v0}, Landroid/speech/RecognitionService$Callback;->-get0(Landroid/speech/RecognitionService$Callback;)Landroid/speech/IRecognitionListener;

    #@b
    move-result-object v0

    #@c
    invoke-interface {v0}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    #@f
    move-result-object v0

    #@10
    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    #@13
    move-result-object v1

    #@14
    if-eq v0, v1, :cond_1

    #@16
    .line 144
    const-string/jumbo v0, "RecognitionService"

    #@19
    const-string/jumbo v1, "cancel called by client who did not call startListening - ignoring"

    #@1c
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@1f
    goto :goto_0

    #@20
    .line 146
    :cond_1
    iget-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    #@22
    invoke-virtual {p0, v0}, Landroid/speech/RecognitionService;->onCancel(Landroid/speech/RecognitionService$Callback;)V

    #@25
    .line 147
    iput-object v2, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    #@27
    goto :goto_0
.end method

.method private dispatchClearCallback()V
    .locals 1

    #@0
    .prologue
    .line 153
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    #@3
    .line 152
    return-void
.end method

.method private dispatchStartListening(Landroid/content/Intent;Landroid/speech/IRecognitionListener;I)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "listener"    # Landroid/speech/IRecognitionListener;
    .param p3, "callingUid"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 99
    iget-object v2, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 102
    :try_start_0
    invoke-interface {p2}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    #@8
    move-result-object v2

    #@9
    new-instance v3, Landroid/speech/RecognitionService$2;

    #@b
    invoke-direct {v3, p0, p2}, Landroid/speech/RecognitionService$2;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;)V

    #@e
    .line 107
    const/4 v4, 0x0

    #@f
    .line 102
    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@12
    .line 112
    new-instance v2, Landroid/speech/RecognitionService$Callback;

    #@14
    invoke-direct {v2, p0, p2, p3, v5}, Landroid/speech/RecognitionService$Callback;-><init>(Landroid/speech/RecognitionService;Landroid/speech/IRecognitionListener;ILandroid/speech/RecognitionService$Callback;)V

    #@17
    iput-object v2, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    #@19
    .line 113
    iget-object v2, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    #@1b
    invoke-virtual {p0, p1, v2}, Landroid/speech/RecognitionService;->onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V

    #@1e
    .line 98
    :goto_0
    return-void

    #@1f
    .line 108
    :catch_0
    move-exception v1

    #@20
    .line 109
    .local v1, "re":Landroid/os/RemoteException;
    const-string/jumbo v2, "RecognitionService"

    #@23
    const-string/jumbo v3, "dead listener on startListening"

    #@26
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    .line 110
    return-void

    #@2a
    .line 116
    .end local v1    # "re":Landroid/os/RemoteException;
    :cond_0
    const/16 v2, 0x8

    #@2c
    :try_start_1
    invoke-interface {p2, v2}, Landroid/speech/IRecognitionListener;->onError(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    #@2f
    .line 120
    :goto_1
    const-string/jumbo v2, "RecognitionService"

    #@32
    const-string/jumbo v3, "concurrent startListening received - ignoring this call"

    #@35
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@38
    goto :goto_0

    #@39
    .line 117
    :catch_1
    move-exception v0

    #@3a
    .line 118
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "RecognitionService"

    #@3d
    const-string/jumbo v3, "onError call from startListening failed"

    #@40
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@43
    goto :goto_1
.end method

.method private dispatchStopListening(Landroid/speech/IRecognitionListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/speech/IRecognitionListener;

    #@0
    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 127
    const/4 v1, 0x5

    #@5
    invoke-interface {p1, v1}, Landroid/speech/IRecognitionListener;->onError(I)V

    #@8
    .line 128
    const-string/jumbo v1, "RecognitionService"

    #@b
    const-string/jumbo v2, "stopListening called with no preceding startListening - ignoring"

    #@e
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 124
    :goto_0
    return-void

    #@12
    .line 129
    :cond_0
    iget-object v1, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    #@14
    invoke-static {v1}, Landroid/speech/RecognitionService$Callback;->-get0(Landroid/speech/RecognitionService$Callback;)Landroid/speech/IRecognitionListener;

    #@17
    move-result-object v1

    #@18
    invoke-interface {v1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    #@1b
    move-result-object v1

    #@1c
    invoke-interface {p1}, Landroid/speech/IRecognitionListener;->asBinder()Landroid/os/IBinder;

    #@1f
    move-result-object v2

    #@20
    if-eq v1, v2, :cond_1

    #@22
    .line 130
    const/16 v1, 0x8

    #@24
    invoke-interface {p1, v1}, Landroid/speech/IRecognitionListener;->onError(I)V

    #@27
    .line 131
    const-string/jumbo v1, "RecognitionService"

    #@2a
    const-string/jumbo v2, "stopListening called by other caller than startListening - ignoring"

    #@2d
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@30
    goto :goto_0

    #@31
    .line 135
    :catch_0
    move-exception v0

    #@32
    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "RecognitionService"

    #@35
    const-string/jumbo v2, "onError call from stopListening failed"

    #@38
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@3b
    goto :goto_0

    #@3c
    .line 133
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    #@3e
    invoke-virtual {p0, v1}, Landroid/speech/RecognitionService;->onStopListening(Landroid/speech/RecognitionService$Callback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    #@41
    goto :goto_0
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    #@2
    return-object v0
.end method

.method protected abstract onCancel(Landroid/speech/RecognitionService$Callback;)V
.end method

.method public onDestroy()V
    .locals 1

    #@0
    .prologue
    .line 221
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/speech/RecognitionService;->mCurrentCallback:Landroid/speech/RecognitionService$Callback;

    #@3
    .line 222
    iget-object v0, p0, Landroid/speech/RecognitionService;->mBinder:Landroid/speech/RecognitionService$RecognitionServiceBinder;

    #@5
    invoke-virtual {v0}, Landroid/speech/RecognitionService$RecognitionServiceBinder;->clearReference()V

    #@8
    .line 223
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    #@b
    .line 219
    return-void
.end method

.method protected abstract onStartListening(Landroid/content/Intent;Landroid/speech/RecognitionService$Callback;)V
.end method

.method protected abstract onStopListening(Landroid/speech/RecognitionService$Callback;)V
.end method
