.class public final Lcom/android/internal/telephony/uicc/SIMFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "SIMFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V
    .registers 4

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccFileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Ljava/lang/String;Lcom/android/internal/telephony/CommandsInterface;)V

    return-void
.end method


# virtual methods
.method protected blacklist getEFPath(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x6f11

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x6f38

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x6f3c

    if-eq p1, v0, :cond_38

    const/16 v0, 0x6f46

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x6fad

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x6fc5

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x6fcd

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x6f3e

    if-eq p1, v0, :cond_3b

    const/16 v0, 0x6f3f

    if-eq p1, v0, :cond_3b

    packed-switch p1, :pswitch_data_3e

    packed-switch p1, :pswitch_data_4e

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_37

    .line 69
    const-string p1, "SIMFileHandler"

    const-string v0, "Error: EF Path being returned in null"

    invoke-static {p1, v0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    return-object p0

    .line 44
    :cond_38
    const-string p0, "3F007F10"

    return-object p0

    .line 65
    :cond_3b
    :pswitch_3b
    const-string p0, "3F007F20"

    return-object p0

    :pswitch_data_3e
    .packed-switch 0x6f13
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x6fc7
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 76
    const-string p0, "SIMFileHandler"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 81
    const-string p0, "SIMFileHandler"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
