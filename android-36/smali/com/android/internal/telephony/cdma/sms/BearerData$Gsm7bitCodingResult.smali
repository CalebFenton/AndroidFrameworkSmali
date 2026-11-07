.class Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;
.super Ljava/lang/Object;
.source "BearerData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/sms/BearerData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Gsm7bitCodingResult"
.end annotation


# instance fields
.field blacklist data:[B

.field blacklist septets:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 618
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/cdma/sms/BearerData-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData$Gsm7bitCodingResult;-><init>()V

    return-void
.end method
