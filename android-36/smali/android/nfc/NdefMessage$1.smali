.class Landroid/nfc/NdefMessage$1;
.super Ljava/lang/Object;
.source "NdefMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/NdefMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nfc/NdefMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nfc/NdefMessage;
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 222
    .local v0, "recordsLength":I
    new-array v1, v0, [Landroid/nfc/NdefRecord;

    .line 223
    .local v1, "records":[Landroid/nfc/NdefRecord;
    sget-object v2, Landroid/nfc/NdefRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readTypedArray([Ljava/lang/Object;Landroid/os/Parcelable$Creator;)V

    .line 224
    new-instance v2, Landroid/nfc/NdefMessage;

    invoke-direct {v2, v1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    return-object v2
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

    .line 218
    invoke-virtual {p0, p1}, Landroid/nfc/NdefMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/NdefMessage;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nfc/NdefMessage;
    .registers 3
    .param p1, "size"    # I

    .line 228
    new-array v0, p1, [Landroid/nfc/NdefMessage;

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

    .line 218
    invoke-virtual {p0, p1}, Landroid/nfc/NdefMessage$1;->newArray(I)[Landroid/nfc/NdefMessage;

    move-result-object p1

    return-object p1
.end method
