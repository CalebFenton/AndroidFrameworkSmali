.class public final synthetic Landroid/net/TrafficStats$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/LongSupplier;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api getAsLong()J
    .registers 3

    .line 0
    invoke-static {}, Landroid/net/TrafficStats;->lambda$initRateLimitCacheLocked$0()J

    move-result-wide v0

    return-wide v0
.end method
