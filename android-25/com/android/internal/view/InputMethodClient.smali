.class public final Lcom/android/internal/view/InputMethodClient;
.super Ljava/lang/Object;
.source "InputMethodClient.java"


# static fields
.field public static final START_INPUT_REASON_ACTIVATED_BY_IMMS:I = 0x7

.field public static final START_INPUT_REASON_APP_CALLED_RESTART_INPUT_API:I = 0x3

.field public static final START_INPUT_REASON_BOUND_TO_IMMS:I = 0x5

.field public static final START_INPUT_REASON_CHECK_FOCUS:I = 0x4

.field public static final START_INPUT_REASON_DEACTIVATED_BY_IMMS:I = 0x8

.field public static final START_INPUT_REASON_UNBOUND_FROM_IMMS:I = 0x6

.field public static final START_INPUT_REASON_UNSPECIFIED:I = 0x0

.field public static final START_INPUT_REASON_WINDOW_FOCUS_GAIN:I = 0x1

.field public static final START_INPUT_REASON_WINDOW_FOCUS_GAIN_REPORT_ONLY:I = 0x2

.field public static final UNBIND_REASON_DISCONNECT_IME:I = 0x3

.field public static final UNBIND_REASON_NO_IME:I = 0x4

.field public static final UNBIND_REASON_RESET_IME:I = 0x6

.field public static final UNBIND_REASON_SWITCH_CLIENT:I = 0x1

.field public static final UNBIND_REASON_SWITCH_IME:I = 0x2

.field public static final UNBIND_REASON_SWITCH_IME_FAILED:I = 0x5

.field public static final UNBIND_REASON_UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getStartInputReason(I)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # I

    #@0
    .prologue
    .line 45
    packed-switch p0, :pswitch_data_0

    #@3
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "Unknown="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 47
    :pswitch_0
    const-string/jumbo v0, "UNSPECIFIED"

    #@1b
    return-object v0

    #@1c
    .line 49
    :pswitch_1
    const-string/jumbo v0, "WINDOW_FOCUS_GAIN"

    #@1f
    return-object v0

    #@20
    .line 51
    :pswitch_2
    const-string/jumbo v0, "WINDOW_FOCUS_GAIN_REPORT_ONLY"

    #@23
    return-object v0

    #@24
    .line 53
    :pswitch_3
    const-string/jumbo v0, "APP_CALLED_RESTART_INPUT_API"

    #@27
    return-object v0

    #@28
    .line 55
    :pswitch_4
    const-string/jumbo v0, "CHECK_FOCUS"

    #@2b
    return-object v0

    #@2c
    .line 57
    :pswitch_5
    const-string/jumbo v0, "BOUND_TO_IMMS"

    #@2f
    return-object v0

    #@30
    .line 59
    :pswitch_6
    const-string/jumbo v0, "UNBOUND_FROM_IMMS"

    #@33
    return-object v0

    #@34
    .line 61
    :pswitch_7
    const-string/jumbo v0, "ACTIVATED_BY_IMMS"

    #@37
    return-object v0

    #@38
    .line 63
    :pswitch_8
    const-string/jumbo v0, "DEACTIVATED_BY_IMMS"

    #@3b
    return-object v0

    #@3c
    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static getUnbindReason(I)Ljava/lang/String;
    .locals 2
    .param p0, "reason"    # I

    #@0
    .prologue
    .line 84
    packed-switch p0, :pswitch_data_0

    #@3
    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "Unknown="

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    return-object v0

    #@18
    .line 86
    :pswitch_0
    const-string/jumbo v0, "UNSPECIFIED"

    #@1b
    return-object v0

    #@1c
    .line 88
    :pswitch_1
    const-string/jumbo v0, "SWITCH_CLIENT"

    #@1f
    return-object v0

    #@20
    .line 90
    :pswitch_2
    const-string/jumbo v0, "SWITCH_IME"

    #@23
    return-object v0

    #@24
    .line 92
    :pswitch_3
    const-string/jumbo v0, "DISCONNECT_IME"

    #@27
    return-object v0

    #@28
    .line 94
    :pswitch_4
    const-string/jumbo v0, "NO_IME"

    #@2b
    return-object v0

    #@2c
    .line 96
    :pswitch_5
    const-string/jumbo v0, "SWITCH_IME_FAILED"

    #@2f
    return-object v0

    #@30
    .line 98
    :pswitch_6
    const-string/jumbo v0, "RESET_IME"

    #@33
    return-object v0

    #@34
    .line 84
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
