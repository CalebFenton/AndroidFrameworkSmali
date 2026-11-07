.class public final synthetic Landroid/net/TrafficStats$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/connectivity/com/android/net/module/util/BinderUtils$ThrowingSupplier;


# instance fields
.field public final synthetic blacklist f$0:I


# direct methods
.method public synthetic constructor blacklist <init>(I)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/net/TrafficStats$$ExternalSyntheticLambda1;->f$0:I

    return-void
.end method


# virtual methods
.method public final blacklist get()Ljava/lang/Object;
    .registers 2

    .line 0
    iget v0, p0, Landroid/net/TrafficStats$$ExternalSyntheticLambda1;->f$0:I

    invoke-static {v0}, Landroid/net/TrafficStats;->lambda$getUidStats$3(I)Landroid/net/connectivity/android/net/netstats/StatsResult;

    move-result-object v0

    return-object v0
.end method
