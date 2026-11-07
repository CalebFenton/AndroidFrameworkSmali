.class public Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;
.super Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2VariableTypeData;
.source "EapMsChapV2TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapMsChapV2FailureRequest"
.end annotation


# static fields
.field private static final blacklist CHALLENGE_LABEL:Ljava/lang/String; = "C"

.field private static final blacklist CHALLENGE_LENGTH:I = 0x10

.field public static final blacklist EAP_ERROR_CODE_STRING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ERROR_LABEL:Ljava/lang/String; = "E"

.field private static final blacklist IS_RETRYABLE_FLAG:Ljava/lang/String; = "1"

.field private static final blacklist NUM_REQUIRED_ATTRIBUTES:I = 0x5

.field private static final blacklist PASSWORD_CHANGE_PROTOCOL_LABEL:Ljava/lang/String; = "V"

.field private static final blacklist RETRY_LABEL:Ljava/lang/String; = "R"


# instance fields
.field public final blacklist challenge:[B

.field public final blacklist errorCode:I

.field public final blacklist isRetryable:Z

.field public final blacklist message:Ljava/lang/String;

.field public final blacklist passwordChangeProtocol:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 305
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->EAP_ERROR_CODE_STRING:Ljava/util/Map;

    .line 307
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->EAP_ERROR_CODE_STRING:Ljava/util/Map;

    const/16 v1, 0x286

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ERROR_RESTRICTED_LOGON_HOURS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->EAP_ERROR_CODE_STRING:Ljava/util/Map;

    const/16 v1, 0x287

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ERROR_ACCT_DISABLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->EAP_ERROR_CODE_STRING:Ljava/util/Map;

    const/16 v1, 0x288

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ERROR_PASSWD_EXPIRED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->EAP_ERROR_CODE_STRING:Ljava/util/Map;

    const/16 v1, 0x289

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ERROR_NO_DIALIN_PERMISSION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->EAP_ERROR_CODE_STRING:Ljava/util/Map;

    const/16 v1, 0x2b3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ERROR_AUTHENTICATION_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    sget-object v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->EAP_ERROR_CODE_STRING:Ljava/util/Map;

    const/16 v1, 0x2c5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ERROR_CHANGING_PASSWORD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    return-void
.end method

.method public constructor blacklist <init>(IIIZ[BILjava/lang/String;)V
    .registers 10
    .param p1, "msChapV2Id"    # I
    .param p2, "msLength"    # I
    .param p3, "errorCode"    # I
    .param p4, "isRetryable"    # Z
    .param p5, "challenge"    # [B
    .param p6, "passwordChangeProtocol"    # I
    .param p7, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;
        }
    .end annotation

    .line 367
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2VariableTypeData;-><init>(III)V

    .line 369
    iput p3, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->errorCode:I

    .line 370
    iput-boolean p4, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->isRetryable:Z

    .line 371
    iput-object p5, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->challenge:[B

    .line 372
    iput p6, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->passwordChangeProtocol:I

    .line 373
    iput-object p7, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->message:Ljava/lang/String;

    .line 375
    array-length v0, p5

    const/16 v1, 0x10

    if-ne v0, v1, :cond_14

    .line 378
    return-void

    .line 376
    :cond_14
    new-instance v0, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    const-string v1, "Challenge length must be 16B"

    invoke-direct {v0, v1}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor blacklist <init>(Ljava/nio/ByteBuffer;)V
    .registers 10
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;,
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 323
    nop

    .line 325
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    .line 326
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->toUnsignedInt(S)I

    move-result v1

    .line 323
    const/4 v2, 0x4

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2VariableTypeData;-><init>(III)V

    .line 328
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    .line 329
    .local v0, "message":[B
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 333
    new-instance v1, Ljava/lang/String;

    .line 334
    const-string v2, "US-ASCII"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v1}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->getMessageMappings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 335
    .local v1, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "E"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    .line 336
    const-string v3, "R"

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9e

    .line 337
    const-string v4, "C"

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    .line 338
    const-string v5, "V"

    invoke-interface {v1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 339
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_9e

    .line 345
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->errorCode:I

    .line 346
    const-string v2, "1"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->isRetryable:Z

    .line 347
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->challenge:[B

    .line 348
    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->passwordChangeProtocol:I

    .line 350
    const-string v2, "M"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->message:Ljava/lang/String;

    .line 352
    iget-object v2, p0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureRequest;->challenge:[B

    array-length v2, v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_96

    .line 355
    return-void

    .line 353
    :cond_96
    new-instance v2, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    const-string v3, "Challenge must be 16B long"

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 340
    :cond_9e
    new-instance v2, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;

    const-string v3, "Message must be formatted as: E=<error_code> R=<retry bit> C=<challenge> V=<password_change_protocol> M=<message>"

    invoke-direct {v2, v3}, Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
