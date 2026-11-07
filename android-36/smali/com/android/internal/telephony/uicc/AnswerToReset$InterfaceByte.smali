.class public Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;
.super Ljava/lang/Object;
.source "AnswerToReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/AnswerToReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterfaceByte"
.end annotation


# instance fields
.field private blacklist mTA:Ljava/lang/Byte;

.field private blacklist mTB:Ljava/lang/Byte;

.field private blacklist mTC:Ljava/lang/Byte;

.field private blacklist mTD:Ljava/lang/Byte;


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 391
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    .line 392
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    .line 393
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    .line 394
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/AnswerToReset-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;-><init>()V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Byte;Ljava/lang/Byte;Ljava/lang/Byte;Ljava/lang/Byte;)V
    .registers 5

    .line 398
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 399
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    .line 400
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    .line 401
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    .line 402
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_45

    .line 410
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_45

    .line 413
    :cond_12
    check-cast p1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    .line 414
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTA()Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    .line 415
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTB()Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    .line 416
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTC()Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    .line 417
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_45

    return v0

    :cond_45
    :goto_45
    return v1
.end method

.method public blacklist getTA()Ljava/lang/Byte;
    .registers 1

    .line 356
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    return-object p0
.end method

.method public blacklist getTB()Ljava/lang/Byte;
    .registers 1

    .line 361
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    return-object p0
.end method

.method public blacklist getTC()Ljava/lang/Byte;
    .registers 1

    .line 366
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    return-object p0
.end method

.method public blacklist getTD()Ljava/lang/Byte;
    .registers 1

    .line 371
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist setTA(Ljava/lang/Byte;)V
    .registers 2

    .line 375
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    return-void
.end method

.method public blacklist setTB(Ljava/lang/Byte;)V
    .registers 2

    .line 379
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    return-void
.end method

.method public blacklist setTC(Ljava/lang/Byte;)V
    .registers 2

    .line 383
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    return-void
.end method

.method public blacklist setTD(Ljava/lang/Byte;)V
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 427
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 428
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 429
    const-string v1, "TA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->-$$Nest$smbyteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    const-string v2, "TB="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->-$$Nest$smbyteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    const-string v2, "TC="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->-$$Nest$smbyteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 432
    const-string v1, "TD="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset;->-$$Nest$smbyteToStringHex(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 433
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 434
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
