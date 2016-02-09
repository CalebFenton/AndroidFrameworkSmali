.class Lcom/android/server/AlarmManagerService$3;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/AlarmManagerService;->dumpImpl(Ljava/io/PrintWriter;)V
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
        "Lcom/android/server/AlarmManagerService$FilterStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/AlarmManagerService;

    #@0
    .prologue
    .line 1313
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$3;->this$0:Lcom/android/server/AlarmManagerService;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/AlarmManagerService$FilterStats;Lcom/android/server/AlarmManagerService$FilterStats;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/server/AlarmManagerService$FilterStats;
    .param p2, "rhs"    # Lcom/android/server/AlarmManagerService$FilterStats;

    #@0
    .prologue
    .line 1316
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    #@2
    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    .line 1317
    const/4 v0, 0x1

    #@9
    return v0

    #@a
    .line 1318
    :cond_0
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    #@c
    iget-wide v2, p2, Lcom/android/server/AlarmManagerService$FilterStats;->aggregateTime:J

    #@e
    cmp-long v0, v0, v2

    #@10
    if-lez v0, :cond_1

    #@12
    .line 1319
    const/4 v0, -0x1

    #@13
    return v0

    #@14
    .line 1321
    :cond_1
    const/4 v0, 0x0

    #@15
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1315
    check-cast p1, Lcom/android/server/AlarmManagerService$FilterStats;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/AlarmManagerService$FilterStats;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/AlarmManagerService$3;->compare(Lcom/android/server/AlarmManagerService$FilterStats;Lcom/android/server/AlarmManagerService$FilterStats;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
