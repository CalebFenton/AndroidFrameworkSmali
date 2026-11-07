.class public Lcom/android/internal/telephony/uicc/PortUtils;
.super Ljava/lang/Object;
.source "PortUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist convertFromHalPortIndex(IILcom/android/internal/telephony/uicc/IccCardStatus$CardState;Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;)I
    .registers 4

    .line 73
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->isCardPresent()Z

    move-result p2

    if-eqz p2, :cond_7

    goto :goto_f

    .line 74
    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p2

    invoke-virtual {p2, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getSupportedMepMode(I)Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-result-object p3

    .line 75
    :goto_f
    invoke-virtual {p3}, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->isMepAMode()Z

    move-result p0

    if-eqz p0, :cond_17

    add-int/lit8 p1, p1, -0x1

    :cond_17
    return p1
.end method

.method public static blacklist convertToHalPortIndex(II)I
    .registers 3

    .line 51
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->getSupportedMepMode(I)Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/PortUtils;->convertToHalPortIndex(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;I)I

    move-result p0

    return p0
.end method

.method public static blacklist convertToHalPortIndex(Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;I)I
    .registers 2

    .line 40
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccSlotStatus$MultipleEnabledProfilesMode;->isMepAMode()Z

    move-result p0

    if-eqz p0, :cond_8

    add-int/lit8 p1, p1, 0x1

    :cond_8
    return p1
.end method
