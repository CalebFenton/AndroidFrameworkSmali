.class Landroid/nfc/NdefRecord$1;
.super Ljava/lang/Object;
.source "NdefRecord.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NdefRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nfc/NdefRecord;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nfc/NdefRecord;
    .registers 10
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1002
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    int-to-short v0, v0

    .line 1003
    .local v0, "tnf":S
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1004
    .local v1, "typeLength":I
    new-array v2, v1, [B

    .line 1005
    .local v2, "type":[B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1006
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 1007
    .local v3, "idLength":I
    new-array v4, v3, [B

    .line 1008
    .local v4, "id":[B
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1009
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 1010
    .local v5, "payloadLength":I
    new-array v6, v5, [B

    .line 1011
    .local v6, "payload":[B
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1013
    new-instance v7, Landroid/nfc/NdefRecord;

    invoke-direct {v7, v0, v2, v4, v6}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    return-object v7
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 999
    invoke-virtual {p0, p1}, Landroid/nfc/NdefRecord$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/NdefRecord;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nfc/NdefRecord;
    .registers 3
    .param p1, "size"    # I

    .line 1017
    new-array v0, p1, [Landroid/nfc/NdefRecord;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 999
    invoke-virtual {p0, p1}, Landroid/nfc/NdefRecord$1;->newArray(I)[Landroid/nfc/NdefRecord;

    move-result-object p1

    return-object p1
.end method
