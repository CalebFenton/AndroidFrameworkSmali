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
    .line 122
    invoke-virtual {p1}, Lcom/android/internal/telephony/CommandException$Error;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@7
    .line 123
    iput-object p1, p0, Lcom/android/internal/telephony/CommandException;->mError:Lcom/android/internal/telephony/CommandException$Error;

    #@9
    .line 121
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V
    .locals 0
    .param p1, "e"    # Lcom/android/internal/telephony/CommandException$Error;
    .param p2, "errString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 127
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3
    .line 128
    iput-object p1, p0, Lcom/android/internal/telephony/CommandException;->mError:Lcom/android/internal/telephony/CommandException$Error;

    #@5
    .line 126
    return-void
.end method

.method public static fromRilErrno(I)Lcom/android/internal/telephony/CommandException;
    .locals 3
    .param p0, "ril_errno"    # I

    #@0
    .prologue
    .line 133
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 315
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
    .line 316
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1f
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    #@21
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@24
    return-object v0

    #@25
    .line 134
    :sswitch_0
    const/4 v0, 0x0

    #@26
    return-object v0

    #@27
    .line 136
    :sswitch_1
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@29
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_RESPONSE:Lcom/android/internal/telephony/CommandException$Error;

    #@2b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2e
    return-object v0

    #@2f
    .line 138
    :sswitch_2
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@31
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@33
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@36
    return-object v0

    #@37
    .line 140
    :sswitch_3
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@39
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@3b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@3e
    return-object v0

    #@3f
    .line 142
    :sswitch_4
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@41
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    #@43
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@46
    return-object v0

    #@47
    .line 144
    :sswitch_5
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@49
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PIN2:Lcom/android/internal/telephony/CommandException$Error;

    #@4b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@4e
    return-object v0

    #@4f
    .line 146
    :sswitch_6
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@51
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    #@53
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@56
    return-object v0

    #@57
    .line 148
    :sswitch_7
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@59
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@5b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@5e
    return-object v0

    #@5f
    .line 150
    :sswitch_8
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@61
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_DURING_VOICE_CALL:Lcom/android/internal/telephony/CommandException$Error;

    #@63
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@66
    return-object v0

    #@67
    .line 152
    :sswitch_9
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@69
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    #@6b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@6e
    return-object v0

    #@6f
    .line 154
    :sswitch_a
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@71
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    #@73
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@76
    return-object v0

    #@77
    .line 156
    :sswitch_b
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@79
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_ABSENT:Lcom/android/internal/telephony/CommandException$Error;

    #@7b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@7e
    return-object v0

    #@7f
    .line 158
    :sswitch_c
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@81
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@83
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@86
    return-object v0

    #@87
    .line 160
    :sswitch_d
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@89
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->MODE_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@8b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@8e
    return-object v0

    #@8f
    .line 162
    :sswitch_e
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@91
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@93
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@96
    return-object v0

    #@97
    .line 164
    :sswitch_f
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@99
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->ILLEGAL_SIM_OR_ME:Lcom/android/internal/telephony/CommandException$Error;

    #@9b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@9e
    return-object v0

    #@9f
    .line 166
    :sswitch_10
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@a1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->MISSING_RESOURCE:Lcom/android/internal/telephony/CommandException$Error;

    #@a3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@a6
    return-object v0

    #@a7
    .line 168
    :sswitch_11
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@a9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ELEMENT:Lcom/android/internal/telephony/CommandException$Error;

    #@ab
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@ae
    return-object v0

    #@af
    .line 170
    :sswitch_12
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@b1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SUBSCRIPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@b3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@b6
    return-object v0

    #@b7
    .line 172
    :sswitch_13
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@b9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    #@bb
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@be
    return-object v0

    #@bf
    .line 174
    :sswitch_14
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@c1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    #@c3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@c6
    return-object v0

    #@c7
    .line 176
    :sswitch_15
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@c9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DIAL_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    #@cb
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@ce
    return-object v0

    #@cf
    .line 178
    :sswitch_16
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@d1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    #@d3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@d6
    return-object v0

    #@d7
    .line 180
    :sswitch_17
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@d9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    #@db
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@de
    return-object v0

    #@df
    .line 182
    :sswitch_18
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@e1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    #@e3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@e6
    return-object v0

    #@e7
    .line 184
    :sswitch_19
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@e9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    #@eb
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@ee
    return-object v0

    #@ef
    .line 186
    :sswitch_1a
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@f1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    #@f3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@f6
    return-object v0

    #@f7
    .line 188
    :sswitch_1b
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@f9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    #@fb
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@fe
    return-object v0

    #@ff
    .line 190
    :sswitch_1c
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@101
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_ALREADY_POWERED_OFF:Lcom/android/internal/telephony/CommandException$Error;

    #@103
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@106
    return-object v0

    #@107
    .line 192
    :sswitch_1d
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@109
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_ALREADY_POWERED_ON:Lcom/android/internal/telephony/CommandException$Error;

    #@10b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@10e
    return-object v0

    #@10f
    .line 194
    :sswitch_1e
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@111
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_DATA_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    #@113
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@116
    return-object v0

    #@117
    .line 196
    :sswitch_1f
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@119
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_SAP_CONNECT_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    #@11b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@11e
    return-object v0

    #@11f
    .line 198
    :sswitch_20
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@121
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_SAP_MSG_SIZE_TOO_LARGE:Lcom/android/internal/telephony/CommandException$Error;

    #@123
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@126
    return-object v0

    #@127
    .line 200
    :sswitch_21
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@129
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_SAP_MSG_SIZE_TOO_SMALL:Lcom/android/internal/telephony/CommandException$Error;

    #@12b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@12e
    return-object v0

    #@12f
    .line 202
    :sswitch_22
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@131
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_SAP_CONNECT_OK_CALL_ONGOING:Lcom/android/internal/telephony/CommandException$Error;

    #@133
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@136
    return-object v0

    #@137
    .line 204
    :sswitch_23
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@139
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->LCE_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@13b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@13e
    return-object v0

    #@13f
    .line 206
    :sswitch_24
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@141
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_MEMORY:Lcom/android/internal/telephony/CommandException$Error;

    #@143
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@146
    return-object v0

    #@147
    .line 208
    :sswitch_25
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@149
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INTERNAL_ERR:Lcom/android/internal/telephony/CommandException$Error;

    #@14b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@14e
    return-object v0

    #@14f
    .line 210
    :sswitch_26
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@151
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SYSTEM_ERR:Lcom/android/internal/telephony/CommandException$Error;

    #@153
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@156
    return-object v0

    #@157
    .line 212
    :sswitch_27
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@159
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->MODEM_ERR:Lcom/android/internal/telephony/CommandException$Error;

    #@15b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@15e
    return-object v0

    #@15f
    .line 214
    :sswitch_28
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@161
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_STATE:Lcom/android/internal/telephony/CommandException$Error;

    #@163
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@166
    return-object v0

    #@167
    .line 216
    :sswitch_29
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@169
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_RESOURCES:Lcom/android/internal/telephony/CommandException$Error;

    #@16b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@16e
    return-object v0

    #@16f
    .line 218
    :sswitch_2a
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@171
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_ERR:Lcom/android/internal/telephony/CommandException$Error;

    #@173
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@176
    return-object v0

    #@177
    .line 220
    :sswitch_2b
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@179
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_ARGUMENTS:Lcom/android/internal/telephony/CommandException$Error;

    #@17b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@17e
    return-object v0

    #@17f
    .line 222
    :sswitch_2c
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@181
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SIM_STATE:Lcom/android/internal/telephony/CommandException$Error;

    #@183
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@186
    return-object v0

    #@187
    .line 224
    :sswitch_2d
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@189
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_MODEM_STATE:Lcom/android/internal/telephony/CommandException$Error;

    #@18b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@18e
    return-object v0

    #@18f
    .line 226
    :sswitch_2e
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@191
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_CALL_ID:Lcom/android/internal/telephony/CommandException$Error;

    #@193
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@196
    return-object v0

    #@197
    .line 228
    :sswitch_2f
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@199
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_SMS_TO_ACK:Lcom/android/internal/telephony/CommandException$Error;

    #@19b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@19e
    return-object v0

    #@19f
    .line 230
    :sswitch_30
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1a1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NETWORK_ERR:Lcom/android/internal/telephony/CommandException$Error;

    #@1a3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@1a6
    return-object v0

    #@1a7
    .line 232
    :sswitch_31
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1a9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_RATE_LIMITED:Lcom/android/internal/telephony/CommandException$Error;

    #@1ab
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@1ae
    return-object v0

    #@1af
    .line 234
    :sswitch_32
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1b1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_BUSY:Lcom/android/internal/telephony/CommandException$Error;

    #@1b3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@1b6
    return-object v0

    #@1b7
    .line 236
    :sswitch_33
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1b9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SIM_FULL:Lcom/android/internal/telephony/CommandException$Error;

    #@1bb
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@1be
    return-object v0

    #@1bf
    .line 238
    :sswitch_34
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1c1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NETWORK_REJECT:Lcom/android/internal/telephony/CommandException$Error;

    #@1c3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@1c6
    return-object v0

    #@1c7
    .line 240
    :sswitch_35
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1c9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    #@1cb
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@1ce
    return-object v0

    #@1cf
    .line 242
    :sswitch_36
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1d1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->EMPTY_RECORD:Lcom/android/internal/telephony/CommandException$Error;

    #@1d3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@1d6
    return-object v0

    #@1d7
    .line 244
    :sswitch_37
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1d9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SMS_FORMAT:Lcom/android/internal/telephony/CommandException$Error;

    #@1db
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@1de
    return-object v0

    #@1df
    .line 246
    :sswitch_38
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1e1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->ENCODING_ERR:Lcom/android/internal/telephony/CommandException$Error;

    #@1e3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@1e6
    return-object v0

    #@1e7
    .line 248
    :sswitch_39
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1e9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->INVALID_SMSC_ADDRESS:Lcom/android/internal/telephony/CommandException$Error;

    #@1eb
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@1ee
    return-object v0

    #@1ef
    .line 250
    :sswitch_3a
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1f1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_SUCH_ENTRY:Lcom/android/internal/telephony/CommandException$Error;

    #@1f3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@1f6
    return-object v0

    #@1f7
    .line 252
    :sswitch_3b
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@1f9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NETWORK_NOT_READY:Lcom/android/internal/telephony/CommandException$Error;

    #@1fb
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@1fe
    return-object v0

    #@1ff
    .line 254
    :sswitch_3c
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@201
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NOT_PROVISIONED:Lcom/android/internal/telephony/CommandException$Error;

    #@203
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@206
    return-object v0

    #@207
    .line 256
    :sswitch_3d
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@209
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_SUBSCRIPTION:Lcom/android/internal/telephony/CommandException$Error;

    #@20b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@20e
    return-object v0

    #@20f
    .line 258
    :sswitch_3e
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@211
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->NO_NETWORK_FOUND:Lcom/android/internal/telephony/CommandException$Error;

    #@213
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@216
    return-object v0

    #@217
    .line 260
    :sswitch_3f
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@219
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->DEVICE_IN_USE:Lcom/android/internal/telephony/CommandException$Error;

    #@21b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@21e
    return-object v0

    #@21f
    .line 262
    :sswitch_40
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@221
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->ABORTED:Lcom/android/internal/telephony/CommandException$Error;

    #@223
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@226
    return-object v0

    #@227
    .line 264
    :sswitch_41
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@229
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_1:Lcom/android/internal/telephony/CommandException$Error;

    #@22b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@22e
    return-object v0

    #@22f
    .line 266
    :sswitch_42
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@231
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_2:Lcom/android/internal/telephony/CommandException$Error;

    #@233
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@236
    return-object v0

    #@237
    .line 268
    :sswitch_43
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@239
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_3:Lcom/android/internal/telephony/CommandException$Error;

    #@23b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@23e
    return-object v0

    #@23f
    .line 270
    :sswitch_44
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@241
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_4:Lcom/android/internal/telephony/CommandException$Error;

    #@243
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@246
    return-object v0

    #@247
    .line 272
    :sswitch_45
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@249
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_5:Lcom/android/internal/telephony/CommandException$Error;

    #@24b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@24e
    return-object v0

    #@24f
    .line 274
    :sswitch_46
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@251
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_6:Lcom/android/internal/telephony/CommandException$Error;

    #@253
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@256
    return-object v0

    #@257
    .line 276
    :sswitch_47
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@259
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_7:Lcom/android/internal/telephony/CommandException$Error;

    #@25b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@25e
    return-object v0

    #@25f
    .line 278
    :sswitch_48
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@261
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_8:Lcom/android/internal/telephony/CommandException$Error;

    #@263
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@266
    return-object v0

    #@267
    .line 280
    :sswitch_49
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@269
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_9:Lcom/android/internal/telephony/CommandException$Error;

    #@26b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@26e
    return-object v0

    #@26f
    .line 282
    :sswitch_4a
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@271
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_10:Lcom/android/internal/telephony/CommandException$Error;

    #@273
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@276
    return-object v0

    #@277
    .line 284
    :sswitch_4b
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@279
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_11:Lcom/android/internal/telephony/CommandException$Error;

    #@27b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@27e
    return-object v0

    #@27f
    .line 286
    :sswitch_4c
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@281
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_12:Lcom/android/internal/telephony/CommandException$Error;

    #@283
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@286
    return-object v0

    #@287
    .line 288
    :sswitch_4d
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@289
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_13:Lcom/android/internal/telephony/CommandException$Error;

    #@28b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@28e
    return-object v0

    #@28f
    .line 290
    :sswitch_4e
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@291
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_14:Lcom/android/internal/telephony/CommandException$Error;

    #@293
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@296
    return-object v0

    #@297
    .line 292
    :sswitch_4f
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@299
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_15:Lcom/android/internal/telephony/CommandException$Error;

    #@29b
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@29e
    return-object v0

    #@29f
    .line 294
    :sswitch_50
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@2a1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_16:Lcom/android/internal/telephony/CommandException$Error;

    #@2a3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2a6
    return-object v0

    #@2a7
    .line 296
    :sswitch_51
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@2a9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_17:Lcom/android/internal/telephony/CommandException$Error;

    #@2ab
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2ae
    return-object v0

    #@2af
    .line 298
    :sswitch_52
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@2b1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_18:Lcom/android/internal/telephony/CommandException$Error;

    #@2b3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2b6
    return-object v0

    #@2b7
    .line 300
    :sswitch_53
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@2b9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_19:Lcom/android/internal/telephony/CommandException$Error;

    #@2bb
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2be
    return-object v0

    #@2bf
    .line 302
    :sswitch_54
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@2c1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_20:Lcom/android/internal/telephony/CommandException$Error;

    #@2c3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2c6
    return-object v0

    #@2c7
    .line 304
    :sswitch_55
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@2c9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_21:Lcom/android/internal/telephony/CommandException$Error;

    #@2cb
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2ce
    return-object v0

    #@2cf
    .line 306
    :sswitch_56
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@2d1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_22:Lcom/android/internal/telephony/CommandException$Error;

    #@2d3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2d6
    return-object v0

    #@2d7
    .line 308
    :sswitch_57
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@2d9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_23:Lcom/android/internal/telephony/CommandException$Error;

    #@2db
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2de
    return-object v0

    #@2df
    .line 310
    :sswitch_58
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@2e1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_24:Lcom/android/internal/telephony/CommandException$Error;

    #@2e3
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2e6
    return-object v0

    #@2e7
    .line 312
    :sswitch_59
    new-instance v0, Lcom/android/internal/telephony/CommandException;

    #@2e9
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_25:Lcom/android/internal/telephony/CommandException$Error;

    #@2eb
    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    #@2ee
    return-object v0

    #@2ef
    .line 133
    nop

    #@2f0
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_13
        0x13 -> :sswitch_14
        0x14 -> :sswitch_15
        0x15 -> :sswitch_16
        0x16 -> :sswitch_17
        0x17 -> :sswitch_18
        0x18 -> :sswitch_19
        0x19 -> :sswitch_1a
        0x1a -> :sswitch_12
        0x1b -> :sswitch_1b
        0x1d -> :sswitch_1c
        0x1e -> :sswitch_1d
        0x1f -> :sswitch_1e
        0x20 -> :sswitch_1f
        0x21 -> :sswitch_20
        0x22 -> :sswitch_21
        0x23 -> :sswitch_22
        0x24 -> :sswitch_23
        0x25 -> :sswitch_24
        0x26 -> :sswitch_25
        0x27 -> :sswitch_26
        0x28 -> :sswitch_27
        0x29 -> :sswitch_28
        0x2a -> :sswitch_29
        0x2b -> :sswitch_2a
        0x2c -> :sswitch_2b
        0x2d -> :sswitch_2c
        0x2e -> :sswitch_2d
        0x2f -> :sswitch_2e
        0x30 -> :sswitch_2f
        0x31 -> :sswitch_30
        0x32 -> :sswitch_31
        0x33 -> :sswitch_32
        0x34 -> :sswitch_33
        0x35 -> :sswitch_34
        0x36 -> :sswitch_35
        0x37 -> :sswitch_36
        0x38 -> :sswitch_37
        0x39 -> :sswitch_38
        0x3a -> :sswitch_39
        0x3b -> :sswitch_3a
        0x3c -> :sswitch_3b
        0x3d -> :sswitch_3c
        0x3e -> :sswitch_3d
        0x3f -> :sswitch_3e
        0x40 -> :sswitch_3f
        0x41 -> :sswitch_40
        0x1f5 -> :sswitch_41
        0x1f6 -> :sswitch_42
        0x1f7 -> :sswitch_43
        0x1f8 -> :sswitch_44
        0x1f9 -> :sswitch_45
        0x1fa -> :sswitch_46
        0x1fb -> :sswitch_47
        0x1fc -> :sswitch_48
        0x1fd -> :sswitch_49
        0x1fe -> :sswitch_4a
        0x1ff -> :sswitch_4b
        0x200 -> :sswitch_4c
        0x201 -> :sswitch_4d
        0x202 -> :sswitch_4e
        0x203 -> :sswitch_4f
        0x204 -> :sswitch_50
        0x205 -> :sswitch_51
        0x206 -> :sswitch_52
        0x207 -> :sswitch_53
        0x208 -> :sswitch_54
        0x209 -> :sswitch_55
        0x20a -> :sswitch_56
        0x20b -> :sswitch_57
        0x20c -> :sswitch_58
        0x20d -> :sswitch_59
    .end sparse-switch
.end method


# virtual methods
.method public getCommandError()Lcom/android/internal/telephony/CommandException$Error;
    .locals 1

    #@0
    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/internal/telephony/CommandException;->mError:Lcom/android/internal/telephony/CommandException$Error;

    #@2
    return-object v0
.end method
