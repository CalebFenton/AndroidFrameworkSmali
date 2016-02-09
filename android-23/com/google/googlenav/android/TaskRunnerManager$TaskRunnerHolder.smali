.class Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager$TaskRunnerHolder;
.super Ljava/lang/Object;
.source "TaskRunnerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TaskRunnerHolder"
.end annotation


# static fields
.field private static final instance:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 28
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    #@2
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/lang/BackgroundThreadFactory;

    #@4
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/common/lang/BaseThreadFactory;

    #@6
    invoke-direct {v2}, Landroid_maps_conflict_avoidance/com/google/common/lang/BaseThreadFactory;-><init>()V

    #@9
    invoke-direct {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/lang/BackgroundThreadFactory;-><init>(Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;)V

    #@c
    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;-><init>(Landroid_maps_conflict_avoidance/com/google/common/lang/ThreadFactory;)V

    #@f
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager$TaskRunnerHolder;->instance:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    #@11
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static synthetic access$000()Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;
    .locals 1

    #@0
    .prologue
    .line 27
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager$TaskRunnerHolder;->instance:Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    #@2
    return-object v0
.end method
