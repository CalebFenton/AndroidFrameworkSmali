.class public Landroid/os/ParcelableParcel;
.super Ljava/lang/Object;
.source "ParcelableParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final greylist-max-r CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Landroid/os/ParcelableParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final greylist-max-o mClassLoader:Ljava/lang/ClassLoader;

.field final greylist-max-o mParcel:Landroid/os/Parcel;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 72
    new-instance v0, Landroid/os/ParcelableParcel$1;

    invoke-direct {v0}, Landroid/os/ParcelableParcel$1;-><init>()V

    sput-object v0, Landroid/os/ParcelableParcel;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .registers 6
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    .line 38
    iput-object p2, p0, Landroid/os/ParcelableParcel;->mClassLoader:Ljava/lang/ClassLoader;

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 40
    .local v0, "size":I
    if-ltz v0, :cond_22

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v1

    .line 45
    .local v1, "pos":I
    invoke-static {v1, v0}, Landroid/util/MathUtils;->addOrThrow(II)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 46
    iget-object v2, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v2, p1, v1, v0}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 47
    return-void

    .line 41
    .end local v1    # "pos":I
    :cond_22
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Negative size read from parcel"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor greylist-max-r <init>(Ljava/lang/ClassLoader;)V
    .registers 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    .line 33
    iput-object p1, p0, Landroid/os/ParcelableParcel;->mClassLoader:Ljava/lang/ClassLoader;

    .line 34
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-r getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/os/ParcelableParcel;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public greylist-max-r getParcel()Landroid/os/Parcel;
    .registers 3

    .line 51
    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 52
    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 67
    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    iget-object v1, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    .line 69
    return-void
.end method
