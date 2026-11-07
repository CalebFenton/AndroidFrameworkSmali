.class public final synthetic Lcom/android/internal/os/BinderCallsStats$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3

    .line 0
    check-cast p1, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    check-cast p2, Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;

    invoke-static {p1, p2}, Lcom/android/internal/os/BinderCallsStats;->$r8$lambda$YZ_MvQpXqsFJ8ZTpGKTiHFfrDMM(Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;Lcom/android/internal/os/BinderCallsStats$ExportedCallStat;)I

    move-result p1

    return p1
.end method
