.class Landroid/telephony/SubscriptionManager$1;
.super Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/SubscriptionManager;->setPreferredDataSubscriptionId(IZLjava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$callback:Ljava/util/function/Consumer;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/SubscriptionManager;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/SubscriptionManager;
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

    .line 3635
    iput-object p2, p0, Landroid/telephony/SubscriptionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/SubscriptionManager$1;->val$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Lcom/android/internal/telephony/ISetOpportunisticDataCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onComplete$0(Ljava/util/function/Consumer;I)V
    .registers 3
    .param p0, "callback"    # Ljava/util/function/Consumer;
    .param p1, "result"    # I

    .line 3644
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3645
    return-void
.end method


# virtual methods
.method public blacklist onComplete(I)V
    .registers 7
    .param p1, "result"    # I

    .line 3638
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/telephony/SubscriptionManager$1;->val$callback:Ljava/util/function/Consumer;

    if-nez v0, :cond_9

    goto :goto_23

    .line 3641
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3643
    .local v0, "identity":J
    :try_start_d
    iget-object v2, p0, Landroid/telephony/SubscriptionManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/SubscriptionManager$1;->val$callback:Ljava/util/function/Consumer;

    new-instance v4, Landroid/telephony/SubscriptionManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3, p1}, Landroid/telephony/SubscriptionManager$1$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;I)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_d .. :try_end_19} :catchall_1e

    .line 3647
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3648
    nop

    .line 3649
    return-void

    .line 3647
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3648
    throw v2

    .line 3639
    .end local v0    # "identity":J
    :cond_23
    :goto_23
    return-void
.end method
