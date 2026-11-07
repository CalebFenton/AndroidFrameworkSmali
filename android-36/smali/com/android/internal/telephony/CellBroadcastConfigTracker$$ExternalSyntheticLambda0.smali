.class public final synthetic Lcom/android/internal/telephony/CellBroadcastConfigTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

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
    check-cast p1, Landroid/telephony/CellBroadcastIdRange;

    check-cast p2, Landroid/telephony/CellBroadcastIdRange;

    invoke-static {p1, p2}, Lcom/android/internal/telephony/CellBroadcastConfigTracker;->$r8$lambda$dfqyyLJAU5VeqtMpuwq_1ZBmXu4(Landroid/telephony/CellBroadcastIdRange;Landroid/telephony/CellBroadcastIdRange;)I

    move-result p0

    return p0
.end method
