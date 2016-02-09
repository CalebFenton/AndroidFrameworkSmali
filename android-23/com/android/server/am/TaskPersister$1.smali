.class Lcom/android/server/am/TaskPersister$1;
.super Ljava/lang/Object;
.source "TaskPersister.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/TaskPersister;->restoreTasksLocked()Ljava/util/ArrayList;
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
        "Lcom/android/server/am/TaskRecord;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TaskPersister;


# direct methods
.method constructor <init>(Lcom/android/server/am/TaskPersister;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/TaskPersister;

    #@0
    .prologue
    .line 411
    iput-object p1, p0, Lcom/android/server/am/TaskPersister$1;->this$0:Lcom/android/server/am/TaskPersister;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 8
    .param p1, "lhs"    # Lcom/android/server/am/TaskRecord;
    .param p2, "rhs"    # Lcom/android/server/am/TaskRecord;

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 414
    iget-wide v2, p2, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@4
    iget-wide v4, p1, Lcom/android/server/am/TaskRecord;->mLastTimeMoved:J

    #@6
    sub-long v0, v2, v4

    #@8
    .line 415
    .local v0, "diff":J
    cmp-long v2, v0, v6

    #@a
    if-gez v2, :cond_0

    #@c
    .line 416
    const/4 v2, -0x1

    #@d
    return v2

    #@e
    .line 417
    :cond_0
    cmp-long v2, v0, v6

    #@10
    if-lez v2, :cond_1

    #@12
    .line 418
    const/4 v2, 0x1

    #@13
    return v2

    #@14
    .line 420
    :cond_1
    const/4 v2, 0x0

    #@15
    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 413
    check-cast p1, Lcom/android/server/am/TaskRecord;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/TaskRecord;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/TaskPersister$1;->compare(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/TaskRecord;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
