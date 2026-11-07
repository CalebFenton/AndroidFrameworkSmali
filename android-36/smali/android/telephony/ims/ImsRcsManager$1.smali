.class Landroid/telephony/ims/ImsRcsManager$1;
.super Lcom/android/internal/telephony/IIntegerConsumer$Stub;
.source "ImsRcsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/ims/ImsRcsManager;->getRegistrationState(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$stateCallback:Ljava/util/function/Consumer;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/ims/ImsRcsManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/ims/ImsRcsManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 356
    iput-object p2, p0, Landroid/telephony/ims/ImsRcsManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/ims/ImsRcsManager$1;->val$stateCallback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/internal/telephony/IIntegerConsumer$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$accept$0(Ljava/util/function/Consumer;I)V
    .registers 3
    .param p0, "stateCallback"    # Ljava/util/function/Consumer;
    .param p1, "result"    # I

    .line 361
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public blacklist accept(I)V
    .registers 7
    .param p1, "result"    # I

    .line 359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 361
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/ims/ImsRcsManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/ims/ImsRcsManager$1;->val$stateCallback:Ljava/util/function/Consumer;

    new-instance v4, Landroid/telephony/ims/ImsRcsManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/telephony/ims/ImsRcsManager$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 363
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    nop

    .line 365
    return-void

    .line 363
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 364
    throw v2
.end method
