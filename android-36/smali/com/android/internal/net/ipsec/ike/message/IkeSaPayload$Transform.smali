.class public abstract Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
.super Ljava/lang/Object;
.source "IkeSaPayload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Transform"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform$AttributeDecoderImpl;,
        Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform$TransformType;
    }
.end annotation


# static fields
.field protected static final blacklist BASIC_TRANSFORM_LEN:I = 0x8

.field private static final blacklist LAST_TRANSFORM:B = 0x0t

.field private static final blacklist NOT_LAST_TRANSFORM:B = 0x3t

.field private static final blacklist TRANSFORM_RESERVED_FIELD_LEN:I = 0x1

.field public static final blacklist TRANSFORM_TYPE_DH:I = 0x4

.field public static final blacklist TRANSFORM_TYPE_ENCR:I = 0x1

.field public static final blacklist TRANSFORM_TYPE_ESN:I = 0x5

.field public static final blacklist TRANSFORM_TYPE_INTEG:I = 0x3

.field public static final blacklist TRANSFORM_TYPE_PRF:I = 0x2

.field private static blacklist sAttributeDecoder:Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$AttributeDecoder;


# instance fields
.field public final blacklist id:I

.field public final blacklist isSupported:Z

.field public final blacklist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1044
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform$AttributeDecoderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform$AttributeDecoderImpl;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload-IA;)V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->sAttributeDecoder:Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$AttributeDecoder;

    return-void
.end method

.method protected constructor blacklist <init>(II)V
    .registers 6
    .param p1, "type"    # I
    .param p2, "id"    # I

    .line 1052
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1053
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->type:I

    .line 1054
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->id:I

    .line 1055
    invoke-virtual {p0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->isSupportedTransformId(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1059
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->isSupported:Z

    .line 1060
    return-void

    .line 1056
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1057
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->getTransformTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Algorithm ID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected constructor blacklist <init>(IILjava/util/List;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;",
            ">;)V"
        }
    .end annotation

    .line 1063
    .local p3, "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1064
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->type:I

    .line 1065
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->id:I

    .line 1066
    nop

    .line 1067
    invoke-virtual {p0, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->isSupportedTransformId(I)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p0, p3}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->hasUnrecognizedAttribute(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->isSupported:Z

    .line 1068
    return-void
.end method

.method static blacklist readFrom(Ljava/nio/ByteBuffer;)Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;
    .registers 7
    .param p0, "inputBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 1072
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 1073
    .local v0, "isLast":B
    if-eqz v0, :cond_23

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    goto :goto_23

    .line 1074
    :cond_a
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value of Last Transform Substructure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1079
    :cond_23
    :goto_23
    const/4 v1, 0x1

    new-array v2, v1, [B

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1081
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    invoke-static {v2}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v2

    .line 1082
    .local v2, "length":I
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    .line 1085
    .local v3, "type":I
    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1087
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    .line 1090
    .local v1, "id":I
    sget-object v4, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->sAttributeDecoder:Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$AttributeDecoder;

    invoke-interface {v4, v2, p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$AttributeDecoder;->decodeAttributes(ILjava/nio/ByteBuffer;)Ljava/util/List;

    move-result-object v4

    .line 1092
    .local v4, "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;>;"
    invoke-static {v4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->validateAttributeUniqueness(Ljava/util/List;)V

    .line 1094
    packed-switch v3, :pswitch_data_76

    .line 1106
    new-instance v5, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$UnrecognizedTransform;

    invoke-direct {v5, v3, v1, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$UnrecognizedTransform;-><init>(IILjava/util/List;)V

    return-object v5

    .line 1104
    :pswitch_58
    new-instance v5, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;

    invoke-direct {v5, v1, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EsnTransform;-><init>(ILjava/util/List;)V

    return-object v5

    .line 1102
    :pswitch_5e
    new-instance v5, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;

    invoke-direct {v5, v1, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$DhGroupTransform;-><init>(ILjava/util/List;)V

    return-object v5

    .line 1100
    :pswitch_64
    new-instance v5, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;

    invoke-direct {v5, v1, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$IntegrityTransform;-><init>(ILjava/util/List;)V

    return-object v5

    .line 1098
    :pswitch_6a
    new-instance v5, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;

    invoke-direct {v5, v1, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$PrfTransform;-><init>(ILjava/util/List;)V

    return-object v5

    .line 1096
    :pswitch_70
    new-instance v5, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;

    invoke-direct {v5, v1, v4}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$EncryptionTransform;-><init>(ILjava/util/List;)V

    return-object v5

    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_70
        :pswitch_6a
        :pswitch_64
        :pswitch_5e
        :pswitch_58
    .end packed-switch
.end method

.method static blacklist resetAttributeDecoder()V
    .registers 2

    .line 1135
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform$AttributeDecoderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform$AttributeDecoderImpl;-><init>(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload-IA;)V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->sAttributeDecoder:Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$AttributeDecoder;

    .line 1136
    return-void
.end method

.method static blacklist setAttributeDecoder(Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$AttributeDecoder;)V
    .registers 1
    .param p0, "decoder"    # Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$AttributeDecoder;

    .line 1129
    sput-object p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->sAttributeDecoder:Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$AttributeDecoder;

    .line 1130
    return-void
.end method

.method private static blacklist validateAttributeUniqueness(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 1141
    .local p0, "attributeList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1142
    .local v0, "foundTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;

    .line 1143
    .local v2, "attr":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;
    iget v3, v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 1147
    .end local v2    # "attr":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;
    goto :goto_9

    .line 1144
    .restart local v2    # "attr":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;
    :cond_22
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v3, "There are multiple Attributes of the same type. "

    invoke-direct {v1, v3}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1148
    .end local v2    # "attr":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;
    :cond_2a
    return-void
.end method


# virtual methods
.method protected blacklist encodeBasicTransformToByteBuffer(ZLjava/nio/ByteBuffer;)V
    .registers 7
    .param p1, "isLast"    # Z
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 1163
    if-eqz p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    const/4 v0, 0x3

    .line 1164
    .local v0, "isLastIndicator":B
    :goto_5
    nop

    .line 1165
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [B

    .line 1166
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1167
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->getTransformLength()I

    move-result v3

    int-to-short v3, v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->type:I

    int-to-byte v3, v3

    .line 1168
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    new-array v2, v2, [B

    .line 1169
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Transform;->id:I

    int-to-short v2, v2

    .line 1170
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1171
    return-void
.end method

.method protected abstract blacklist encodeToByteBuffer(ZLjava/nio/ByteBuffer;)V
.end method

.method protected abstract blacklist getTransformLength()I
.end method

.method public abstract blacklist getTransformTypeString()Ljava/lang/String;
.end method

.method protected abstract blacklist hasUnrecognizedAttribute(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Attribute;",
            ">;)Z"
        }
    .end annotation
.end method

.method protected abstract blacklist isSupportedTransformId(I)Z
.end method
