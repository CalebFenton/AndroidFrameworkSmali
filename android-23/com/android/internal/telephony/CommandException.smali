.class public Lcom/android/internal/telephony/CommandException;
.super Ljava/lang/RuntimeException;
.source "CommandException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/CommandException$Error;
    }
.end annotation


# instance fields
.field private mError:Lcom/android/internal/telephony/CommandException$Error;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/CommandException$Error;)V
    .locals 1
    .param p1, "e"    # Lcom/android/internal/telephony/CommandException$Error;

    #@0
    .prologue
    .line 60
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/CommandException;->mError:Lcom/android/internal/telephony/CommandException$Error;

    #@9
    .line 59
    return-void
.end method

.method public static fromRilErrno(I)Lcom/android/internal/telephony/CommandException;
    .locals 3
    .param p0, "ril_errno"    # I

    #@0
    .prologue
    .line 66
    packed-switch p0, :pswitch_data_0

    #@3
    .line 123
    :pswitch_0
    const-string/jumbo v0, "GSM"

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Unrecognized RIL errno "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@1d
    .line 124
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1f
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    #@21
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@24
    return-object v0

    #@25
    .line 67
    :pswitch_1
    const/4 v0, 0x0

    #@26
    return-object v0

    #@27
    .line 69
    :pswitch_2
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@29
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    #@2b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2e
    return-object v0

    #@2f
    .line 71
    :pswitch_3
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@31
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@33
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@36
    return-object v0

    #@37
    .line 73
    :pswitch_4
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@39
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@3b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@3e
    return-object v0

    #@3f
    .line 75
    :pswitch_5
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@41
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@43
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@46
    return-object v0

    #@47
    .line 77
    :pswitch_6
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@49
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PIN2:Lcom/android/internal/telephony/CommandException$Error;

    #@4b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@4e
    return-object v0

    #@4f
    .line 79
    :pswitch_7
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@51
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    #@53
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@56
    return-object v0

    #@57
    .line 81
    :pswitch_8
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@59
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@5b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@5e
    return-object v0

    #@5f
    .line 83
    :pswitch_9
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@61
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    #@63
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@66
    return-object v0

    #@67
    .line 85
    :pswitch_a
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@69
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    #@6b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@6e
    return-object v0

    #@6f
    .line 87
    :pswitch_b
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@71
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    #@73
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@76
    return-object v0

    #@77
    .line 89
    :pswitch_c
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@79
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_ABSENT:Lcom/android/internal/telephony/CommandException$Error;

    #@7b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@7e
    return-object v0

    #@7f
    .line 91
    :pswitch_d
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@81
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@83
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@86
    return-object v0

    #@87
    .line 93
    :pswitch_e
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@89
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->MODE_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@8b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@8e
    return-object v0

    #@8f
    .line 95
    :pswitch_f
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@91
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@93
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@96
    return-object v0

    #@97
    .line 97
    :pswitch_10
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@99
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    #@9b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@9e
    return-object v0

    #@9f
    .line 99
    :pswitch_11
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@a1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    #@a3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@a6
    return-object v0

    #@a7
    .line 101
    :pswitch_12
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@a9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    #@ab
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@ae
    return-object v0

    #@af
    .line 103
    :pswitch_13
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@b1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@b3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@b6
    return-object v0

    #@b7
    .line 105
    :pswitch_14
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@b9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    #@bb
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@be
    return-object v0

    #@bf
    .line 107
    :pswitch_15
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@c1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    #@c3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@c6
    return-object v0

    #@c7
    .line 109
    :pswitch_16
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@c9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    #@cb
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@ce
    return-object v0

    #@cf
    .line 111
    :pswitch_17
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@d1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    #@d3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@d6
    return-object v0

    #@d7
    .line 113
    :pswitch_18
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@d9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    #@db
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@de
    return-object v0

    #@df
    .line 115
    :pswitch_19
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@e1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    #@e3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@e6
    return-object v0

    #@e7
    .line 117
    :pswitch_1a
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@e9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    #@eb
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@ee
    return-object v0

    #@ef
    .line 119
    :pswitch_1b
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@f1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    #@f3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@f6
    return-object v0

    #@f7
    .line 121
    :pswitch_1c
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@f9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    #@fb
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@fe
    return-object v0

    #@ff
    .line 66
    nop

    #@100
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_13
        :pswitch_1c
    .end packed-switch
.end method


# virtual methods
.method public getCommandError()Lcom/android/internal/telephony/CommandException$Error;
    .locals 1

    #@0
    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/internal/telephony/CommandException;->mError:Lcom/android/internal/telephony/CommandException$Error;

    #@2
    return-object v0
.end method
