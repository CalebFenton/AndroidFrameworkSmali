.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller$2;
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

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist fillArray(Ljava/lang/Object;ILjava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "arr"    # Ljava/lang/Object;
    .param p2, "size"    # I
    .param p3, "buffer"    # Ljava/nio/ByteBuffer;

    .line 67
    nop

    .line 68
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    const-class v1, [F

    invoke-virtual {v1, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Ljava/nio/FloatBuffer;->get([FII)Ljava/nio/FloatBuffer;

    move-result-object v0

    .line 69
    .local v0, "fb":Ljava/nio/FloatBuffer;
    invoke-virtual {p3}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/FloatBuffer;->position()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    invoke-virtual {p3, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 70
    return-void
.end method
