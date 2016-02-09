.class Lcom/android/server/usage/UserUsageStatsService$4;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"

# interfaces
.implements Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usage/UserUsageStatsService;->checkin(Lcom/android/internal/util/IndentingPrintWriter;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usage/UserUsageStatsService;

.field final synthetic val$pw:Lcom/android/internal/util/IndentingPrintWriter;

.field final synthetic val$screenOnTime:J


# direct methods
.method constructor <init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;J)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/usage/UserUsageStatsService;
    .param p2, "val$pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p3, "val$screenOnTime"    # J

    #@0
    .prologue
    .line 538
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    #@2
    iput-object p2, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$pw:Lcom/android/internal/util/IndentingPrintWriter;

    #@4
    iput-wide p3, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$screenOnTime:J

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public checkin(Lcom/android/server/usage/IntervalStats;)Z
    .locals 7
    .param p1, "stats"    # Lcom/android/server/usage/IntervalStats;

    #@0
    .prologue
    .line 541
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService$4;->this$0:Lcom/android/server/usage/UserUsageStatsService;

    #@2
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$pw:Lcom/android/internal/util/IndentingPrintWriter;

    #@4
    iget-wide v4, p0, Lcom/android/server/usage/UserUsageStatsService$4;->val$screenOnTime:J

    #@6
    const/4 v6, 0x0

    #@7
    move-object v3, p1

    #@8
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;JZ)V

    #@b
    .line 542
    const/4 v0, 0x1

    #@c
    return v0
.end method
