.class Landroid/bluetooth/BluetoothAdapter$11;
.super Landroid/bluetooth/IBluetoothQualityReportReadyCallback$Stub;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/bluetooth/BluetoothAdapter;


# direct methods
.method constructor blacklist <init>(Landroid/bluetooth/BluetoothAdapter;)V
    .registers 2
    .param p1, "this$0"    # Landroid/bluetooth/BluetoothAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 5243
    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter$11;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothQualityReportReadyCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onBluetoothQualityReportReady$0(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothQualityReport;ILandroid/bluetooth/BluetoothAdapter$BluetoothQualityReportReadyCallback;)V
    .registers 4
    .param p0, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p1, "report"    # Landroid/bluetooth/BluetoothQualityReport;
    .param p2, "status"    # I
    .param p3, "cb"    # Landroid/bluetooth/BluetoothAdapter$BluetoothQualityReportReadyCallback;

    .line 5249
    invoke-interface {p3, p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$BluetoothQualityReportReadyCallback;->onBluetoothQualityReportReady(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothQualityReport;I)V

    return-void
.end method


# virtual methods
.method public blacklist onBluetoothQualityReportReady(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothQualityReport;I)V
    .registers 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "report"    # Landroid/bluetooth/BluetoothQualityReport;
    .param p3, "status"    # I

    .line 5248
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter$11;->this$0:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->-$$Nest$fgetmQualityCallbackWrapper(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/CallbackWrapper;

    move-result-object v0

    new-instance v1, Landroid/bluetooth/BluetoothAdapter$11$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2, p3}, Landroid/bluetooth/BluetoothAdapter$11$$ExternalSyntheticLambda0;-><init>(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothQualityReport;I)V

    invoke-virtual {v0, v1}, Landroid/bluetooth/CallbackWrapper;->forEach(Ljava/util/function/Consumer;)V

    .line 5250
    return-void
.end method
