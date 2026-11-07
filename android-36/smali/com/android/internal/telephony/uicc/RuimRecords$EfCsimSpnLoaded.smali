.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimSpnLoaded"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public blacklist getEfName()Ljava/lang/String;
    .registers 1

    .line 274
    const-string p0, "EF_CSIM_SPN"

    return-object p0
.end method

.method public blacklist onRecordLoaded(Landroid/os/AsyncResult;)V
    .registers 10

    .line 279
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    .line 280
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CSIM_SPN="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const/4 v1, 0x0

    aget-byte v2, p1, v1

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_29

    move v2, v3

    goto :goto_2a

    :cond_29
    move v2, v1

    :goto_2a
    iput-boolean v2, v0, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    .line 286
    aget-byte v0, p1, v3

    const/4 v2, 0x2

    .line 287
    aget-byte v3, p1, v2

    const/16 v3, 0x20

    .line 288
    new-array v4, v3, [B

    .line 289
    array-length v5, p1

    const/4 v6, 0x3

    sub-int/2addr v5, v6

    if-ge v5, v3, :cond_3d

    array-length v5, p1

    sub-int/2addr v5, v6

    goto :goto_3e

    :cond_3d
    move v5, v3

    .line 290
    :goto_3e
    invoke-static {p1, v6, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move p1, v1

    :goto_42
    if-ge p1, v3, :cond_4f

    .line 294
    aget-byte v5, v4, p1

    const/16 v7, 0xff

    and-int/2addr v5, v7

    if-ne v5, v7, :cond_4c

    goto :goto_4f

    :cond_4c
    add-int/lit8 p1, p1, 0x1

    goto :goto_42

    :cond_4f
    :goto_4f
    if-nez p1, :cond_59

    .line 298
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string p1, ""

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    return-void

    :cond_59
    if-eqz v0, :cond_cc

    const/16 v3, 0x8

    if-eq v0, v2, :cond_8f

    if-eq v0, v6, :cond_82

    const/4 v2, 0x4

    if-eq v0, v2, :cond_75

    if-eq v0, v3, :cond_cc

    const/16 v2, 0x9

    if-eq v0, v2, :cond_82

    .line 332
    :try_start_6a
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v0, "SPN encoding not supported"

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_ef

    :catch_73
    move-exception p1

    goto :goto_d9

    .line 329
    :cond_75
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-16"

    invoke-direct {v2, v4, v1, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto :goto_ef

    .line 309
    :cond_82
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    mul-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x7

    .line 310
    invoke-static {v4, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object p1

    .line 309
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto :goto_ef

    .line 313
    :cond_8f
    new-instance v0, Ljava/lang/String;

    const-string v2, "US-ASCII"

    invoke-direct {v0, v4, v1, p1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 319
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->-$$Nest$smisPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a2

    .line 320
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto :goto_ef

    .line 322
    :cond_a2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Some corruption in SPN decoding = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    const-string v2, "Using ENCODING_GSM_7BIT_ALPHABET scheme..."

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    mul-int/2addr p1, v3

    div-int/lit8 p1, p1, 0x7

    .line 325
    invoke-static {v4, v1, p1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object p1

    .line 324
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V

    goto :goto_ef

    .line 305
    :cond_cc
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {v2, v4, v1, p1, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->setServiceProviderName(Ljava/lang/String;)V
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_d8} :catch_73

    goto :goto_ef

    .line 335
    :goto_d9
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "spn decode error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 337
    :goto_ef
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 338
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spnCondition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-boolean v1, v1, Lcom/android/internal/telephony/uicc/RuimRecords;->mCsimSpnDisplayCondition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    .line 339
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object v0, p1, Lcom/android/internal/telephony/uicc/IccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/IccRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 340
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result p1

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimSpnLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object p0

    .line 339
    invoke-virtual {v0, p1, p0}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    return-void
.end method
