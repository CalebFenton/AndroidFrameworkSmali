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
        "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
        "TM;>;T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final blacklist TYPE_BOOL:I = 0x8

.field public static final blacklist TYPE_BYTES:I = 0xc

.field public static final blacklist TYPE_DOUBLE:I = 0x1

.field public static final blacklist TYPE_ENUM:I = 0xe

.field public static final blacklist TYPE_FIXED32:I = 0x7

.field public static final blacklist TYPE_FIXED64:I = 0x6

.field public static final blacklist TYPE_FLOAT:I = 0x2

.field public static final blacklist TYPE_GROUP:I = 0xa

.field public static final blacklist TYPE_INT32:I = 0x5

.field public static final blacklist TYPE_INT64:I = 0x3

.field public static final blacklist TYPE_MESSAGE:I = 0xb

.field public static final blacklist TYPE_SFIXED32:I = 0xf

.field public static final blacklist TYPE_SFIXED64:I = 0x10

.field public static final blacklist TYPE_SINT32:I = 0x11

.field public static final blacklist TYPE_SINT64:I = 0x12

.field public static final blacklist TYPE_STRING:I = 0x9

.field public static final blacklist TYPE_UINT32:I = 0xd

.field public static final blacklist TYPE_UINT64:I = 0x4


# instance fields
.field protected final blacklist clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected final blacklist repeated:Z

.field public final blacklist tag:I

.field protected final blacklist type:I


# direct methods
.method private constructor blacklist <init>(ILjava/lang/Class;IZ)V
    .registers 5
    .param p1, "type"    # I
    .param p3, "tag"    # I
    .param p4, "repeated"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 167
    .local p0, "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    .line 169
    iput-object p2, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    .line 170
    iput p3, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    .line 171
    iput-boolean p4, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    .line 172
    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/Class;IZLcom/android/framework/protobuf/nano/Extension$1;)V
    .registers 6
    .param p1, "x0"    # I
    .param p2, "x1"    # Ljava/lang/Class;
    .param p3, "x2"    # I
    .param p4, "x3"    # Z
    .param p5, "x4"    # Lcom/android/framework/protobuf/nano/Extension$1;

    .line 46
    .local p0, "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-void
.end method

.method public static blacklist createMessageTyped(ILjava/lang/Class;I)Lcom/android/framework/protobuf/nano/Extension;
    .registers 5
    .param p0, "type"    # I
    .param p2, "tag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/android/framework/protobuf/nano/Extension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static blacklist createMessageTyped(ILjava/lang/Class;J)Lcom/android/framework/protobuf/nano/Extension;
    .registers 7
    .param p0, "type"    # I
    .param p2, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;J)",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    .line 103
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/android/framework/protobuf/nano/Extension;

    long-to-int v1, p2

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static blacklist createPrimitiveTyped(ILjava/lang/Class;J)Lcom/android/framework/protobuf/nano/Extension;
    .registers 11
    .param p0, "type"    # I
    .param p2, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;J)",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    .line 126
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;

    long-to-int v3, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v1, p0

    move-object v2, p1

    .end local p0    # "type":I
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local v1, "type":I
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;-><init>(ILjava/lang/Class;IZII)V

    return-object v0
.end method

.method public static blacklist createRepeatedMessageTyped(ILjava/lang/Class;J)Lcom/android/framework/protobuf/nano/Extension;
    .registers 7
    .param p0, "type"    # I
    .param p2, "tag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Lcom/android/framework/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class<",
            "[TT;>;J)",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;[TT;>;"
        }
    .end annotation

    .line 114
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<[TT;>;"
    new-instance v0, Lcom/android/framework/protobuf/nano/Extension;

    long-to-int v1, p2

    const/4 v2, 0x1

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/android/framework/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static blacklist createRepeatedPrimitiveTyped(ILjava/lang/Class;JJJ)Lcom/android/framework/protobuf/nano/Extension;
    .registers 15
    .param p0, "type"    # I
    .param p2, "tag"    # J
    .param p4, "nonPackedTag"    # J
    .param p6, "packedTag"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/framework/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;JJJ)",
            "Lcom/android/framework/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    .line 139
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;

    long-to-int v3, p2

    long-to-int v5, p4

    long-to-int v6, p6

    const/4 v4, 0x1

    move v1, p0

    move-object v2, p1

    .end local p0    # "type":I
    .end local p1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local v1, "type":I
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct/range {v0 .. v6}, Lcom/android/framework/protobuf/nano/Extension$PrimitiveExtension;-><init>(ILjava/lang/Class;IZII)V

    return-object v0
