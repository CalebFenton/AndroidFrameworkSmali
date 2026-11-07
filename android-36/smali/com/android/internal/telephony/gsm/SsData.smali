.class public Lcom/android/internal/telephony/gsm/SsData;
.super Ljava/lang/Object;
.source "SsData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SsData$ServiceType;,
        Lcom/android/internal/telephony/gsm/SsData$RequestType;,
        Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;
    }
.end annotation


# instance fields
.field public blacklist cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

.field public blacklist requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public blacklist result:I

.field public blacklist serviceClass:I

.field public blacklist serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public blacklist ssInfo:[I

.field public blacklist teleserviceType:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist RequestTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;
    .registers 2

    .line 130
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->values()[Lcom/android/internal/telephony/gsm/SsData$RequestType;

    move-result-object p0

    aget-object p0, p0, p1
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 132
    :catch_7
    const-string p0, "GsmCdmaPhone"

    const-string p1, "Invalid Request type"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist ServiceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;
    .registers 2

    .line 121
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->values()[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    move-result-object p0

    aget-object p0, p0, p1
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 123
    :catch_7
    const-string p0, "GsmCdmaPhone"

    const-string p1, "Invalid Service type"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist TeleserviceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;
    .registers 2

    .line 139
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->values()[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    move-result-object p0

    aget-object p0, p0, p1
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p0

    .line 141
    :catch_7
    const-string p0, "GsmCdmaPhone"

    const-string p1, "Invalid Teleservice type"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SsData] ServiceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " RequestType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " TeleserviceType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SsData;->teleserviceType:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " ServiceClass: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/gsm/SsData;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Is Service Type CF: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
