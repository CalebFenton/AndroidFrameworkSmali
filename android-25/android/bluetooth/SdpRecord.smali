.class public Landroid/bluetooth/SdpRecord;
.super Ljava/lang/Object;
.source "SdpRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/SdpRecord$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final mRawData:[B

.field private final mRawSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 59
    new-instance v0, Landroid/bluetooth/SdpRecord$1;

    #@2
    invoke-direct {v0}, Landroid/bluetooth/SdpRecord$1;-><init>()V

    #@5
    sput-object v0, Landroid/bluetooth/SdpRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 24
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 0
    .param p1, "size_record"    # I
    .param p2, "record"    # [B

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    iput-object p2, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    #@5
    .line 37
    iput p1, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    #@7
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@6
    move-result v0

    #@7
    iput v0, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    #@9
    .line 42
    iget v0, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    #@b
    new-array v0, v0, [B

    #@d
    iput-object v0, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    #@f
    .line 43
    iget-object v0, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    #@14
    .line 40
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 49
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getRawData()[B
    .locals 1

    #@0
    .prologue
    .line 70
    iget-object v0, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    #@2
    return-object v0
.end method

.method public getRawSize()I
    .locals 1

    #@0
    .prologue
    .line 74
    iget v0, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "BluetoothSdpRecord [rawData="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    #@e
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 32
    const-string/jumbo v1, ", rawSize="

    #@19
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 32
    iget v1, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    #@1f
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 32
    const-string/jumbo v1, "]"

    #@26
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 54
    iget v0, p0, Landroid/bluetooth/SdpRecord;->mRawSize:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 55
    iget-object v0, p0, Landroid/bluetooth/SdpRecord;->mRawData:[B

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    #@a
    .line 53
    return-void
.end method
