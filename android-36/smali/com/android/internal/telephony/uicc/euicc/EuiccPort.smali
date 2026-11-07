.class public Lcom/android/internal/telephony/uicc/euicc/EuiccPort;
.super Lcom/android/internal/telephony/uicc/UiccPort;
.source "EuiccPort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;,
        Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;,
        Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;,
        Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;
    }
.end annotation


# static fields
.field private static final blacklist SGP22_V_2_0:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

.field private static final blacklist SGP22_V_2_1:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;


# instance fields
.field private final blacklist mApduSender:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

.field private volatile blacklist mEid:Ljava/lang/String;

.field private blacklist mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

.field public blacklist mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;


# direct methods
.method public static synthetic blacklist $r8$lambda$-7Y_KDOOtYvZd9NbEMZNyDQ2zUY(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V
    .registers 4

    .line 1175
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string v1, "Cannot send APDU."

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$1ATmEr4p4fYk69DuGgUniIUrPfE(Ljava/lang/String;[B)Ljava/lang/Void;
    .registers 4

    .line 328
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseSimpleResult([B)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    const/4 v1, 0x2

    if-ne p1, v1, :cond_23

    .line 333
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile is already enabled, iccid: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {p0}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 333
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->logd(Ljava/lang/String;)V

    return-object v0

    .line 337
    :cond_23
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw p0

    :cond_2b
    return-object v0
.end method

.method public static synthetic blacklist $r8$lambda$1ELNcnnRwnVdD7DU0X_0dVBfBt0(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;[B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getSpecVersion$1([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$35G6DxPAOLGe7drowgjl2vdkz2o(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$newRequestProvider$49(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$38_ocm7LqtwoeuFk76gpZioU9HM([B)[B
    .registers 2

    const/4 v0, 0x4

    .line 847
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    .line 848
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$3LOlS2t3QgG8LwNNtx5Ch-uiWOU(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4

    const v0, 0xbf28

    .line 864
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x81

    .line 865
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBits(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 866
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 864
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$5X2fY2LG4bq0bxjKu1ezi00siNk(Ljava/lang/String;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 6

    const v0, 0xbf2d

    .line 234
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 235
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    .line 237
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v2, 0x5a

    .line 236
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    .line 235
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const/16 v0, 0x5c

    .line 239
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 240
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 234
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$9nRwiOGlqVjHuqkCTqdflA1V9J4([B)Landroid/telephony/euicc/EuiccNotification;
    .registers 4

    const/16 v0, 0x8

    .line 939
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    .line 941
    new-array v1, v0, [I

    const/16 v2, 0xa0

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object p0

    .line 942
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 943
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;

    move-result-object p0

    return-object p0

    :cond_24
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$B4NPl-tzgzvXPGq-sH6_q4pINr0([B)[Landroid/telephony/euicc/EuiccNotification;
    .registers 5

    const/4 v0, 0x6

    .line 868
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    .line 870
    new-array v1, v0, [I

    const/16 v2, 0xa0

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object p0

    .line 871
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Landroid/telephony/euicc/EuiccNotification;

    :goto_18
    if-ge v0, v1, :cond_29

    .line 873
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_29
    return-object v2
.end method

.method public static synthetic blacklist $r8$lambda$DlR4TDc8AhjnxWZ3d44nUFp_iV0([B)Landroid/service/euicc/EuiccProfileInfo;
    .registers 4

    .line 242
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/16 v2, 0xa0

    .line 243
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/16 v1, 0xe3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object p0

    .line 244
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 p0, 0x0

    return-object p0

    .line 247
    :cond_20
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/16 v1, 0x5a

    .line 248
    new-array v0, v0, [I

    .line 249
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->stripTrailingFs([B)Ljava/lang/String;

    move-result-object v0

    .line 250
    new-instance v1, Landroid/service/euicc/EuiccProfileInfo$Builder;

    invoke-direct {v1, v0}, Landroid/service/euicc/EuiccProfileInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-static {p0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->buildProfile(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;Landroid/service/euicc/EuiccProfileInfo$Builder;)V

    .line 253
    invoke-virtual {v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->build()Landroid/service/euicc/EuiccProfileInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$EGQloVE5ZJw-zQr1fb0lrYE5gfE(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V
    .registers 4

    .line 1192
    instance-of v0, p1, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;

    if-eqz v0, :cond_19

    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;

    .line 1193
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduException;->getApduStatus()I

    move-result v0

    const/16 v1, 0x6f00

    if-ne v0, v1, :cond_19

    .line 1194
    const-string p1, "Sim is refreshed after disabling profile, no response got."

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->logi(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 1195
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onResult(Ljava/lang/Object;)V

    return-void

    .line 1197
    :cond_19
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string v1, "Cannot send APDU."

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$H25WdLLsot1rl7uLjnL13Y6rUDs([B)Ljava/lang/Void;
    .registers 3

    .line 426
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseSimpleResult([B)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 428
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0
.end method

.method public static synthetic blacklist $r8$lambda$Hxu4_Tafa20dccDxqByPfZIhcEc(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4

    const v0, 0xbf34

    .line 448
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x82

    .line 449
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBits(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 450
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 448
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$IVg3AwRtXeN6U7MbCotWrwVWYGA(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4

    .line 419
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const v0, 0xbf33

    .line 420
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x5a

    .line 421
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 422
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 420
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ImnCclzpMb1Zv2ACnEEcrfqe-bE(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    const v0, 0xbf43

    .line 534
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 534
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JeBYmyDaVQP8IU7HqjtFPbU056k(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 5

    const v0, 0xbf29

    .line 392
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 394
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const/16 v1, 0x5a

    .line 393
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const/16 v0, 0x90

    .line 395
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsString(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 396
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 392
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$KqLrU_36aRHHCRFqzgOMKk14JJM(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    const v0, 0xbf3c

    .line 473
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LbmXvDgBmupXEH6V_fZy3d2TgMg(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$authenticateServer$32(Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MU5mRlnNwKVTR_GQggVRY_nh50M([B)Ljava/lang/Void;
    .registers 3

    .line 452
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseSimpleResult([B)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_12

    .line 454
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v1, 0xd

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$Mc9f22NaRynjPn24Wro3ZOqE9ZM([BILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 5

    const v0, 0xbf41

    .line 842
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x80

    .line 843
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const/16 v0, 0x81

    .line 844
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 845
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 842
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$OUyLuwFPjbpiYEZQ1yOAcLDGU1c(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 5

    const v0, 0xbf3e

    .line 366
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/16 v2, 0x5a

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    const/16 v2, 0x5c

    .line 367
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 368
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 366
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$QWCG1I_mrqtBU50tBLlLwcWohfc([B)[B
    .registers 4

    .line 659
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x2

    .line 660
    filled-new-array {v0}, [I

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 665
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object p0

    return-object p0

    .line 661
    :cond_16
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    filled-new-array {v0}, [I

    move-result-object v0

    .line 663
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result p0

    const/4 v0, 0x3

    invoke-direct {v1, v0, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1
.end method

.method public static synthetic blacklist $r8$lambda$S3UFjqpFTzPDP8_VtyV-yba3zJ8(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    const v0, 0xbf22

    .line 605
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 606
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 605
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$TtjwDy5X_rrwDzIdJbHmpJZNzZw(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4

    const v0, 0xbf30

    .line 963
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x80

    .line 964
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 965
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 962
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Uan2xsQJjHJLw2EoFX9C_fehZIA(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;[B)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$getEid$11([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$UtY9z616fVzIPy2jUuqqPLfOCYQ(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 6

    .line 270
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object p0

    const v0, 0xbf32

    .line 271
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 272
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    const/16 v2, 0x5a

    .line 273
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 272
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const/16 v0, 0x81

    .line 274
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBoolean(IZ)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 271
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$V_0N-RPeRiUu2znNKFIMZBtUgNg(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 5

    const v0, 0xbf2b

    .line 934
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 935
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    const/16 v2, 0x80

    .line 936
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 935
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 937
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 933
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$WIb2UjiHffDTpSR2jGk0qszb5IM([B)[Landroid/service/euicc/EuiccProfileInfo;
    .registers 9

    .line 196
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v1, v0, [I

    const/16 v2, 0xa0

    .line 197
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/16 v1, 0xe3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object p0

    .line 198
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    .line 199
    new-array v2, v1, [Landroid/service/euicc/EuiccProfileInfo;

    move v3, v0

    move v4, v3

    :goto_20
    if-ge v3, v1, :cond_5a

    .line 202
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    .line 203
    new-array v6, v0, [I

    const/16 v7, 0x5a

    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v6

    if-nez v6, :cond_38

    .line 204
    const-string v5, "Profile must have an ICCID."

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->loge(Ljava/lang/String;)V

    goto :goto_57

    .line 207
    :cond_38
    new-array v6, v0, [I

    .line 208
    invoke-virtual {v5, v7, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->stripTrailingFs([B)Ljava/lang/String;

    move-result-object v6

    .line 209
    new-instance v7, Landroid/service/euicc/EuiccProfileInfo$Builder;

    invoke-direct {v7, v6}, Landroid/service/euicc/EuiccProfileInfo$Builder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-static {v5, v7}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->buildProfile(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;Landroid/service/euicc/EuiccProfileInfo$Builder;)V

    .line 213
    invoke-virtual {v7}, Landroid/service/euicc/EuiccProfileInfo$Builder;->build()Landroid/service/euicc/EuiccProfileInfo;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    .line 214
    aput-object v5, v2, v4

    move v4, v6

    :goto_57
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    :cond_5a
    return-object v2
.end method

.method public static synthetic blacklist $r8$lambda$Wq1gvyXM7LhC7TZbCMXr_kujSzY(Lcom/android/internal/telephony/uicc/IccIoResult;)Z
    .registers 4

    .line 815
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    const/4 v0, 0x1

    if-eqz p0, :cond_20

    .line 816
    array-length v1, p0

    const/4 v2, 0x2

    if-le v1, v2, :cond_20

    const/4 v1, 0x0

    .line 817
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v2

    const v2, 0xbf37

    if-ne p0, v2, :cond_20

    .line 820
    const-string p0, "loadBoundProfilePackage failed due to an early error."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->logd(Ljava/lang/String;)V

    return v1

    :cond_20
    return v0
.end method

.method public static synthetic blacklist $r8$lambda$YZwVIw_bDHF3Dhd-wpXUmMJ57JA(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$switchToProfile$8(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aP6V1Ehpway211w-3jP4m3fzXd0([B)Ljava/lang/String;
    .registers 3

    .line 475
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x80

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$afNLL9rQqoO4vmChvNCa9p114-w([B)[Landroid/telephony/euicc/EuiccNotification;
    .registers 5

    .line 898
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    .line 899
    new-array v1, v0, [I

    const/16 v2, 0x81

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 901
    new-array v1, v0, [I

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1f

    .line 904
    new-array p0, v0, [Landroid/telephony/euicc/EuiccNotification;

    return-object p0

    .line 906
    :cond_1f
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v1, 0x8

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0

    :cond_27
    const/16 v1, 0xa0

    .line 911
    new-array v2, v0, [I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object p0

    .line 912
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [Landroid/telephony/euicc/EuiccNotification;

    :goto_39
    if-ge v0, v1, :cond_4a

    .line 914
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_39

    :cond_4a
    return-object v2
.end method

.method public static synthetic blacklist $r8$lambda$cX1IMnQ1WDgUWeH0JuepU0bkF1Q([B)[B
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$cg_xA673feuOO7lPVpoNgrCoVog(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->lambda$loadBoundProfilePackage$36([BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hHWjNXLDkTdpfyi-CNlP8KvqMsY(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Ljava/lang/Throwable;)V
    .registers 4

    .line 1166
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string v1, "Cannot send APDU."

    invoke-direct {v0, v1, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;->onException(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$hzN8XsfbSW5EJesU2RdmL_E475M(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    const v0, 0xbf3c

    .line 490
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 491
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 489
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jBXy-iHRGxyqzu3ONAbZTKU17mE(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    const v0, 0xbf2e

    .line 571
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 572
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 570
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jfzsVE_accs7_zRZMRyqOz1ytpM(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4

    const v0, 0xbf3f

    .line 508
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x80

    .line 509
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsString(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 510
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 507
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$jz022vLTeYeEYdEyFLALPup8v5o([B)Ljava/lang/String;
    .registers 3

    .line 492
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x81

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$kaZKKCaxPp2VS3SvCQ1WWHEezhY(ILcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 5

    const v0, 0xbf2b

    .line 893
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 894
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    const/16 v2, 0x81

    .line 895
    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBits(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 894
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 896
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 892
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mLSkJ5OhVxjIIQRCirD9YnQ5Msk([B)[B
    .registers 3

    .line 573
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x80

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$o6Us1m3vQqBmaX367z5l_68zsGM([B)[B
    .registers 5

    .line 697
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x2

    .line 698
    filled-new-array {v0}, [I

    move-result-object v1

    const/16 v2, 0xa1

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-nez v1, :cond_16

    .line 703
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object p0

    return-object p0

    .line 699
    :cond_16
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    filled-new-array {v0}, [I

    move-result-object v3

    .line 701
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result p0

    invoke-direct {v1, v0, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1
.end method

.method public static synthetic blacklist $r8$lambda$odndDAScngwf6BOQennSmaEdZ4Y([B)Ljava/lang/Void;
    .registers 3

    .line 399
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseSimpleResult([B)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 401
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0
.end method

.method public static synthetic blacklist $r8$lambda$pZiiH4EIP8fsijkMZng8wVA2tfk([BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4

    const v0, 0xbf2d

    .line 192
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0x5c

    .line 193
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 194
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$pu_eTrNwCXGgwO8CrL09b4K8UoA([B)Ljava/lang/Void;
    .registers 3

    .line 968
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseSimpleResult([B)I

    move-result p0

    if-eqz p0, :cond_12

    const/4 v0, 0x1

    if-ne p0, v0, :cond_a

    goto :goto_12

    .line 970
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$uc4emHmiPKsuuqsx2rPC3n-ldg4([B)[B
    .registers 6

    .line 802
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/16 v0, 0xa2

    const/16 v1, 0xa1

    const/16 v2, 0x81

    .line 803
    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    const v4, 0xbf27

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v3

    if-nez v3, :cond_1c

    .line 812
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object p0

    return-object p0

    .line 805
    :cond_1c
    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    .line 808
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    .line 810
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v1

    const/4 v2, 0x5

    invoke-direct {v0, v2, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(IILcom/android/internal/telephony/uicc/asn1/Asn1Node;)V

    throw v0
.end method

.method public static synthetic blacklist $r8$lambda$uoPKM6SB24EIJBhxTYM6KlB7w3c(Ljava/lang/String;[B)Ljava/lang/Void;
    .registers 4

    .line 280
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseSimpleResult([B)I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2b

    const/4 v1, 0x2

    if-ne p1, v1, :cond_23

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Profile is already disabled, iccid: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    invoke-static {p0}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 285
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->logd(Ljava/lang/String;)V

    return-object v0

    .line 289
    :cond_23
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw p0

    :cond_2b
    return-object v0
.end method

.method public static synthetic blacklist $r8$lambda$usba0HvwjnmbVsZr6jMHNFVhKxY([B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 7

    const v0, 0xbf21

    .line 686
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 687
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 688
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    if-eqz p2, :cond_27

    const/4 p1, 0x4

    .line 690
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 692
    :cond_27
    new-instance p1, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {p1, p3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 693
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 694
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 692
    invoke-virtual {p4, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$wgrjBH9HHe7gvJSu-BtiuKOXfQ4([B)Landroid/telephony/euicc/EuiccRulesAuthTable;
    .registers 12

    .line 537
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/16 v0, 0xa0

    .line 538
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object p0

    .line 539
    new-instance v0, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;

    .line 540
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;-><init>(I)V

    .line 541
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_6f

    .line 543
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/16 v5, 0xa1

    .line 544
    filled-new-array {v5}, [I

    move-result-object v5

    const/16 v6, 0x30

    .line 545
    invoke-virtual {v4, v6, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren()Ljava/util/List;

    move-result-object v5

    .line 546
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    .line 547
    new-array v8, v7, [Landroid/service/carrier/CarrierIdentifier;

    move v9, v2

    :goto_38
    if-ge v9, v7, :cond_49

    .line 549
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->buildCarrierIdentifier(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v10

    aput-object v10, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_38

    :cond_49
    const/16 v5, 0x80

    .line 551
    filled-new-array {v5}, [I

    move-result-object v5

    invoke-virtual {v4, v6, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v5

    .line 552
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    const/16 v8, 0x82

    filled-new-array {v8}, [I

    move-result-object v8

    invoke-virtual {v4, v6, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v4

    .line 553
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v4

    .line 551
    invoke-virtual {v0, v5, v7, v4}, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->add(ILjava/util/List;I)Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 555
    :cond_6f
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccRulesAuthTable$Builder;->build()Landroid/telephony/euicc/EuiccRulesAuthTable;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$y7AIHaUC6EMVHjHTQtoP3XZCSHQ([B)Ljava/lang/Void;
    .registers 3

    .line 513
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseSimpleResult([B)I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 515
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    const/16 v1, 0xe

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v0
.end method

.method public static synthetic blacklist $r8$lambda$yg2d-ZXIUjGtnOew9Uc7TnFvQak(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 1

    .line 0
    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zAmf1sNlPu-q7i_7B1dM9SNX1hc([B)[B
    .registers 1

    .line 0
    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$zHaQ9xOkcZ2YbCb2E0Rbvv5D10w(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 2

    const v0, 0xbf20

    .line 588
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    .line 589
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    .line 588
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 91
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;-><init>(III)V

    sput-object v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->SGP22_V_2_0:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    .line 92
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;-><init>(III)V

    sput-object v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->SGP22_V_2_1:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/UiccCard;Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V
    .registers 10

    .line 134
    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/uicc/UiccPort;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILjava/lang/Object;Lcom/android/internal/telephony/uicc/UiccCard;)V

    move-object v0, p3

    move p3, p4

    .line 136
    new-instance p4, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    const-string p5, "A0000005591010FFFFFFFF8900000100"

    const/4 p6, 0x0

    move-object v1, p2

    move-object p2, p1

    move-object p1, p4

    move-object p4, v1

    invoke-direct/range {p1 .. p6}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;-><init>(Landroid/content/Context;ILcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;Z)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mApduSender:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    .line 138
    iget-object p1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_30

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "no eid given in constructor for phone "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->loge(Ljava/lang/String;)V

    goto :goto_38

    .line 141
    :cond_30
    iget-object p1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mEid:Ljava/lang/String;

    .line 142
    iget-object p1, v0, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCardId:Ljava/lang/String;

    .line 144
    :goto_38
    iput-object p7, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    return-void
.end method

.method private static blacklist buildCarrierIdentifier(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/service/carrier/CarrierIdentifier;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1302
    new-array v1, v0, [I

    const/16 v2, 0x81

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1b

    .line 1303
    new-array v1, v0, [I

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    move-object v1, v3

    .line 1306
    :goto_1c
    new-array v2, v0, [I

    const/16 v4, 0x82

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 1307
    new-array v2, v0, [I

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 1309
    :cond_34
    new-instance v2, Landroid/service/carrier/CarrierIdentifier;

    const/16 v4, 0x80

    new-array v0, v0, [I

    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object p0

    invoke-direct {v2, p0, v1, v3}, Landroid/service/carrier/CarrierIdentifier;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private static blacklist buildProfile(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;Landroid/service/euicc/EuiccProfileInfo$Builder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1238
    new-array v1, v0, [I

    const/16 v2, 0x90

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1239
    new-array v1, v0, [I

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setNickname(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1242
    :cond_18
    new-array v1, v0, [I

    const/16 v2, 0x91

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 1243
    new-array v1, v0, [I

    .line 1244
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v1

    .line 1243
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setServiceProviderName(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1247
    :cond_2f
    new-array v1, v0, [I

    const/16 v2, 0x92

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 1248
    new-array v1, v0, [I

    .line 1249
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v1

    .line 1248
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setProfileName(Ljava/lang/String;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1252
    :cond_46
    new-array v1, v0, [I

    const/16 v2, 0xb7

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 1253
    new-array v1, v0, [I

    .line 1254
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->buildCarrierIdentifier(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/service/carrier/CarrierIdentifier;

    move-result-object v1

    .line 1253
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setCarrierIdentifier(Landroid/service/carrier/CarrierIdentifier;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1257
    :cond_5d
    new-array v1, v0, [I

    const v2, 0x9f70

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_92

    .line 1262
    new-array v1, v0, [I

    const v3, 0x9f24

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_84

    new-array v1, v0, [I

    .line 1263
    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v1

    if-ltz v1, :cond_84

    const/4 v1, 0x1

    .line 1264
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setState(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    goto :goto_95

    .line 1267
    :cond_84
    new-array v1, v0, [I

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setState(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    goto :goto_95

    .line 1270
    :cond_92
    invoke-virtual {p1, v0}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setState(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1273
    :goto_95
    new-array v1, v0, [I

    const/16 v2, 0x95

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_ad

    .line 1275
    new-array v1, v0, [I

    .line 1276
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v1

    .line 1275
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setProfileClass(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    goto :goto_b1

    :cond_ad
    const/4 v1, 0x2

    .line 1278
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setProfileClass(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1281
    :goto_b1
    new-array v1, v0, [I

    const/16 v2, 0x99

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_c8

    .line 1283
    new-array v1, v0, [I

    .line 1284
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v1

    .line 1283
    invoke-virtual {p1, v1}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setPolicyRules(I)Landroid/service/euicc/EuiccProfileInfo$Builder;

    .line 1287
    :cond_c8
    new-array v1, v0, [I

    const v2, 0xbf76

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-eqz v1, :cond_ee

    .line 1288
    new-array v0, v0, [I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/16 v0, 0xe2

    .line 1289
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object p0

    .line 1290
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->buildUiccAccessRule(Ljava/util/List;)[Landroid/telephony/UiccAccessRule;

    move-result-object p0

    if-eqz p0, :cond_ea

    .line 1293
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_eb

    :cond_ea
    const/4 p0, 0x0

    .line 1295
    :goto_eb
    invoke-virtual {p1, p0}, Landroid/service/euicc/EuiccProfileInfo$Builder;->setUiccAccessRule(Ljava/util/List;)Landroid/service/euicc/EuiccProfileInfo$Builder;

    :cond_ee
    return-void
.end method

.method private static blacklist buildUiccAccessRule(Ljava/util/List;)[Landroid/telephony/UiccAccessRule;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/uicc/asn1/Asn1Node;",
            ">;)[",
            "Landroid/telephony/UiccAccessRule;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;
        }
    .end annotation

    .line 1315
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 1318
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 1319
    new-array v2, v0, [Landroid/telephony/UiccAccessRule;

    const/4 v3, 0x0

    move v4, v3

    :goto_10
    if-ge v4, v0, :cond_69

    .line 1321
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    const/16 v6, 0xe1

    .line 1322
    new-array v7, v3, [I

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    const/16 v7, 0xc1

    .line 1323
    new-array v8, v3, [I

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v7

    .line 1326
    new-array v8, v3, [I

    const/16 v9, 0xca

    invoke-virtual {v6, v9, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v8

    if-eqz v8, :cond_41

    .line 1327
    new-array v8, v3, [I

    invoke-virtual {v6, v9, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v6

    goto :goto_42

    :cond_41
    move-object v6, v1

    :goto_42
    const/16 v8, 0xdb

    .line 1330
    filled-new-array {v8}, [I

    move-result-object v9

    const/16 v10, 0xe3

    invoke-virtual {v5, v10, v9}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 1331
    filled-new-array {v8}, [I

    move-result-object v8

    invoke-virtual {v5, v10, v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v5

    .line 1332
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asRawLong()J

    move-result-wide v8

    goto :goto_5f

    :cond_5d
    const-wide/16 v8, 0x0

    .line 1334
    :goto_5f
    new-instance v5, Landroid/telephony/UiccAccessRule;

    invoke-direct {v5, v7, v6, v8, v9}, Landroid/telephony/UiccAccessRule;-><init>([BLjava/lang/String;J)V

    aput-object v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_69
    return-object v2
.end method

.method private static blacklist createNotification(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Landroid/telephony/euicc/EuiccNotification;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 1350
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0xbf2f

    if-ne v0, v2, :cond_c

    move-object v0, p0

    goto :goto_27

    .line 1352
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v0

    const v3, 0xbf37

    if-ne v0, v3, :cond_21

    const v0, 0xbf27

    .line 1353
    filled-new-array {v2}, [I

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    goto :goto_27

    .line 1357
    :cond_21
    new-array v0, v1, [I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    .line 1360
    :goto_27
    new-instance v3, Landroid/telephony/euicc/EuiccNotification;

    const/16 v4, 0x80

    new-array v5, v1, [I

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result v4

    const/16 v5, 0xc

    new-array v6, v1, [I

    .line 1361
    invoke-virtual {v0, v5, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asString()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x81

    new-array v1, v1, [I

    .line 1362
    invoke-virtual {v0, v6, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBits()I

    move-result v0

    .line 1363
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v1

    if-ne v1, v2, :cond_55

    const/4 p0, 0x0

    goto :goto_59

    :cond_55
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toBytes()[B

    move-result-object p0

    :goto_59
    invoke-direct {v3, v4, v5, v0, p0}, Landroid/telephony/euicc/EuiccNotification;-><init>(ILjava/lang/String;I[B)V

    return-object v3
.end method

.method public static blacklist getDeviceId(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)[B
    .registers 4

    const/16 v0, 0x8

    .line 1065
    new-array v0, v0, [B

    .line 1067
    sget-object v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->SGP22_V_2_1:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->compareTo(Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)I

    move-result p1

    if-ltz p1, :cond_2e

    .line 1091
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x46

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1092
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    const/4 p0, 0x7

    .line 1096
    aget-byte p1, v0, p0

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 v1, p1, 0x4

    ushr-int/lit8 p1, p1, 0x4

    or-int/2addr p1, v1

    int-to-byte p1, p1

    .line 1097
    aput-byte p1, v0, p0

    return-object v0

    .line 1110
    :cond_2e
    invoke-static {p0, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;[B)V

    return-object v0
.end method

.method private blacklist getOrExtractSpecVersion([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
    .registers 4

    .line 1139
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    if-eqz v0, :cond_5

    return-object v0

    .line 1143
    :cond_5
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->fromOpenChannelResponse([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    move-result-object p1

    if-eqz p1, :cond_1b

    .line 1145
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1146
    :try_start_e
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    if-nez v1, :cond_17

    .line 1147
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    goto :goto_17

    :catchall_15
    move-exception p0

    goto :goto_19

    .line 1149
    :cond_17
    :goto_17
    monitor-exit v0

    return-object p1

    :goto_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_15

    throw p0

    :cond_1b
    return-object p1
.end method

.method private synthetic blacklist lambda$authenticateServer$32(Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 627
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getDeviceId()[B

    move-result-object v0

    const/4 v1, 0x4

    .line 629
    new-array v2, v1, [B

    const/4 v3, 0x0

    .line 630
    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0xa1

    .line 632
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v4

    .line 633
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10700d3

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_29

    .line 636
    array-length v6, v5

    :goto_1f
    if-ge v3, v6, :cond_2e

    aget-object v7, v5, v3

    .line 637
    invoke-virtual {p0, v4, v7}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->addDeviceCapability(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 640
    :cond_29
    const-string p0, "No device capabilities set."

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->logd(Ljava/lang/String;)V

    :cond_2e
    const/16 p0, 0xa0

    .line 643
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const/16 v3, 0x80

    .line 644
    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsString(ILjava/lang/String;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 645
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    .line 646
    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    .line 647
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    const/16 v1, 0x82

    .line 648
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    .line 645
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    const p1, 0xbf38

    .line 650
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 651
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {p2, p3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 652
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {p2, p4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 653
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {p2, p5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 654
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    .line 655
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p0

    .line 656
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    .line 650
    invoke-virtual {p6, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$getEid$11([B)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 370
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x5a

    .line 371
    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object p1

    .line 370
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_18
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mEid:Ljava/lang/String;

    .line 374
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mCardId:Ljava/lang/String;

    .line 375
    monitor-exit v0

    return-object p1

    :catchall_1e
    move-exception p0

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_18 .. :try_end_20} :catchall_1e

    throw p0
.end method

.method private synthetic blacklist lambda$getSpecVersion$1([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 158
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    return-object p0
.end method

.method private synthetic blacklist lambda$loadBoundProfilePackage$36([BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 721
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p1

    .line 722
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getDataLength()I

    move-result v0

    const/4 v1, 0x0

    .line 725
    new-array v2, v1, [I

    const v3, 0xbf23

    invoke-virtual {p1, v3, v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v2

    .line 727
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getEncodedLength()I

    move-result v3

    const/16 v4, 0xa0

    .line 729
    new-array v5, v1, [I

    invoke-virtual {p1, v4, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v4

    .line 730
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getEncodedLength()I

    move-result v5

    add-int/2addr v3, v5

    const/16 v5, 0xa1

    .line 732
    new-array v6, v1, [I

    invoke-virtual {p1, v5, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v5

    const/16 v6, 0x88

    .line 733
    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object v6

    .line 734
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getEncodedLength()I

    move-result v7

    add-int/2addr v3, v7

    .line 737
    new-array v7, v1, [I

    const/16 v8, 0xa2

    invoke-virtual {p1, v8, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v7

    if-eqz v7, :cond_51

    .line 738
    new-array v7, v1, [I

    invoke-virtual {p1, v8, v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v7

    .line 739
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getEncodedLength()I

    move-result v8

    add-int/2addr v3, v8

    goto :goto_52

    :cond_51
    const/4 v7, 0x0

    :goto_52
    const/16 v8, 0xa3

    .line 742
    new-array v9, v1, [I

    invoke-virtual {p1, v8, v9}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v8

    const/16 v9, 0x86

    .line 743
    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChildren(I)Ljava/util/List;

    move-result-object v9

    .line 744
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getEncodedLength()I

    move-result v10

    add-int/2addr v3, v10

    .line 746
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    sget-object v10, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->SGP22_V_2_1:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->compareTo(Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)I

    move-result p0

    if-ltz p0, :cond_a6

    if-eqz v9, :cond_9e

    .line 757
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_9e

    if-ne v0, v3, :cond_7a

    goto :goto_a6

    .line 770
    :cond_7a
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Actual BPP length ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") does not match segmented length ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), this must be due to a malformed BPP"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 763
    :cond_9e
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string p1, "No profile elements in BPP"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 779
    :cond_a6
    :goto_a6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getHeadAsHex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 779
    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 782
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getHeadAsHex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 785
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result p0

    move p1, v1

    :goto_d3
    if-ge p1, p0, :cond_e5

    .line 787
    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_d3

    :cond_e5
    if-eqz v7, :cond_ee

    .line 791
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 794
    :cond_ee
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getHeadAsHex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    .line 795
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result p0

    :goto_f9
    if-ge v1, p0, :cond_10b

    .line 797
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f9

    :cond_10b
    return-void
.end method

.method private synthetic blacklist lambda$newRequestProvider$49(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;[BLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1122
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getOrExtractSpecVersion([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    move-result-object p0

    if-eqz p0, :cond_32

    .line 1127
    :try_start_6
    sget-object p2, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->SGP22_V_2_0:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->compareTo(Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)I

    move-result p2

    if-ltz p2, :cond_12

    .line 1130
    invoke-interface {p1, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;->build(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V

    return-void

    .line 1128
    :cond_12
    new-instance p1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "eUICC spec version is unsupported: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_29
    .catch Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException; {:try_start_6 .. :try_end_29} :catch_29
    .catch Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException; {:try_start_6 .. :try_end_29} :catch_29

    :catch_29
    move-exception p0

    .line 1132
    new-instance p1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string p2, "Cannot parse ASN1 to build request."

    invoke-direct {p1, p2, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1124
    :cond_32
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string p1, "Cannot get eUICC spec version."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private synthetic blacklist lambda$switchToProfile$8(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 309
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->padTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdToBytes(Ljava/lang/String;)[B

    move-result-object p1

    const v0, 0xbf31

    .line 310
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v0

    const/16 v1, 0xa0

    .line 311
    invoke-static {v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->newBuilder(I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object v1

    const/16 v2, 0x5a

    .line 312
    invoke-virtual {v1, v2, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    .line 311
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChild(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    const/16 v0, 0x81

    .line 313
    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBoolean(IZ)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    move-result-object p1

    .line 315
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->isMepA1Mode()Z

    move-result p2

    if-eqz p2, :cond_3c

    .line 319
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    .line 321
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->getPortIdx()I

    move-result p0

    .line 320
    invoke-static {p2, p0}, Lcom/android/internal/telephony/uicc/PortUtils;->convertToHalPortIndex(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;I)I

    move-result p0

    const/16 p2, 0x82

    .line 319
    invoke-virtual {p1, p2, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsInteger(II)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    .line 323
    :cond_3c
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->build()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Lcom/android/internal/telephony/uicc/euicc/apdu/RequestBuilder;->addStoreData(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 1423
    const-string v0, "EuiccPort"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 1410
    const-string v0, "EuiccPort"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 1414
    const-string v0, "EuiccPort"

    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static blacklist logi(Ljava/lang/String;)V
    .registers 2

    .line 1418
    const-string v0, "EuiccPort"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;
    .registers 3

    .line 1121
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda50;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)V

    return-object v0
.end method

.method private static blacklist padTrailingFs(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1403
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-ge v0, v1, :cond_30

    .line 1404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr v1, p0

    new-array p0, v1, [C

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([C)V

    const/4 p0, 0x0

    const/16 v1, 0x46

    invoke-virtual {v2, p0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_30
    return-object p0
.end method

.method private static blacklist parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 1374
    new-instance v0, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 1375
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->hasNextNode()Z

    move-result p0

    if-eqz p0, :cond_10

    .line 1378
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    return-object p0

    .line 1376
    :cond_10
    new-instance p0, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;

    const-string v0, "Empty response"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method private static blacklist parseResponseAndCheckSimpleError([BI)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;
        }
    .end annotation

    .line 1389
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    .line 1390
    new-array v1, v0, [I

    const/16 v2, 0x81

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->hasChild(I[I)Z

    move-result v1

    if-nez v1, :cond_10

    return-object p0

    .line 1391
    :cond_10
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;

    new-array v0, v0, [I

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result p0

    invoke-direct {v1, p1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccCardErrorException;-><init>(II)V

    throw v1
.end method

.method private static blacklist parseSimpleResult([B)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/uicc/euicc/EuiccCardException;,
            Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException;,
            Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException;
        }
    .end annotation

    .line 1369
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->parseResponse([B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [I

    const/16 v1, 0x80

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asInteger()I

    move-result p0

    return p0
.end method

.method private blacklist sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler<",
            "TT;>;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1208
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mApduSender:Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;

    move-object v2, p0

    move-object v4, p2

    move-object v6, p3

    move-object v5, p4

    move-object v3, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$1;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;)V

    invoke-virtual {v0, p1, v1, p6}, Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSender;->send(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/apdu/ApduSenderResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler<",
            "TT;>;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1174
    new-instance v3, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda51;

    invoke-direct {v3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda51;-><init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler<",
            "TT;>;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "TT;>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1165
    new-instance v3, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda52;

    invoke-direct {v3, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda52;-><init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler<",
            "Ljava/lang/Void;",
            ">;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1191
    new-instance v3, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda49;

    invoke-direct {v3, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda49;-><init>(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;)V

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduExceptionHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method private static blacklist stripTrailingFs([B)Ljava/lang/String;
    .registers 3

    .line 1398
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->stripTrailingFs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist addDeviceCapability(Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;Ljava/lang/String;)V
    .registers 10

    const/4 p0, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 988
    const-string v2, ","

    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 989
    array-length v2, p2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_26

    .line 990
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid device capability item: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->loge(Ljava/lang/String;)V

    return-void

    .line 994
    :cond_26
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 995
    aget-object p2, p2, v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    const-string v4, "\\."

    invoke-virtual {p2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 996
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 998
    :try_start_3c
    aget-object v5, p2, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 999
    array-length v6, p2

    if-le v6, v0, :cond_53

    aget-object p2, p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_53
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_53} :catch_147

    .line 1005
    :cond_53
    invoke-virtual {v5}, Ljava/lang/Integer;->byteValue()B

    move-result p2

    invoke-virtual {v4}, Ljava/lang/Integer;->byteValue()B

    move-result v4

    new-array v5, p0, [B

    aput-byte p2, v5, v1

    aput-byte v4, v5, v0

    aput-byte v1, v5, v3

    .line 1006
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_14e

    :goto_6e
    move p0, p2

    goto/16 :goto_ed

    :sswitch_71
    const-string p0, "utran"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7a

    goto :goto_6e

    :cond_7a
    const/16 p0, 0xa

    goto/16 :goto_ed

    :sswitch_7e
    const-string p0, "nrepc"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_87

    goto :goto_6e

    :cond_87
    const/16 p0, 0x9

    goto/16 :goto_ed

    :sswitch_8b
    const-string p0, "nr5gc"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_94

    goto :goto_6e

    :cond_94
    const/16 p0, 0x8

    goto/16 :goto_ed

    :sswitch_98
    const-string p0, "ehrpd"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a1

    goto :goto_6e

    :cond_a1
    const/4 p0, 0x7

    goto :goto_ed

    :sswitch_a3
    const-string p0, "hrpd"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ac

    goto :goto_6e

    :cond_ac
    const/4 p0, 0x6

    goto :goto_ed

    :sswitch_ae
    const-string p0, "nfc"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b7

    goto :goto_6e

    :cond_b7
    const/4 p0, 0x5

    goto :goto_ed

    :sswitch_b9
    const-string p0, "gsm"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c2

    goto :goto_6e

    :cond_c2
    const/4 p0, 0x4

    goto :goto_ed

    :sswitch_c4
    const-string v0, "crl"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    goto :goto_6e

    :sswitch_cd
    const-string p0, "eutran5gc"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d6

    goto :goto_6e

    :cond_d6
    move p0, v3

    goto :goto_ed

    :sswitch_d8
    const-string p0, "eutran"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e1

    goto :goto_6e

    :cond_e1
    move p0, v0

    goto :goto_ed

    :sswitch_e3
    const-string p0, "cdma1x"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ec

    goto :goto_6e

    :cond_ec
    move p0, v1

    :cond_ed
    :goto_ed
    packed-switch p0, :pswitch_data_17c

    .line 1041
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid device capability name: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->loge(Ljava/lang/String;)V

    return-void

    :pswitch_105
    const/16 p0, 0x81

    .line 1011
    invoke-virtual {p1, p0, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_10b
    const/16 p0, 0x88

    .line 1032
    invoke-virtual {p1, p0, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_111
    const/16 p0, 0x89

    .line 1035
    invoke-virtual {p1, p0, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_117
    const/16 p0, 0x84

    .line 1020
    invoke-virtual {p1, p0, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_11d
    const/16 p0, 0x83

    .line 1017
    invoke-virtual {p1, p0, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_123
    const/16 p0, 0x86

    .line 1026
    invoke-virtual {p1, p0, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_129
    const/16 p0, 0x80

    .line 1008
    invoke-virtual {p1, p0, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_12f
    const/16 p0, 0x87

    .line 1029
    invoke-virtual {p1, p0, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_135
    const/16 p0, 0x8a

    .line 1038
    invoke-virtual {p1, p0, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_13b
    const/16 p0, 0x85

    .line 1023
    invoke-virtual {p1, p0, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :pswitch_141
    const/16 p0, 0x82

    .line 1014
    invoke-virtual {p1, p0, v5}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;->addChildAsBytes(I[B)Lcom/android/internal/telephony/uicc/asn1/Asn1Node$Builder;

    return-void

    :catch_147
    move-exception p0

    .line 1001
    const-string p1, "Invalid device capability version number."

    invoke-static {p1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :sswitch_data_14e
    .sparse-switch
        -0x515c0d24 -> :sswitch_e3
        -0x4cff5825 -> :sswitch_d8
        -0x46b1a5ea -> :sswitch_cd
        0x181dd -> :sswitch_c4
        0x19101 -> :sswitch_b9
        0x1a9ab -> :sswitch_ae
        0x31007e -> :sswitch_a3
        0x5c04663 -> :sswitch_98
        0x642bf8d -> :sswitch_8b
        0x64374d4 -> :sswitch_7e
        0x6a73120 -> :sswitch_71
    .end sparse-switch

    :pswitch_data_17c
    .packed-switch 0x0
        :pswitch_141
        :pswitch_13b
        :pswitch_135
        :pswitch_12f
        :pswitch_129
        :pswitch_123
        :pswitch_11d
        :pswitch_117
        :pswitch_111
        :pswitch_10b
        :pswitch_105
    .end packed-switch
.end method

.method public blacklist authenticateServer(Ljava/lang/String;[B[B[B[BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[B[B[B[B",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 625
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda30;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Ljava/lang/String;[B[B[B[B)V

    .line 626
    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p0

    new-instance p1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda31;

    invoke-direct {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda31;-><init>()V

    .line 625
    invoke-direct {v1, p0, p1, p6, p7}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist cancelSession([BILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 840
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda47;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda47;-><init>([BI)V

    .line 841
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda48;

    invoke-direct {p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda48;-><init>()V

    .line 840
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist deleteProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 417
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda12;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda12;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda13;-><init>()V

    .line 417
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist disableProfile(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 268
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda22;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda22;-><init>(Ljava/lang/String;Z)V

    .line 269
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda23;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda23;-><init>(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 1429
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccPort;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1430
    new-instance p1, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1431
    const-string p2, "EuiccPort:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1432
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 1433
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mEid="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mEid:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1434
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mSupportedMepMode="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getAllProfiles(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->isMepMode()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/Tags;->EUICC_PROFILE_MEP_TAGS:[B

    goto :goto_d

    .line 189
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/Tags;->EUICC_PROFILE_TAGS:[B

    .line 190
    :goto_d
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda32;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda32;-><init>([B)V

    .line 191
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda33;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda33;-><init>()V

    .line 190
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getDefaultSmdpAddress(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 470
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda45;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda45;-><init>()V

    .line 471
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda46;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda46;-><init>()V

    .line 470
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected blacklist getDeviceId()[B
    .registers 2

    .line 1048
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccPort;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-nez v0, :cond_f

    const/16 p0, 0x8

    .line 1050
    new-array p0, p0, [B

    return-object p0

    .line 1052
    :cond_f
    invoke-interface {v0}, Lcom/android/internal/telephony/PhoneInternalInterface;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->getDeviceId(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)[B

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEid()Ljava/lang/String;
    .registers 1

    .line 349
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mEid:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getEid(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 360
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mEid:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 361
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mEid:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper;->returnResult(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    .line 364
    :cond_a
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda41;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda41;-><init>()V

    .line 365
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda42;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda42;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;)V

    .line 364
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getEuiccChallenge(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 568
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda4;-><init>()V

    .line 569
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda5;-><init>()V

    .line 568
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getEuiccInfo1(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 586
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda20;-><init>()V

    .line 587
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda21;-><init>()V

    .line 586
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getEuiccInfo2(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 603
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda8;-><init>()V

    .line 604
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda9;-><init>()V

    .line 603
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public final blacklist getProfile(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Landroid/service/euicc/EuiccProfileInfo;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->isMepMode()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/Tags;->EUICC_PROFILE_MEP_TAGS:[B

    goto :goto_d

    .line 231
    :cond_b
    sget-object v0, Lcom/android/internal/telephony/uicc/euicc/Tags;->EUICC_PROFILE_TAGS:[B

    .line 232
    :goto_d
    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda10;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda10;-><init>(Ljava/lang/String;[B)V

    .line 233
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda11;-><init>()V

    .line 232
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method protected blacklist getResources()Landroid/content/res/Resources;
    .registers 1

    .line 1117
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getRulesAuthTable(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Landroid/telephony/euicc/EuiccRulesAuthTable;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 532
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda36;-><init>()V

    .line 533
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda37;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda37;-><init>()V

    .line 532
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getSmdsAddress(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 487
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda6;-><init>()V

    .line 488
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda7;-><init>()V

    .line 487
    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist getSpecVersion(Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSpecVersion:Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    if-eqz v0, :cond_8

    .line 153
    invoke-static {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultHelper;->returnResult(Ljava/lang/Object;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void

    .line 157
    :cond_8
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda43;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda44;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;)V

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist listNotifications(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 862
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda28;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda28;-><init>(I)V

    .line 863
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda29;-><init>()V

    .line 862
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist loadBoundProfilePackage([BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 719
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda38;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda38;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;[B)V

    .line 720
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda39;

    invoke-direct {v3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda39;-><init>()V

    new-instance v4, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda40;

    invoke-direct {v4}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda40;-><init>()V

    move-object v1, p0

    move-object v5, p2

    move-object v6, p3

    .line 719
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduIntermediateResultHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist prepareDownload([B[B[B[BLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B[B[B",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[B>;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 684
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda26;

    invoke-direct {v0, p2, p3, p1, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda26;-><init>([B[B[B[B)V

    .line 685
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda27;

    invoke-direct {p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda27;-><init>()V

    .line 684
    invoke-direct {p0, p1, p2, p5, p6}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist removeNotificationFromList(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 960
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda16;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda16;-><init>(I)V

    .line 961
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda17;-><init>()V

    .line 960
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist resetMemory(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 446
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda14;-><init>(I)V

    .line 447
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda15;-><init>()V

    .line 446
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist retrieveNotification(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 931
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda0;-><init>(I)V

    .line 932
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda1;-><init>()V

    .line 931
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist retrieveNotificationList(ILcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "[",
            "Landroid/telephony/euicc/EuiccNotification;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 890
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda2;-><init>(I)V

    .line 891
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda3;-><init>()V

    .line 890
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist setDefaultSmdpAddress(Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 505
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda24;-><init>(Ljava/lang/String;)V

    .line 506
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda25;-><init>()V

    .line 505
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist setNickname(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 390
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda18;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p1

    new-instance p2, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda19;

    invoke-direct {p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda19;-><init>()V

    .line 390
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApdu(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist switchToProfile(Ljava/lang/String;ZLcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback<",
            "Ljava/lang/Void;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 307
    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda34;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda34;-><init>(Lcom/android/internal/telephony/uicc/euicc/EuiccPort;Ljava/lang/String;Z)V

    .line 308
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->newRequestProvider(Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduRequestBuilder;)Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;

    move-result-object p2

    new-instance v0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda35;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort$$ExternalSyntheticLambda35;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0, p2, v0, p3, p4}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->sendApduWithSimResetErrorWorkaround(Lcom/android/internal/telephony/uicc/euicc/apdu/RequestProvider;Lcom/android/internal/telephony/uicc/euicc/EuiccPort$ApduResponseHandler;Lcom/android/internal/telephony/uicc/euicc/async/AsyncResultCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public blacklist update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/uicc/UiccCard;)V
    .registers 7

    .line 163
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPort;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_3
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 165
    iget-object v1, p3, Lcom/android/internal/telephony/uicc/IccCardStatus;->eid:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mEid:Ljava/lang/String;

    goto :goto_12

    :catchall_10
    move-exception p0

    goto :goto_17

    .line 167
    :cond_12
    :goto_12
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UiccPort;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;Lcom/android/internal/telephony/uicc/UiccCard;)V

    .line 168
    monitor-exit v0

    return-void

    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_10

    throw p0
.end method

.method public blacklist updateSupportedMepMode(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)V
    .registers 3

    .line 176
    const-string v0, "updateSupportedMepMode"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->logd(Ljava/lang/String;)V

    .line 177
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccPort;->mSupportedMepMode:Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    return-void
.end method
