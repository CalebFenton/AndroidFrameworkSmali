.class public Lcom/android/framework/protobuf/nano/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
        "<TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final TYPE_BOOL:I = 0x8

.field public static final TYPE_BYTES:I = 0xc

.field public static final TYPE_DOUBLE:I = 0x1

.field public static final TYPE_ENUM:I = 0xe

.field public static final TYPE_FIXED32:I = 0x7

.field public static final TYPE_FIXED64:I = 0x6

.field public static final TYPE_FLOAT:I = 0x2

.field public static final TYPE_GROUP:I = 0xa

.field public static final TYPE_INT32:I = 0x5

.field public static final TYPE_INT64:I = 0x3

.field public static final TYPE_MESSAGE:I = 0xb

.field public static final TYPE_SFIXED32:I = 0xf

.field public static final TYPE_SFIXED64:I = 0x10

.field public static final TYPE_SINT32:I = 0x11

.field public static final TYPE_SINT64:I = 0x12

.field public static final TYPE_STRING:I = 0x9

.field public static final TYPE_UINT32:I = 0xd

.field public static final TYPE_UINT64:I = 0x4


# instance fields
.field protected final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field protected final repeated:Z

.field public final tag:I

.field protected final type:I


# direct methods
.method private constructor <init>(ILjava/lang/Class;IZ)V
    .locals 0
    .param p1, "type"    # I
    .param p3, "tag"    # I
    .param p4, "repeated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<TT;>;IZ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 167
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 168
    iput p1, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    #@5
    .line 169
    iput-object p2, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    #@7
    .line 170
    iput p3, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    #@9
    .line 171
    iput-boolean p4, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    #@b
    .line 167
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/Class;IZLcom/android/framework/protobuf/nano/Extension;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "clazz"    # Ljava/lang/Class;
    .param p3, "tag"    # I
    .param p4, "repeated"    # Z

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    #@3
    return-void
.end method

.method public static createMessageTyped(ILjava/lang/Class;I)Lcom/android/framework/protobuf/nano/Extension;
    .locals 2
    .param p0, "type"    # I
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
            "<TM;>;T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;I)",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 87
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/android/framework/protobuf/nano/Extension;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    #@6
    return-object v0
.end method

.method public static createMessageTyped(ILjava/lang/Class;J)Lcom/android/framework/protobuf/nano/Extension;
    .locals 4
    .param p0, "type"    # I
    .param p2, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
            "<TM;>;T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;J)",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 103
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/android/framework/protobuf/nano/Extension;

    #@2
    long-to-int v1, p2

    #@3
    const/4 v2, 0x0

    #@4
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    #@7
    return-object v0
.end method

.method public static createPrimitiveTyped(ILjava/lang/Class;J)Lcom/android/framework/protobuf/nano/Extension;
    .locals 8
    .param p0, "type"    # I
    .param p2, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
            "<TM;>;T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;J)",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v4, 0x0

    #@1
    .line 126
    new-instance v0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;

    #@3
    long-to-int v3, p2

    #@4
    move v1, p0

    #@5
    move-object v2, p1

    #@6
    move v5, v4

    #@7
    move v6, v4

    #@8
    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;-><init>(ILjava/lang/Class;IZII)V

    #@b
    return-object v0
.end method

