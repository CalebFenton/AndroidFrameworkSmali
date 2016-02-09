.class Landroid/os/BatteryStats$1;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/os/BatteryStats$TimerEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/os/BatteryStats;


# direct methods
.method constructor <init>(Landroid/os/BatteryStats;)V
    .locals 0
    .param p1, "this$0"    # Landroid/os/BatteryStats;

    #@0
    .prologue
    .line 3654
    iput-object p1, p0, Landroid/os/BatteryStats$1;->this$0:Landroid/os/BatteryStats;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Landroid/os/BatteryStats$TimerEntry;Landroid/os/BatteryStats$TimerEntry;)I
    .locals 5
    .param p1, "lhs"    # Landroid/os/BatteryStats$TimerEntry;
    .param p2, "rhs"    # Landroid/os/BatteryStats$TimerEntry;

    #@0
    .prologue
    .line 3657
    iget-wide v0, p1, Landroid/os/BatteryStats$TimerEntry;->mTime:J

    #@2
    .line 3658
    .local v0, "lhsTime":J
    iget-wide v2, p2, Landroid/os/BatteryStats$TimerEntry;->mTime:J

    #@4
    .line 3659
    .local v2, "rhsTime":J
    cmp-long v4, v0, v2

    #@6
    if-gez v4, :cond_0

    #@8
    .line 3660
    const/4 v4, 0x1

    #@9
    return v4

    #@a
    .line 3662
    :cond_0
    cmp-long v4, v0, v2

    #@c
    if-lez v4, :cond_1

    #@e
    .line 3663
    const/4 v4, -0x1

    #@f
    return v4

    #@10
    .line 3665
    :cond_1
    const/4 v4, 0x0

    #@11
    return v4
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3656
    check-cast p1, Landroid/os/BatteryStats$TimerEntry;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Landroid/os/BatteryStats$TimerEntry;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/os/BatteryStats$1;->compare(Landroid/os/BatteryStats$TimerEntry;Landroid/os/BatteryStats$TimerEntry;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
