.class final Landroid/nfc/NdefRecord$1;
.super Ljava/lang/Object;
.source "NdefRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NdefRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/nfc/NdefRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 991
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/NdefRecord;
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 994
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v7

    #@4
    int-to-short v4, v7

    #@5
    .line 995
    .local v4, "tnf":S
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v6

    #@9
    .line 996
    .local v6, "typeLength":I
    new-array v5, v6, [B

    #@b
    .line 997
    .local v5, "type":[B
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    #@e
    .line 998
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@11
    move-result v1

    #@12
    .line 999
    .local v1, "idLength":I
    new-array v0, v1, [B

    #@14
    .line 1000
    .local v0, "id":[B
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    #@17
    .line 1001
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1a
    move-result v3

    #@1b
    .line 1002
    .local v3, "payloadLength":I
    new-array v2, v3, [B

    #@1d
    .line 1003
    .local v2, "payload":[B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    #@20
    .line 1005
    new-instance v7, Landroid/nfc/NdefRecord;

    #@22
    invoke-direct {v7, v4, v5, v0, v2}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    #@25
    return-object v7
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 993
    invoke-virtual {p0, p1}, Landroid/nfc/NdefRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/NdefRecord;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/NdefRecord;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1009
    new-array v0, p1, [Landroid/nfc/NdefRecord;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1008
    invoke-virtual {p0, p1}, Landroid/nfc/NdefRecord$1;->newArray(I)[Landroid/nfc/NdefRecord;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
