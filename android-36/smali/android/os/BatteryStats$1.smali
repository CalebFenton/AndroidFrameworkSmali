.class Landroid/os/BatteryStats$1;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZLandroid/os/BatteryStats$BatteryStatsDumpHelper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/os/BatteryStats$TimerEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/os/BatteryStats;)V
    .registers 2
    .param p1, "this$0"    # Landroid/os/BatteryStats;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5979
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/os/BatteryStats$TimerEntry;Landroid/os/BatteryStats$TimerEntry;)I
    .registers 8
    .param p1, "lhs"    # Landroid/os/BatteryStats$TimerEntry;
    .param p2, "rhs"    # Landroid/os/BatteryStats$TimerEntry;

    .line 5982
    iget-wide v0, p1, Landroid/os/BatteryStats$TimerEntry;->mTime:J

    .line 5983
    .local v0, "lhsTime":J
    iget-wide v2, p2, Landroid/os/BatteryStats$TimerEntry;->mTime:J

    .line 5984
    .local v2, "rhsTime":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_a

    .line 5985
    const/4 v4, 0x1

    return v4

    .line 5987
    :cond_a
    cmp-long v4, v0, v2

    if-lez v4, :cond_10

    .line 5988
    const/4 v4, -0x1

    return v4

    .line 5990
    :cond_10
    const/4 v4, 0x0

    return v4
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 5979
    check-cast p1, Landroid/os/BatteryStats$TimerEntry;

    check-cast p2, Landroid/os/BatteryStats$TimerEntry;

    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryStats$1;->compare(Landroid/os/BatteryStats$TimerEntry;Landroid/os/BatteryStats$TimerEntry;)I

    move-result p1

    return p1
.end method
