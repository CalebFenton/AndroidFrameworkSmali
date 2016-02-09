.class final Landroid/os/DropBoxManager$Entry$1;
.super Ljava/lang/Object;
.source "DropBoxManager.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/DropBoxManager$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/DropBoxManager$Entry;
    .locals 6
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 223
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    #@7
    move-result-wide v2

    #@8
    .line 224
    .local v2, "millis":J
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@b
    move-result v5

    #@c
    .line 225
    .local v5, "flags":I
    and-int/lit8 v0, v5, 0x8

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 226
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    #@12
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    #@15
    move-result-object v4

    #@16
    and-int/lit8 v5, v5, -0x9

    #@18
    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;J[BI)V

    #@1b
    .end local v5    # "flags":I
    return-object v0

    #@1c
    .line 228
    .restart local v5    # "flags":I
    :cond_0
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1e
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@21
    move-result-object v4

    #@22
    check-cast v4, Landroid/os/ParcelFileDescriptor;

    #@24
    .line 229
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/os/DropBoxManager$Entry;

    #@26
    invoke-direct/range {v0 .. v5}, Landroid/os/DropBoxManager$Entry;-><init>(Ljava/lang/String;JLandroid/os/ParcelFileDescriptor;I)V

    #@29
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 221
    invoke-virtual {p0, p1}, Landroid/os/DropBoxManager$Entry$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/DropBoxManager$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/os/DropBoxManager$Entry;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 220
    new-array v0, p1, [Landroid/os/DropBoxManager$Entry;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 220
    invoke-virtual {p0, p1}, Landroid/os/DropBoxManager$Entry$1;->newArray(I)[Landroid/os/DropBoxManager$Entry;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