.end method

.method private blacklist getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    .local p1, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/android/framework/protobuf/nano/UnknownFieldData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 192
    .local v0, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 193
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    .line 194
    .local v2, "data":Lcom/android/framework/protobuf/nano/UnknownFieldData;
    iget-object v3, v2, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v3, v3

    if-eqz v3, :cond_1a

    .line 195
    invoke-virtual {p0, v2, v0}, Lcom/android/framework/protobuf/nano/Extension;->readDataInto(Lcom/android/framework/protobuf/nano/UnknownFieldData;Ljava/util/List;)V

    .line 192
    .end local v2    # "data":Lcom/android/framework/protobuf/nano/UnknownFieldData;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 199
    .end local v1    # "i":I
    :cond_1d
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 200
    .local v1, "resultSize":I
    if-nez v1, :cond_25

    .line 201
    const/4 v2, 0x0

    return-object v2

    .line 203
    :cond_25
    iget-object v2, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iget-object v3, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 204
    .local v2, "result":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_36
    if-ge v3, v1, :cond_42

    .line 205
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 204
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 207
    .end local v3    # "i":I
    :cond_42
    return-object v2
.end method

.method private blacklist getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    .line 213
    .local p0, "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    .local p1, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/android/framework/protobuf/nano/UnknownFieldData;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 214
    const/4 v0, 0x0

    return-object v0

    .line 216
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;

    .line 217
    .local v0, "lastData":Lcom/android/framework/protobuf/nano/UnknownFieldData;
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iget-object v2, v0, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/framework/protobuf/nano/Extension;->readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected blacklist computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .registers 7
    .param p1, "array"    # Ljava/lang/Object;

    .line 306
    .local p0, "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    const/4 v0, 0x0

    .line 307
    .local v0, "size":I
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 308
    .local v1, "arrayLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_1a

    .line 309
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    .line 310
    .local v3, "element":Ljava/lang/Object;
    if-eqz v3, :cond_17

    .line 311
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/framework/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v0, v4

    .line 308
    .end local v3    # "element":Ljava/lang/Object;
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 314
    .end local v2    # "i":I
    :cond_1a
    return v0
.end method

.method blacklist computeSerializedSize(Ljava/lang/Object;)I
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 297
    .local p0, "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_9

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 300
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist computeSingularSerializedSize(Ljava/lang/Object;)I
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;

    .line 319
    .local p0, "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    .line 320
    .local v0, "fieldNumber":I
    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    packed-switch v1, :pswitch_data_36

    .line 328
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 325
    :pswitch_26
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 326
    .local v1, "messageValue":Lcom/android/framework/protobuf/nano/MessageNano;
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v2

    return v2

    .line 322
    .end local v1    # "messageValue":Lcom/android/framework/protobuf/nano/MessageNano;
    :pswitch_2e
    move-object v1, p1

    check-cast v1, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 323
    .local v1, "groupValue":Lcom/android/framework/protobuf/nano/MessageNano;
    invoke-static {v0, v1}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/android/framework/protobuf/nano/MessageNano;)I

    move-result v2

    return v2

    :pswitch_data_36
    .packed-switch 0xa
        :pswitch_2e
        :pswitch_26
    .end packed-switch
.end method

.method final blacklist getValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    .line 183
    .local p0, "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    .local p1, "unknownFields":Ljava/util/List;, "Ljava/util/List<Lcom/android/framework/protobuf/nano/UnknownFieldData;>;"
    if-nez p1, :cond_4

    .line 184
    const/4 v0, 0x0

    return-object v0

    .line 186
    :cond_4
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/nano/Extension;->getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    :goto_11
    return-object v0
.end method

