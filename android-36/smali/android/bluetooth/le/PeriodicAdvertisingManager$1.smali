.class Landroid/bluetooth/le/PeriodicAdvertisingManager$1;
.super Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;
.source "PeriodicAdvertisingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/bluetooth/le/PeriodicAdvertisingManager;->wrap(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IPeriodicAdvertisingCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

.field final synthetic blacklist val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

.field final synthetic blacklist val$handler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$6bmrIzJMzyhbD4lN0vGopXxYJ_s(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;Landroid/bluetooth/le/PeriodicAdvertisingCallback;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->lambda$onSyncLost$2(Landroid/bluetooth/le/PeriodicAdvertisingCallback;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wneHmovyxMZKLyLidbcTcg0i7M4(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;Landroid/bluetooth/le/PeriodicAdvertisingCallback;ILandroid/bluetooth/BluetoothDevice;IIII)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->lambda$onSyncEstablished$0(Landroid/bluetooth/le/PeriodicAdvertisingCallback;ILandroid/bluetooth/BluetoothDevice;IIII)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/bluetooth/le/PeriodicAdvertisingManager;Landroid/os/Handler;Landroid/bluetooth/le/PeriodicAdvertisingCallback;)V
    .registers 4
    .param p1, "this$0"    # Landroid/bluetooth/le/PeriodicAdvertisingManager;
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

    .line 259
    iput-object p1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    iput-object p2, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    invoke-direct {p0}, Landroid/bluetooth/le/IPeriodicAdvertisingCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onBigInfoAdvertisingReport$4(Landroid/bluetooth/le/PeriodicAdvertisingCallback;IZ)V
    .registers 3
    .param p0, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .param p1, "syncHandle"    # I
    .param p2, "encrypted"    # Z

    .line 300
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onBigInfoAdvertisingReport(IZ)V

    return-void
.end method

.method static synthetic blacklist lambda$onPeriodicAdvertisingReport$1(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
    .registers 2
    .param p0, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .param p1, "report"    # Landroid/bluetooth/le/PeriodicAdvertisingReport;

    .line 282
    invoke-virtual {p0, p1}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSyncEstablished$0(Landroid/bluetooth/le/PeriodicAdvertisingCallback;ILandroid/bluetooth/BluetoothDevice;IIII)V
    .registers 9
    .param p1, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .param p2, "syncHandle"    # I
    .param p3, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p4, "advertisingSid"    # I
    .param p5, "skip"    # I
    .param p6, "timeout"    # I
    .param p7, "status"    # I

    .line 270
    invoke-virtual/range {p1 .. p7}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V

    .line 273
    if-eqz p7, :cond_e

    .line 276
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    invoke-static {v0}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->-$$Nest$fgetmCallbackWrappers(Landroid/bluetooth/le/PeriodicAdvertisingManager;)Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    :cond_e
    return-void
.end method

.method private synthetic blacklist lambda$onSyncLost$2(Landroid/bluetooth/le/PeriodicAdvertisingCallback;I)V
    .registers 4
    .param p1, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .param p2, "syncHandle"    # I

    .line 288
    invoke-virtual {p1, p2}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncLost(I)V

    .line 291
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    invoke-static {v0}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->-$$Nest$fgetmCallbackWrappers(Landroid/bluetooth/le/PeriodicAdvertisingManager;)Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    return-void
.end method

.method static synthetic blacklist lambda$onSyncTransferred$3(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/bluetooth/BluetoothDevice;I)V
    .registers 3
    .param p0, "callback"    # Landroid/bluetooth/le/PeriodicAdvertisingCallback;
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .line 296
    invoke-virtual {p0, p1, p2}, Landroid/bluetooth/le/PeriodicAdvertisingCallback;->onSyncTransferred(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method


# virtual methods
.method public blacklist onBigInfoAdvertisingReport(IZ)V
    .registers 6
    .param p1, "syncHandle"    # I
    .param p2, "encrypted"    # Z

    .line 300
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    new-instance v2, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1, p2}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda1;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingCallback;IZ)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 301
    return-void
.end method

.method public blacklist onPeriodicAdvertisingReport(Landroid/bluetooth/le/PeriodicAdvertisingReport;)V
    .registers 5
    .param p1, "report"    # Landroid/bluetooth/le/PeriodicAdvertisingReport;

    .line 282
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    new-instance v2, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/bluetooth/le/PeriodicAdvertisingReport;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    return-void
.end method

.method public blacklist onSyncEstablished(ILandroid/bluetooth/BluetoothDevice;IIII)V
    .registers 17
    .param p1, "syncHandle"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "advertisingSid"    # I
    .param p4, "skip"    # I
    .param p5, "timeout"    # I
    .param p6, "status"    # I

    .line 267
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->this$0:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    invoke-static {v0}, Landroid/bluetooth/le/PeriodicAdvertisingManager;->-$$Nest$fgetmAttributionSource(Landroid/bluetooth/le/PeriodicAdvertisingManager;)Landroid/content/AttributionSource;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/bluetooth/Attributable;->setAttributionSource(Landroid/bluetooth/Attributable;Landroid/content/AttributionSource;)Landroid/bluetooth/Attributable;

    .line 268
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    new-instance v1, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda2;

    move-object v2, p0

    move v4, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda2;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;Landroid/bluetooth/le/PeriodicAdvertisingCallback;ILandroid/bluetooth/BluetoothDevice;IIII)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 279
    return-void
.end method

.method public blacklist onSyncLost(I)V
    .registers 5
    .param p1, "syncHandle"    # I

    .line 286
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    new-instance v2, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v1, p1}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda4;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingManager$1;Landroid/bluetooth/le/PeriodicAdvertisingCallback;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 293
    return-void
.end method

.method public blacklist onSyncTransferred(Landroid/bluetooth/BluetoothDevice;I)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "status"    # I

    .line 296
    iget-object v0, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$handler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/bluetooth/le/PeriodicAdvertisingManager$1;->val$callback:Landroid/bluetooth/le/PeriodicAdvertisingCallback;

    new-instance v2, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda3;

    invoke-direct {v2, v1, p1, p2}, Landroid/bluetooth/le/PeriodicAdvertisingManager$1$$ExternalSyntheticLambda3;-><init>(Landroid/bluetooth/le/PeriodicAdvertisingCallback;Landroid/bluetooth/BluetoothDevice;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 297
    return-void
.end method
