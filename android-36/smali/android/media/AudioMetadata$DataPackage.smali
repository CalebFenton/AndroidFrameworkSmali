.class interface abstract Landroid/media/AudioMetadata$DataPackage;
.super Ljava/lang/Object;
.source "AudioMetadata.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "DataPackage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public blacklist getMyType()Ljava/lang/Class;
    .registers 3

    .line 617
    .local p0, "this":Landroid/media/AudioMetadata$DataPackage;, "Landroid/media/AudioMetadata$DataPackage<TT;>;"
    invoke-interface {p0}, Landroid/media/AudioMetadata$DataPackage;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 618
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 617
    return-object v0
.end method

.method public abstract blacklist pack(Landroid/media/AudioMetadata$AutoGrowByteBuffer;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/AudioMetadata$AutoGrowByteBuffer;",
            "TT;)Z"
        }
    .end annotation
.end method

.method public abstract blacklist unpack(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation
.end method
