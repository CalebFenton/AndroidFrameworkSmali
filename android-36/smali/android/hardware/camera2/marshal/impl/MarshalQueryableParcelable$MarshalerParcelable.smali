.class Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;
.super Landroid/hardware/camera2/marshal/Marshaler;
.source "MarshalQueryableParcelable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarshalerParcelable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/hardware/camera2/marshal/Marshaler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mCreator:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor blacklist <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;Landroid/hardware/camera2/utils/TypeReference;I)V
    .registers 6
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference<",
            "TT;>;I)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    .line 51
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->mClass:Ljava/lang/Class;

    .line 54
    :try_start_9
    iget-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->mClass:Ljava/lang/Class;

    const-string v0, "CREATOR"

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldException; {:try_start_9 .. :try_end_11} :catch_2b

    .line 58
    .local p1, "creatorField":Ljava/lang/reflect/Field;
    nop

    .line 61
    const/4 v0, 0x0

    :try_start_13
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable$Creator;

    iput-object v0, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->mCreator:Landroid/os/Parcelable$Creator;
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_13 .. :try_end_1b} :catch_24
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_1b} :catch_1d

    .line 68
    nop

    .line 69
    return-void

    .line 65
    :catch_1d
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 62
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_24
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 55
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    .end local p1    # "creatorField":Ljava/lang/reflect/Field;
    :catch_2b
    move-exception p1

    .line 57
    .local p1, "e":Ljava/lang/NoSuchFieldException;
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public blacklist calculateMarshalSize(Landroid/os/Parcelable;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 160
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    .local p1, "value":Landroid/os/Parcelable;, "TT;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {p1, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 163
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    array-length v1, v1
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_12

    .line 170
    .local v1, "length":I
    nop

    .line 172
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 170
    return v1

    .line 172
    .end local v1    # "length":I
    :catchall_12
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 173
    throw v1
.end method

.method public bridge synthetic blacklist calculateMarshalSize(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->calculateMarshalSize(Landroid/os/Parcelable;)I

    move-result p1

    return p1
.end method

.method public blacklist getNativeSize()I
    .registers 2

    .line 155
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    sget v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->NATIVE_SIZE_DYNAMIC:I

    return v0
.end method

.method public blacklist marshal(Landroid/os/Parcelable;Ljava/nio/ByteBuffer;)V
    .registers 8
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    .line 77
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    .local p1, "value":Landroid/os/Parcelable;, "TT;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 80
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v1, 0x0

    :try_start_5
    invoke-interface {p1, v0, v1}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    move-result v1

    if-nez v1, :cond_39

    .line 87
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 88
    .local v1, "position":I
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->marshall(Ljava/nio/ByteBuffer;)V

    .line 89
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_58

    if-eq v2, v1, :cond_20

    .line 94
    .end local v1    # "position":I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    nop

    .line 96
    return-void

    .line 90
    .restart local v1    # "position":I
    :cond_20
    :try_start_20
    new-instance v2, Ljava/lang/AssertionError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No data marshaled for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "parcel":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    .end local p1    # "value":Landroid/os/Parcelable;, "TT;"
    .end local p2    # "buffer":Ljava/nio/ByteBuffer;
    throw v2

    .line 83
    .end local v1    # "position":I
    .restart local v0    # "parcel":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    .restart local p1    # "value":Landroid/os/Parcelable;, "TT;"
    .restart local p2    # "buffer":Ljava/nio/ByteBuffer;
    :cond_39
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parcelable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " must not have file descriptors"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .end local v0    # "parcel":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    .end local p1    # "value":Landroid/os/Parcelable;, "TT;"
    .end local p2    # "buffer":Ljava/nio/ByteBuffer;
    throw v1
    :try_end_58
    .catchall {:try_start_20 .. :try_end_58} :catchall_58

    .line 94
    .restart local v0    # "parcel":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    .restart local p1    # "value":Landroid/os/Parcelable;, "TT;"
    .restart local p2    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_58
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 95
    throw v1
.end method

.method public bridge synthetic blacklist marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 41
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->marshal(Landroid/os/Parcelable;Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method public blacklist unmarshal(Ljava/nio/ByteBuffer;)Landroid/os/Parcelable;
    .registers 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    .line 119
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 121
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 123
    .local v0, "parcel":Landroid/os/Parcel;
    :try_start_7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 125
    .local v1, "maxLength":I
    new-array v2, v1, [B

    .line 126
    .local v2, "remaining":[B
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 128
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 129
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 131
    iget-object v3, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->mCreator:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Parcelable;

    .line 132
    .local v3, "value":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {v0}, Landroid/os/Parcel;->dataPosition()I

    move-result v4

    .line 134
    .local v4, "actualLength":I
    if-eqz v4, :cond_3c

    .line 139
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 140
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    iget-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->mClass:Ljava/lang/Class;

    invoke-virtual {v5, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Parcelable;
    :try_end_38
    .catchall {:try_start_7 .. :try_end_38} :catchall_55

    .line 149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 147
    return-object v5

    .line 135
    :cond_3c
    :try_start_3c
    new-instance v5, Ljava/lang/AssertionError;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No data marshaled for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .end local v0    # "parcel":Landroid/os/Parcel;
    .end local p0    # "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    .end local p1    # "buffer":Ljava/nio/ByteBuffer;
    throw v5
    :try_end_55
    .catchall {:try_start_3c .. :try_end_55} :catchall_55

    .line 149
    .end local v1    # "maxLength":I
    .end local v2    # "remaining":[B
    .end local v3    # "value":Landroid/os/Parcelable;, "TT;"
    .end local v4    # "actualLength":I
    .restart local v0    # "parcel":Landroid/os/Parcel;
    .restart local p0    # "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    .restart local p1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_55
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 150
    throw v1
.end method

.method public bridge synthetic blacklist unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 41
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/os/Parcelable;

    move-result-object p1

    return-object p1
.end method
