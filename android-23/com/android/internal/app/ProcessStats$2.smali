.class Lcom/android/internal/app/ProcessStats$2;
.super Ljava/lang/Object;
.source "ProcessStats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;
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
        "Lcom/android/internal/app/ProcessStats$ProcessState;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ProcessStats;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ProcessStats;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ProcessStats;

    #@0
    .prologue
    .line 2532
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$2;->this$0:Lcom/android/internal/app/ProcessStats;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessState;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "rhs"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    #@0
    .prologue
    .line 2535
    iget-wide v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpTotalTime:J

    #@2
    iget-wide v2, p2, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpTotalTime:J

    #@4
    cmp-long v0, v0, v2

    #@6
    if-gez v0, :cond_0

    #@8
    .line 2536
    const/4 v0, -0x1

    #@9
    return v0

    #@a
    .line 2537
    :cond_0
    iget-wide v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpTotalTime:J

    #@c
    iget-wide v2, p2, Lcom/android/internal/app/ProcessStats$ProcessState;->mTmpTotalTime:J

    #@e
    cmp-long v0, v0, v2

    #@10
    if-lez v0, :cond_1

    #@12
    .line 2538
    const/4 v0, 0x1

    #@13
    return v0

    #@14
    .line 2540
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
    .line 2534
    check-cast p1, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/internal/app/ProcessStats$ProcessState;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/app/ProcessStats$2;->compare(Lcom/android/internal/app/ProcessStats$ProcessState;Lcom/android/internal/app/ProcessStats$ProcessState;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
