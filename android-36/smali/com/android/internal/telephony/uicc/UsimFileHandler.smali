.class public final Lcom/android/internal/telephony/uicc/UsimFileHandler;
.super Lcom/android/internal/telephony/uicc/IccFileHandler;
.source "UsimFileHandler.java"

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

    const/16 v0, 0x6f3b

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x6f3c

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x6f4b

    if-eq p1, v0, :cond_2a

    const/16 v0, 0x6f4c

    if-eq p1, v0, :cond_2a

    .line 35
    const-string v0, "3F007F105F3A"

    sparse-switch p1, :sswitch_data_2e

    packed-switch p1, :pswitch_data_68

    packed-switch p1, :pswitch_data_78

    packed-switch p1, :pswitch_data_82

    packed-switch p1, :pswitch_data_8c

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getCommonIccEFPath(I)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_28

    return-object v0

    :cond_28
    return-object p0

    :sswitch_29
    return-object v0

    .line 72
    :cond_2a
    :pswitch_2a
    :sswitch_2a
    const-string p0, "3F007FFF"

    return-object p0

    nop

    :sswitch_data_2e
    .sparse-switch
        0x4f30 -> :sswitch_29
        0x6f05 -> :sswitch_2a
        0x6f11 -> :sswitch_2a
        0x6f31 -> :sswitch_2a
        0x6f38 -> :sswitch_2a
        0x6f43 -> :sswitch_2a
        0x6f46 -> :sswitch_2a
        0x6f49 -> :sswitch_2a
        0x6f4e -> :sswitch_2a
        0x6f7b -> :sswitch_2a
        0x6fad -> :sswitch_2a
        0x6fcd -> :sswitch_2a
        0x6fd9 -> :sswitch_2a
        0x6fdc -> :sswitch_2a
    .end sparse-switch

    :pswitch_data_68
    .packed-switch 0x6f13
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch

    :pswitch_data_78
    .packed-switch 0x6f3e
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch

    :pswitch_data_82
    .packed-switch 0x6f60
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch

    :pswitch_data_8c
    .packed-switch 0x6fc5
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method protected blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 90
    const-string p0, "UsimFH"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;)V
    .registers 2

    .line 95
    const-string p0, "UsimFH"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
