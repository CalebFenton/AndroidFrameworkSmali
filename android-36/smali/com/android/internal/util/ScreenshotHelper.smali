.class public Lcom/android/internal/util/ScreenshotHelper;
.super Ljava/lang/Object;
.source "ScreenshotHelper.java"


# static fields
.field public static final blacklist SCREENSHOT_MSG_PROCESS_COMPLETE:I = 0x2

.field public static final blacklist SCREENSHOT_MSG_URI:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ScreenshotHelper"


# instance fields
.field private final blacklist SCREENSHOT_TIMEOUT_MS:I

.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mScreenshotConnection:Landroid/content/ServiceConnection;

.field private final blacklist mScreenshotLock:Ljava/lang/Object;

.field private blacklist mScreenshotService:Landroid/os/IBinder;


# direct methods
.method public static synthetic blacklist $r8$lambda$0A2Yp-uMSWp8ZUyiYvgWHutaph4(Lcom/android/internal/util/ScreenshotHelper;Ljava/util/function/Consumer;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/util/ScreenshotHelper;->lambda$takeScreenshotInternal$0(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenshotConnection(Lcom/android/internal/util/ScreenshotHelper;)Landroid/content/ServiceConnection;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenshotLock(Lcom/android/internal/util/ScreenshotHelper;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmScreenshotService(Lcom/android/internal/util/ScreenshotHelper;)Landroid/os/IBinder;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmScreenshotService(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/IBinder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyScreenshotError(Lcom/android/internal/util/ScreenshotHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->notifyScreenshotError()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mresetConnection(Lcom/android/internal/util/ScreenshotHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->resetConnection()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x2710

    iput v0, p0, Lcom/android/internal/util/ScreenshotHelper;->SCREENSHOT_TIMEOUT_MS:I

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    .line 40
    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 43
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper$1;

    invoke-direct {v0, p0}, Lcom/android/internal/util/ScreenshotHelper$1;-><init>(Lcom/android/internal/util/ScreenshotHelper;)V

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 55
    iput-object p1, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    .line 56
    return-void
.end method

.method private synthetic blacklist lambda$takeScreenshotInternal$0(Ljava/util/function/Consumer;)V
    .registers 5
    .param p1, "completionConsumer"    # Ljava/util/function/Consumer;

    .line 113
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v0

    .line 114
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_14

    .line 115
    const-string v1, "ScreenshotHelper"

    const-string v2, "Timed out before getting screenshot capture response"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->resetConnection()V

    .line 117
    invoke-direct {p0}, Lcom/android/internal/util/ScreenshotHelper;->notifyScreenshotError()V

    .line 119
    :cond_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1c

    .line 120
    if-eqz p1, :cond_1b

    .line 121
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 123
    :cond_1b
    return-void

    .line 119
    :catchall_1c
    move-exception v1

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private blacklist notifyScreenshotError()V
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    .line 239
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10402cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 243
    .local v0, "errorComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 244
    .local v1, "errorIntent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 245
    const/high16 v2, 0x14000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 247
    iget-object v2, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 248
    return-void
.end method

.method private blacklist resetConnection()V
    .registers 4

    .line 221
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_10

    .line 222
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 223
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 224
    iput-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    .line 227
    :cond_10
    :try_start_10
    iget-object v0, p0, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/util/ScreenshotHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_17} :catch_18

    .line 230
    goto :goto_20

    .line 228
    :catch_18
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "ScreenshotHelper"

    const-string v2, "Attempted to remove broadcast receiver twice"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_20
    return-void
.end method


# virtual methods
.method public blacklist takeScreenshot(ILandroid/os/Handler;Ljava/util/function/Consumer;)V
    .registers 6
    .param p1, "source"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p3, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    new-instance v0, Lcom/android/internal/util/ScreenshotRequest$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/android/internal/util/ScreenshotRequest$Builder;-><init>(II)V

    .line 72
    invoke-virtual {v0}, Lcom/android/internal/util/ScreenshotRequest$Builder;->build()Lcom/android/internal/util/ScreenshotRequest;

    move-result-object v0

    .line 73
    .local v0, "request":Lcom/android/internal/util/ScreenshotRequest;
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V

    .line 74
    return-void
.end method

.method public blacklist takeScreenshot(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;)V
    .registers 10
    .param p1, "request"    # Lcom/android/internal/util/ScreenshotRequest;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ScreenshotRequest;",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p3, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    const-wide/16 v4, 0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "request":Lcom/android/internal/util/ScreenshotRequest;
    .end local p2    # "handler":Landroid/os/Handler;
    .end local p3    # "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    .local v1, "request":Lcom/android/internal/util/ScreenshotRequest;
    .local v2, "handler":Landroid/os/Handler;
    .local v3, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/util/ScreenshotHelper;->takeScreenshotInternal(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;J)V

    .line 90
    return-void
.end method

.method public blacklist takeScreenshotInternal(Lcom/android/internal/util/ScreenshotRequest;Landroid/os/Handler;Ljava/util/function/Consumer;J)V
    .registers 22
    .param p1, "request"    # Lcom/android/internal/util/ScreenshotRequest;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p4, "timeoutMs"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ScreenshotRequest;",
            "Landroid/os/Handler;",
            "Ljava/util/function/Consumer<",
            "Landroid/net/Uri;",
            ">;J)V"
        }
    .end annotation

    .line 108
    .local p3, "completionConsumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/net/Uri;>;"
    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-wide/from16 v6, p4

    iget-object v8, v1, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotLock:Ljava/lang/Object;

    monitor-enter v8

    .line 109
    :try_start_9
    iget-object v0, v1, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    iget-object v2, v1, Lcom/android/internal/util/ScreenshotHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.USER_SWITCHED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 112
    new-instance v5, Lcom/android/internal/util/ScreenshotHelper$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v3}, Lcom/android/internal/util/ScreenshotHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/util/ScreenshotHelper;Ljava/util/function/Consumer;)V
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_b5

    .line 125
    .local v5, "mScreenshotTimeout":Ljava/lang/Runnable;
    const/4 v0, 0x0

    const/4 v9, 0x0

    move-object/from16 v10, p1

    :try_start_21
    invoke-static {v9, v0, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    move-object v11, v2

    .line 127
    .local v11, "msg":Landroid/os/Message;
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper$2;

    invoke-virtual/range {p2 .. p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_b3

    move-object/from16 v4, p2

    :try_start_2e
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/ScreenshotHelper$2;-><init>(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Looper;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;)V

    move-object v12, v0

    .line 145
    .local v12, "h":Landroid/os/Handler;
    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, v12}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, v11, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 147
    iget-object v0, v1, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_70

    iget-object v0, v1, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    if-nez v0, :cond_42

    goto :goto_70

    .line 202
    :cond_42
    new-instance v0, Landroid/os/Messenger;

    iget-object v2, v1, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotService:Landroid/os/IBinder;

    invoke-direct {v0, v2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V
    :try_end_49
    .catchall {:try_start_2e .. :try_end_49} :catchall_bc

    move-object v2, v0

    .line 205
    .local v2, "messenger":Landroid/os/Messenger;
    :try_start_4a
    invoke-virtual {v2, v11}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_4d} :catch_4e
    .catchall {:try_start_4a .. :try_end_4d} :catchall_bc

    .line 211
    goto :goto_6c

    .line 206
    :catch_4e
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4f
    const-string v13, "ScreenshotHelper"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Couldn\'t take screenshot: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    if-eqz v3, :cond_6c

    .line 209
    invoke-interface {v3, v9}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 212
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_6c
    :goto_6c
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b1

    .line 148
    .end local v2    # "messenger":Landroid/os/Messenger;
    :cond_70
    :goto_70
    iget-object v0, v1, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_77

    .line 149
    invoke-direct {v1}, Lcom/android/internal/util/ScreenshotHelper;->resetConnection()V

    .line 151
    :cond_77
    iget-object v0, v1, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    .line 152
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10402cd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    move-object v9, v0

    .line 154
    .local v9, "serviceComponent":Landroid/content/ComponentName;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v13, v0

    .line 156
    .local v13, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {v13, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 157
    new-instance v0, Lcom/android/internal/util/ScreenshotHelper$3;

    move-object v2, v11

    .end local v11    # "msg":Landroid/os/Message;
    .local v2, "msg":Landroid/os/Message;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/ScreenshotHelper$3;-><init>(Lcom/android/internal/util/ScreenshotHelper;Landroid/os/Message;Ljava/util/function/Consumer;Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 193
    .local v0, "conn":Landroid/content/ServiceConnection;
    iget-object v3, v1, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const v14, 0x4000001

    invoke-virtual {v3, v13, v0, v14, v11}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-eqz v3, :cond_ab

    .line 196
    iput-object v0, v1, Lcom/android/internal/util/ScreenshotHelper;->mScreenshotConnection:Landroid/content/ServiceConnection;

    .line 197
    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_b0

    .line 199
    :cond_ab
    iget-object v3, v1, Lcom/android/internal/util/ScreenshotHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 201
    .end local v0    # "conn":Landroid/content/ServiceConnection;
    .end local v9    # "serviceComponent":Landroid/content/ComponentName;
    .end local v13    # "serviceIntent":Landroid/content/Intent;
    :goto_b0
    nop

    .line 214
    .end local v2    # "msg":Landroid/os/Message;
    .end local v5    # "mScreenshotTimeout":Ljava/lang/Runnable;
    .end local v12    # "h":Landroid/os/Handler;
    :goto_b1
    monitor-exit v8

    .line 215
    return-void

    .line 214
    :catchall_b3
    move-exception v0

    goto :goto_b8

    :catchall_b5
    move-exception v0

    move-object/from16 v10, p1

    :goto_b8
    move-object/from16 v4, p2

    :goto_ba
    monitor-exit v8
    :try_end_bb
    .catchall {:try_start_4f .. :try_end_bb} :catchall_bc

    throw v0

    :catchall_bc
    move-exception v0

    goto :goto_ba
.end method