.method public static createRepeatedMessageTyped(ILjava/lang/Class;J)Lcom/android/framework/protobuf/nano/Extension;
    .locals 4
    .param p0, "type"    # I
    .param p2, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
            "<TM;>;T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class",
            "<[TT;>;J)",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;[TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 114
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<[TT;>;"
    new-instance v0, Lcom/android/framework/protobuf/nano/Extension;

    #@2
    long-to-int v1, p2

    #@3
    const/4 v2, 0x1

    #@4
    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    #@7
    return-object v0
.end method

.method public static createRepeatedPrimitiveTyped(ILjava/lang/Class;JJJ)Lcom/android/framework/protobuf/nano/Extension;
    .locals 8
    .param p0, "type"    # I
    .param p2, "tag"    # J
    .param p4, "nonPackedTag"    # J
    .param p6, "packedTag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano",
            "<TM;>;T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class",
            "<TT;>;JJJ)",
            "Lcom/android/framework/protobuf/nano/Extension",
            "<TM;TT;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 139
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;

    #@2
    long-to-int v3, p2

    #@3
    .line 140
    long-to-int v5, p4

    #@4
    long-to-int v6, p6

    #@5
    .line 139
    const/4 v4, 0x1

    #@6
    move v1, p0

    #@7
    move-object v2, p1

    #@8
    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;-><init>(ILjava/lang/Class;IZII)V

    #@b
    return-object v0
.end method

.method private getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 191
    .local p1, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/nano/UnknownFieldData;>;"
    new-instance v3, Ljava/util/ArrayList;

    #@2
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 192
    .local v3, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    #@6
    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@9
    move-result v5

    #@a
    if-ge v1, v5, :cond_1

    #@c
    .line 193
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    #@12
    .line 194
    .local v0, "data":Lcom/android/framework/protobuf/nano/UnknownFieldData;
    iget-object v5, v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    #@14
    array-length v5, v5

    #@15
    if-eqz v5, :cond_0

    #@17
    .line 195
    invoke-virtual {p0, v0, v3}, Lcom/android/framework/protobuf/nano/Extension;->readDataInto(Lcom/android/framework/protobuf/nano/UnknownFieldData;Ljava/util/List;)V

    #@1a
    .line 192
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0

    #@1d
    .line 199
    .end local v0    # "data":Lcom/android/framework/protobuf/nano/UnknownFieldData;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@20
    move-result v4

    #@21
    .line 200
    .local v4, "resultSize":I
    if-nez v4, :cond_2

    #@23
    .line 201
    const/4 v5, 0x0

    #@24
    return-object v5

    #@25
    .line 203
    :cond_2
    iget-object v5, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    #@27
    iget-object v6, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    #@29
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@2c
    move-result-object v6

    #@2d
    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v5, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v2

    #@35
    .line 204
    .local v2, "result":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    #@36
    :goto_1
    if-ge v1, v4, :cond_3

    #@38
    .line 205
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@3b
    move-result-object v5

    #@3c
    invoke-static {v2, v1, v5}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    #@3f
    .line 204
    add-int/lit8 v1, v1, 0x1

    #@41
    goto :goto_1

    #@42
    .line 207
    :cond_3
    return-object v2
.end method

.method private getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 213
    .local p1, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/nano/UnknownFieldData;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 214
    const/4 v1, 0x0

    #@7
    return-object v1

    #@8
    .line 216
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    add-int/lit8 v1, v1, -0x1

    #@e
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    #@14
    .line 217
    .local v0, "lastData":Lcom/android/framework/protobuf/nano/UnknownFieldData;
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    #@16
    iget-object v2, v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    #@18
    invoke-static {v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/nano/Extension;->readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    return-object v1
.end method


# virtual methods
.method protected computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .locals 5
    .param p1, "array"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 306
    const/4 v3, 0x0

    #@1
    .line 307
    .local v3, "size":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@4
    move-result v0

    #@5
    .line 308
    .local v0, "arrayLength":I
    const/4 v2, 0x0

    #@6
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@8
    .line 309
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    .line 310
    .local v1, "element":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@e
    .line 311
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {p0, v4}, Lcom/android/framework/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    #@15
    move-result v4

    #@16
    add-int/2addr v3, v4

    #@17
    .line 308
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 314
    .end local v1    # "element":Ljava/lang/Object;
    :cond_1
    return v3
.end method

.method computeSerializedSize(Ljava/lang/Object;)I
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 297
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 298
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    #@7
    move-result v0

    #@8
    return v0

    #@9
    .line 300
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    #@c
    move-result v0

    #@d
    return v0
.end method

.method protected computeSingularSerializedSize(Ljava/lang/Object;)I
    .locals 6
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 319
    iget v3, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    #@2
    invoke-static {v3}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    #@5
    move-result v0

    #@6
    .line 320
    .local v0, "fieldNumber":I
    iget v3, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    #@8
    packed-switch v3, :pswitch_data_0

    #@b
    .line 328
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v4, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v5, "Unknown type "

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    iget v5, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    #@1b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    :pswitch_0
    move-object v1, p1

    #@28
    .line 322
    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    #@2a
    .line 323
    .local v1, "groupValue":Lcom/android/framework/protobuf/nano/MessageNano;
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@2d
    move-result v3

    #@2e
    return v3

    #@2f
    .end local v1    # "groupValue":Lcom/android/framework/protobuf/nano/MessageNano;
    :pswitch_1
    move-object v2, p1

    #@30
    .line 325
    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    #@32
    .line 326
    .local v2, "messageValue":Lcom/android/framework/protobuf/nano/MessageNano;
    invoke-static {v0, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    #@35
    move-result v3

    #@36
    return v3

    #@37
    .line 320
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method final getValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/nano/UnknownFieldData;>;"
    const/4 v0, 0x0

    #@1
    .line 183
    if-nez p1, :cond_0

    #@3
    .line 184
    return-object v0

    #@4
    .line 186
    :cond_0
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    #@6
    if-eqz v0, :cond_1

    #@8
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    :goto_0
    return-object v0

    #@d
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    goto :goto_0
.end method

.method protected readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .locals 9
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    #@0
    .prologue
    .line 222
    iget-boolean v6, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    #@2
    if-eqz v6, :cond_0

    #@4
    iget-object v6, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    #@6
    invoke-virtual {v6}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    #@9
    move-result-object v5

    #@a
    .line 224
    .local v5, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    :try_start_0
    iget v6, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    #@c
    packed-switch v6, :pswitch_data_0

    #@f
    .line 234
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v7, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v8, "Unknown type "

    #@19
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v7

    #@1d
    iget v8, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    #@1f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v7

    #@23
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v6
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    #@2b
    .line 236
    :catch_0
    move-exception v2

    #@2c
    .line 237
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@2e
    .line 238
    new-instance v7, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    const-string/jumbo v8, "Error creating instance of class "

    #@36
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v7

    #@3a
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@41
    move-result-object v7

    #@42
    .line 237
    invoke-direct {v6, v7, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@45
    throw v6

    #@46
    .line 222
    .end local v2    # "e":Ljava/lang/InstantiationException;
    .end local v5    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v5, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    #@48
    .restart local v5    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    #@49
    .line 226
    :pswitch_0
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@4c
    move-result-object v3

    #@4d
    check-cast v3, Lcom/android/framework/protobuf/nano/MessageNano;

    #@4f
    .line 227
    .local v3, "group":Lcom/android/framework/protobuf/nano/MessageNano;
    iget v6, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    #@51
    invoke-static {v6}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    #@54
    move-result v6

    #@55
    invoke-virtual {p1, v3, v6}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/android/framework/protobuf/nano/MessageNano;I)V

    #@58
    .line 228
    return-object v3

    #@59
    .line 230
    .end local v3    # "group":Lcom/android/framework/protobuf/nano/MessageNano;
    :pswitch_1
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@5c
    move-result-object v4

    #@5d
    check-cast v4, Lcom/android/framework/protobuf/nano/MessageNano;

    #@5f
    .line 231
    .local v4, "message":Lcom/android/framework/protobuf/nano/MessageNano;
    invoke-virtual {p1, v4}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V
    :try_end_1
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@62
    .line 232
    return-object v4

    #@63
    .line 242
    .end local v4    # "message":Lcom/android/framework/protobuf/nano/MessageNano;
    :catch_1
    move-exception v0

    #@64
    .line 243
    .local v0, "e":Ljava/io/IOException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@66
    const-string/jumbo v7, "Error reading extension field"

    #@69
    invoke-direct {v6, v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@6c
    throw v6

    #@6d
    .line 239
    .end local v0    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    #@6e
    .line 240
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@70
    .line 241
    new-instance v7, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    const-string/jumbo v8, "Error creating instance of class "

    #@78
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v7

    #@7c
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v7

    #@80
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v7

    #@84
    .line 240
    invoke-direct {v6, v7, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@87
    throw v6

    #@88
    .line 224
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected readDataInto(Lcom/android/framework/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .locals 1
    .param p1, "data"    # Lcom/android/framework/protobuf/nano/UnknownFieldData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 249
    .local p2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    #@2
    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/Extension;->readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@d
    .line 247
    return-void
.end method

.method protected writeRepeatedData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    #@0
    .prologue
    .line 287
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 288
    .local v0, "arrayLength":I
    const/4 v2, 0x0

    #@5
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    #@7
    .line 289
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    .line 290
    .local v1, "element":Ljava/lang/Object;
    if-eqz v1, :cond_0

    #@d
    .line 291
    invoke-virtual {p0, v1, p2}, Lcom/android/framework/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@10
    .line 288
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@12
    goto :goto_0

    #@13
    .line 285
    .end local v1    # "element":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method protected writeSingularData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "out"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    #@0
    .prologue
    .line 263
    :try_start_0
    iget v5, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    #@2
    invoke-virtual {p2, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    #@5
    .line 264
    iget v5, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    #@7
    packed-switch v5, :pswitch_data_0

    #@a
    .line 277
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v6, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v7, "Unknown type "

    #@14
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v6

    #@18
    iget v7, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    #@1a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v6

    #@1e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v6

    #@22
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .line 279
    :catch_0
    move-exception v1

    #@27
    .line 281
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/lang/IllegalStateException;

    #@29
    invoke-direct {v5, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    #@2c
    throw v5

    #@2d
    .line 266
    .end local v1    # "e":Ljava/io/IOException;
    :pswitch_0
    :try_start_1
    move-object v0, p1

    #@2e
    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    #@30
    move-object v3, v0

    #@31
    .line 267
    .local v3, "groupValue":Lcom/android/framework/protobuf/nano/MessageNano;
    iget v5, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    #@33
    invoke-static {v5}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    #@36
    move-result v2

    #@37
    .line 268
    .local v2, "fieldNumber":I
    invoke-virtual {p2, v3}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeGroupNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V

    #@3a
    .line 270
    const/4 v5, 0x4

    #@3b
    invoke-virtual {p2, v2, v5}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    #@3e
    .line 260
    .end local v2    # "fieldNumber":I
    .end local v3    # "groupValue":Lcom/android/framework/protobuf/nano/MessageNano;
    :goto_0
    return-void

    #@3f
    .line 273
    :pswitch_1
    move-object v0, p1

    #@40
    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    #@42
    move-object v4, v0

    #@43
    .line 274
    .local v4, "messageValue":Lcom/android/framework/protobuf/nano/MessageNano;
    invoke-virtual {p2, v4}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@46
    goto :goto_0

    #@47
    .line 264
    nop

    #@48
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@7
    .line 252
    :goto_0
    return-void

    #@8
    .line 256
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    #@b
    goto :goto_0
.end method
