.class final Landroid/graphics/Bitmap$1;
.super Ljava/lang/Object;
.source "Bitmap.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Bitmap;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 1508
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1516
    invoke-static {p1}, Landroid/graphics/Bitmap;->-wrap0(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    #@3
    move-result-object v0

    #@4
    .line 1517
    .local v0, "bm":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    #@6
    .line 1518
    new-instance v1, Ljava/lang/RuntimeException;

    #@8
    const-string/jumbo v2, "Failed to unparcel Bitmap"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 1520
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1515
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Bitmap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1523
    new-array v0, p1, [Landroid/graphics/Bitmap;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 1522
    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap$1;->newArray(I)[Landroid/graphics/Bitmap;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
