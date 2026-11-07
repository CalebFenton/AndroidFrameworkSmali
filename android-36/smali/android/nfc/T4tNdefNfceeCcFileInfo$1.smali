.class Landroid/nfc/T4tNdefNfceeCcFileInfo$1;
.super Ljava/lang/Object;
.source "T4tNdefNfceeCcFileInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/nfc/T4tNdefNfceeCcFileInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/nfc/T4tNdefNfceeCcFileInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/nfc/T4tNdefNfceeCcFileInfo;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 186
    .local v1, "cclen":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 187
    .local v2, "version":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 188
    .local v3, "ndefFileId":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 189
    .local v4, "ndefMaxSize":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v5

    .line 190
    .local v5, "isReadAllowed":Z
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v6

    .line 192
    .local v6, "isWriteAllowed":Z
    new-instance v0, Landroid/nfc/T4tNdefNfceeCcFileInfo;

    invoke-direct/range {v0 .. v6}, Landroid/nfc/T4tNdefNfceeCcFileInfo;-><init>(IIIIZZ)V

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

    .line 180
    invoke-virtual {p0, p1}, Landroid/nfc/T4tNdefNfceeCcFileInfo$1;->createFromParcel(Landroid/os/Parcel;)Landroid/nfc/T4tNdefNfceeCcFileInfo;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/nfc/T4tNdefNfceeCcFileInfo;
    .registers 3
    .param p1, "size"    # I

    .line 199
    new-array v0, p1, [Landroid/nfc/T4tNdefNfceeCcFileInfo;

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

    .line 180
    invoke-virtual {p0, p1}, Landroid/nfc/T4tNdefNfceeCcFileInfo$1;->newArray(I)[Landroid/nfc/T4tNdefNfceeCcFileInfo;

    move-result-object p1

    return-object p1
.end method
