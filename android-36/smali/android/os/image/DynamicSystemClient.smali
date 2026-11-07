.class public Landroid/os/image/DynamicSystemClient;
.super Ljava/lang/Object;
.source "DynamicSystemClient.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;,
        Landroid/os/image/DynamicSystemClient$IncomingHandler;,
        Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;,
        Landroid/os/image/DynamicSystemClient$StatusChangedCause;,
        Landroid/os/image/DynamicSystemClient$InstallationStatus;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_HIDE_NOTIFICATION:Ljava/lang/String; = "android.os.image.action.HIDE_NOTIFICATION"

.field public static final blacklist ACTION_NOTIFY_IF_IN_USE:Ljava/lang/String; = "android.os.image.action.NOTIFY_IF_IN_USE"

.field public static final blacklist ACTION_NOTIFY_KEYGUARD_DISMISSED:Ljava/lang/String; = "android.os.image.action.NOTIFY_KEYGUARD_DISMISSED"

.field public static final blacklist ACTION_START_INSTALL:Ljava/lang/String; = "android.os.image.action.START_INSTALL"

.field public static final whitelist CAUSE_ERROR_EXCEPTION:I = 0x6

.field public static final whitelist CAUSE_ERROR_INVALID_URL:I = 0x4

.field public static final whitelist CAUSE_ERROR_IO:I = 0x3

.field public static final whitelist CAUSE_ERROR_IPC:I = 0x5

.field public static final whitelist CAUSE_INSTALL_CANCELLED:I = 0x2

.field public static final whitelist CAUSE_INSTALL_COMPLETED:I = 0x1

.field public static final whitelist CAUSE_NOT_SPECIFIED:I = 0x0

.field public static final blacklist KEY_ENABLE_WHEN_COMPLETED:Ljava/lang/String; = "KEY_ENABLE_WHEN_COMPLETED"

.field public static final blacklist KEY_EXCEPTION_DETAIL:Ljava/lang/String; = "KEY_EXCEPTION_DETAIL"

.field public static final blacklist KEY_INSTALLED_SIZE:Ljava/lang/String; = "KEY_INSTALLED_SIZE"

.field public static final blacklist KEY_KEYGUARD_USE_DEFAULT_STRINGS:Ljava/lang/String; = "KEY_KEYGUARD_USE_DEFAULT_STRINGS"

.field public static final blacklist KEY_ONE_SHOT:Ljava/lang/String; = "KEY_ONE_SHOT"

.field public static final blacklist KEY_SYSTEM_SIZE:Ljava/lang/String; = "KEY_SYSTEM_SIZE"

.field public static final blacklist KEY_USERDATA_SIZE:Ljava/lang/String; = "KEY_USERDATA_SIZE"

.field public static final blacklist MSG_POST_STATUS:I = 0x3

.field public static final blacklist MSG_REGISTER_LISTENER:I = 0x1

.field public static final blacklist MSG_UNREGISTER_LISTENER:I = 0x2

.field public static final whitelist STATUS_IN_PROGRESS:I = 0x2

.field public static final whitelist STATUS_IN_USE:I = 0x4

.field public static final whitelist STATUS_NOT_STARTED:I = 0x1

.field public static final whitelist STATUS_READY:I = 0x3

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "DynamicSystemClient"


# instance fields
.field private blacklist mBound:Z

.field private final blacklist mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

.field private final blacklist mMessenger:Landroid/os/Messenger;

.field private blacklist mService:Landroid/os/Messenger;


