.class public Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureResponse;
.super Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;
.source "EapMsChapV2TypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapMsChapV2FailureResponse"
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;
        }
    .end annotation

    .line 387
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData;-><init>(I)V

    .line 388
    return-void
.end method

.method public static blacklist getEapMsChapV2FailureResponse()Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureResponse;
    .registers 4

    .line 397
    :try_start_0
    new-instance v0, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureResponse;

    invoke-direct {v0}, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2FailureResponse;-><init>()V
    :try_end_5
    .catch Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 398
    :catch_6
    move-exception v0

    .line 400
    .local v0, "ex":Lcom/android/internal/net/eap/exceptions/mschapv2/EapMsChapV2ParsingException;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    const-class v2, Lcom/android/internal/net/eap/message/mschapv2/EapMsChapV2TypeData$EapMsChapV2SuccessResponse;

    .line 401
    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 400
    const-string v3, "ParsingException thrown while creating EapMsChapV2FailureResponse"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 404
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public blacklist encode()[B
    .registers 4

    .line 410
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    return-object v0
.end method
