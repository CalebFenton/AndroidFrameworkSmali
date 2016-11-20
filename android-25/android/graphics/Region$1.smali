.class final Landroid/graphics/Region$1;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/Region;
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
        "Landroid/graphics/Region;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Region;
    .locals 4
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 345
    invoke-static {p1}, Landroid/graphics/Region;->-wrap0(Landroid/os/Parcel;)J

    #@3
    move-result-wide v0

    #@4
    .line 346
    .local v0, "ni":J
    const-wide/16 v2, 0x0

    #@6
    cmp-long v2, v0, v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 347
    new-instance v2, Ljava/lang/RuntimeException;

    #@c
    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    #@f
    throw v2

    #@10
    .line 349
    :cond_0
    new-instance v2, Landroid/graphics/Region;

    #@12
    invoke-direct {v2, v0, v1}, Landroid/graphics/Region;-><init>(J)V

    #@15
    return-object v2
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "p"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 344
    invoke-virtual {p0, p1}, Landroid/graphics/Region$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/Region;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/graphics/Region;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 352
    new-array v0, p1, [Landroid/graphics/Region;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 351
    invoke-virtual {p0, p1}, Landroid/graphics/Region$1;->newArray(I)[Landroid/graphics/Region;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
