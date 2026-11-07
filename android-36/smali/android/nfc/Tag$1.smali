.class Landroid/nfc/Tag$1;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/Tag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nfc/Tag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nfc/Tag;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 455
    invoke-static {p1}, Landroid/nfc/Tag;->readBytesWithNull(Landroid/os/Parcel;)[B

    move-result-object v1

    .line 456
    .local v1, "id":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v2, v0, [I

    .line 457
    .local v2, "techList":[I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    .line 458
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, [Landroid/os/Bundle;

    .line 459
    .local v3, "techExtras":[Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 460
    .local v4, "serviceHandle":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    .line 461
    .local v5, "cookie":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 462
    .local v8, "isMock":I
    if-nez v8, :cond_2e

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/nfc/INfcTag$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcTag;

    move-result-object v0

    move-object v7, v0

    .local v0, "tagService":Landroid/nfc/INfcTag;
    goto :goto_30

    .line 466
    .end local v0    # "tagService":Landroid/nfc/INfcTag;
    :cond_2e
    const/4 v0, 0x0

    move-object v7, v0

    .line 469
    .local v7, "tagService":Landroid/nfc/INfcTag;
    :goto_30
    new-instance v0, Landroid/nfc/Tag;

    invoke-direct/range {v0 .. v7}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;IJLandroid/nfc/INfcTag;)V

    return-object v0
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

    .line 449
    invoke-virtual {p0, p1}, Landroid/nfc/Tag$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/Tag;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nfc/Tag;
    .registers 3
    .param p1, "size"    # I

    .line 474
    new-array v0, p1, [Landroid/nfc/Tag;

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

    .line 449
    invoke-virtual {p0, p1}, Landroid/nfc/Tag$1;->newArray(I)[Landroid/nfc/Tag;

    move-result-object p1

    return-object p1
.end method
