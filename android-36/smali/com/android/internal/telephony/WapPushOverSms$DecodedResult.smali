.class final Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/WapPushOverSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DecodedResult"
.end annotation


# instance fields
.field blacklist contentType:Ljava/lang/String;

.field blacklist contentTypeParameters:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist header:[B

.field blacklist intentData:[B

.field blacklist mimeType:Ljava/lang/String;

.field blacklist parsedPdu:Lcom/google/android/mms/pdu/GenericPdu;

.field blacklist pduType:I

.field blacklist phoneId:I

.field blacklist statusCode:I

.field blacklist subId:I

.field blacklist transactionId:I

.field blacklist wapAppId:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/WapPushOverSms;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 491
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/WapPushOverSms;Lcom/android/internal/telephony/WapPushOverSms-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WapPushOverSms$DecodedResult;-><init>(Lcom/android/internal/telephony/WapPushOverSms;)V

    return-void
.end method
