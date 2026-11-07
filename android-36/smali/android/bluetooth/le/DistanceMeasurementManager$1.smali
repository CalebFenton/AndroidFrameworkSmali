.class Landroid/bluetooth/le/DistanceMeasurementManager$1;
.super Landroid/bluetooth/le/IDistanceMeasurementCallback$Stub;
.source "DistanceMeasurementManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/DistanceMeasurementManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/le/DistanceMeasurementManager;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/le/DistanceMeasurementManager;)V
    .registers 2
    .param p1, "this$0"    # Landroid/bluetooth/le/DistanceMeasurementManager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 287
    iput-object p1, p0, Landroid/bluetooth/le/DistanceMeasurementManager$1;->this$0:Landroid/bluetooth/le/DistanceMeasurementManager;

    invoke-direct {p0}, Landroid/bluetooth/le/IDistanceMeasurementCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onResult(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/DistanceMeasurementResult;)V
    .registers 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "result"    # Landroid/bluetooth/le/DistanceMeasurementResult;

    .line 310
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementManager$1;->this$0:Landroid/bluetooth/le/DistanceMeasurementManager;

    invoke-static {v0}, Landroid/bluetooth/le/DistanceMeasurementManager;->-$$Nest$fgetmSessionMap(Landroid/bluetooth/le/DistanceMeasurementManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/DistanceMeasurementSession;

    .line 311
    .local v0, "session":Landroid/bluetooth/le/DistanceMeasurementSession;
    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/le/DistanceMeasurementSession;->onResult(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/DistanceMeasurementResult;)V

    .line 312
    return-void
.end method

.method public blacklist onStartFail(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reason"    # I

    .line 296
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementManager$1;->this$0:Landroid/bluetooth/le/DistanceMeasurementManager;

    invoke-static {v0}, Landroid/bluetooth/le/DistanceMeasurementManager;->-$$Nest$fgetmSessionMap(Landroid/bluetooth/le/DistanceMeasurementManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/DistanceMeasurementSession;

    .line 297
    .local v0, "session":Landroid/bluetooth/le/DistanceMeasurementSession;
    invoke-virtual {v0, p2}, Landroid/bluetooth/le/DistanceMeasurementSession;->onStartFail(I)V

    .line 298
    iget-object v1, p0, Landroid/bluetooth/le/DistanceMeasurementManager$1;->this$0:Landroid/bluetooth/le/DistanceMeasurementManager;

    invoke-static {v1}, Landroid/bluetooth/le/DistanceMeasurementManager;->-$$Nest$fgetmSessionMap(Landroid/bluetooth/le/DistanceMeasurementManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    return-void
.end method

.method public blacklist onStarted(Landroid/bluetooth/BluetoothDevice;)V
    .registers 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 290
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementManager$1;->this$0:Landroid/bluetooth/le/DistanceMeasurementManager;

    invoke-static {v0}, Landroid/bluetooth/le/DistanceMeasurementManager;->-$$Nest$fgetmSessionMap(Landroid/bluetooth/le/DistanceMeasurementManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/DistanceMeasurementSession;

    .line 291
    .local v0, "session":Landroid/bluetooth/le/DistanceMeasurementSession;
    invoke-virtual {v0}, Landroid/bluetooth/le/DistanceMeasurementSession;->onStarted()V

    .line 292
    return-void
.end method

.method public blacklist onStopped(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "reason"    # I

    .line 303
    iget-object v0, p0, Landroid/bluetooth/le/DistanceMeasurementManager$1;->this$0:Landroid/bluetooth/le/DistanceMeasurementManager;

    invoke-static {v0}, Landroid/bluetooth/le/DistanceMeasurementManager;->-$$Nest$fgetmSessionMap(Landroid/bluetooth/le/DistanceMeasurementManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/DistanceMeasurementSession;

    .line 304
    .local v0, "session":Landroid/bluetooth/le/DistanceMeasurementSession;
    invoke-virtual {v0, p2}, Landroid/bluetooth/le/DistanceMeasurementSession;->onStopped(I)V

    .line 305
    iget-object v1, p0, Landroid/bluetooth/le/DistanceMeasurementManager$1;->this$0:Landroid/bluetooth/le/DistanceMeasurementManager;

    invoke-static {v1}, Landroid/bluetooth/le/DistanceMeasurementManager;->-$$Nest$fgetmSessionMap(Landroid/bluetooth/le/DistanceMeasurementManager;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    return-void
.end method
