.class public final synthetic Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/app/usage/NetworkStatsManager$UsageCallback;

.field public final synthetic blacklist f$1:Landroid/net/DataUsageRequest;


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/net/DataUsageRequest;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    iput-object p2, p0, Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/net/DataUsageRequest;

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 3

    .line 0
    iget-object v0, p0, Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper$$ExternalSyntheticLambda0;->f$0:Landroid/app/usage/NetworkStatsManager$UsageCallback;

    iget-object v1, p0, Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper$$ExternalSyntheticLambda0;->f$1:Landroid/net/DataUsageRequest;

    invoke-static {v0, v1}, Landroid/app/usage/NetworkStatsManager$UsageCallbackWrapper;->lambda$onThresholdReached$0(Landroid/app/usage/NetworkStatsManager$UsageCallback;Landroid/net/DataUsageRequest;)V

    return-void
.end method
