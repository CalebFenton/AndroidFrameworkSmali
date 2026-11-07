.class public Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;
.super Ljava/lang/Object;
.source "EapMsChapV2TypeData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2TypeDataDecoder;,
        Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureResponse;,
        Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;,
        Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessResponse;,
        Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessRequest;,
        Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeResponse;,
        Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2ChallengeRequest;,
        Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2VariableTypeData;
    }
.end annotation


# static fields
.field private static final blacklist ASCII_CHARSET_NAME:Ljava/lang/String; = "US-ASCII"

.field public static final blacklist EAP_MSCHAP_V2_CHALLENGE:I = 0x1

.field public static final blacklist EAP_MSCHAP_V2_CHANGE_PASSWORD:I = 0x7

.field public static final blacklist EAP_MSCHAP_V2_FAILURE:I = 0x4

.field public static final blacklist EAP_MSCHAP_V2_RESPONSE:I = 0x2

.field public static final blacklist EAP_MSCHAP_V2_SUCCESS:I = 0x3

.field public static final blacklist EAP_OP_CODE_STRING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist LABEL_VALUE_LENGTH:I = 0x2

.field private static final blacklist MESSAGE_LABEL:Ljava/lang/String; = "M"

.field private static final blacklist MESSAGE_PREFIX:Ljava/lang/String; = "M="

.field private static final blacklist SUPPORTED_OP_CODES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist opCode:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 7

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->EAP_OP_CODE_STRING:Ljava/util/Map;

    .line 53
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->EAP_OP_CODE_STRING:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Challenge"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->EAP_OP_CODE_STRING:Ljava/util/Map;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "Response"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->EAP_OP_CODE_STRING:Ljava/util/Map;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "Success"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->EAP_OP_CODE_STRING:Ljava/util/Map;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Failure"

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->EAP_OP_CODE_STRING:Ljava/util/Map;

    const/4 v5, 0x7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "Change-Password"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->SUPPORTED_OP_CODES:Ljava/util/Set;

    .line 62
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->SUPPORTED_OP_CODES:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->SUPPORTED_OP_CODES:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->SUPPORTED_OP_CODES:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->SUPPORTED_OP_CODES:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    return-void
.end method

.method constructor blacklist <init>(I)V
    .registers 5
    .param p1, "opCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->opCode:I

    .line 73
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;->SUPPORTED_OP_CODES:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 76
    return-void

    .line 74
    :cond_12
    new-instance v0, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported opCode provided: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist getMessageMappings(Ljava/lang/String;)Ljava/util/Map;
    .registers 12
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;
        }
    .end annotation

    .line 417
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 418
    .local v0, "messageMappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "M="

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 421
    .local v2, "mPos":I
    const/4 v3, -0x1

    const-string v4, "M"

    const/4 v5, 0x0

    if-ne v2, v3, :cond_18

    .line 422
    move-object v1, p0

    .line 423
    .local v1, "preMString":Ljava/lang/String;
    const-string v3, "<omitted by authenticator>"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_29

    .line 425
    .end local v1    # "preMString":Ljava/lang/String;
    :cond_18
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, "preMString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v3

    .line 430
    .end local v3    # "preMString":Ljava/lang/String;
    .restart local v1    # "preMString":Ljava/lang/String;
    :goto_29
    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v6, v5

    :goto_31
    if-ge v6, v4, :cond_79

    aget-object v7, v3, v6

    .line 431
    .local v7, "value":Ljava/lang/String;
    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 432
    .local v8, "keyValue":[Ljava/lang/String;
    array-length v9, v8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_71

    .line 435
    aget-object v9, v8, v5

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_52

    .line 439
    aget-object v9, v8, v5

    const/4 v10, 0x1

    aget-object v10, v8, v10

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "keyValue":[Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 436
    .restart local v7    # "value":Ljava/lang/String;
    .restart local v8    # "keyValue":[Ljava/lang/String;
    :cond_52
    new-instance v3, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duplicated key-value pair in message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    .line 437
    invoke-virtual {v5, p0}, Lcom/android/internal/net/utils/Log;->pii(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 433
    :cond_71
    new-instance v3, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    const-string v4, "Message must be formatted <label character>=<value>"

    invoke-direct {v3, v4}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 442
    .end local v7    # "value":Ljava/lang/String;
    .end local v8    # "keyValue":[Ljava/lang/String;
    :cond_79
    return-object v0
.end method

.method static blacklist hexStringToByteArray(Ljava/lang/String;)[B
    .registers 6
    .param p0, "hexString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 448
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2c

    .line 453
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    .line 454
    .local v0, "dataBytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 455
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 454
    add-int/lit8 v1, v1, 0x2

    goto :goto_11

    .line 457
    .end local v1    # "i":I
    :cond_2b
    return-object v0

    .line 449
    .end local v0    # "dataBytes":[B
    :cond_2c
    new-instance v0, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    const-string v1, "Hex string must contain an even number of characters"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist encode()[B
    .registers 4

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encode() not supported by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
