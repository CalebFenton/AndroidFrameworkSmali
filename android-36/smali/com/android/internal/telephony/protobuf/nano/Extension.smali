.class public Lcom/android/internal/telephony/protobuf/nano/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "TT;>;IZ)V"
        }
    .end annotation

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    .line 169
    iput-object p2, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    .line 170
    iput p3, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->tag:I

    .line 171
    iput-boolean p4, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->repeated:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/Class;IZLcom/android/internal/telephony/protobuf/nano/Extension$1;)V
    .registers 6

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-void
.end method

.method public static blacklist createMessageTyped(ILjava/lang/Class;I)Lcom/android/internal/telephony/protobuf/nano/Extension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Lcom/android/internal/telephony/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lcom/android/internal/telephony/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 87
    new-instance v0, Lcom/android/internal/telephony/protobuf/nano/Extension;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/telephony/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static blacklist createMessageTyped(ILjava/lang/Class;J)Lcom/android/internal/telephony/protobuf/nano/Extension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Lcom/android/internal/telephony/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;J)",
            "Lcom/android/internal/telephony/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    .line 103
    new-instance v0, Lcom/android/internal/telephony/protobuf/nano/Extension;

    long-to-int p2, p2

    const/4 p3, 0x0

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static blacklist createPrimitiveTyped(ILjava/lang/Class;J)Lcom/android/internal/telephony/protobuf/nano/Extension;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;J)",
            "Lcom/android/internal/telephony/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;

    long-to-int v3, p2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    move v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;-><init>(ILjava/lang/Class;IZII)V

    return-object v0
.end method

.method public static blacklist createRepeatedMessageTyped(ILjava/lang/Class;J)Lcom/android/internal/telephony/protobuf/nano/Extension;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Lcom/android/internal/telephony/protobuf/nano/MessageNano;",
            ">(I",
            "Ljava/lang/Class<",
            "[TT;>;J)",
            "Lcom/android/internal/telephony/protobuf/nano/Extension<",
            "TM;[TT;>;"
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/android/internal/telephony/protobuf/nano/Extension;

    long-to-int p2, p2

    const/4 p3, 0x1

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/telephony/protobuf/nano/Extension;-><init>(ILjava/lang/Class;IZ)V

    return-object v0
.end method

.method public static blacklist createRepeatedPrimitiveTyped(ILjava/lang/Class;JJJ)Lcom/android/internal/telephony/protobuf/nano/Extension;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/android/internal/telephony/protobuf/nano/ExtendableMessageNano<",
            "TM;>;T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;JJJ)",
            "Lcom/android/internal/telephony/protobuf/nano/Extension<",
            "TM;TT;>;"
        }
    .end annotation

    move-wide v0, p2

    move-object p2, p1

    move p1, p0

    .line 139
    new-instance p0, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;

    long-to-int p3, v0

    long-to-int p5, p4

    long-to-int p6, p6

    const/4 p4, 0x1

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/protobuf/nano/Extension$PrimitiveExtension;-><init>(ILjava/lang/Class;IZII)V

    return-object p0
.end method

.method private blacklist getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 192
    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1e

    .line 193
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;

    .line 194
    iget-object v4, v3, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v4, v4

    if-eqz v4, :cond_1b

    .line 195
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/protobuf/nano/Extension;->readDataInto(Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;Ljava/util/List;)V

    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 199
    :cond_1e
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_26

    const/4 p0, 0x0

    return-object p0

    .line 203
    :cond_26
    iget-object p0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_34
    if-ge v1, p1, :cond_40

    .line 205
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v1, v2}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_34

    :cond_40
    return-object p0
.end method

