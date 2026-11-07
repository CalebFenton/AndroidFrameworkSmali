.class public final Lcom/android/internal/net/ipsec/ike/message/IkeMessage;
.super Ljava/lang/Object;
.source "IkeMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;,
        Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;,
        Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;,
        Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeMessageHelper;,
        Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultUnprotectedError;,
        Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultProtectedError;,
        Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultError;,
        Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultOk;,
        Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeStatus;,
        Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeExchangeSubType;
    }
.end annotation


# static fields
.field public static final blacklist DECODE_STATUS_OK:I = 0x0

.field public static final blacklist DECODE_STATUS_PARTIAL:I = 0x1

.field public static final blacklist DECODE_STATUS_PROTECTED_ERROR:I = 0x2

.field public static final blacklist DECODE_STATUS_UNPROTECTED_ERROR:I = 0x3

.field private static final blacklist EXCHANGE_SUBTYPE_TO_STRING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist IKE_EXCHANGE_SUBTYPE_CREATE_CHILD:I = 0x3

.field public static final blacklist IKE_EXCHANGE_SUBTYPE_DELETE_CHILD:I = 0x5

.field public static final blacklist IKE_EXCHANGE_SUBTYPE_DELETE_IKE:I = 0x4

.field public static final blacklist IKE_EXCHANGE_SUBTYPE_GENERIC_INFO:I = 0x8

.field public static final blacklist IKE_EXCHANGE_SUBTYPE_IKE_AUTH:I = 0x2

.field public static final blacklist IKE_EXCHANGE_SUBTYPE_IKE_INIT:I = 0x1

.field public static final blacklist IKE_EXCHANGE_SUBTYPE_INVALID:I = 0x0

.field public static final blacklist IKE_EXCHANGE_SUBTYPE_REKEY_CHILD:I = 0x7

.field public static final blacklist IKE_EXCHANGE_SUBTYPE_REKEY_IKE:I = 0x6

.field private static final blacklist REPEATABLE_PAYLOAD_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "IkeMessage"

.field static final blacklist TRUST_MANAGER_PROVIDER:Ljava/security/Provider;

.field private static blacklist sIkeMessageHelper:Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;


# instance fields
.field public final blacklist ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

