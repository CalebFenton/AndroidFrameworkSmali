.class Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;
.super Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Stub;
.source "RcsUceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PublishStateBinder"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$ycTIu2o9RaJe0xI_SWr8iIM6sj4(Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;Landroid/telephony/ims/PublishAttributes;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->lambda$onPublishUpdated$0(Landroid/telephony/ims/PublishAttributes;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;)V
    .registers 3
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "listener"    # Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    .line 424
    invoke-direct {p0}, Landroid/telephony/ims/aidl/IRcsUcePublishStateCallback$Stub;-><init>()V

    .line 425
    iput-object p1, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 426
    iput-object p2, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    .line 427
    return-void
.end method

.method private synthetic blacklist lambda$onPublishUpdated$0(Landroid/telephony/ims/PublishAttributes;)V
    .registers 3
    .param p1, "attributes"    # Landroid/telephony/ims/PublishAttributes;

    .line 436
    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    invoke-interface {v0, p1}, Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;->onPublishStateChange(Landroid/telephony/ims/PublishAttributes;)V

    return-void
.end method


# virtual methods
.method public blacklist onPublishUpdated(Landroid/telephony/ims/PublishAttributes;)V
    .registers 6
    .param p1, "attributes"    # Landroid/telephony/ims/PublishAttributes;

    .line 431
    iget-object v0, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mPublishStateChangeListener:Landroid/telephony/ims/RcsUceAdapter$OnPublishStateChangedListener;

    if-nez v0, :cond_5

    return-void

    .line 433
    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 435
    .local v0, "callingIdentity":J
    :try_start_9
    iget-object v2, p0, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;Landroid/telephony/ims/PublishAttributes;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_18

    .line 438
    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->restoreCallingIdentity(J)V

    .line 439
    nop

    .line 440
    return-void

    .line 438
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/telephony/ims/RcsUceAdapter$PublishStateCallbackAdapter$PublishStateBinder;->restoreCallingIdentity(J)V

    .line 439
    throw v2
.end method
