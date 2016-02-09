.class public Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;
.super Ljava/lang/Object;
.source "StartupHelper.java"


# static fields
.field private static startupCallbacksForBgThread:Ljava/util/Vector;

.field private static startupCallbacksForUiThread:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 28
    new-instance v0, Ljava/util/Vector;

    #@2
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@5
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->startupCallbacksForUiThread:Ljava/util/Vector;

    #@7
    .line 29
    new-instance v0, Ljava/util/Vector;

    #@9
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@c
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->startupCallbacksForBgThread:Ljava/util/Vector;

    #@e
    return-void
.end method

.method public static addPostStartupBgCallback(Ljava/lang/Runnable;)V
    .locals 1
    .param p0, "runnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 168
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->addPostStartupCallback(Ljava/lang/Runnable;Z)V

    #@4
    .line 169
    return-void
.end method

.method private static addPostStartupCallback(Ljava/lang/Runnable;Z)V
    .locals 2
    .param p0, "runnable"    # Ljava/lang/Runnable;
    .param p1, "needsUiThread"    # Z

    #@0
    .prologue
    const-class v1, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;

    #@2
    .line 199
    monitor-enter v1

    #@3
    .line 205
    :try_start_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->startupCallbacksForUiThread:Ljava/util/Vector;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 213
    if-nez p1, :cond_1

    #@9
    .line 216
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->startupCallbacksForBgThread:Ljava/util/Vector;

    #@b
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@e
    .line 218
    :goto_0
    monitor-exit v1

    #@f
    .line 219
    return-void

    #@10
    .line 209
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    #@13
    .line 210
    monitor-exit v1

    #@14
    return-void

    #@15
    .line 214
    :cond_1
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->startupCallbacksForUiThread:Ljava/util/Vector;

    #@17
    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@1a
    goto :goto_0

    #@1b
    .line 218
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    throw v0
.end method
