.class public final synthetic Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic blacklist f$0:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

.field public final synthetic blacklist f$1:I

.field public final synthetic blacklist f$2:Landroid/bluetooth/le/AdvertisingSetCallback;

.field public final synthetic blacklist f$3:I

.field public final synthetic blacklist f$4:I


# direct methods
.method public synthetic constructor blacklist <init>(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;II)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iput p2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda0;->f$1:I

    iput-object p3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda0;->f$2:Landroid/bluetooth/le/AdvertisingSetCallback;

    iput p4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda0;->f$4:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api run()V
    .registers 6

    .line 0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda0;->f$0:Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    iget v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda0;->f$1:I

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda0;->f$2:Landroid/bluetooth/le/AdvertisingSetCallback;

    iget v3, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2$$ExternalSyntheticLambda0;->f$4:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;->$r8$lambda$Vk2u4iAbZTucjieNW8ArV2DW4wM(Landroid/bluetooth/le/BluetoothLeAdvertiser$2;ILandroid/bluetooth/le/AdvertisingSetCallback;II)V

    return-void
.end method