.method private blacklist getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    .line 213
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 216
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/Extension;->readData(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected blacklist computeRepeatedSerializedSize(Ljava/lang/Object;)I
    .registers 6

    .line 307
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    if-ge v1, v0, :cond_1a

    .line 309
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 311
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v2, v3

    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1a
    return v2
.end method

.method blacklist computeSerializedSize(Ljava/lang/Object;)I
    .registers 3

    .line 297
    iget-boolean v0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_9

    .line 298
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/Extension;->computeRepeatedSerializedSize(Ljava/lang/Object;)I

    move-result p0

    return p0

    .line 300
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/Extension;->computeSingularSerializedSize(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method protected blacklist computeSingularSerializedSize(Ljava/lang/Object;)I
    .registers 5

    .line 319
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->tag:I

    invoke-static {v0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    .line 320
    iget v1, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_30

    const/16 v2, 0xb

    if-ne v1, v2, :cond_17

    .line 325
    check-cast p1, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    .line 326
    invoke-static {v0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result p0

    return p0

    .line 328
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 322
    :cond_30
    check-cast p1, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    .line 323
    invoke-static {v0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->computeGroupSize(ILcom/android/internal/telephony/protobuf/nano/MessageNano;)I

    move-result p0

    return p0
.end method

.method final blacklist getValueFrom(Ljava/util/List;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;",
            ">;)TT;"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 186
    :cond_4
    iget-boolean v0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/Extension;->getRepeatedValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/Extension;->getSingularValueFrom(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist readData(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;
    .registers 6

    .line 222
    const-string v0, "Error creating instance of class "

    iget-boolean v1, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->repeated:Z

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_f

    :cond_d
    iget-object v1, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->clazz:Ljava/lang/Class;

    .line 224
    :goto_f
    :try_start_f
    iget v2, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_40

    const/16 v3, 0xb

    if-ne v2, v3, :cond_27

    .line 230
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    .line 231
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    return-object p0

    :catch_23
    move-exception p0

    goto :goto_59

    :catch_25
    move-exception p0

    goto :goto_6e

    .line 234
    :cond_27
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 226
    :cond_40
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    .line 227
    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->tag:I

    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result p0

    invoke-virtual {p1, v2, p0}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->readGroup(Lcom/android/internal/telephony/protobuf/nano/MessageNano;I)V
    :try_end_4f
    .catch Ljava/lang/InstantiationException; {:try_start_f .. :try_end_4f} :catch_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_f .. :try_end_4f} :catch_23
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_4f} :catch_50

    return-object v2

    :catch_50
    move-exception p0

    .line 243
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Error reading extension field"

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 240
    :goto_59
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 237
    :goto_6e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method protected blacklist readDataInto(Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 249
    iget-object p1, p1, Lcom/android/internal/telephony/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {p1}, Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/protobuf/nano/Extension;->readData(Lcom/android/internal/telephony/protobuf/nano/CodedInputByteBufferNano;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected blacklist writeRepeatedData(Ljava/lang/Object;Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 6

    .line 287
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_13

    .line 289
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_10

    .line 291
    invoke-virtual {p0, v2, p2}, Lcom/android/internal/telephony/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return-void
.end method

.method protected blacklist writeSingularData(Ljava/lang/Object;Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 5

    .line 263
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->tag:I

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 264
    iget v0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2e

    const/16 v1, 0xb

    if-ne v0, v1, :cond_15

    .line 273
    check-cast p1, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    .line 274
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeMessageNoTag(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    return-void

    .line 277
    :cond_15
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->type:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 266
    :cond_2e
    check-cast p1, Lcom/android/internal/telephony/protobuf/nano/MessageNano;

    .line 267
    iget p0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->tag:I

    invoke-static {p0}, Lcom/android/internal/telephony/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result p0

    .line 268
    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeGroupNoTag(Lcom/android/internal/telephony/protobuf/nano/MessageNano;)V

    const/4 p1, 0x4

    .line 270
    invoke-virtual {p2, p0, p1}, Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3d} :catch_3e

    return-void

    :catch_3e
    move-exception p0

    .line 281
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method blacklist writeTo(Ljava/lang/Object;Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    iget-boolean v0, p0, Lcom/android/internal/telephony/protobuf/nano/Extension;->repeated:Z

    if-eqz v0, :cond_8

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/Extension;->writeRepeatedData(Ljava/lang/Object;Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void

    .line 256
    :cond_8
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/protobuf/nano/Extension;->writeSingularData(Ljava/lang/Object;Lcom/android/internal/telephony/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
