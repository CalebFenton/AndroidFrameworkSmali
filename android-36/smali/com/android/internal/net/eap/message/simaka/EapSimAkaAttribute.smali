.class public abstract Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;
.super Ljava/lang/Object;
.source "EapSimAkaAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNextReauthId;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtEncrData;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIv;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtBidding;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdf;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtKdfInput;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAuts;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRes;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAutn;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtClientErrorCode;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNotification;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceS;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounterTooSmall;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtCounter;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtMac;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtPadding;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandAka;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtRandSim;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdentity;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtFullauthIdReq;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtAnyIdReq;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtPermanentIdReq;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtIdReq;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtNonceMt;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtSelectedVersion;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$AtVersionList;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaUnsupportedAttribute;,
        Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute$EapSimAkaReservedBytesAttribute;
    }
.end annotation


# static fields
.field private static final blacklist ATTR_HEADER_LEN:I = 0x4

.field public static final blacklist EAP_ATTRIBUTE_STRING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist EAP_AT_ANY_ID_REQ:I = 0xd

.field public static final blacklist EAP_AT_AUTN:I = 0x2

.field public static final blacklist EAP_AT_AUTS:I = 0x4

.field public static final blacklist EAP_AT_BIDDING:I = 0x88

.field public static final blacklist EAP_AT_CHECKCODE:I = 0x86

.field public static final blacklist EAP_AT_CLIENT_ERROR_CODE:I = 0x16

.field public static final blacklist EAP_AT_COUNTER:I = 0x13

.field public static final blacklist EAP_AT_COUNTER_TOO_SMALL:I = 0x14

.field public static final blacklist EAP_AT_ENCR_DATA:I = 0x82

.field public static final blacklist EAP_AT_FULLAUTH_ID_REQ:I = 0x11

.field public static final blacklist EAP_AT_IDENTITY:I = 0xe

.field public static final blacklist EAP_AT_IV:I = 0x81

.field public static final blacklist EAP_AT_KDF:I = 0x18

.field public static final blacklist EAP_AT_KDF_INPUT:I = 0x17

.field public static final blacklist EAP_AT_MAC:I = 0xb

.field public static final blacklist EAP_AT_NEXT_PSEUDONYM:I = 0x84

.field public static final blacklist EAP_AT_NEXT_REAUTH_ID:I = 0x85

.field public static final blacklist EAP_AT_NONCE_MT:I = 0x7

.field public static final blacklist EAP_AT_NONCE_S:I = 0x15

.field public static final blacklist EAP_AT_NOTIFICATION:I = 0xc

.field public static final blacklist EAP_AT_PADDING:I = 0x6

.field public static final blacklist EAP_AT_PERMANENT_ID_REQ:I = 0xa

.field public static final blacklist EAP_AT_RAND:I = 0x1

.field public static final blacklist EAP_AT_RES:I = 0x3

.field public static final blacklist EAP_AT_RESULT_IND:I = 0x87

.field public static final blacklist EAP_AT_SELECTED_VERSION:I = 0x10

.field public static final blacklist EAP_AT_VERSION_LIST:I = 0xf

.field static final blacklist LENGTH_SCALING:I = 0x4

.field private static final blacklist MIN_ATTR_LENGTH:I = 0x4

.field public static final blacklist SKIPPABLE_ATTRIBUTE_RANGE_START:I = 0x80


# instance fields
.field public final blacklist attributeType:I

.field public final blacklist lengthInBytes:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    .line 99
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_RAND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_AUTN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_RES"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_AUTS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_PADDING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_NONCE_MT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_PERMANENT_ID_REQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_MAC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_NOTIFICATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_ANY_ID_REQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_IDENTITY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_VERSION_LIST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_SELECTED_VERSION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_FULLAUTH_ID_REQ"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_COUNTER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_COUNTER_TOO_SMALL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_NONCE_S"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_CLIENT_ERROR_CODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_KDF_INPUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_KDF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0x81

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_IV"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0x82

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_ENCR_DATA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_NEXT_PSEUDONYM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_NEXT_REAUTH_ID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_CHECKCODE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_RESULT_IND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->EAP_ATTRIBUTE_STRING:Ljava/util/Map;

    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AT_BIDDING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-void
.end method

.method protected constructor blacklist <init>(II)V
    .registers 5
    .param p1, "attributeType"    # I
    .param p2, "lengthInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->attributeType:I

    .line 135
    iput p2, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->lengthInBytes:I

    .line 137
    rem-int/lit8 v0, p2, 0x4

    if-nez v0, :cond_c

    .line 140
    return-void

    .line 138
    :cond_c
    new-instance v0, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;

    const-string v1, "Attribute length must be multiple of 4"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/simaka/EapSimAkaInvalidAttributeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method blacklist addPadding(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "bytesUsed"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 218
    iget v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->lengthInBytes:I

    sub-int/2addr v0, p1

    .line 219
    .local v0, "paddingNeeded":I
    new-array v1, v0, [B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 220
    return-void
.end method

.method blacklist consumePadding(ILjava/nio/ByteBuffer;)V
    .registers 5
    .param p1, "bytesUsed"    # I
    .param p2, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 213
    iget v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->lengthInBytes:I

    sub-int/2addr v0, p1

    .line 214
    .local v0, "paddingRemaining":I
    new-array v1, v0, [B

    invoke-virtual {p2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 215
    return-void
.end method

.method public abstract blacklist encode(Ljava/nio/ByteBuffer;)V
.end method

.method protected blacklist encodeAttributeHeader(Ljava/nio/ByteBuffer;)V
    .registers 3
    .param p1, "byteBuffer"    # Ljava/nio/ByteBuffer;

    .line 208
    iget v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->attributeType:I

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 209
    iget v0, p0, Lcom/android/internal/net/eap/message/simaka/EapSimAkaAttribute;->lengthInBytes:I

    div-int/lit8 v0, v0, 0x4

    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 210
    return-void
.end method
