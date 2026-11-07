.class final Lcom/android/framework/protobuf/CodedInputStreamReader;
.super Ljava/lang/Object;
.source "CodedInputStreamReader.java"

# interfaces
.implements Lcom/android/framework/protobuf/Reader;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# static fields
.field private static final blacklist FIXED32_MULTIPLE_MASK:I = 0x3

.field private static final blacklist FIXED64_MULTIPLE_MASK:I = 0x7

.field private static final blacklist NEXT_TAG_UNSET:I


# instance fields
.field private blacklist endGroupTag:I

.field private final blacklist input:Lcom/android/framework/protobuf/CodedInputStream;

.field private blacklist nextTag:I

.field private blacklist tag:I


# direct methods
.method private constructor blacklist <init>(Lcom/android/framework/protobuf/CodedInputStream;)V
    .registers 3
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 67
    const-string v0, "input"

    invoke-static {p1, v0}, Lcom/android/framework/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/framework/protobuf/CodedInputStream;

    iput-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    .line 68
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iput-object p0, v0, Lcom/android/framework/protobuf/CodedInputStream;->wrapper:Lcom/android/framework/protobuf/CodedInputStreamReader;

    .line 69
    return-void
.end method

.method public static blacklist forCodedInput(Lcom/android/framework/protobuf/CodedInputStream;)Lcom/android/framework/protobuf/CodedInputStreamReader;
    .registers 2
    .param p0, "input"    # Lcom/android/framework/protobuf/CodedInputStream;

    .line 60
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->wrapper:Lcom/android/framework/protobuf/CodedInputStreamReader;

    if-eqz v0, :cond_7

    .line 61
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStream;->wrapper:Lcom/android/framework/protobuf/CodedInputStreamReader;

    return-object v0

    .line 63
    :cond_7
    new-instance v0, Lcom/android/framework/protobuf/CodedInputStreamReader;

    invoke-direct {v0, p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;-><init>(Lcom/android/framework/protobuf/CodedInputStream;)V

    return-object v0
.end method

.method private blacklist mergeGroupFieldInternal(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 7
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 242
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 243
    .local v0, "prevEndGroupTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Lcom/android/framework/protobuf/WireFormat;->makeTag(II)I

    move-result v1

    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 246
    :try_start_f
    invoke-interface {p2, p1, p0, p3}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 247
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_21

    if-ne v1, v2, :cond_1c

    .line 252
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 253
    nop

    .line 254
    return-void

    .line 248
    :cond_1c
    :try_start_1c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    .end local v0    # "prevEndGroupTag":I
    .end local p0    # "this":Lcom/android/framework/protobuf/CodedInputStreamReader;
    .end local p1    # "target":Ljava/lang/Object;, "TT;"
    .end local p2    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    .end local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    throw v1
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_21

    .line 252
    .restart local v0    # "prevEndGroupTag":I
    .restart local p0    # "this":Lcom/android/framework/protobuf/CodedInputStreamReader;
    .restart local p1    # "target":Ljava/lang/Object;, "TT;"
    .restart local p2    # "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    .restart local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :catchall_21
    move-exception v1

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    .line 253
    throw v1
.end method

.method private blacklist mergeMessageFieldInternal(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 8
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 210
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v1, v1, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v2, v2, Lcom/android/framework/protobuf/CodedInputStream;->recursionLimit:I

    if-ge v1, v2, :cond_35

    .line 215
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 216
    .local v1, "prevLimit":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v3, v2, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    .line 217
    invoke-interface {p2, p1, p0, p3}, Lcom/android/framework/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/android/framework/protobuf/Reader;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 218
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/framework/protobuf/CodedInputStream;->checkLastTagWas(I)V

    .line 219
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v3, v2, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v2, Lcom/android/framework/protobuf/CodedInputStream;->recursionDepth:I

    .line 221
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2, v1}, Lcom/android/framework/protobuf/CodedInputStream;->popLimit(I)V

    .line 222
    return-void

    .line 211
    .end local v1    # "prevLimit":I
    :cond_35
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->recursionLimitExceeded()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1
.end method

.method private blacklist readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 6
    .param p1, "fieldType"    # Lcom/android/framework/protobuf/WireFormat$FieldType;
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/framework/protobuf/WireFormat$FieldType;",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1304
    .local p2, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/android/framework/protobuf/CodedInputStreamReader$1;->$SwitchMap$com$google$protobuf$WireFormat$FieldType:[I

    invoke-virtual {p1}, Lcom/android/framework/protobuf/WireFormat$FieldType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_a2

    .line 1340
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unsupported field type."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    :pswitch_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1336
    :pswitch_1d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1334
    :pswitch_26
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1332
    :pswitch_2b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1330
    :pswitch_34
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1328
    :pswitch_3d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1326
    :pswitch_46
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1324
    :pswitch_4f
    invoke-virtual {p0, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1322
    :pswitch_54
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1320
    :pswitch_5d
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1318
    :pswitch_66
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0

    .line 1316
    :pswitch_6f
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 1314
    :pswitch_78
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1312
    :pswitch_81
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 1310
    :pswitch_8a
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 1308
    :pswitch_93
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 1306
    :pswitch_98
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_a2
    .packed-switch 0x1
        :pswitch_98
        :pswitch_93
        :pswitch_8a
        :pswitch_81
        :pswitch_78
        :pswitch_6f
        :pswitch_66
        :pswitch_5d
        :pswitch_54
        :pswitch_4f
        :pswitch_46
        :pswitch_3d
        :pswitch_34
        :pswitch_2b
        :pswitch_26
        :pswitch_1d
        :pswitch_14
    .end packed-switch
.end method

.method private blacklist readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 258
    .local p1, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 259
    .local v0, "newInstance":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 260
    invoke-interface {p1, v0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 261
    return-object v0
.end method

.method private blacklist readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 227
    .local p1, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    invoke-interface {p1}, Lcom/android/framework/protobuf/Schema;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 228
    .local v0, "newInstance":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, v0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 229
    invoke-interface {p1, v0}, Lcom/android/framework/protobuf/Schema;->makeImmutable(Ljava/lang/Object;)V

    .line 230
    return-object v0
.end method

.method private blacklist requirePosition(I)V
    .registers 3
    .param p1, "expectedPosition"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1352
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v0

    if-ne v0, p1, :cond_9

    .line 1355
    return-void

    .line 1353
    :cond_9
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist requireWireType(I)V
    .registers 3
    .param p1, "requiredWireType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    if-ne v0, p1, :cond_9

    .line 107
    return-void

    .line 105
    :cond_9
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method private blacklist verifyPackedFixed32Length(I)V
    .registers 3
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1345
    and-int/lit8 v0, p1, 0x3

    if-nez v0, :cond_5

    .line 1349
    return-void

    .line 1347
    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private blacklist verifyPackedFixed64Length(I)V
    .registers 3
    .param p1, "bytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1246
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_5

    .line 1250
    return-void

    .line 1248
    :cond_5
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->parseFailure()Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public blacklist getFieldNumber()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v0, :cond_c

    .line 79
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    .line 80
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    goto :goto_14

    .line 82
    :cond_c
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    .line 84
    :goto_14
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eqz v0, :cond_26

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_1f

    goto :goto_26

    .line 87
    :cond_1f
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    return v0

    .line 85
    :cond_26
    :goto_26
    const v0, 0x7fffffff

    return v0
.end method

.method public blacklist getTag()I
    .registers 2

    .line 92
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    return v0
.end method

.method public blacklist mergeGroupField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 237
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->mergeGroupFieldInternal(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 238
    return-void
.end method

.method public blacklist mergeMessageField(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    .local p1, "target":Ljava/lang/Object;, "TT;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 204
    invoke-direct {p0, p1, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->mergeMessageFieldInternal(Ljava/lang/Object;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 205
    return-void
.end method

.method public blacklist readBool()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 154
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    return v0
.end method

.method public blacklist readBoolList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 714
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/BooleanArrayList;

    if-eqz v0, :cond_58

    .line 715
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/BooleanArrayList;

    .line 716
    .local v0, "plist":Lcom/android/framework/protobuf/BooleanArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    .line 739
    :pswitch_10
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 718
    :pswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 719
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 721
    .local v2, "endPos":I
    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 722
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    .line 723
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 724
    nop

    .line 741
    .end local v0    # "plist":Lcom/android/framework/protobuf/BooleanArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_8c

    .line 727
    .restart local v0    # "plist":Lcom/android/framework/protobuf/BooleanArrayList;
    :goto_38
    :pswitch_38
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/BooleanArrayList;->addBoolean(Z)V

    .line 728
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 729
    return-void

    .line 731
    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 732
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    .line 734
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 735
    return-void

    .line 737
    .end local v1    # "nextTag":I
    :cond_57
    goto :goto_38

    .line 742
    .end local v0    # "plist":Lcom/android/framework/protobuf/BooleanArrayList;
    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    .line 765
    :pswitch_61
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 744
    :pswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 745
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 747
    .local v1, "endPos":I
    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 748
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    .line 749
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 750
    nop

    .line 768
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_8c
    return-void

    .line 753
    :goto_8d
    :pswitch_8d
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 755
    return-void

    .line 757
    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 758
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    .line 760
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 761
    return-void

    .line 763
    .end local v0    # "nextTag":I
    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38
        :pswitch_10
        :pswitch_15
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_61
        :pswitch_66
    .end packed-switch
.end method

.method public blacklist readBytes()Lcom/android/framework/protobuf/ByteString;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 267
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readBytesList(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/framework/protobuf/ByteString;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 879
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Lcom/android/framework/protobuf/ByteString;>;"
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 884
    :goto_9
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 886
    return-void

    .line 888
    :cond_19
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 889
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_26

    .line 891
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 892
    return-void

    .line 894
    .end local v0    # "nextTag":I
    :cond_26
    goto :goto_9

    .line 880
    :cond_27
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 112
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readDoubleList(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/DoubleArrayList;

    if-eqz v0, :cond_58

    .line 309
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/DoubleArrayList;

    .line 310
    .local v0, "plist":Lcom/android/framework/protobuf/DoubleArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    .line 333
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 312
    :pswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 313
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 314
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 316
    .local v2, "endPos":I
    :cond_25
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    .line 317
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_25

    .line 318
    nop

    .line 335
    .end local v0    # "plist":Lcom/android/framework/protobuf/DoubleArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_8c

    .line 321
    .restart local v0    # "plist":Lcom/android/framework/protobuf/DoubleArrayList;
    :goto_38
    :pswitch_38
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/DoubleArrayList;->addDouble(D)V

    .line 322
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 323
    return-void

    .line 325
    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 326
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    .line 328
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 329
    return-void

    .line 331
    .end local v1    # "nextTag":I
    :cond_57
    goto :goto_38

    .line 336
    .end local v0    # "plist":Lcom/android/framework/protobuf/DoubleArrayList;
    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_ba

    .line 359
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 338
    :pswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 339
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 340
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 342
    .local v1, "endPos":I
    :cond_76
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_76

    .line 344
    nop

    .line 362
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_8c
    return-void

    .line 347
    :goto_8d
    :pswitch_8d
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 349
    return-void

    .line 351
    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 352
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    .line 354
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 355
    return-void

    .line 357
    .end local v0    # "nextTag":I
    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_38
        :pswitch_15
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_66
    .end packed-switch
.end method

.method public blacklist readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 279
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    return v0
.end method

.method public blacklist readEnumList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 957
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_58

    .line 958
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 959
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    .line 982
    :pswitch_10
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 961
    :pswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 962
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 964
    .local v2, "endPos":I
    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 965
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    .line 966
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 967
    nop

    .line 984
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_8c

    .line 970
    .restart local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :goto_38
    :pswitch_38
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 971
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 972
    return-void

    .line 974
    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 975
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    .line 977
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 978
    return-void

    .line 980
    .end local v1    # "nextTag":I
    :cond_57
    goto :goto_38

    .line 985
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    .line 1008
    :pswitch_61
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 987
    :pswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 988
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 990
    .local v1, "endPos":I
    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 991
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    .line 992
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 993
    nop

    .line 1011
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_8c
    return-void

    .line 996
    :goto_8d
    :pswitch_8d
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 997
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 998
    return-void

    .line 1000
    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1001
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    .line 1003
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1004
    return-void

    .line 1006
    .end local v0    # "nextTag":I
    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38
        :pswitch_10
        :pswitch_15
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_61
        :pswitch_66
    .end packed-switch
.end method

.method public blacklist readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 148
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    return v0
.end method

.method public blacklist readFixed32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 656
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_58

    .line 657
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 658
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_b2

    .line 681
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 669
    :goto_15
    :sswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 670
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 671
    return-void

    .line 673
    :cond_27
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 674
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_34

    .line 676
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 677
    return-void

    .line 679
    .end local v1    # "nextTag":I
    :cond_34
    goto :goto_15

    .line 660
    :sswitch_35
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 661
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 662
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 664
    .local v2, "endPos":I
    :cond_45
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 665
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_45

    .line 666
    nop

    .line 683
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_b0

    .line 684
    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_bc

    .line 707
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 695
    :goto_66
    :sswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 696
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 697
    return-void

    .line 699
    :cond_7c
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 700
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_89

    .line 702
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 703
    return-void

    .line 705
    .end local v0    # "nextTag":I
    :cond_89
    goto :goto_66

    .line 686
    :sswitch_8a
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 687
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 688
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 690
    .local v1, "endPos":I
    :cond_9a
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 691
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_9a

    .line 692
    nop

    .line 710
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_b0
    return-void

    nop

    :sswitch_data_b2
    .sparse-switch
        0x2 -> :sswitch_35
        0x5 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_bc
    .sparse-switch
        0x2 -> :sswitch_8a
        0x5 -> :sswitch_66
    .end sparse-switch
.end method

.method public blacklist readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 142
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readFixed64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 598
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_58

    .line 599
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 600
    .local v0, "plist":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    .line 623
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 602
    :pswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 603
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 604
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 606
    .local v2, "endPos":I
    :cond_25
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 607
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_25

    .line 608
    nop

    .line 625
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_8c

    .line 611
    .restart local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :goto_38
    :pswitch_38
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 612
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 613
    return-void

    .line 615
    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 616
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    .line 618
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 619
    return-void

    .line 621
    .end local v1    # "nextTag":I
    :cond_57
    goto :goto_38

    .line 626
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_ba

    .line 649
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 628
    :pswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 629
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 630
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 632
    .local v1, "endPos":I
    :cond_76
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_76

    .line 634
    nop

    .line 652
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_8c
    return-void

    .line 637
    :goto_8d
    :pswitch_8d
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 638
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 639
    return-void

    .line 641
    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 642
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    .line 644
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 645
    return-void

    .line 647
    .end local v0    # "nextTag":I
    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_38
        :pswitch_15
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_66
    .end packed-switch
.end method

.method public blacklist readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 118
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method public blacklist readFloatList(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/FloatArrayList;

    if-eqz v0, :cond_58

    .line 367
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/FloatArrayList;

    .line 368
    .local v0, "plist":Lcom/android/framework/protobuf/FloatArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_b2

    .line 391
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 379
    :goto_15
    :sswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    .line 380
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 381
    return-void

    .line 383
    :cond_27
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 384
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_34

    .line 386
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 387
    return-void

    .line 389
    .end local v1    # "nextTag":I
    :cond_34
    goto :goto_15

    .line 370
    :sswitch_35
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 371
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 372
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 374
    .local v2, "endPos":I
    :cond_45
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/FloatArrayList;->addFloat(F)V

    .line 375
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_45

    .line 376
    nop

    .line 393
    .end local v0    # "plist":Lcom/android/framework/protobuf/FloatArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_b0

    .line 394
    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_bc

    .line 417
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 405
    :goto_66
    :sswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 407
    return-void

    .line 409
    :cond_7c
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 410
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_89

    .line 412
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 413
    return-void

    .line 415
    .end local v0    # "nextTag":I
    :cond_89
    goto :goto_66

    .line 396
    :sswitch_8a
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 397
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 398
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 400
    .local v1, "endPos":I
    :cond_9a
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readFloat()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_9a

    .line 402
    nop

    .line 420
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_b0
    return-void

    nop

    :sswitch_data_b2
    .sparse-switch
        0x2 -> :sswitch_35
        0x5 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_bc
    .sparse-switch
        0x2 -> :sswitch_8a
        0x5 -> :sswitch_66
    .end sparse-switch
.end method

.method public blacklist readGroup(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 188
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 189
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readGroupBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    .local p1, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 6
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 859
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    .line 862
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    .line 864
    .local v0, "listTag":I
    :goto_b
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroup(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 865
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_2b

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v1, :cond_1f

    goto :goto_2b

    .line 868
    :cond_1f
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 869
    .local v1, "nextTag":I
    if-eq v1, v0, :cond_2a

    .line 871
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 872
    return-void

    .line 874
    .end local v1    # "nextTag":I
    :cond_2a
    goto :goto_b

    .line 866
    :cond_2b
    :goto_2b
    return-void

    .line 860
    .end local v0    # "listTag":I
    :cond_2c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 850
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 851
    .local v0, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readGroupList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 852
    return-void
.end method

.method public blacklist readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 136
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    return v0
.end method

.method public blacklist readInt32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_58

    .line 541
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 542
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    .line 565
    :pswitch_10
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 544
    :pswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 545
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 547
    .local v2, "endPos":I
    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 548
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    .line 549
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 550
    nop

    .line 567
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_8c

    .line 553
    .restart local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :goto_38
    :pswitch_38
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 554
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 555
    return-void

    .line 557
    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 558
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    .line 560
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 561
    return-void

    .line 563
    .end local v1    # "nextTag":I
    :cond_57
    goto :goto_38

    .line 568
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    .line 591
    :pswitch_61
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 570
    :pswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 571
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 573
    .local v1, "endPos":I
    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 574
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    .line 575
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 576
    nop

    .line 594
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_8c
    return-void

    .line 579
    :goto_8d
    :pswitch_8d
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 581
    return-void

    .line 583
    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 584
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    .line 586
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 587
    return-void

    .line 589
    .end local v0    # "nextTag":I
    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38
        :pswitch_10
        :pswitch_15
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_61
        :pswitch_66
    .end packed-switch
.end method

.method public blacklist readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 130
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readInt64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 482
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_58

    .line 483
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 484
    .local v0, "plist":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    .line 507
    :pswitch_10
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 486
    :pswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 487
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 489
    .local v2, "endPos":I
    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 490
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    .line 491
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 492
    nop

    .line 509
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_8c

    .line 495
    .restart local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :goto_38
    :pswitch_38
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 496
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 497
    return-void

    .line 499
    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 500
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    .line 502
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 503
    return-void

    .line 505
    .end local v1    # "nextTag":I
    :cond_57
    goto :goto_38

    .line 510
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    .line 533
    :pswitch_61
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 512
    :pswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 513
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 515
    .local v1, "endPos":I
    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 516
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    .line 517
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 518
    nop

    .line 536
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_8c
    return-void

    .line 521
    :goto_8d
    :pswitch_8d
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 522
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 523
    return-void

    .line 525
    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 526
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    .line 528
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 529
    return-void

    .line 531
    .end local v0    # "nextTag":I
    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38
        :pswitch_10
        :pswitch_15
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_61
        :pswitch_66
    .end packed-switch
.end method

.method public blacklist readMap(Ljava/util/Map;Lcom/android/framework/protobuf/MapEntryLite$Metadata;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 12
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/MapEntryLite$Metadata<",
            "TK;TV;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1259
    .local p1, "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "metadata":Lcom/android/framework/protobuf/MapEntryLite$Metadata;, "Lcom/android/framework/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 1260
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1261
    .local v0, "size":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1, v0}, Lcom/android/framework/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 1262
    .local v1, "prevLimit":I
    iget-object v2, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultKey:Ljava/lang/Object;

    .line 1263
    .local v2, "key":Ljava/lang/Object;, "TK;"
    iget-object v3, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1266
    .local v3, "value":Ljava/lang/Object;, "TV;"
    :goto_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->getFieldNumber()I

    move-result v4

    .line 1267
    .local v4, "number":I
    const v5, 0x7fffffff

    if-eq v4, v5, :cond_5f

    iget-object v5, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v5}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v5
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_69

    if-eqz v5, :cond_26

    .line 1268
    goto :goto_5f

    .line 1271
    :cond_26
    const-string v5, "Unable to parse map entry."

    packed-switch v4, :pswitch_data_70

    .line 1282
    :try_start_2b
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v6

    goto :goto_49

    .line 1276
    :pswitch_30
    iget-object v6, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->valueType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    iget-object v7, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->defaultValue:Ljava/lang/Object;

    .line 1279
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 1278
    invoke-direct {p0, v6, v7, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    .line 1280
    goto :goto_4b

    .line 1273
    :pswitch_3e
    iget-object v6, p2, Lcom/android/framework/protobuf/MapEntryLite$Metadata;->keyType:Lcom/android/framework/protobuf/WireFormat$FieldType;

    const/4 v7, 0x0

    invoke-direct {p0, v6, v7, v7}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readField(Lcom/android/framework/protobuf/WireFormat$FieldType;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    .line 1274
    goto :goto_4b

    .line 1287
    :catch_47
    move-exception v6

    goto :goto_52

    .line 1282
    :goto_49
    if-eqz v6, :cond_4c

    .line 1292
    :goto_4b
    goto :goto_58

    .line 1283
    :cond_4c
    new-instance v6, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v6, v5}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .end local v0    # "size":I
    .end local v1    # "prevLimit":I
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    .end local v4    # "number":I
    .end local p0    # "this":Lcom/android/framework/protobuf/CodedInputStreamReader;
    .end local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local p2    # "metadata":Lcom/android/framework/protobuf/MapEntryLite$Metadata;, "Lcom/android/framework/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .end local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    throw v6
    :try_end_52
    .catch Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2b .. :try_end_52} :catch_47
    .catchall {:try_start_2b .. :try_end_52} :catchall_69

    .line 1289
    .restart local v0    # "size":I
    .restart local v1    # "prevLimit":I
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    .restart local v3    # "value":Ljava/lang/Object;, "TV;"
    .restart local v4    # "number":I
    .local v6, "ignore":Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .restart local p0    # "this":Lcom/android/framework/protobuf/CodedInputStreamReader;
    .restart local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local p2    # "metadata":Lcom/android/framework/protobuf/MapEntryLite$Metadata;, "Lcom/android/framework/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .restart local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :goto_52
    :try_start_52
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->skipField()Z

    move-result v7

    if-eqz v7, :cond_59

    .line 1293
    .end local v4    # "number":I
    .end local v6    # "ignore":Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :goto_58
    goto :goto_14

    .line 1290
    .restart local v4    # "number":I
    .restart local v6    # "ignore":Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :cond_59
    new-instance v7, Lcom/android/framework/protobuf/InvalidProtocolBufferException;

    invoke-direct {v7, v5}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .end local v0    # "size":I
    .end local v1    # "prevLimit":I
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    .end local p0    # "this":Lcom/android/framework/protobuf/CodedInputStreamReader;
    .end local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local p2    # "metadata":Lcom/android/framework/protobuf/MapEntryLite$Metadata;, "Lcom/android/framework/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .end local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    throw v7

    .line 1294
    .end local v4    # "number":I
    .end local v6    # "ignore":Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .restart local v0    # "size":I
    .restart local v1    # "prevLimit":I
    .restart local v2    # "key":Ljava/lang/Object;, "TK;"
    .restart local v3    # "value":Ljava/lang/Object;, "TV;"
    .restart local p0    # "this":Lcom/android/framework/protobuf/CodedInputStreamReader;
    .restart local p1    # "target":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local p2    # "metadata":Lcom/android/framework/protobuf/MapEntryLite$Metadata;, "Lcom/android/framework/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    .restart local p3    # "extensionRegistry":Lcom/android/framework/protobuf/ExtensionRegistryLite;
    :cond_5f
    :goto_5f
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_62
    .catchall {:try_start_52 .. :try_end_62} :catchall_69

    .line 1297
    iget-object v4, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v4, v1}, Lcom/android/framework/protobuf/CodedInputStream;->popLimit(I)V

    .line 1298
    nop

    .line 1299
    return-void

    .line 1297
    :catchall_69
    move-exception v4

    iget-object v5, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v5, v1}, Lcom/android/framework/protobuf/CodedInputStream;->popLimit(I)V

    .line 1298
    throw v4

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_30
    .end packed-switch
.end method

.method public blacklist readMessage(Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 173
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readMessageBySchemaWithCheck(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;
    .registers 4
    .param p2, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 180
    .local p1, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 6
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/android/framework/protobuf/Schema<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 827
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2c

    .line 830
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    .line 832
    .local v0, "listTag":I
    :goto_b
    invoke-direct {p0, p2, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessage(Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 833
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-nez v1, :cond_2b

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    if-eqz v1, :cond_1f

    goto :goto_2b

    .line 836
    :cond_1f
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 837
    .local v1, "nextTag":I
    if-eq v1, v0, :cond_2a

    .line 839
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 840
    return-void

    .line 842
    .end local v1    # "nextTag":I
    :cond_2a
    goto :goto_b

    .line 834
    :cond_2b
    :goto_2b
    return-void

    .line 828
    .end local v0    # "listTag":I
    :cond_2c
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .param p3, "extensionRegistry"    # Lcom/android/framework/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/android/framework/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 819
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p2, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/android/framework/protobuf/Protobuf;->getInstance()Lcom/android/framework/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/framework/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/Schema;

    move-result-object v0

    .line 820
    .local v0, "schema":Lcom/android/framework/protobuf/Schema;, "Lcom/android/framework/protobuf/Schema<TT;>;"
    invoke-virtual {p0, p1, v0, p3}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readMessageList(Ljava/util/List;Lcom/android/framework/protobuf/Schema;Lcom/android/framework/protobuf/ExtensionRegistryLite;)V

    .line 821
    return-void
.end method

.method public blacklist readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 285
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    return v0
.end method

.method public blacklist readSFixed32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1015
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_58

    .line 1016
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 1017
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    sparse-switch v1, :sswitch_data_b2

    .line 1040
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1028
    :goto_15
    :sswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1029
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1030
    return-void

    .line 1032
    :cond_27
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1033
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_34

    .line 1035
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1036
    return-void

    .line 1038
    .end local v1    # "nextTag":I
    :cond_34
    goto :goto_15

    .line 1019
    :sswitch_35
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 1020
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 1021
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 1023
    .local v2, "endPos":I
    :cond_45
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1024
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_45

    .line 1025
    nop

    .line 1042
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_b0

    .line 1043
    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_bc

    .line 1066
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1054
    :goto_66
    :sswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1055
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 1056
    return-void

    .line 1058
    :cond_7c
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1059
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_89

    .line 1061
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1062
    return-void

    .line 1064
    .end local v0    # "nextTag":I
    :cond_89
    goto :goto_66

    .line 1045
    :sswitch_8a
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1046
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed32Length(I)V

    .line 1047
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1049
    .local v1, "endPos":I
    :cond_9a
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1050
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_9a

    .line 1051
    nop

    .line 1069
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_b0
    return-void

    nop

    :sswitch_data_b2
    .sparse-switch
        0x2 -> :sswitch_35
        0x5 -> :sswitch_15
    .end sparse-switch

    :sswitch_data_bc
    .sparse-switch
        0x2 -> :sswitch_8a
        0x5 -> :sswitch_66
    .end sparse-switch
.end method

.method public blacklist readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 291
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSFixed64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1073
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_58

    .line 1074
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 1075
    .local v0, "plist":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    .line 1098
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1077
    :pswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 1078
    .local v1, "bytes":I
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 1079
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 1081
    .local v2, "endPos":I
    :cond_25
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 1082
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_25

    .line 1083
    nop

    .line 1100
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_8c

    .line 1086
    .restart local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :goto_38
    :pswitch_38
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 1087
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1088
    return-void

    .line 1090
    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1091
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    .line 1093
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1094
    return-void

    .line 1096
    .end local v1    # "nextTag":I
    :cond_57
    goto :goto_38

    .line 1101
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_ba

    .line 1124
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1103
    :pswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1104
    .local v0, "bytes":I
    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->verifyPackedFixed64Length(I)V

    .line 1105
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1107
    .local v1, "endPos":I
    :cond_76
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_76

    .line 1109
    nop

    .line 1127
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_8c
    return-void

    .line 1112
    :goto_8d
    :pswitch_8d
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSFixed64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1113
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1114
    return-void

    .line 1116
    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1117
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    .line 1119
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1120
    return-void

    .line 1122
    .end local v0    # "nextTag":I
    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_38
        :pswitch_15
    .end packed-switch

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_8d
        :pswitch_66
    .end packed-switch
.end method

.method public blacklist readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 297
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    return v0
.end method

.method public blacklist readSInt32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1131
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_58

    .line 1132
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 1133
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    .line 1156
    :pswitch_10
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1135
    :pswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 1136
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 1138
    .local v2, "endPos":I
    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1139
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    .line 1140
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 1141
    nop

    .line 1158
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_8c

    .line 1144
    .restart local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :goto_38
    :pswitch_38
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 1145
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1146
    return-void

    .line 1148
    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1149
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    .line 1151
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1152
    return-void

    .line 1154
    .end local v1    # "nextTag":I
    :cond_57
    goto :goto_38

    .line 1159
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    .line 1182
    :pswitch_61
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1161
    :pswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1162
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1164
    .local v1, "endPos":I
    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1165
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    .line 1166
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 1167
    nop

    .line 1185
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_8c
    return-void

    .line 1170
    :goto_8d
    :pswitch_8d
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1171
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1172
    return-void

    .line 1174
    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1175
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    .line 1177
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1178
    return-void

    .line 1180
    .end local v0    # "nextTag":I
    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38
        :pswitch_10
        :pswitch_15
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_61
        :pswitch_66
    .end packed-switch
.end method

.method public blacklist readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 303
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readSInt64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1189
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_58

    .line 1190
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 1191
    .local v0, "plist":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    .line 1214
    :pswitch_10
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 1193
    :pswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 1194
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 1196
    .local v2, "endPos":I
    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 1197
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    .line 1198
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 1199
    nop

    .line 1216
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_8c

    .line 1202
    .restart local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :goto_38
    :pswitch_38
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 1203
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 1204
    return-void

    .line 1206
    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1207
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    .line 1209
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1210
    return-void

    .line 1212
    .end local v1    # "nextTag":I
    :cond_57
    goto :goto_38

    .line 1217
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    .line 1240
    :pswitch_61
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 1219
    :pswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 1220
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 1222
    .local v1, "endPos":I
    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1223
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    .line 1224
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 1225
    nop

    .line 1243
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_8c
    return-void

    .line 1228
    :goto_8d
    :pswitch_8d
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readSInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 1230
    return-void

    .line 1232
    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 1233
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    .line 1235
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 1236
    return-void

    .line 1238
    .end local v0    # "nextTag":I
    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38
        :pswitch_10
        :pswitch_15
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_61
        :pswitch_66
    .end packed-switch
.end method

.method public blacklist readString()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 159
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 160
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readStringList(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 772
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 773
    return-void
.end method

.method public blacklist readStringListInternal(Ljava/util/List;Z)V
    .registers 6
    .param p2, "requireUtf8"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 781
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_55

    .line 785
    instance-of v0, p1, Lcom/android/framework/protobuf/LazyStringList;

    if-eqz v0, :cond_30

    if-nez p2, :cond_30

    .line 786
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LazyStringList;

    .line 788
    .local v0, "lazyList":Lcom/android/framework/protobuf/LazyStringList;
    :goto_12
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readBytes()Lcom/android/framework/protobuf/ByteString;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/framework/protobuf/LazyStringList;->add(Lcom/android/framework/protobuf/ByteString;)V

    .line 789
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 790
    return-void

    .line 792
    :cond_22
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 793
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_2f

    .line 795
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 796
    return-void

    .line 798
    .end local v1    # "nextTag":I
    :cond_2f
    goto :goto_12

    .line 801
    .end local v0    # "lazyList":Lcom/android/framework/protobuf/LazyStringList;
    :cond_30
    :goto_30
    if-eqz p2, :cond_37

    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_37
    invoke-virtual {p0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readString()Ljava/lang/String;

    move-result-object v0

    :goto_3b
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 803
    return-void

    .line 805
    :cond_47
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 806
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_54

    .line 808
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 809
    return-void

    .line 811
    .end local v0    # "nextTag":I
    :cond_54
    goto :goto_30

    .line 782
    :cond_55
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist readStringListRequireUtf8(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 777
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->readStringListInternal(Ljava/util/List;Z)V

    .line 778
    return-void
.end method

.method public blacklist readStringRequireUtf8()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 165
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 166
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 273
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    return v0
.end method

.method public blacklist readUInt32List(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 899
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/IntArrayList;

    if-eqz v0, :cond_58

    .line 900
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/IntArrayList;

    .line 901
    .local v0, "plist":Lcom/android/framework/protobuf/IntArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    .line 924
    :pswitch_10
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 903
    :pswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 904
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 906
    .local v2, "endPos":I
    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 907
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    .line 908
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 909
    nop

    .line 926
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_8c

    .line 912
    .restart local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :goto_38
    :pswitch_38
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/IntArrayList;->addInt(I)V

    .line 913
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 914
    return-void

    .line 916
    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 917
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    .line 919
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 920
    return-void

    .line 922
    .end local v1    # "nextTag":I
    :cond_57
    goto :goto_38

    .line 927
    .end local v0    # "plist":Lcom/android/framework/protobuf/IntArrayList;
    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    .line 950
    :pswitch_61
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 929
    :pswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 930
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 932
    .local v1, "endPos":I
    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    .line 934
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 935
    nop

    .line 953
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_8c
    return-void

    .line 938
    :goto_8d
    :pswitch_8d
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 939
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 940
    return-void

    .line 942
    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 943
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    .line 945
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 946
    return-void

    .line 948
    .end local v0    # "nextTag":I
    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38
        :pswitch_10
        :pswitch_15
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_61
        :pswitch_66
    .end packed-switch
.end method

.method public blacklist readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requireWireType(I)V

    .line 124
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist readUInt64List(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 424
    .local p1, "target":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    instance-of v0, p1, Lcom/android/framework/protobuf/LongArrayList;

    if-eqz v0, :cond_58

    .line 425
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/LongArrayList;

    .line 426
    .local v0, "plist":Lcom/android/framework/protobuf/LongArrayList;
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v1}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v1

    packed-switch v1, :pswitch_data_b2

    .line 449
    :pswitch_10
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v1

    throw v1

    .line 428
    :pswitch_15
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v1

    .line 429
    .local v1, "bytes":I
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    add-int/2addr v2, v1

    .line 431
    .local v2, "endPos":I
    :cond_22
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 432
    iget-object v3, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v3}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v3

    if-lt v3, v2, :cond_22

    .line 433
    invoke-direct {p0, v2}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 434
    nop

    .line 451
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    .end local v1    # "bytes":I
    .end local v2    # "endPos":I
    goto :goto_8c

    .line 437
    .restart local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :goto_38
    :pswitch_38
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/framework/protobuf/LongArrayList;->addLong(J)V

    .line 438
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v1

    if-eqz v1, :cond_4a

    .line 439
    return-void

    .line 441
    :cond_4a
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 442
    .local v1, "nextTag":I
    iget v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v1, v2, :cond_57

    .line 444
    iput v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 445
    return-void

    .line 447
    .end local v1    # "nextTag":I
    :cond_57
    goto :goto_38

    .line 452
    .end local v0    # "plist":Lcom/android/framework/protobuf/LongArrayList;
    :cond_58
    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-static {v0}, Lcom/android/framework/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_bc

    .line 475
    :pswitch_61
    invoke-static {}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object v0

    throw v0

    .line 454
    :pswitch_66
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt32()I

    move-result v0

    .line 455
    .local v0, "bytes":I
    iget-object v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v1}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v1

    add-int/2addr v1, v0

    .line 457
    .local v1, "endPos":I
    :cond_73
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v2, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v2}, Lcom/android/framework/protobuf/CodedInputStream;->getTotalBytesRead()I

    move-result v2

    if-lt v2, v1, :cond_73

    .line 459
    invoke-direct {p0, v1}, Lcom/android/framework/protobuf/CodedInputStreamReader;->requirePosition(I)V

    .line 460
    nop

    .line 478
    .end local v0    # "bytes":I
    .end local v1    # "endPos":I
    :goto_8c
    return-void

    .line 463
    :goto_8d
    :pswitch_8d
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a3

    .line 465
    return-void

    .line 467
    :cond_a3
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 468
    .local v0, "nextTag":I
    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    if-eq v0, v1, :cond_b0

    .line 470
    iput v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->nextTag:I

    .line 471
    return-void

    .line 473
    .end local v0    # "nextTag":I
    :cond_b0
    goto :goto_8d

    nop

    :pswitch_data_b2
    .packed-switch 0x0
        :pswitch_38
        :pswitch_10
        :pswitch_15
    .end packed-switch

    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_8d
        :pswitch_61
        :pswitch_66
    .end packed-switch
.end method

.method public blacklist shouldDiscardUnknownFields()Z
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->shouldDiscardUnknownFields()Z

    move-result v0

    return v0
.end method

.method public blacklist skipField()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/CodedInputStream;->isAtEnd()Z

    move-result v0

    if-nez v0, :cond_18

    iget v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->endGroupTag:I

    if-ne v0, v1, :cond_f

    goto :goto_18

    .line 100
    :cond_f
    iget-object v0, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->input:Lcom/android/framework/protobuf/CodedInputStream;

    iget v1, p0, Lcom/android/framework/protobuf/CodedInputStreamReader;->tag:I

    invoke-virtual {v0, v1}, Lcom/android/framework/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    return v0

    .line 98
    :cond_18
    :goto_18
    const/4 v0, 0x0

    return v0
.end method
