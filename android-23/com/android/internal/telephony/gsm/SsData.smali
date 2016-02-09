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
.field public cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

.field public requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

.field public result:I

.field public serviceClass:I

.field public serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

.field public ssInfo:[I

.field public teleserviceType:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public RequestTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;
    .locals 3
    .param p1, "type"    # I

    #@0
    .prologue
    .line 131
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->values()[Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@3
    move-result-object v1

    #@4
    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 132
    :catch_0
    move-exception v0

    #@8
    .line 133
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v1, "GSMPhone"

    #@b
    const-string/jumbo v2, "Invalid Request type"

    #@e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 134
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public ServiceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;
    .locals 3
    .param p1, "type"    # I

    #@0
    .prologue
    .line 122
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->values()[Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@3
    move-result-object v1

    #@4
    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 123
    :catch_0
    move-exception v0

    #@8
    .line 124
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v1, "GSMPhone"

    #@b
    const-string/jumbo v2, "Invalid Service type"

    #@e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 125
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public TeleserviceTypeFromRILInt(I)Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;
    .locals 3
    .param p1, "type"    # I

    #@0
    .prologue
    .line 140
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;->values()[Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@3
    move-result-object v1

    #@4
    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    return-object v1

    #@7
    .line 141
    :catch_0
    move-exception v0

    #@8
    .line 142
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v1, "GSMPhone"

    #@b
    const-string/jumbo v2, "Invalid Teleservice type"

    #@e
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@11
    .line 143
    const/4 v1, 0x0

    #@12
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "[SsData] ServiceType: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    .line 149
    const-string/jumbo v1, " RequestType: "

    #@15
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    .line 149
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    #@1b
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    .line 150
    const-string/jumbo v1, " TeleserviceType: "

    #@22
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 150
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SsData;->teleserviceType:Lcom/android/internal/telephony/gsm/SsData$TeleserviceType;

    #@28
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    .line 151
    const-string/jumbo v1, " ServiceClass: "

    #@2f
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 151
    iget v1, p0, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    #@35
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    .line 152
    const-string/jumbo v1, " Result: "

    #@3c
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v0

    #@40
    .line 152
    iget v1, p0, Lcom/android/internal/telephony/gsm/SsData;->result:I

    #@42
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@45
    move-result-object v0

    #@46
    .line 153
    const-string/jumbo v1, " Is Service Type CF: "

    #@49
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v0

    #@4d
    .line 153
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    #@4f
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    #@52
    move-result v1

    #@53
    .line 148
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    return-object v0
.end method
