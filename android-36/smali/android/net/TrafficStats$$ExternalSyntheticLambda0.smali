.class public final synthetic Landroid/net/TrafficStats$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist get()Ljava/lang/Object;
    .registers 2

    .line 0
    invoke-static {}, Landroid/net/TrafficStats;->lambda$getTotalStats$4()Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object v0

    return-object v0
.end method
