.class Landroid/telephony/TelephonyRegistryManager$2;
.super Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;
.source "TelephonyRegistryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyRegistryManager;->addOnOpportunisticSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyRegistryManager;Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .registers 4
    .param p1, "this$0"    # Landroid/telephony/TelephonyRegistryManager;
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

    .line 218
    iput-object p2, p0, Landroid/telephony/TelephonyRegistryManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyRegistryManager$2;->val$listener:Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSubscriptionsChanged$0(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V
    .registers 1
    .param p0, "listener"    # Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    .line 224
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;->onOpportunisticSubscriptionsChanged()V

    return-void
.end method


# virtual methods
.method public blacklist onSubscriptionsChanged()V
    .registers 6

    .line 221
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 223
    .local v0, "identity":J
    :try_start_4
    const-string v2, "TelephonyRegistryManager"

    const-string/jumbo v3, "onOpportunisticSubscriptionsChanged callback received."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v2, p0, Landroid/telephony/TelephonyRegistryManager$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/TelephonyRegistryManager$2;->val$listener:Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;

    new-instance v4, Landroid/telephony/TelephonyRegistryManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroid/telephony/TelephonyRegistryManager$2$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1d

    .line 226
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 227
    nop

    .line 228
    return-void

    .line 226
    :catchall_1d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 227
    throw v2
.end method
