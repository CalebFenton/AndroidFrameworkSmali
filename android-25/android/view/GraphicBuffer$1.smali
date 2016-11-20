.class final Landroid/view/GraphicBuffer$1;
.super Ljava/lang/Object;
.source "GraphicBuffer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GraphicBuffer;
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
        "Landroid/view/GraphicBuffer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/GraphicBuffer;
    .locals 9
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@4
    move-result v2

    #@5
    .line 271
    .local v2, "width":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@8
    move-result v3

    #@9
    .line 272
    .local v3, "height":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@c
    move-result v4

    #@d
    .line 273
    .local v4, "format":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@10
    move-result v5

    #@11
    .line 274
    .local v5, "usage":I
    invoke-static {p1}, Landroid/view/GraphicBuffer;->-wrap0(Landroid/os/Parcel;)J

    #@14
    move-result-wide v6

    #@15
    .line 275
    .local v6, "nativeObject":J
    const-wide/16 v0, 0x0

    #@17
    cmp-long v0, v6, v0

    #@19
    if-eqz v0, :cond_0

    #@1b
    .line 276
    new-instance v1, Landroid/view/GraphicBuffer;

    #@1d
    invoke-direct/range {v1 .. v8}, Landroid/view/GraphicBuffer;-><init>(IIIIJLandroid/view/GraphicBuffer;)V

    #@20
    return-object v1

    #@21
    .line 278
    :cond_0
    return-object v8
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 269
    invoke-virtual {p0, p1}, Landroid/view/GraphicBuffer$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/GraphicBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/view/GraphicBuffer;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 282
    new-array v0, p1, [Landroid/view/GraphicBuffer;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 281
    invoke-virtual {p0, p1}, Landroid/view/GraphicBuffer$1;->newArray(I)[Landroid/view/GraphicBuffer;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
