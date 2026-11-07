.class public final Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
.super Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
.source "IkeSaPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EncryptionTransform"
.end annotation


# static fields
.field private static final blacklist ID_KEY:Ljava/lang/String; = "id"

.field public static final blacklist KEY_LEN_UNSPECIFIED:I = 0x0

.field private static final blacklist SPECIFIED_KEY_LEN_KEY:Ljava/lang/String; = "mSpecifiedKeyLength"


# instance fields
.field private final blacklist mSpecifiedKeyLength:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "id"    # I

    .line 1208
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;-><init>(II)V

    .line 1209
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "specifiedKeyLength"    # I

    .line 1219
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;-><init>(II)V

    .line 1221
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    .line 1223
    :try_start_6
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->validateKeyLength()V
    :try_end_9
    .catch Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException; {:try_start_6 .. :try_end_9} :catch_b

    .line 1226
    nop

    .line 1227
    return-void

    .line 1224
    :catch_b
    move-exception v0

    .line 1225
    .local v0, "e":Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor blacklist <init>(ILjava/util/List;)V
    .registers 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 1253
    .local p2, "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;-><init>(IILjava/util/List;)V

    .line 1254
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->isSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1255
    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    goto :goto_20

    .line 1257
    :cond_c
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_15

    .line 1258
    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    goto :goto_1d

    .line 1260
    :cond_15
    invoke-direct {p0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getKeyLengthAttribute(Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;

    move-result-object v0

    .line 1261
    .local v0, "attr":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;
    iget v1, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;->keyLength:I

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    .line 1263
    .end local v0    # "attr":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;
    :goto_1d
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->validateKeyLength()V

    .line 1265
    :goto_20
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    .registers 4
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 1231
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1232
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    const-string v1, "id"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "mSpecifiedKeyLength"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;-><init>(II)V

    return-object v0
.end method

.method private blacklist getKeyLengthAttribute(Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;",
            ">;)",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;"
        }
    .end annotation

    .line 1308
    .local p1, "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;

    .line 1309
    .local v1, "attr":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;
    iget v2, v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;->type:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_1a

    .line 1310
    move-object v0, v1

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;

    return-object v0

    .line 1312
    .end local v1    # "attr":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;
    :cond_1a
    goto :goto_4

    .line 1313
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot find Attribute with Key Length type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist validateKeyLength()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 1317
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    const-string v1, " Algorithm ID: "

    sparse-switch v0, :sswitch_data_b4

    .line 1357
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized Encryption Algorithm ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    :sswitch_22
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    if-eqz v0, :cond_61

    .line 1345
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    const/16 v2, 0x80

    if-eq v0, v2, :cond_60

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    const/16 v2, 0xc0

    if-eq v0, v2, :cond_60

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    const/16 v2, 0x100

    if-ne v0, v2, :cond_39

    goto :goto_60

    .line 1348
    :cond_39
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid key length for this "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1350
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getTransformTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1354
    :cond_60
    :goto_60
    return-void

    .line 1339
    :cond_61
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Must set Key Length value for this "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1341
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getTransformTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1321
    :sswitch_88
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    if-nez v0, :cond_8d

    .line 1328
    return-void

    .line 1322
    :cond_8d
    new-instance v0, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Must not set Key Length value for this "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1324
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getTransformTypeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_b4
    .sparse-switch
        0x3 -> :sswitch_88
        0xc -> :sswitch_22
        0xd -> :sswitch_22
        0x12 -> :sswitch_22
        0x13 -> :sswitch_22
        0x14 -> :sswitch_22
        0x1c -> :sswitch_88
    .end sparse-switch
.end method


# virtual methods
.method protected blacklist encodeToByteBuffer(ZLjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "isLast"    # Z
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1364
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->encodeBasicTransformToByteBuffer(ZLjava/nio/ByteBuffer;)V

    .line 1366
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    if-eqz v0, :cond_11

    .line 1367
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    invoke-direct {v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;->encodeToByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 1369
    :cond_11
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 1283
    instance-of v0, p1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1285
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    .line 1286
    .local v0, "other":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;
    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->type:I

    iget v3, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->type:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    iget v3, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    if-ne v2, v3, :cond_1c

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    iget v3, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    if-ne v2, v3, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public blacklist getSpecifiedKeyLength()I
    .registers 2

    .line 1273
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    return v0
.end method

.method protected blacklist getTransformLength()I
    .registers 4

    .line 1373
    const/16 v0, 0x8

    .line 1375
    .local v0, "len":I
    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    if-eqz v1, :cond_12

    .line 1376
    new-instance v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    invoke-direct {v1, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;-><init>(I)V

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$KeyLengthAttribute;->getAttributeLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 1379
    :cond_12
    return v0
.end method

.method public blacklist getTransformTypeString()Ljava/lang/String;
    .registers 2

    .line 1384
    const-string v0, "Encryption Algorithm"

    return-object v0
.end method

.method protected blacklist hasUnrecognizedAttribute(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;",
            ">;)Z"
        }
    .end annotation

    .line 1299
    .local p1, "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;

    .line 1300
    .local v1, "attr":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;
    instance-of v2, v1, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$UnrecognizedAttribute;

    if-eqz v2, :cond_16

    .line 1301
    const/4 v0, 0x1

    return v0

    .line 1303
    .end local v1    # "attr":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;
    :cond_16
    goto :goto_4

    .line 1304
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1278
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->type:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected blacklist isSupportedTransformId(I)Z
    .registers 4
    .param p1, "id"    # I

    .line 1293
    invoke-static {}, Landroid/net/ipsec/ike/IkeSaProposal;->getSupportedEncryptionAlgorithms()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1294
    invoke-static {}, Landroid/net/ipsec/ike/ChildSaProposal;->getSupportedEncryptionAlgorithms()Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    goto :goto_1f

    :cond_1d
    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    .line 1293
    :goto_20
    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 1237
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 1238
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "id"

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1239
    const-string v1, "mSpecifiedKeyLength"

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->mSpecifiedKeyLength:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 1241
    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1390
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->isSupported:Z

    const-string v1, ")"

    if-eqz v0, :cond_2c

    .line 1391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    invoke-static {v2}, Landroid/net/ipsec/ike/SaProposal;->getEncryptionAlgorithmString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1393
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->getSpecifiedKeyLength()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1391
    return-object v0

    .line 1396
    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENCR("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;->id:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