# direct methods
.method public static synthetic blacklist $r8$lambda$2SXZg9fRDLJCj1VpE2MhKQT3a7k(Landroid/os/image/DynamicSystemClient;IIJLjava/lang/Throwable;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/os/image/DynamicSystemClient;->lambda$notifyOnStatusChangedListener$0(IIJLjava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMessenger(Landroid/os/image/DynamicSystemClient;)Landroid/os/Messenger;
    .registers 1

    iget-object p0, p0, Landroid/os/image/DynamicSystemClient;->mMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmService(Landroid/os/image/DynamicSystemClient;)Landroid/os/Messenger;
    .registers 1

    iget-object p0, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/os/image/DynamicSystemClient;Landroid/os/Messenger;)V
    .registers 2

    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleMessage(Landroid/os/image/DynamicSystemClient;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/image/DynamicSystemClient;->handleMessage(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyOnStatusChangedListener(Landroid/os/image/DynamicSystemClient;IIJLjava/lang/Throwable;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Landroid/os/image/DynamicSystemClient;->notifyOnStatusChangedListener(IIJLjava/lang/Throwable;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    .line 317
    new-instance v0, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;-><init>(Landroid/os/image/DynamicSystemClient;Landroid/os/image/DynamicSystemClient-IA;)V

    iput-object v0, p0, Landroid/os/image/DynamicSystemClient;->mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    .line 318
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Landroid/os/image/DynamicSystemClient$IncomingHandler;

    invoke-direct {v1, p0}, Landroid/os/image/DynamicSystemClient$IncomingHandler;-><init>(Landroid/os/image/DynamicSystemClient;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/os/image/DynamicSystemClient;->mMessenger:Landroid/os/Messenger;

    .line 319
    return-void
.end method

.method private blacklist handleMessage(Landroid/os/Message;)V
    .registers 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 451
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_2d

    .line 453
    :pswitch_6
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 454
    .local v2, "status":I
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 456
    .local v3, "cause":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 457
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "KEY_INSTALLED_SIZE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 458
    .local v4, "progress":J
    const-string v1, "KEY_EXCEPTION_DETAIL"

    const-class v6, Landroid/os/ParcelableException;

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/os/ParcelableException;

    .line 461
    .local v7, "t":Landroid/os/ParcelableException;
    if-nez v7, :cond_23

    const/4 v1, 0x0

    goto :goto_27

    :cond_23
    invoke-virtual {v7}, Landroid/os/ParcelableException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    :goto_27
    move-object v6, v1

    .line 463
    .local v6, "detail":Ljava/lang/Throwable;
    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Landroid/os/image/DynamicSystemClient;->notifyOnStatusChangedListener(IIJLjava/lang/Throwable;)V

    .line 464
    nop

    .line 469
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v2    # "status":I
    .end local v3    # "cause":I
    .end local v4    # "progress":J
    .end local v6    # "detail":Ljava/lang/Throwable;
    .end local v7    # "t":Landroid/os/ParcelableException;
    :goto_2d
    return-void

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_6
    .end packed-switch
.end method

.method private synthetic blacklist lambda$notifyOnStatusChangedListener$0(IIJLjava/lang/Throwable;)V
    .registers 12
    .param p1, "status"    # I
    .param p2, "cause"    # I
    .param p3, "progress"    # J
    .param p5, "detail"    # Ljava/lang/Throwable;

    .line 348
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    .end local p1    # "status":I
    .end local p2    # "cause":I
    .end local p3    # "progress":J
    .end local p5    # "detail":Ljava/lang/Throwable;
    .local v1, "status":I
    .local v2, "cause":I
    .local v3, "progress":J
    .local v5, "detail":Ljava/lang/Throwable;
    invoke-interface/range {v0 .. v5}, Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;->onStatusChanged(IIJLjava/lang/Throwable;)V

    .line 349
    return-void
.end method

.method private blacklist notifyOnStatusChangedListener(IIJLjava/lang/Throwable;)V
    .registers 15
    .param p1, "status"    # I
    .param p2, "cause"    # I
    .param p3, "progress"    # J
    .param p5, "detail"    # Ljava/lang/Throwable;

    .line 344
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    if-eqz v0, :cond_2b

    .line 345
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_18

    .line 346
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/os/image/DynamicSystemClient$$ExternalSyntheticLambda0;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    .end local p1    # "status":I
    .end local p2    # "cause":I
    .end local p3    # "progress":J
    .end local p5    # "detail":Ljava/lang/Throwable;
    .local v3, "status":I
    .local v4, "cause":I
    .local v5, "progress":J
    .local v7, "detail":Ljava/lang/Throwable;
    invoke-direct/range {v1 .. v7}, Landroid/os/image/DynamicSystemClient$$ExternalSyntheticLambda0;-><init>(Landroid/os/image/DynamicSystemClient;IIJLjava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_30

    .line 351
    .end local v3    # "status":I
    .end local v4    # "cause":I
    .end local v5    # "progress":J
    .end local v7    # "detail":Ljava/lang/Throwable;
    .restart local p1    # "status":I
    .restart local p2    # "cause":I
    .restart local p3    # "progress":J
    .restart local p5    # "detail":Ljava/lang/Throwable;
    :cond_18
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    .end local p1    # "status":I
    .end local p2    # "cause":I
    .end local p3    # "progress":J
    .end local p5    # "detail":Ljava/lang/Throwable;
    .restart local v3    # "status":I
    .restart local v4    # "cause":I
    .restart local v5    # "progress":J
    .restart local v7    # "detail":Ljava/lang/Throwable;
    move-object v8, v7

    move-wide v6, v5

    move v5, v4

    move v4, v3

    .end local v3    # "status":I
    .end local v7    # "detail":Ljava/lang/Throwable;
    .local v4, "status":I
    .local v5, "cause":I
    .local v6, "progress":J
    .local v8, "detail":Ljava/lang/Throwable;
    iget-object v3, v2, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    invoke-interface/range {v3 .. v8}, Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;->onStatusChanged(IIJLjava/lang/Throwable;)V

    move v3, v4

    move v4, v5

    move-wide v5, v6

    move-object v7, v8

    .end local v6    # "progress":J
    .end local v8    # "detail":Ljava/lang/Throwable;
    .restart local v3    # "status":I
    .local v4, "cause":I
    .local v5, "progress":J
    .restart local v7    # "detail":Ljava/lang/Throwable;
    goto :goto_30

    .line 344
    .end local v3    # "status":I
    .end local v4    # "cause":I
    .end local v5    # "progress":J
    .end local v7    # "detail":Ljava/lang/Throwable;
    .restart local p1    # "status":I
    .restart local p2    # "cause":I
    .restart local p3    # "progress":J
    .restart local p5    # "detail":Ljava/lang/Throwable;
    :cond_2b
    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    move-object v7, p5

    .line 354
    .end local p1    # "status":I
    .end local p2    # "cause":I
    .end local p3    # "progress":J
    .end local p5    # "detail":Ljava/lang/Throwable;
    .restart local v3    # "status":I
    .restart local v4    # "cause":I
    .restart local v5    # "progress":J
    .restart local v7    # "detail":Ljava/lang/Throwable;
    :goto_30
    return-void
.end method


# virtual methods
.method public whitelist bind()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 365
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 366
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.dynsystem"

    const-string v2, "com.android.dynsystem.DynamicSystemInstallationService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/os/image/DynamicSystemClient;->mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 371
    iput-boolean v3, p0, Landroid/os/image/DynamicSystemClient;->mBound:Z

    .line 372
    return-void
.end method

.method public whitelist setOnStatusChangedListener(Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    .line 338
    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    .line 339
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 340
    return-void
.end method

.method public whitelist setOnStatusChangedListener(Ljava/util/concurrent/Executor;Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    .line 328
    iput-object p2, p0, Landroid/os/image/DynamicSystemClient;->mListener:Landroid/os/image/DynamicSystemClient$OnStatusChangedListener;

    .line 329
    iput-object p1, p0, Landroid/os/image/DynamicSystemClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 330
    return-void
.end method

.method public whitelist start(Landroid/net/Uri;J)V
    .registers 10
    .param p1, "systemUrl"    # Landroid/net/Uri;
    .param p2, "systemSize"    # J
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 417
    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .end local p1    # "systemUrl":Landroid/net/Uri;
    .end local p2    # "systemSize":J
    .local v1, "systemUrl":Landroid/net/Uri;
    .local v2, "systemSize":J
    invoke-virtual/range {v0 .. v5}, Landroid/os/image/DynamicSystemClient;->start(Landroid/net/Uri;JJ)V

    .line 418
    return-void
.end method

.method public whitelist start(Landroid/net/Uri;JJ)V
    .registers 9
    .param p1, "systemUrl"    # Landroid/net/Uri;
    .param p2, "systemSize"    # J
    .param p4, "userdataSize"    # J

    .line 435
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 437
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.dynsystem"

    const-string v2, "com.android.dynsystem.VerificationActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 441
    const-string v1, "android.os.image.action.START_INSTALL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 442
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 444
    const-string v1, "KEY_SYSTEM_SIZE"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 445
    const-string v1, "KEY_USERDATA_SIZE"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 447
    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 448
    return-void
.end method

.method public whitelist unbind()V
    .registers 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 382
    iget-boolean v0, p0, Landroid/os/image/DynamicSystemClient;->mBound:Z

    if-nez v0, :cond_5

    .line 383
    return-void

    .line 386
    :cond_5
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    if-eqz v0, :cond_21

    .line 388
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_b
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 389
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mMessenger:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 390
    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mService:Landroid/os/Messenger;

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    .line 393
    .end local v0    # "msg":Landroid/os/Message;
    goto :goto_21

    .line 391
    :catch_19
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "DynamicSystemClient"

    const-string v2, "Unable to unregister from installation service"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_21
    :goto_21
    iget-object v0, p0, Landroid/os/image/DynamicSystemClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/os/image/DynamicSystemClient;->mConnection:Landroid/os/image/DynamicSystemClient$DynSystemServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 399
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/image/DynamicSystemClient;->mBound:Z

    .line 400
    return-void
.end method
