.class final Landroid/os/ParcelableParcel$1;
.super Ljava/lang/Object;
.source "ParcelableParcel.java"

# interfaces
.implements Landroid/os/Parcelable$ClassLoaderCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/ParcelableParcel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$ClassLoaderCreator",
        "<",
        "Landroid/os/ParcelableParcel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelableParcel;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 64
    new-instance v0, Landroid/os/ParcelableParcel;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p1, v1}, Landroid/os/ParcelableParcel;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@6
    return-object v0
.end method

.method public createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/ParcelableParcel;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 68
    new-instance v0, Landroid/os/ParcelableParcel;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/os/ParcelableParcel;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    #@5
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 63
    invoke-virtual {p0, p1}, Landroid/os/ParcelableParcel$1;->createFromParcel(Landroid/os/Parcel;)Landroid/os/ParcelableParcel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Landroid/os/ParcelableParcel$1;->createFromParcel(Landroid/os/Parcel;Ljava/lang/ClassLoader;)Landroid/os/ParcelableParcel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/os/ParcelableParcel;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 72
    new-array v0, p1, [Landroid/os/ParcelableParcel;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 71
    invoke-virtual {p0, p1}, Landroid/os/ParcelableParcel$1;->newArray(I)[Landroid/os/ParcelableParcel;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
