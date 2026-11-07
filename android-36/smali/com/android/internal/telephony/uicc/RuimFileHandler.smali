.class public final Lcom/android/internal/telephony/uicc/RuimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "RuimFileHandler.java"


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method


# virtual methods
.method protected blacklist getEFPath(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x4f20

    if-eq p1, v0, :cond_38

    const/16 v0, 0x4f21

    if-eq p1, v0, :cond_38

    const/16 v0, 0x6f22

    if-eq p1, v0, :cond_35

    const/16 v0, 0x6f28

    if-eq p1, v0, :cond_35

    const/16 v0, 0x6f30

    if-eq p1, v0, :cond_35

    const/16 v0, 0x6f32

    if-eq p1, v0, :cond_35

    const/16 v0, 0x6f3a

    if-eq p1, v0, :cond_35

    const/16 v0, 0x6f3c

    if-eq p1, v0, :cond_35

    const/16 v0, 0x6f41

    if-eq p1, v0, :cond_35

    const/16 v0, 0x6f44

    if-eq p1, v0, :cond_35

    const/16 v0, 0x6f4d

    if-eq p1, v0, :cond_35

    const/16 v0, 0x6f5a

    if-eq p1, v0, :cond_35

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 69
    :cond_35
    const-string p0, "3F007F25"

    return-object p0

    .line 72
    :cond_38
    const-string p0, "3F007F105F3C"

    return-object p0
.end method

.method public blacklist loadEFImgTransparent(IIIILandroid/os/Message;)V
    .registers 18

    const/16 p2, 0xa

    const/4 v0, 0x0

    move-object/from16 v1, p5

    .line 42
    invoke-virtual {p0, p2, p1, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 51
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 p2, 0x4f20

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/RuimFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/IccFileHandler;->mAid:Ljava/lang/String;

    const/16 v2, 0xc0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xa

    const/4 v8, 0x0

    move v3, p1

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 3

    .line 79
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[RuimFileHandler] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RuimFH"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 3

    .line 84
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[RuimFileHandler] "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RuimFH"

    invoke-static {p1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
