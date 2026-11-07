.class public final synthetic Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToDoubleFunction;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api applyAsDouble(Ljava/lang/Object;)D
    .registers 4

    .line 0
    check-cast p1, Lcom/android/internal/os/BinderCallsStats$UidEntry;

    invoke-static {p1}, Lcom/android/internal/os/BinderCallsStats;->lambda$dumpLocked$1(Lcom/android/internal/os/BinderCallsStats$UidEntry;)D

    move-result-wide v0

    return-wide v0
.end method
