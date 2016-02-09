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
        "Landroid/hardware/camera2/marshal/Marshaler",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final mCreator:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;


# direct methods
.method protected constructor <init>(Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;Landroid/hardware/camera2/utils/TypeReference;I)V
    .locals 6
    .param p3, "nativeType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/utils/TypeReference",
            "<TT;>;I)V"
        }
    .end annotation

    #@0
    .prologue
    .line 47
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    .local p1, "this$0":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>;"
    .local p2, "typeReference":Landroid/hardware/camera2/utils/TypeReference;, "Landroid/hardware/camera2/utils/TypeReference<TT;>;"
    iput-object p1, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->this$0:Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable;

    #@2
    .line 49
    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/camera2/marshal/Marshaler;-><init>(Landroid/hardware/camera2/marshal/MarshalQueryable;Landroid/hardware/camera2/utils/TypeReference;I)V

    #@5
    .line 51
    invoke-virtual {p2}, Landroid/hardware/camera2/utils/TypeReference;->getRawType()Ljava/lang/Class;

    #@8
    move-result-object v4

    #@9
    iput-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->mClass:Ljava/lang/Class;

    #@b
    .line 54
    :try_start_0
    iget-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->mClass:Ljava/lang/Class;

    #@d
    const-string/jumbo v5, "CREATOR"

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v0

    #@14
    .line 61
    .local v0, "creatorField":Ljava/lang/reflect/Field;
    const/4 v4, 0x0

    #@15
    :try_start_1
    invoke-virtual {v0, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@18
    move-result-object v4

    #@19
    check-cast v4, Landroid/os/Parcelable$Creator;

    #@1b
    iput-object v4, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->mCreator:Landroid/os/Parcelable$Creator;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    #@1d
    .line 48
    return-void

    #@1e
    .line 55
    .end local v0    # "creatorField":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v3

    #@1f
    .line 57
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    new-instance v4, Ljava/lang/AssertionError;

    #@21
    invoke-direct {v4, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@24
    throw v4

    #@25
    .line 65
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    .restart local v0    # "creatorField":Ljava/lang/reflect/Field;
    :catch_1
    move-exception v2

    #@26
    .line 67
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/AssertionError;

    #@28
    invoke-direct {v4, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2b
    throw v4

    #@2c
    .line 62
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v1

    #@2d
    .line 64
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v4, Ljava/lang/AssertionError;

    #@2f
    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@32
    throw v4
.end method


# virtual methods
.method public calculateMarshalSize(Landroid/os/Parcelable;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 163
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    .local p1, "value":Landroid/os/Parcelable;, "TT;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v1

    #@4
    .line 165
    .local v1, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    #@5
    :try_start_0
    invoke-interface {p1, v1, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@8
    .line 166
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    #@b
    move-result-object v2

    #@c
    array-length v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 175
    .local v0, "length":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@10
    .line 173
    return v0

    #@11
    .line 174
    .end local v0    # "length":I
    :catchall_0
    move-exception v2

    #@12
    .line 175
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@15
    .line 174
    throw v2
.end method

.method public bridge synthetic calculateMarshalSize(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 162
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    check-cast p1, Landroid/os/Parcelable;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->calculateMarshalSize(Landroid/os/Parcelable;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getNativeSize()I
    .locals 1

    #@0
    .prologue
    .line 158
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    sget v0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->NATIVE_SIZE_DYNAMIC:I

    #@2
    return v0
.end method

.method public marshal(Landroid/os/Parcelable;Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/nio/ByteBuffer;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 77
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    .local p1, "value":Landroid/os/Parcelable;, "TT;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 81
    .local v0, "parcel":Landroid/os/Parcel;
    const/4 v2, 0x0

    #@5
    :try_start_0
    invoke-interface {p1, v0, v2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    #@8
    .line 83
    invoke-virtual {v0}, Landroid/os/Parcel;->hasFileDescriptors()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 84
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    #@10
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Parcelable "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    const-string/jumbo v4, " must not have file descriptors"

    #@23
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    .line 84
    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 90
    :catchall_0
    move-exception v2

    #@30
    .line 91
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 90
    throw v2

    #@34
    .line 88
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@37
    move-result-object v1

    #@38
    .line 91
    .local v1, "parcelContents":[B
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3b
    .line 94
    array-length v2, v1

    #@3c
    if-nez v2, :cond_1

    #@3e
    .line 95
    new-instance v2, Ljava/lang/AssertionError;

    #@40
    new-instance v3, Ljava/lang/StringBuilder;

    #@42
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@45
    const-string/jumbo v4, "No data marshaled for "

    #@48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@57
    throw v2

    #@58
    .line 98
    :cond_1
    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    #@5b
    .line 72
    return-void
.end method

.method public bridge synthetic marshal(Ljava/lang/Object;Ljava/nio/ByteBuffer;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 72
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    check-cast p1, Landroid/os/Parcelable;

    #@2
    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->marshal(Landroid/os/Parcelable;Ljava/nio/ByteBuffer;)V

    #@5
    return-void
.end method

.method public unmarshal(Ljava/nio/ByteBuffer;)Landroid/os/Parcelable;
    .locals 8
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 122
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    #@3
    .line 124
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@6
    move-result-object v2

    #@7
    .line 126
    .local v2, "parcel":Landroid/os/Parcel;
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    #@a
    move-result v1

    #@b
    .line 128
    .local v1, "maxLength":I
    new-array v3, v1, [B

    #@d
    .line 129
    .local v3, "remaining":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@10
    .line 131
    const/4 v5, 0x0

    #@11
    invoke-virtual {v2, v3, v5, v1}, Landroid/os/Parcel;->unmarshall([BII)V

    #@14
    .line 132
    const/4 v5, 0x0

    #@15
    invoke-virtual {v2, v5}, Landroid/os/Parcel;->setDataPosition(I)V

    #@18
    .line 134
    iget-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->mCreator:Landroid/os/Parcelable$Creator;

    #@1a
    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    #@1d
    move-result-object v4

    #@1e
    check-cast v4, Landroid/os/Parcelable;

    #@20
    .line 135
    .local v4, "value":Landroid/os/Parcelable;, "TT;"
    invoke-virtual {v2}, Landroid/os/Parcel;->dataPosition()I

    #@23
    move-result v0

    #@24
    .line 137
    .local v0, "actualLength":I
    if-nez v0, :cond_0

    #@26
    .line 138
    new-instance v5, Ljava/lang/AssertionError;

    #@28
    new-instance v6, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v7, "No data marshaled for "

    #@30
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v6

    #@38
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v6

    #@3c
    invoke-direct {v5, v6}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@3f
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@40
    .line 151
    .end local v0    # "actualLength":I
    .end local v1    # "maxLength":I
    .end local v3    # "remaining":[B
    .end local v4    # "value":Landroid/os/Parcelable;, "TT;"
    :catchall_0
    move-exception v5

    #@41
    .line 152
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@44
    .line 151
    throw v5

    #@45
    .line 142
    .restart local v0    # "actualLength":I
    .restart local v1    # "maxLength":I
    .restart local v3    # "remaining":[B
    .restart local v4    # "value":Landroid/os/Parcelable;, "TT;"
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    #@48
    .line 143
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    #@4b
    move-result v5

    #@4c
    add-int/2addr v5, v0

    #@4d
    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    #@50
    .line 150
    iget-object v5, p0, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->mClass:Ljava/lang/Class;

    #@52
    invoke-virtual {v5, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    move-result-object v5

    #@56
    check-cast v5, Landroid/os/Parcelable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    .line 152
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    #@5b
    .line 150
    return-object v5
.end method

.method public bridge synthetic unmarshal(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 1
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    #@0
    .prologue
    .line 102
    .local p0, "this":Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;, "Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable<TT;>.MarshalerParcelable;"
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/marshal/impl/MarshalQueryableParcelable$MarshalerParcelable;->unmarshal(Ljava/nio/ByteBuffer;)Landroid/os/Parcelable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
