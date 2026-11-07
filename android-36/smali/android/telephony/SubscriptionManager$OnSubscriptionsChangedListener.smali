.class public Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnSubscriptionsChangedListener"
.end annotation


# static fields
.field private static final blacklist LAZY_INITIALIZE_SUBSCRIPTIONS_CHANGED_HANDLER:J = 0x109e5d62L


# instance fields
.field private final blacklist mCreatorLooper:Landroid/os/Looper;


# direct methods
.method public constructor whitelist <init>()V
    .registers 4

    .line 1629
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1630
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mCreatorLooper:Landroid/os/Looper;

    .line 1631
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mCreatorLooper:Landroid/os/Looper;

    if-nez v0, :cond_3a

    .line 1632
    const-wide/32 v0, 0x109e5d62

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_3a

    .line 1635
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t create handler inside thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1637
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " that has not called Looper.prepare()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1640
    :cond_3a
    :goto_3a
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Looper;)V
    .registers 2
    .param p1, "looper"    # Landroid/os/Looper;

    .line 1647
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1648
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1649
    iput-object p1, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mCreatorLooper:Landroid/os/Looper;

    .line 1650
    return-void
.end method

.method private greylist-max-o log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1674
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    return-void
.end method


# virtual methods
.method public blacklist getCreatorLooper()Landroid/os/Looper;
    .registers 2

    .line 1614
    iget-object v0, p0, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;->mCreatorLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public blacklist onAddListenerFailed()V
    .registers 3

    .line 1670
    const-string v0, "SubscriptionManager"

    const-string/jumbo v1, "onAddListenerFailed not overridden"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    return-void
.end method

.method public whitelist onSubscriptionsChanged()V
    .registers 1

    .line 1659
    return-void
.end method
