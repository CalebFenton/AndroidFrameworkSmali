.class public final Lcom/android/internal/telephony/uicc/CsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "CsimFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method


# virtual methods
.method protected blacklist getEFPath(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x4f20

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x4f21

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x6f22

    if-eq p1, v0, :cond_38

    const/16 v0, 0x6f28

    if-eq p1, v0, :cond_38

    const/16 v0, 0x6f30

    if-eq p1, v0, :cond_38

    const/16 v0, 0x6f32

    if-eq p1, v0, :cond_38

    const/16 v0, 0x6f44

    if-eq p1, v0, :cond_38

    const/16 v0, 0x6f4d

    if-eq p1, v0, :cond_38

    const/16 v0, 0x6f5a

    if-eq p1, v0, :cond_38

    const/16 v0, 0x6f40

    if-eq p1, v0, :cond_38

    const/16 v0, 0x6f41

    if-eq p1, v0, :cond_38

    packed-switch p1, :pswitch_data_3e

    .line 53
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_37

    .line 58
    const-string p0, "3F007F105F3A"

    :cond_37
    return-object p0

    .line 48
    :cond_38
    :pswitch_38
    const-string p0, "3F007FFF"

    return-object p0

    .line 51
    :cond_3b
    const-string p0, "3F007F105F3C"

    return-object p0

    :pswitch_data_3e
    .packed-switch 0x6f3a
        :pswitch_38
        :pswitch_38
        :pswitch_38
    .end packed-switch
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 65
    const-string p0, "CsimFH"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 70
    const-string p0, "CsimFH"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
