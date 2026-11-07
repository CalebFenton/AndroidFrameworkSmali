.class Landroid/telephony/TelephonyRegistryManager$1;
.super Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;
.source "TelephonyRegistryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/telephony/TelephonyRegistryManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/telephony/TelephonyRegistryManager;Ljava/util/concurrent/Executor;Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
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

    .line 152
    iput-object p2, p0, Landroid/telephony/TelephonyRegistryManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/telephony/TelephonyRegistryManager$1;->val$listener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/IOnSubscriptionsChangedListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSubscriptionsChanged$0(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V
    .registers 1
    .param p0, "listener"    # Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 157
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->onSubscriptionsChanged()V

    return-void
.end method


# virtual methods
.method public blacklist onSubscriptionsChanged()V
    .registers 6

    .line 155
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 157
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Landroid/telephony/TelephonyRegistryManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/telephony/TelephonyRegistryManager$1;->val$listener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v4, Landroid/telephony/TelephonyRegistryManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v3}, Landroid/telephony/TelephonyRegistryManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_15

    .line 159
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    nop

    .line 161
    return-void

    .line 159
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    throw v2
.end method
