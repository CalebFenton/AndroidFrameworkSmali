.class public Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsAcknowledgement;
.super Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;
.source "EapTtlsTypeData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapTtlsAcknowledgement"
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 174
    const-class v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsAcknowledgement;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsAcknowledgement;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;
        }
    .end annotation

    .line 178
    const/4 v0, 0x0

    new-array v6, v0, [B

    const/4 v7, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData;-><init>(ZZII[BLcom/android/internal/net/eap/message/ttls/EapTtlsTypeData-IA;)V

    .line 184
    return-void
.end method

.method public static blacklist getEapTtlsAcknowledgement()Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsAcknowledgement;
    .registers 4

    .line 193
    :try_start_0
    new-instance v0, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsAcknowledgement;

    invoke-direct {v0}, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsAcknowledgement;-><init>()V
    :try_end_5
    .catch Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    .line 194
    :catch_6
    move-exception v0

    .line 196
    .local v0, "e":Lcom/android/internal/net/eap/exceptions/ttls/EapTtlsParsingException;
    sget-object v1, Lcom/android/internal/net/eap/EapAuthenticator;->LOG:Lcom/android/internal/net/utils/Log;

    sget-object v2, Lcom/android/internal/net/eap/message/ttls/EapTtlsTypeData$EapTtlsAcknowledgement;->TAG:Ljava/lang/String;

    const-string v3, "Parsing exception thrown while attemptingto create an acknowledgement packet"

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const/4 v1, 0x0

    return-object v1
.end method
