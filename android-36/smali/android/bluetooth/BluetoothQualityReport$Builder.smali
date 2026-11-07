.class public final Landroid/bluetooth/BluetoothQualityReport$Builder;
.super Ljava/lang/Object;
.source "BluetoothQualityReport.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist bluetoothClass:Landroid/bluetooth/BluetoothClass;

.field private blacklist lmpSubVer:I

.field private blacklist lmpVer:I

.field private blacklist manufacturerId:I

.field private final blacklist rawData:[B

.field private blacklist remoteAddr:Ljava/lang/String;

.field private blacklist remoteName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>([B)V
    .registers 4
    .param p1, "rawData"    # [B
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    const-string v0, "00:00:00:00:00:00"

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->remoteAddr:Ljava/lang/String;

    .line 604
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->remoteName:Ljava/lang/String;

    .line 605
    new-instance v0, Landroid/bluetooth/BluetoothClass;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothClass;-><init>(I)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->bluetoothClass:Landroid/bluetooth/BluetoothClass;

    .line 617
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->rawData:[B

    .line 618
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/BluetoothQualityReport;
    .registers 10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 726
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport;

    iget-object v1, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->remoteAddr:Ljava/lang/String;

    iget v2, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->lmpVer:I

    iget v3, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->lmpSubVer:I

    iget v4, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->manufacturerId:I

    iget-object v5, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->remoteName:Ljava/lang/String;

    iget-object v6, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->bluetoothClass:Landroid/bluetooth/BluetoothClass;

    iget-object v7, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->rawData:[B

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/bluetooth/BluetoothQualityReport;-><init>(Ljava/lang/String;IIILjava/lang/String;Landroid/bluetooth/BluetoothClass;[BLandroid/bluetooth/BluetoothQualityReport-IA;)V

    return-object v0
.end method

.method public whitelist setBluetoothClass(Landroid/bluetooth/BluetoothClass;)Landroid/bluetooth/BluetoothQualityReport$Builder;
    .registers 4
    .param p1, "bluetoothClass"    # Landroid/bluetooth/BluetoothClass;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 708
    if-nez p1, :cond_c

    .line 709
    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remote bluetooth class is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 711
    :cond_c
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->bluetoothClass:Landroid/bluetooth/BluetoothClass;

    .line 713
    :goto_e
    return-object p0
.end method

.method public whitelist setLmpSubVersion(I)Landroid/bluetooth/BluetoothQualityReport$Builder;
    .registers 2
    .param p1, "lmpSubVer"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 662
    iput p1, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->lmpSubVer:I

    .line 663
    return-object p0
.end method

.method public whitelist setLmpVersion(I)Landroid/bluetooth/BluetoothQualityReport$Builder;
    .registers 2
    .param p1, "lmpVer"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 648
    iput p1, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->lmpVer:I

    .line 649
    return-object p0
.end method

.method public whitelist setManufacturerId(I)Landroid/bluetooth/BluetoothQualityReport$Builder;
    .registers 2
    .param p1, "manufacturerId"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 676
    iput p1, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->manufacturerId:I

    .line 677
    return-object p0
.end method

.method public whitelist setRemoteAddress(Ljava/lang/String;)Landroid/bluetooth/BluetoothQualityReport$Builder;
    .registers 5
    .param p1, "remoteAddr"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 630
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 631
    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "remote address is not a valid bluetooth address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 633
    :cond_21
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->remoteAddr:Ljava/lang/String;

    .line 635
    :goto_23
    return-object p0
.end method

.method public whitelist setRemoteName(Ljava/lang/String;)Landroid/bluetooth/BluetoothQualityReport$Builder;
    .registers 4
    .param p1, "remoteName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 690
    if-nez p1, :cond_c

    .line 691
    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "remote name is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    .line 693
    :cond_c
    iput-object p1, p0, Landroid/bluetooth/BluetoothQualityReport$Builder;->remoteName:Ljava/lang/String;

    .line 695
    :goto_e
    return-object p0
.end method
