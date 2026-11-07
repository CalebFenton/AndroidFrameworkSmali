.class public final Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;
.super Ljava/lang/Object;
.source "BluetoothQualityReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/BluetoothQualityReport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BqrConnectFail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail$ConnectFailId;
    }
.end annotation


# static fields
.field public static final whitelist CONNECT_FAIL_ID_ACL_ALREADY_EXIST:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONNECT_FAIL_ID_CONNECTION_TIMEOUT:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONNECT_FAIL_ID_CONTROLLER_BUSY:I = 0x3a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONNECT_FAIL_ID_NO_ERROR:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CONNECT_FAIL_ID_PAGE_TIMEOUT:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mFailReason:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/bluetooth/BluetoothQualityReport;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2228
    const-class v1, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;->TAG:Ljava/lang/String;

    .line 2326
    new-instance v0, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail$1;

    invoke-direct {v0}, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail$1;-><init>()V

    sput-object v0, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 2292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;->mFailReason:I

    .line 2294
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/bluetooth/BluetoothQualityReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>([BI)V
    .registers 6
    .param p1, "rawData"    # [B
    .param p2, "offset"    # I

    .line 2280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2281
    if-eqz p1, :cond_20

    array-length v0, p1

    if-le v0, p2, :cond_20

    .line 2285
    array-length v0, p1

    sub-int/2addr v0, p2

    .line 2286
    invoke-static {p1, p2, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2287
    .local v0, "bqrBuf":Ljava/nio/ByteBuffer;
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 2289
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;->mFailReason:I

    .line 2290
    return-void

    .line 2282
    .end local v0    # "bqrBuf":Ljava/nio/ByteBuffer;
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": BQR raw data length is abnormal."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>([BILandroid/bluetooth/BluetoothQualityReport-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;-><init>([BI)V

    return-void
.end method

.method public static whitelist connectFailIdToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "id"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2346
    sparse-switch p0, :sswitch_data_16

    .line 2358
    const-string v0, "INVALID"

    return-object v0

    .line 2356
    :sswitch_6
    const-string v0, "Controller busy"

    return-object v0

    .line 2354
    :sswitch_9
    const-string v0, "ACL already exists"

    return-object v0

    .line 2352
    :sswitch_c
    const-string v0, "Connection Timeout"

    return-object v0

    .line 2350
    :sswitch_f
    const-string v0, "Page Timeout"

    return-object v0

    .line 2348
    :sswitch_12
    const-string v0, "No error"

    return-object v0

    nop

    :sswitch_data_16
    .sparse-switch
        0x0 -> :sswitch_12
        0x4 -> :sswitch_f
        0x8 -> :sswitch_c
        0xb -> :sswitch_9
        0x3a -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 2310
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getFailReason()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2305
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;->mFailReason:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  BqrConnectFail: {\n    mFailReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;->mFailReason:I

    .line 2370
    invoke-static {v1}, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;->connectFailIdToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;->mFailReason:I

    .line 2372
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")\n  }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2376
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2321
    iget v0, p0, Landroid/bluetooth/BluetoothQualityReport$BqrConnectFail;->mFailReason:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2322
    return-void
.end method
