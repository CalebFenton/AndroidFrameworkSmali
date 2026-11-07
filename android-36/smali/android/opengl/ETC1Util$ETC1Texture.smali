.class public Landroid/opengl/ETC1Util$ETC1Texture;
.super Ljava/lang/Object;
.source "ETC1Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/opengl/ETC1Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ETC1Texture"
.end annotation


# instance fields
.field private greylist-max-o mData:Ljava/nio/ByteBuffer;

.field private greylist-max-o mHeight:I

.field private greylist-max-o mWidth:I


# direct methods
.method public constructor whitelist <init>(IILjava/nio/ByteBuffer;)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "data"    # Ljava/nio/ByteBuffer;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput p1, p0, Landroid/opengl/ETC1Util$ETC1Texture;->mWidth:I

    .line 119
    iput p2, p0, Landroid/opengl/ETC1Util$ETC1Texture;->mHeight:I

    .line 120
    iput-object p3, p0, Landroid/opengl/ETC1Util$ETC1Texture;->mData:Ljava/nio/ByteBuffer;

    .line 121
    return-void
.end method


# virtual methods
.method public whitelist getData()Ljava/nio/ByteBuffer;
    .registers 2

    .line 139
    iget-object v0, p0, Landroid/opengl/ETC1Util$ETC1Texture;->mData:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 133
    iget v0, p0, Landroid/opengl/ETC1Util$ETC1Texture;->mHeight:I

    return v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 127
    iget v0, p0, Landroid/opengl/ETC1Util$ETC1Texture;->mWidth:I

    return v0
.end method