.field public final blacklist ikePayloadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$mencodePayloads(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)[B
    .registers 1

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->encodePayloads()[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smdecodePayloadList(IZ[B)Ljava/util/List;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->decodePayloadList(IZ[B)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 67
    new-instance v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeMessageHelper;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IkeMessageHelper;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->sIkeMessageHelper:Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;

    .line 70
    const-string v0, "HarmonyJSSE"

    invoke-static {v0}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->TRUST_MANAGER_PROVIDER:Ljava/security/Provider;

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->REPEATABLE_PAYLOAD_TYPES:Ljava/util/Set;

    .line 77
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->REPEATABLE_PAYLOAD_TYPES:Ljava/util/Set;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->REPEATABLE_PAYLOAD_TYPES:Ljava/util/Set;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->REPEATABLE_PAYLOAD_TYPES:Ljava/util/Set;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->REPEATABLE_PAYLOAD_TYPES:Ljava/util/Set;

    const/16 v1, 0x2a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->REPEATABLE_PAYLOAD_TYPES:Ljava/util/Set;

    const/16 v1, 0x2b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->EXCHANGE_SUBTYPE_TO_STRING:Landroid/util/SparseArray;

    .line 114
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->EXCHANGE_SUBTYPE_TO_STRING:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "Invalid"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->EXCHANGE_SUBTYPE_TO_STRING:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "IKE INIT"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 116
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->EXCHANGE_SUBTYPE_TO_STRING:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "IKE AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 117
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->EXCHANGE_SUBTYPE_TO_STRING:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "Create Child"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 118
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->EXCHANGE_SUBTYPE_TO_STRING:Landroid/util/SparseArray;

    const/4 v1, 0x4

    const-string v2, "Delete IKE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 119
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->EXCHANGE_SUBTYPE_TO_STRING:Landroid/util/SparseArray;

    const/4 v1, 0x5

    const-string v2, "Delete Child"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->EXCHANGE_SUBTYPE_TO_STRING:Landroid/util/SparseArray;

    const/4 v1, 0x6

    const-string v2, "Rekey IKE"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 121
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->EXCHANGE_SUBTYPE_TO_STRING:Landroid/util/SparseArray;

    const/4 v1, 0x7

    const-string v2, "Rekey Child"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 122
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->EXCHANGE_SUBTYPE_TO_STRING:Landroid/util/SparseArray;

    const/16 v1, 0x8

    const-string v2, "Generic Info"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 123
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;Ljava/util/List;)V
    .registers 4
    .param p1, "header"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/net/ipsec/ike/message/IkeHeader;",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;)V"
        }
    .end annotation

    .line 133
    .local p2, "payloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    .line 134
    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    .line 135
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    return-void
.end method

.method public static blacklist decode(ILcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
    .registers 15
    .param p0, "expectedMsgId"    # I
    .param p1, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p2, "decryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p3, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p4, "ikeHeader"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p5, "packet"    # [B
    .param p6, "collectedFragments"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;

    .line 183
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->sIkeMessageHelper:Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;

    move v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .end local p0    # "expectedMsgId":I
    .end local p1    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local p2    # "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local p3    # "ikeSaRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .end local p4    # "ikeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .end local p5    # "packet":[B
    .end local p6    # "collectedFragments":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    .local v1, "expectedMsgId":I
    .local v2, "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .local v3, "decryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .local v4, "ikeSaRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .local v5, "ikeHeader":Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .local v6, "packet":[B
    .local v7, "collectedFragments":Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;->decode(ILcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[BLcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResultPartial;)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist decode(ILcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;
    .registers 4
    .param p0, "expectedMsgId"    # I
    .param p1, "header"    # Lcom/android/internal/net/ipsec/ike/message/IkeHeader;
    .param p2, "inputPacket"    # [B

    .line 160
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->sIkeMessageHelper:Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;->decode(ILcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)Lcom/android/internal/net/ipsec/ike/message/IkeMessage$DecodeResult;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist decodePayloadList(IZ[B)Ljava/util/List;
    .registers 15
    .param p0, "firstPayloadType"    # I
    .param p1, "isResp"    # Z
    .param p2, "unencryptedPayloads"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[B)",
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeProtocolException;
        }
    .end annotation

    .line 196
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 197
    .local v0, "inputBuffer":Ljava/nio/ByteBuffer;
    move v1, p0

    .line 199
    .local v1, "currentPayloadType":I
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 201
    .local v2, "supportedPayloadList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkePayload;>;"
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 204
    .local v3, "unsupportedCriticalPayloadList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 206
    .local v4, "supportedTypesFoundSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .local v5, "logPayloadsSb":Ljava/lang/StringBuilder;
    const-string v6, "Decoded payloads [ "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :goto_1e
    if-eqz v1, :cond_88

    .line 210
    nop

    .line 211
    invoke-static {v1, p1, v0}, Lcom/android/internal/net/ipsec/ike/message/IkePayloadFactory;->getIkePayload(IZLjava/nio/ByteBuffer;)Landroid/util/Pair;

    move-result-object v6

    .line 212
    .local v6, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/net/ipsec/ike/message/IkePayload;Ljava/lang/Integer;>;"
    iget-object v7, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 213
    .local v7, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    invoke-virtual {v7}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getTypeString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    instance-of v8, v7, Lcom/android/internal/net/ipsec/ike/message/IkeUnsupportedPayload;

    if-nez v8, :cond_70

    .line 216
    iget v8, v7, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    .line 217
    .local v8, "type":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6c

    sget-object v9, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->REPEATABLE_PAYLOAD_TYPES:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_53

    goto :goto_6c

    .line 218
    :cond_53
    new-instance v9, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "It is not allowed to have multiple payloads with payload type: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 223
    :cond_6c
    :goto_6c
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v8    # "type":I
    goto :goto_7e

    .line 224
    :cond_70
    iget-boolean v8, v7, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->isCritical:Z

    if-eqz v8, :cond_7e

    .line 225
    iget v8, v7, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7f

    .line 224
    :cond_7e
    :goto_7e
    nop

    .line 229
    :goto_7f
    iget-object v8, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 230
    .end local v6    # "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/net/ipsec/ike/message/IkePayload;Ljava/lang/Integer;>;"
    .end local v7    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    goto :goto_1e

    .line 232
    :cond_88
    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v6

    const-string v7, "IkeMessage"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-gtz v6, :cond_ad

    .line 240
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-gtz v6, :cond_a7

    .line 249
    return-object v2

    .line 241
    :cond_a7
    new-instance v6, Landroid/net/ipsec/ike/exceptions/UnsupportedCriticalPayloadException;

    invoke-direct {v6, v3}, Landroid/net/ipsec/ike/exceptions/UnsupportedCriticalPayloadException;-><init>(Ljava/util/List;)V

    throw v6

    .line 236
    :cond_ad
    new-instance v6, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v7, "Malformed IKE Payload: Unexpected bytes at the end of packet."

    invoke-direct {v6, v7}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private blacklist encodePayloads()[B
    .registers 9

    .line 287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v0, "logPayloadsSb":Ljava/lang/StringBuilder;
    const-string v1, "Generating payloads [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, "payloadLengthSum":I
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 292
    .local v3, "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadLength()I

    move-result v4

    add-int/2addr v1, v4

    .line 293
    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getTypeString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    .end local v3    # "payload":Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    goto :goto_11

    .line 295
    :cond_30
    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v2

    const-string v3, "IkeMessage"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4e

    new-array v2, v3, [B

    return-object v2

    .line 300
    :cond_4e
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 301
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_53
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge v4, v5, :cond_77

    .line 302
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    .line 303
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    add-int/lit8 v7, v4, 0x1

    .line 304
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    iget v6, v6, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->payloadType:I

    invoke-virtual {v5, v6, v2}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->encodeToByteBuffer(ILjava/nio/ByteBuffer;)V

    .line 301
    add-int/lit8 v4, v4, 0x1

    goto :goto_53

    .line 306
    .end local v4    # "i":I
    :cond_77
    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    .line 307
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    .line 308
    invoke-virtual {v4, v3, v2}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->encodeToByteBuffer(ILjava/nio/ByteBuffer;)V

    .line 310
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method public static blacklist getIkeExchangeSubTypeString(I)Ljava/lang/String;
    .registers 4
    .param p0, "exchangeSubtype"    # I

    .line 398
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->EXCHANGE_SUBTYPE_TO_STRING:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 401
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->EXCHANGE_SUBTYPE_TO_STRING:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 399
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized exchangeSubtype "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getTrustManagerProvider()Ljava/security/Provider;
    .registers 1

    .line 146
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->TRUST_MANAGER_PROVIDER:Ljava/security/Provider;

    return-object v0
.end method

.method public static blacklist setIkeMessageHelper(Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;)V
    .registers 1
    .param p0, "helper"    # Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;

    .line 1102
    sput-object p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->sIkeMessageHelper:Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;

    .line 1103
    return-void
.end method


# virtual methods
.method blacklist attachEncodedHeader([B)[B
    .registers 5
    .param p1, "encodedIkeBody"    # [B

    .line 316
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1c

    .line 317
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 318
    .local v0, "outputBuffer":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    array-length v2, p1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->encodeToByteBuffer(Ljava/nio/ByteBuffer;I)V

    .line 319
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 320
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public blacklist encode()[B
    .registers 2

    .line 258
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->sIkeMessageHelper:Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;

    invoke-interface {v0, p0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;->encode(Lcom/android/internal/net/ipsec/ike/message/IkeMessage;)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist encryptAndEncode(Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;ZI)[[B
    .registers 13
    .param p1, "integrityMac"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .param p2, "encryptCipher"    # Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .param p3, "ikeSaRecord"    # Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .param p4, "supportFragment"    # Z
    .param p5, "fragSize"    # I

    .line 277
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->sIkeMessageHelper:Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;

    move-object v4, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    .end local p1    # "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .end local p2    # "encryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .end local p3    # "ikeSaRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .end local p4    # "supportFragment":Z
    .end local p5    # "fragSize":I
    .local v1, "integrityMac":Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;
    .local v2, "encryptCipher":Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;
    .local v3, "ikeSaRecord":Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;
    .local v5, "supportFragment":Z
    .local v6, "fragSize":I
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage$IIkeMessageHelper;->encryptAndEncode(Lcom/android/internal/net/ipsec/ike/crypto/IkeMacIntegrity;Lcom/android/internal/net/ipsec/ike/crypto/IkeCipher;Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;Lcom/android/internal/net/ipsec/ike/message/IkeMessage;ZI)[[B

    move-result-object p1

    return-object p1
.end method

.method public blacklist getIkeExchangeSubType()I
    .registers 7

    .line 414
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-boolean v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    if-nez v0, :cond_97

    .line 419
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_a0

    .line 476
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized exchange type in the validated IKE header: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :pswitch_2b
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;

    .line 460
    const/16 v2, 0x2a

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadListForType(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 464
    .local v0, "deletePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3c

    const/16 v1, 0x8

    return v1

    .line 469
    :cond_3c
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_40
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;

    .line 470
    .local v3, "deletePayload":Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;
    iget v4, v3, Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;->protocolId:I

    if-ne v4, v1, :cond_52

    .line 471
    const/4 v1, 0x4

    return v1

    .line 473
    .end local v3    # "deletePayload":Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;
    :cond_52
    goto :goto_40

    .line 474
    :cond_53
    const/4 v1, 0x5

    return v1

    .line 431
    .end local v0    # "deletePayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeDeletePayload;>;"
    :pswitch_55
    const-class v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 432
    const/16 v2, 0x21

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;

    .line 433
    .local v0, "saPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    const/4 v2, 0x0

    if-nez v0, :cond_63

    .line 434
    return v2

    .line 440
    :cond_63
    iget-object v3, v0, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;->proposalList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;

    iget v2, v2, Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload$Proposal;->protocolId:I

    if-ne v2, v1, :cond_71

    .line 441
    const/4 v1, 0x6

    return v1

    .line 445
    :cond_71
    const-class v1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 446
    const/16 v2, 0x29

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadListForType(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 451
    .local v1, "notifyPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_92

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 452
    .local v3, "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    iget v4, v3, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    const/16 v5, 0x4009

    if-ne v4, v5, :cond_91

    .line 453
    const/4 v2, 0x7

    return v2

    .line 455
    .end local v3    # "notifyPayload":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :cond_91
    goto :goto_7d

    .line 457
    :cond_92
    const/4 v2, 0x3

    return v2

    .line 423
    .end local v0    # "saPayload":Lcom/android/internal/net/ipsec/ike/message/IkeSaPayload;
    .end local v1    # "notifyPayloads":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;>;"
    :pswitch_94
    const/4 v0, 0x2

    return v0

    .line 421
    :pswitch_96
    return v1

    .line 415
    :cond_97
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "IKE Exchange subtype unsupported for response messages."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_a0
    .packed-switch 0x22
        :pswitch_96
        :pswitch_94
        :pswitch_55
        :pswitch_2b
    .end packed-switch
.end method

.method public blacklist getPayloadForType(ILjava/lang/Class;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;
    .registers 6
    .param p1, "payloadType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 360
    .local p2, "payloadClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->REPEATABLE_PAYLOAD_TYPES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 367
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Lcom/android/internal/net/ipsec/ike/message/IkePayload;

    move-result-object v0

    return-object v0

    .line 361
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected payloadType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " that may be included multiple times within an IKE message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getPayloadListForType(ILjava/lang/Class;)Ljava/util/List;
    .registers 6
    .param p1, "payloadType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/internal/net/ipsec/ike/message/IkePayload;",
            ">(I",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 336
    .local p2, "payloadClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->REPEATABLE_PAYLOAD_TYPES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 343
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    invoke-static {p1, p2, v0}, Lcom/android/internal/net/ipsec/ike/message/IkePayload;->getPayloadListForTypeInProvidedList(ILjava/lang/Class;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 337
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received unexpected payloadType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " that can be included at most once within an IKE message."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist hasNotifyPayload(I)Z
    .registers 5
    .param p1, "notifyType"    # I

    .line 374
    const/16 v0, 0x29

    const-class v1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->getPayloadListForType(ILjava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 375
    .local v1, "notify":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    iget v2, v1, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->notifyType:I

    if-ne v2, p1, :cond_1e

    .line 376
    const/4 v0, 0x1

    return v0

    .line 378
    .end local v1    # "notify":Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;
    :cond_1e
    goto :goto_c

    .line 380
    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isDpdRequest()Z
    .registers 3

    .line 390
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget-boolean v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->isResponseMsg:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->exchangeType:I

    const/16 v1, 0x25

    if-ne v0, v1, :cond_20

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikePayloadList:Ljava/util/List;

    .line 392
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/message/IkeMessage;->ikeHeader:Lcom/android/internal/net/ipsec/ike/message/IkeHeader;

    iget v0, v0, Lcom/android/internal/net/ipsec/ike/message/IkeHeader;->nextPayloadType:I

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_20

    const/4 v0, 0x1

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    .line 390
    :goto_21
    return v0
.end method
