.class interface abstract Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;
.super Ljava/lang/Object;
.source "MarshalQueryableArray.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "PrimitiveArrayFiller"
.end annotation


# direct methods
.method public static blacklist getPrimitiveArrayFiller(Ljava/lang/Class;)Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller;"
        }
    .end annotation

    .line 54
    .local p0, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_a

    .line 55
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller$1;

    invoke-direct {v0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller$1;-><init>()V

    return-object v0

    .line 63
    :cond_a
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_14

    .line 64
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller$2;

    invoke-direct {v0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller$2;-><init>()V

    return-object v0

    .line 72
    :cond_14
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1e

    .line 73
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller$3;

    invoke-direct {v0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller$3;-><init>()V

    return-object v0

    .line 81
    :cond_1e
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_28

    .line 82
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller$4;

    invoke-direct {v0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller$4;-><init>()V

    return-object v0

    .line 90
    :cond_28
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_32

    .line 91
    new-instance v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller$5;

    invoke-direct {v0}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableArray$PrimitiveArrayFiller$5;-><init>()V

    return-object v0

    .line 98
    :cond_32
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrimitiveArrayFiller of type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 99
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract blacklist fillArray(Ljava/lang/Object;ILjava/nio/ByteBuffer;)V
.end method
