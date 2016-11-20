.class final Landroid/nfc/Tag$1;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/Tag;
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
        "Landroid/nfc/Tag;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/nfc/Tag;
    .locals 7
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 427
    invoke-static {p1}, Landroid/nfc/Tag;->readBytesWithNull(Landroid/os/Parcel;)[B

    #@3
    move-result-object v1

    #@4
    .line 428
    .local v1, "id":[B
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@7
    move-result v0

    #@8
    new-array v2, v0, [I

    #@a
    .line 429
    .local v2, "techList":[I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readIntArray([I)V

    #@d
    .line 430
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    #@f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    check-cast v3, [Landroid/os/Bundle;

    #@15
    .line 431
    .local v3, "techExtras":[Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@18
    move-result v4

    #@19
    .line 432
    .local v4, "serviceHandle":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@1c
    move-result v6

    #@1d
    .line 433
    .local v6, "isMock":I
    if-nez v6, :cond_0

    #@1f
    .line 434
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    #@22
    move-result-object v0

    #@23
    invoke-static {v0}, Landroid/nfc/INfcTag$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcTag;

    #@26
    move-result-object v5

    #@27
    .line 440
    :goto_0
    new-instance v0, Landroid/nfc/Tag;

    #@29
    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    #@2c
    return-object v0

    #@2d
    .line 437
    :cond_0
    const/4 v5, 0x0

    #@2e
    .local v5, "tagService":Landroid/nfc/INfcTag;
    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 423
    invoke-virtual {p0, p1}, Landroid/nfc/Tag$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/Tag;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/nfc/Tag;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 445
    new-array v0, p1, [Landroid/nfc/Tag;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 444
    invoke-virtual {p0, p1}, Landroid/nfc/Tag$1;->newArray(I)[Landroid/nfc/Tag;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