.method protected blacklist readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .registers 7
    .param p1, "input"    # Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    .line 222
    .local p0, "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    const-string v0, "Error creating instance of class "

    iget-boolean v1, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_f

    :cond_d
    iget-object v1, p0, Lcom/android/framework/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    .line 224
    .local v1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_f
    :try_start_f
    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    packed-switch v2, :pswitch_data_84

    .line 234
    new-instance v2, Ljava/lang/IllegalArgumentException;

    goto :goto_31

    .line 230
    :pswitch_17
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 231
    .local v2, "message":Lcom/android/framework/protobuf/nano/MessageNano;
    invoke-virtual {p1, v2}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 232
    return-object v2

    .line 226
    .end local v2    # "message":Lcom/android/framework/protobuf/nano/MessageNano;
    :pswitch_21
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 227
    .local v2, "group":Lcom/android/framework/protobuf/nano/MessageNano;
    iget v3, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v3}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/android/framework/protobuf/nano/MessageNano;I)V

    .line 228
    return-object v2

    .line 234
    .end local v2    # "group":Lcom/android/framework/protobuf/nano/MessageNano;
    :goto_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p0    # "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    .end local p1    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    throw v2
    :try_end_4a
    .catch Ljava/lang/InstantiationException; {:try_start_f .. :try_end_4a} :catch_6b
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_4a} :catch_53
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4a} :catch_4a

    .line 242
    .restart local v1    # "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p0    # "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    .restart local p1    # "input":Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;
    :catch_4a
    move-exception v0

    .line 243
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Error reading extension field"

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 239
    .end local v0    # "e":Ljava/io/IOException;
    :catch_53
    move-exception v2

    .line 240
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 236
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :catch_6b
    move-exception v2

    .line 237
    .local v2, "e":Ljava/lang/InstantiationException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    :pswitch_data_84
    .packed-switch 0xa
        :pswitch_21
        :pswitch_17
    .end packed-switch
.end method

.method protected blacklist readDataInto(Lcom/android/framework/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .registers 4
    .param p1, "data"    # Lcom/android/framework/protobuf/nano/UnknownFieldData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/nano/UnknownFieldData;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 249
    .local p0, "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    .local p2, "resultList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v0, p1, Lcom/android/framework/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v0}, Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/framework/protobuf/nano/Extension;->readData(Lcom/android/framework/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    return-void
.end method

.method protected blacklist writeRepeatedData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "array"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    .line 287
    .local p0, "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 288
    .local v0, "arrayLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_13

    .line 289
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 290
    .local v2, "element":Ljava/lang/Object;
    if-eqz v2, :cond_10

    .line 291
    invoke-virtual {p0, v2, p2}, Lcom/android/framework/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 288
    .end local v2    # "element":Ljava/lang/Object;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 294
    .end local v1    # "i":I
    :cond_13
    return-void
.end method

.method protected blacklist writeSingularData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "out"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;

    .line 263
    .local p0, "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    :try_start_0
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 264
    iget v0, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    packed-switch v0, :pswitch_data_48

    .line 277
    new-instance v0, Ljava/lang/IllegalArgumentException;

    goto :goto_27

    .line 273
    :pswitch_d
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 274
    .local v0, "messageValue":Lcom/android/framework/protobuf/nano/MessageNano;
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 275
    goto :goto_25

    .line 266
    .end local v0    # "messageValue":Lcom/android/framework/protobuf/nano/MessageNano;
    :pswitch_14
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/nano/MessageNano;

    .line 267
    .local v0, "groupValue":Lcom/android/framework/protobuf/nano/MessageNano;
    iget v1, p0, Lcom/android/framework/protobuf/nano/Extension;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v1

    .line 268
    .local v1, "fieldNumber":I
    invoke-virtual {p2, v0}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeGroupNoTag(Lcom/android/framework/protobuf/nano/MessageNano;)V

    .line 270
    const/4 v2, 0x4

    invoke-virtual {p2, v1, v2}, Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 271
    nop

    .line 282
    .end local v0    # "groupValue":Lcom/android/framework/protobuf/nano/MessageNano;
    .end local v1    # "fieldNumber":I
    :goto_25
    nop

    .line 283
    return-void

    .line 277
    :goto_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/framework/protobuf/nano/Extension;->type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    .end local p1    # "value":Ljava/lang/Object;
    .end local p2    # "out":Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    throw v0
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_40} :catch_40

    .line 279
    .restart local p0    # "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    .restart local p1    # "value":Ljava/lang/Object;
    .restart local p2    # "out":Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    :catch_40
    move-exception v0

    .line 281
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_48
    .packed-switch 0xa
        :pswitch_14
        :pswitch_d
    .end packed-switch
.end method

.method blacklist writeTo(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "output"    # Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    .local p0, "this":Lcom/android/framework/protobuf/nano/Extension;, "Lcom/android/framework/protobuf/nano/Extension<TM;TT;>;"
    iget-boolean v0, p0, Lcom/android/framework/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_8

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    goto :goto_b

    .line 256
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/framework/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/android/framework/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 258
    :goto_b
    return-void
.end method
