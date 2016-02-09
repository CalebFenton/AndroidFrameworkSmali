.class public Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager;
.super Ljava/lang/Object;
.source "TaskRunnerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager$TaskRunnerHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 24
    return-void
.end method

.method public static getTaskRunner()Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;
    .locals 1

    #@0
    .prologue
    .line 39
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager$TaskRunnerHolder;->instance:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager$TaskRunnerHolder;->access$000()Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
