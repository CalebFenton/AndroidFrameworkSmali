.class Landroid/os/DropBoxManager$Entry$1;
.super Ljava/lang/Object;
.source "DropBoxManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DropBoxManager$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/os/DropBoxManager$Entry;
    .registers 9
    .param p1, "in"    # Landroid/os/Parcel;

    .line 269
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 270
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 271
    .local v2, "millis":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 272
    .local v6, "flags":I
    and-int/lit8 v0, v6, 0x8

    if-eqz v0, :cond_1c

    .line 273
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    and-int/lit8 v5, v6, -0x9

    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    return-object v0

    .line 275
    :cond_1c
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/ParcelFileDescriptor;

    .line 276
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    move v5, v6

    .end local v6    # "flags":I
    .local v5, "flags":I
    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;I)V

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

    .line 266
    invoke-virtual {p0, p1}, Landroid/os/DropBoxManager$Entry$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/DropBoxManager$Entry;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/os/DropBoxManager$Entry;
    .registers 3
    .param p1, "size"    # I

    .line 267
    new-array v0, p1, [Landroid/os/DropBoxManager$Entry;

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

    .line 266
    invoke-virtual {p0, p1}, Landroid/os/DropBoxManager$Entry$1;->newArray(I)[Landroid/os/DropBoxManager$Entry;

    move-result-object p1

    return-object p1
.end method
