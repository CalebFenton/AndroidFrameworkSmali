.class public Landroid/telephony/SubscriptionManager$OnOpportunisticSubscriptionsChangedListener;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnOpportunisticSubscriptionsChangedListener"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1819
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 3
    .param p1, "s"    # Ljava/lang/String;

    .line 1829
    const-string v0, "SubscriptionManager"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    return-void
.end method


# virtual methods
.method public whitelist onOpportunisticSubscriptionsChanged()V
    .registers 1

    .line 1826
    return-void
.end method
