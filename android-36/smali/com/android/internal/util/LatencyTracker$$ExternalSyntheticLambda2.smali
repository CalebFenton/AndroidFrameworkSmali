.class public final synthetic Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic blacklist f$0:Lcom/android/internal/util/LatencyTracker;


# direct methods
.method public synthetic constructor blacklist <init>(Lcom/android/internal/util/LatencyTracker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/util/LatencyTracker;

    return-void
.end method


# virtual methods
.method public final whitelist onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/android/internal/util/LatencyTracker$$ExternalSyntheticLambda2;->f$0:Lcom/android/internal/util/LatencyTracker;

    invoke-static {v0, p1}, Lcom/android/internal/util/LatencyTracker;->$r8$lambda$GEhnnM5WqqSsZoU7jDo0aVrxC_k(Lcom/android/internal/util/LatencyTracker;Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
