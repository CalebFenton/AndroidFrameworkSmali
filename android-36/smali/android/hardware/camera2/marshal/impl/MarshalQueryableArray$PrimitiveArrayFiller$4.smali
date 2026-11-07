.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller$4;
.super Ljava/lang/Object;
.source "MarshalQueryableArray.java"

# interfaces
.implements Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;->getPrimitiveArrayFiller(Ljava/lang/Class;)Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist fillArray(Ljava/lang/Object;ILjava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "arr"    # Ljava/lang/Object;
    .param p2, "size"    # I
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;

    .line 85
    nop

    .line 86
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asDoubleBuffer()Ljava/nio/DoubleBuffer;

    move-result-object v0

    const-class v1, [D

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Ljava/nio/DoubleBuffer;->get([DII)Ljava/nio/DoubleBuffer;

    move-result-object v0

    .line 87
    .local v0, "db":Ljava/nio/DoubleBuffer;
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/DoubleBuffer;->position()I

    move-result v2

    mul-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 88
    return-void
.end method
