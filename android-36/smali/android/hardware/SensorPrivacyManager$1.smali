.class Landroid/hardware/SensorPrivacyManager$1;
.super Landroid/hardware/ISensorPrivacyListener$Stub;
.source "SensorPrivacyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/SensorPrivacyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/SensorPrivacyManager;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/SensorPrivacyManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/hardware/SensorPrivacyManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 357
    iput-object p1, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-direct {p0}, Landroid/hardware/ISensorPrivacyListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onSensorPrivacyChanged$0(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;III)V
    .registers 6
    .param p0, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .param p3, "state"    # I

    .line 365
    new-instance v0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;-><init>(IIILandroid/hardware/SensorPrivacyManager-IA;)V

    .line 366
    invoke-interface {p0, v0}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)V

    .line 365
    return-void
.end method

.method static synthetic blacklist lambda$onSensorPrivacyChanged$1(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;IIZ)V
    .registers 6
    .param p0, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .param p3, "enabled"    # Z

    .line 369
    new-instance v0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;-><init>(IIZLandroid/hardware/SensorPrivacyManager-IA;)V

    .line 370
    invoke-interface {p0, v0}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)V

    .line 369
    return-void
.end method

.method static synthetic blacklist lambda$onSensorPrivacyStateChanged$2(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;III)V
    .registers 6
    .param p0, "listener"    # Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .param p3, "state"    # I

    .line 384
    new-instance v0, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;-><init>(IIILandroid/hardware/SensorPrivacyManager-IA;)V

    .line 385
    invoke-interface {p0, v0}, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;->onSensorPrivacyChanged(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener$SensorPrivacyChangedParams;)V

    .line 384
    return-void
.end method


# virtual methods
.method public blacklist onSensorPrivacyChanged(IIZ)V
    .registers 10
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .param p3, "enabled"    # Z

    .line 360
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v0}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmLock(Landroid/hardware/SensorPrivacyManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 361
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    :try_start_8
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v2}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_57

    .line 362
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v2}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    .line 363
    .local v2, "listener":Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    invoke-static {}, Lcom/android/internal/camera/flags/Flags;->cameraPrivacyAllowlist()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 364
    if-eqz p3, :cond_2a

    const/4 v3, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v3, 0x2

    .line 365
    .local v3, "state":I
    :goto_2b
    iget-object v4, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v4}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/Executor;

    new-instance v5, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v5, v2, p1, p2, v3}, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;III)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 368
    .end local v3    # "state":I
    goto :goto_54

    .line 369
    :cond_40
    iget-object v3, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v3}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda2;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;IIZ)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 361
    .end local v2    # "listener":Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    :goto_54
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 374
    .end local v1    # "i":I
    :cond_57
    monitor-exit v0

    .line 375
    return-void

    .line 374
    :catchall_59
    move-exception v1

    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_8 .. :try_end_5b} :catchall_59

    throw v1
.end method

.method public blacklist onSensorPrivacyStateChanged(III)V
    .registers 9
    .param p1, "toggleType"    # I
    .param p2, "sensor"    # I
    .param p3, "state"    # I

    .line 381
    iget-object v0, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v0}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmLock(Landroid/hardware/SensorPrivacyManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 382
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    :try_start_8
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v2}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_37

    .line 383
    iget-object v2, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v2}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;

    .line 384
    .local v2, "listener":Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    iget-object v3, p0, Landroid/hardware/SensorPrivacyManager$1;->this$0:Landroid/hardware/SensorPrivacyManager;

    invoke-static {v3}, Landroid/hardware/SensorPrivacyManager;->-$$Nest$fgetmToggleListeners(Landroid/hardware/SensorPrivacyManager;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/Executor;

    new-instance v4, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2, p1, p2, p3}, Landroid/hardware/SensorPrivacyManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;III)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 382
    .end local v2    # "listener":Landroid/hardware/SensorPrivacyManager$OnSensorPrivacyChangedListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 388
    .end local v1    # "i":I
    :cond_37
    monitor-exit v0

    .line 389
    return-void

    .line 388
    :catchall_39
    move-exception v1

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_8 .. :try_end_3b} :catchall_39

    throw v1
.end method
