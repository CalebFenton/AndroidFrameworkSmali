.class public Landroid/os/ParcelableParcel;
.super Ljava/lang/Object;
.source "ParcelableParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ParcelableParcel$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator",
            "<",
            "Landroid/os/ParcelableParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mClassLoader:Ljava/lang/ClassLoader;

.field final mParcel:Landroid/os/Parcel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 68
    new-instance v0, Landroid/os/ParcelableParcel$1;

    #@2
    invoke-direct {v0}, Landroid/os/ParcelableParcel$1;-><init>()V

    #@5
    .line 67
    sput-object v0, Landroid/os/ParcelableParcel;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    #@7
    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 4
    .param p1, "src"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v2

    #@7
    iput-object v2, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    #@9
    .line 36
    iput-object p2, p0, Landroid/os/ParcelableParcel;->mClassLoader:Ljava/lang/ClassLoader;

    #@b
    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@e
    move-result v1

    #@f
    .line 38
    .local v1, "size":I
    if-gez v1, :cond_0

    #@11
    .line 39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v3, "Negative size read from parcel"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    #@1d
    move-result v0

    #@1e
    .line 43
    .local v0, "pos":I
    invoke-static {v0, v1}, Landroid/util/MathUtils;->addOrThrow(II)I

    #@21
    move-result v2

    #@22
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    #@25
    .line 44
    iget-object v2, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    #@27
    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    #@2a
    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    #@9
    .line 31
    iput-object p1, p0, Landroid/os/ParcelableParcel;->mClassLoader:Ljava/lang/ClassLoader;

    #@b
    .line 29
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 58
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Landroid/os/ParcelableParcel;->mClassLoader:Ljava/lang/ClassLoader;

    #@2
    return-object v0
.end method

.method public getParcel()Landroid/os/Parcel;
    .locals 2

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    #@6
    .line 49
    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    #@8
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    #@2
    invoke-virtual {v0}, Landroid/os/Parcel;->dataSize()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@9
    .line 64
    iget-object v0, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    #@b
    iget-object v1, p0, Landroid/os/ParcelableParcel;->mParcel:Landroid/os/Parcel;

    #@d
    invoke-virtual {v1}, Landroid/os/Parcel;->dataSize()I

    #@10
    move-result v1

    #@11
    const/4 v2, 0x0

    #@12
    invoke-virtual {p1, v0, v2, v1}, Landroid/os/Parcel;->appendFrom(Landroid/os/Parcel;II)V

    #@15
    .line 62
    return-void
.end method
