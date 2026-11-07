.class public abstract Landroid/app/usage/NetworkStatsManager$UsageCallback;
.super Ljava/lang/Object;
.source "NetworkStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/usage/NetworkStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "UsageCallback"
.end annotation


# instance fields
.field private greylist-max-o request:Landroid/net/DataUsageRequest;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetrequest(Landroid/app/usage/NetworkStatsManager$UsageCallback;)Landroid/net/DataUsageRequest;
    .registers 1

    iget-object p0, p0, Landroid/app/usage/NetworkStatsManager$UsageCallback;->request:Landroid/net/DataUsageRequest;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputrequest(Landroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/net/DataUsageRequest;)V
    .registers 2

    iput-object p1, p0, Landroid/app/usage/NetworkStatsManager$UsageCallback;->request:Landroid/net/DataUsageRequest;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 940
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist networkTypeForTemplate(Landroid/net/NetworkTemplate;)I
    .registers 2
    .param p0, "template"    # Landroid/net/NetworkTemplate;

    .line 981
    invoke-virtual {p0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    sparse-switch v0, :sswitch_data_e

    .line 987
    const/4 v0, -0x1

    return v0

    .line 985
    :sswitch_9
    const/4 v0, 0x1

    return v0

    .line 983
    :sswitch_b
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_e
    .sparse-switch
        0x1 -> :sswitch_b
        0x4 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public abstract whitelist onThresholdReached(ILjava/lang/String;)V
.end method

.method public blacklist onThresholdReached(Landroid/net/NetworkTemplate;)V
    .registers 4
    .param p1, "template"    # Landroid/net/NetworkTemplate;
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 954
    invoke-static {p1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->networkTypeForTemplate(Landroid/net/NetworkTemplate;)I

    move-result v0

    .line 955
    .local v0, "networkType":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_25

    .line 956
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    goto :goto_21

    .line 957
    :cond_13
    invoke-virtual {p1}, Landroid/net/NetworkTemplate;->getSubscriberIds()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_21
    nop

    .line 958
    .local v1, "subscriberId":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/app/usage/NetworkStatsManager$UsageCallback;->onThresholdReached(ILjava/lang/String;)V

    .line 960
    .end local v1    # "subscriberId":Ljava/lang/String;
    :cond_25
    return-void
.end method
