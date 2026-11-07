.class Landroid/os/PowerManager$5;
.super Landroid/os/IThermalHeadroomListener$Stub;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/os/PowerManager;->addThermalHeadroomListener(Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/os/PowerManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/os/PowerManager$OnThermalHeadroomChangedListener;


# direct methods
.method constructor blacklist <init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;Landroid/os/PowerManager$OnThermalHeadroomChangedListener;)V
    .registers 4
    .param p1, "this$0"    # Landroid/os/PowerManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 2962
    iput-object p1, p0, Landroid/os/PowerManager$5;->this$0:Landroid/os/PowerManager;

    iput-object p2, p0, Landroid/os/PowerManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/os/PowerManager$5;->val$listener:Landroid/os/PowerManager$OnThermalHeadroomChangedListener;

    invoke-direct {p0}, Landroid/os/IThermalHeadroomListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onHeadroomChange$0(Landroid/os/PowerManager$OnThermalHeadroomChangedListener;FFILjava/util/Map;)V
    .registers 5
    .param p0, "listener"    # Landroid/os/PowerManager$OnThermalHeadroomChangedListener;
    .param p1, "headroom"    # F
    .param p2, "forecastHeadroom"    # F
    .param p3, "forecastSeconds"    # I
    .param p4, "map"    # Ljava/util/Map;

    .line 2970
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/os/PowerManager$OnThermalHeadroomChangedListener;->onThermalHeadroomChanged(FFILjava/util/Map;)V

    return-void
.end method


# virtual methods
.method public blacklist onHeadroomChange(FFI[F)V
    .registers 14
    .param p1, "headroom"    # F
    .param p2, "forecastHeadroom"    # F
    .param p3, "forecastSeconds"    # I
    .param p4, "thresholds"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2967
    iget-object v0, p0, Landroid/os/PowerManager$5;->this$0:Landroid/os/PowerManager;

    invoke-static {v0, p4}, Landroid/os/PowerManager;->-$$Nest$mconvertThresholdsToMap(Landroid/os/PowerManager;[F)Ljava/util/Map;

    move-result-object v6

    .line 2968
    .local v6, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Float;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 2970
    .local v7, "token":J
    :try_start_a
    iget-object v0, p0, Landroid/os/PowerManager$5;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/os/PowerManager$5;->val$listener:Landroid/os/PowerManager$OnThermalHeadroomChangedListener;

    new-instance v1, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_21

    move v3, p1

    move v4, p2

    move v5, p3

    .end local p1    # "headroom":F
    .end local p2    # "forecastHeadroom":F
    .end local p3    # "forecastSeconds":I
    .local v3, "headroom":F
    .local v4, "forecastHeadroom":F
    .local v5, "forecastSeconds":I
    :try_start_13
    invoke-direct/range {v1 .. v6}, Landroid/os/PowerManager$5$$ExternalSyntheticLambda0;-><init>(Landroid/os/PowerManager$OnThermalHeadroomChangedListener;FFILjava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1e

    .line 2973
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2974
    nop

    .line 2975
    return-void

    .line 2973
    :catchall_1e
    move-exception v0

    move-object p1, v0

    goto :goto_26

    .end local v3    # "headroom":F
    .end local v4    # "forecastHeadroom":F
    .end local v5    # "forecastSeconds":I
    .restart local p1    # "headroom":F
    .restart local p2    # "forecastHeadroom":F
    .restart local p3    # "forecastSeconds":I
    :catchall_21
    move-exception v0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object p1, v0

    .end local p1    # "headroom":F
    .end local p2    # "forecastHeadroom":F
    .end local p3    # "forecastSeconds":I
    .restart local v3    # "headroom":F
    .restart local v4    # "forecastHeadroom":F
    .restart local v5    # "forecastSeconds":I
    :goto_26
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2974
    throw p1
.end method
