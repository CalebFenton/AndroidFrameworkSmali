.class public Landroid/bluetooth/SdpRecord;
.super Ljava/lang/Object;
.source "SdpRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final blacklist mRawData:[B

.field private final blacklist mRawSize:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 60
    new-instance v0, Landroid/bluetooth/SdpRecord$1;

    invoke-direct {v0}, Landroid/bluetooth/SdpRecord$1;-><init>()V

    sput-object v0, Landroid/bluetooth/SdpRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I[B)V
    .registers 3
    .param p1, "sizeRecord"    # I
    .param p2, "record"    # [B

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    .line 40
    iput p1, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    .line 41
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    .line 45
    iget v0, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    .line 46
    iget-object v0, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getRawData()[B
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    return-object v0
.end method

.method public blacklist getRawSize()I
    .registers 2

    .line 76
    iget v0, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BluetoothSdpRecord [rawData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    .line 32
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rawSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 56
    iget v0, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-object v0, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 58
    return-void
.end method
