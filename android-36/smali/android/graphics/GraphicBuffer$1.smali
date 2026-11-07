.class Landroid/graphics/GraphicBuffer$1;
.super Ljava/lang/Object;
.source "GraphicBuffer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/GraphicBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/graphics/GraphicBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/graphics/GraphicBuffer;
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 283
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 284
    .local v1, "width":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 285
    .local v2, "height":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 286
    .local v3, "format":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 287
    .local v4, "usage":I
    invoke-static {p1}, Landroid/graphics/GraphicBuffer;->-$$Nest$smnReadGraphicBufferFromParcel(Landroid/os/Parcel;)J

    move-result-wide v5

    .line 288
    .local v5, "nativeObject":J
    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-eqz v0, :cond_21

    .line 289
    new-instance v0, Landroid/graphics/GraphicBuffer;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/graphics/GraphicBuffer;-><init>(IIIIJLandroid/graphics/GraphicBuffer-IA;)V

    return-object v0

    .line 291
    :cond_21
    const/4 v0, 0x0

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

    .line 281
    invoke-virtual {p0, p1}, Landroid/graphics/GraphicBuffer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/graphics/GraphicBuffer;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/graphics/GraphicBuffer;
    .registers 3
    .param p1, "size"    # I

    .line 295
    new-array v0, p1, [Landroid/graphics/GraphicBuffer;

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

    .line 281
    invoke-virtual {p0, p1}, Landroid/graphics/GraphicBuffer$1;->newArray(I)[Landroid/graphics/GraphicBuffer;

    move-result-object p1

    return-object p1
.end method
