.class public Lcom/android/server/wifi/SIMAccessor;
.super Ljava/lang/Object;
.source "SIMAccessor.java"


# instance fields
.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 15
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Lcom/android/server/wifi/SIMAccessor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@9
    .line 16
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Lcom/android/server/wifi/SIMAccessor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@f
    .line 14
    return-void
.end method


# virtual methods
.method public getMatchingImsis(Lcom/android/server/wifi/IMSIParameter;)Ljava/util/List;
    .locals 8
    .param p1, "mccMnc"    # Lcom/android/server/wifi/IMSIParameter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/IMSIParameter;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 20
    if-nez p1, :cond_0

    #@3
    .line 21
    return-object v3

    #@4
    .line 23
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    #@6
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@9
    .line 24
    .local v1, "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/wifi/SIMAccessor;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    #@b
    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    #@e
    move-result-object v5

    #@f
    const/4 v4, 0x0

    #@10
    array-length v6, v5

    #@11
    :goto_0
    if-ge v4, v6, :cond_2

    #@13
    aget v2, v5, v4

    #@15
    .line 25
    .local v2, "subId":I
    iget-object v7, p0, Lcom/android/server/wifi/SIMAccessor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    #@17
    invoke-virtual {v7, v2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 26
    .local v0, "imsi":Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/android/server/wifi/IMSIParameter;->matches(Ljava/lang/String;)Z

    #@1e
    move-result v7

    #@1f
    if-eqz v7, :cond_1

    #@21
    .line 27
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@24
    .line 24
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@26
    goto :goto_0

    #@27
    .line 30
    .end local v0    # "imsi":Ljava/lang/String;
    .end local v2    # "subId":I
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    #@2a
    move-result v4

    #@2b
    if-eqz v4, :cond_3

    #@2d
    move-object v1, v3

    #@2e
    .end local v1    # "imsis":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    return-object v1
.end method
