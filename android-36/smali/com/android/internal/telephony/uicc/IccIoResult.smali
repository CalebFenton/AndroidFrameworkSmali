.class public Lcom/android/internal/telephony/uicc/IccIoResult;
.super Ljava/lang/Object;
.source "IccIoResult.java"


# instance fields
.field public greylist payload:[B

.field public greylist sw1:I

.field public greylist sw2:I


# direct methods
.method public constructor greylist <init>(IILjava/lang/String;)V
    .registers 4

    .line 195
    invoke-static {p3}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    return-void
.end method

.method public constructor greylist <init>(II[B)V
    .registers 4

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput p1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    .line 189
    iput p2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    .line 190
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    return-void
.end method

.method private blacklist getErrorString()Ljava/lang/String;
    .registers 11

    .line 37
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v1, 0x98

    const/16 v2, 0x40

    const/16 v3, 0x8

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eq v0, v1, :cond_15f

    const/16 v1, 0x9e

    const/4 v6, 0x0

    if-eq v0, v1, :cond_15e

    const/16 v1, 0x9f

    if-eq v0, v1, :cond_15e

    const/16 v1, 0x81

    const-string v7, "memory problem"

    packed-switch v0, :pswitch_data_19c

    const-string v8, "no information given"

    const-string v9, "the interpretation of this status word is command dependent"

    packed-switch v0, :pswitch_data_1aa

    packed-switch v0, :pswitch_data_1c0

    goto/16 :goto_178

    .line 142
    :pswitch_28
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz p0, :cond_3d

    if-eq p0, v4, :cond_3a

    if-eq p0, v5, :cond_37

    if-eq p0, v3, :cond_34

    goto/16 :goto_178

    .line 146
    :cond_34
    const-string p0, "file is inconsistent with the command"

    return-object p0

    .line 145
    :cond_37
    const-string p0, "file ID not found/pattern not found"

    return-object p0

    .line 144
    :cond_3a
    const-string p0, "out f range (invalid address)"

    return-object p0

    .line 143
    :cond_3d
    const-string p0, "no EF selected"

    return-object p0

    .line 136
    :pswitch_40
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz p0, :cond_46

    goto/16 :goto_178

    .line 137
    :cond_46
    const-string p0, "SIM Application Toolkit is busy. Command cannot be executed at present, further normal commands are allowed"

    return-object p0

    .line 128
    :pswitch_49
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    shr-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_52

    .line 129
    const-string p0, "command successful but after using an internal update retry routine"

    return-object p0

    :cond_52
    if-eq p0, v2, :cond_56

    goto/16 :goto_178

    :cond_56
    return-object v7

    :pswitch_57
    return-object v6

    .line 119
    :pswitch_58
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz p0, :cond_5d

    return-object v9

    .line 120
    :cond_5d
    const-string p0, "technical problem with no diagnostic given"

    return-object p0

    .line 117
    :pswitch_60
    const-string p0, "wrong instruction class given in the command"

    return-object p0

    .line 116
    :pswitch_63
    const-string p0, "unknown instruction code given in the command"

    return-object p0

    .line 115
    :pswitch_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "wrong length, retry with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 114
    :pswitch_7a
    const-string p0, "incorrect parameter P1 or P2"

    return-object p0

    .line 103
    :pswitch_7d
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    packed-switch p0, :pswitch_data_1ce

    :pswitch_82
    goto/16 :goto_178

    .line 111
    :pswitch_84
    const-string p0, "referenced data not found"

    return-object p0

    .line 110
    :pswitch_87
    const-string p0, "lc inconsistent with P1 to P2"

    return-object p0

    .line 109
    :pswitch_8a
    const-string p0, "incorrect parameters P1 to P2"

    return-object p0

    .line 108
    :pswitch_8d
    const-string p0, "not enough memory space"

    return-object p0

    .line 107
    :pswitch_90
    const-string p0, "record not found"

    return-object p0

    .line 106
    :pswitch_93
    const-string p0, "file not found"

    return-object p0

    .line 105
    :pswitch_96
    const-string p0, "function not supported"

    return-object p0

    .line 104
    :pswitch_99
    const-string p0, "incorrect parameters in the data field"

    return-object p0

    .line 90
    :pswitch_9c
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz p0, :cond_be

    const/16 v0, 0x89

    if-eq p0, v0, :cond_bb

    packed-switch p0, :pswitch_data_1e4

    goto/16 :goto_178

    .line 97
    :pswitch_a9
    const-string p0, "command not allowed (no EF selected)"

    return-object p0

    .line 96
    :pswitch_ac
    const-string p0, "conditions of use not satisfied"

    return-object p0

    .line 95
    :pswitch_af
    const-string p0, "referenced data invalidated"

    return-object p0

    .line 94
    :pswitch_b2
    const-string p0, "authentication/PIN method blocked"

    return-object p0

    .line 93
    :pswitch_b5
    const-string p0, "security status not satisfied"

    return-object p0

    .line 92
    :pswitch_b8
    const-string p0, "command incompatible with file structure"

    return-object p0

    .line 98
    :cond_bb
    const-string p0, "command not allowed - secure channel - security not satisfied"

    return-object p0

    :cond_be
    return-object v8

    .line 83
    :pswitch_bf
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz p0, :cond_d1

    if-eq p0, v1, :cond_ce

    const/16 v0, 0x82

    if-eq p0, v0, :cond_cb

    goto/16 :goto_178

    .line 86
    :cond_cb
    const-string p0, "secure messaging not supported"

    return-object p0

    .line 85
    :cond_ce
    const-string p0, "logical channel not supported"

    return-object p0

    :cond_d1
    return-object v8

    .line 77
    :pswitch_d2
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz p0, :cond_d7

    return-object v9

    .line 78
    :cond_d7
    const-string p0, "incorrect parameter P3"

    return-object p0

    .line 71
    :pswitch_da
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz p0, :cond_e3

    if-eq p0, v1, :cond_e2

    goto/16 :goto_178

    :cond_e2
    return-object v7

    .line 72
    :cond_e3
    const-string p0, "no information given, state of non-volatile memory changed"

    return-object p0

    .line 65
    :pswitch_e6
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz p0, :cond_ec

    goto/16 :goto_178

    .line 66
    :cond_ec
    const-string p0, "no information given, state of non-volatile memory unchanged"

    return-object p0

    .line 53
    :pswitch_ef
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    shr-int/lit8 v0, p0, 0x4

    const/16 v1, 0xc

    if-ne v0, v1, :cond_118

    and-int/lit8 p0, p0, 0xf

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "command successful but after using an internal update retry routine "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " times, or verification failed, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " retries remaining"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_118
    const/16 v0, 0xf1

    if-eq p0, v0, :cond_124

    const/16 v0, 0xf2

    if-eq p0, v0, :cond_121

    goto :goto_178

    .line 61
    :cond_121
    const-string p0, "more data expected and proactive command pending"

    return-object p0

    .line 60
    :cond_124
    const-string p0, "more data expected"

    return-object p0

    .line 40
    :pswitch_127
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eqz p0, :cond_147

    packed-switch p0, :pswitch_data_1f4

    packed-switch p0, :pswitch_data_200

    goto :goto_178

    .line 49
    :pswitch_132
    const-string p0, "response data available"

    return-object p0

    .line 48
    :pswitch_135
    const-string p0, "more data available and proactive command pending"

    return-object p0

    .line 47
    :pswitch_138
    const-string p0, "more data available"

    return-object p0

    .line 46
    :pswitch_13b
    const-string p0, "selected file in termination state"

    return-object p0

    .line 45
    :pswitch_13e
    const-string p0, "selected file invalidated"

    return-object p0

    .line 44
    :pswitch_141
    const-string p0, "end of file/record reached before reading Le bytes"

    return-object p0

    .line 43
    :pswitch_144
    const-string p0, "part of returned data may be corrupted"

    return-object p0

    .line 41
    :cond_147
    const-string p0, "no information given, state of non volatile memory unchanged"

    return-object p0

    .line 38
    :pswitch_14a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " more response bytes available"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_15e
    return-object v6

    .line 150
    :cond_15f
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    if-eq p0, v4, :cond_199

    if-eq p0, v5, :cond_196

    if-eq p0, v3, :cond_193

    const/16 v0, 0x10

    if-eq p0, v0, :cond_190

    if-eq p0, v2, :cond_18d

    const/16 v0, 0x50

    if-eq p0, v0, :cond_18a

    const/16 v0, 0x62

    if-eq p0, v0, :cond_187

    packed-switch p0, :pswitch_data_20a

    .line 174
    :goto_178
    const-string p0, "unknown"

    return-object p0

    .line 168
    :pswitch_17b
    const-string p0, "authentication error, no memory space available in EF_MUK"

    return-object p0

    .line 167
    :pswitch_17e
    const-string p0, "authentication error, no memory space available"

    return-object p0

    .line 166
    :pswitch_181
    const-string p0, "key freshness failure"

    return-object p0

    .line 165
    :pswitch_184
    const-string p0, "authentication error, security context not supported"

    return-object p0

    .line 164
    :cond_187
    const-string p0, "authentication error, application specific"

    return-object p0

    .line 162
    :cond_18a
    const-string p0, "increase cannot be performed, Max value reached"

    return-object p0

    .line 158
    :cond_18d
    const-string p0, "unsuccessful CHV verification, no attempt left/unsuccessful UNBLOCK CHV verification, no attempt left/CHV blocked/UNBLOCK CHV blocked"

    return-object p0

    .line 157
    :cond_190
    const-string p0, "in contradiction with invalidation status"

    return-object p0

    .line 156
    :cond_193
    const-string p0, "in contradiction with CHV status"

    return-object p0

    .line 152
    :cond_196
    const-string p0, "access condition not fulfilled/unsuccessful CHV verification, at least one attempt left/unsuccessful UNBLOCK CHV verification, at least one attempt left/authentication failed"

    return-object p0

    .line 151
    :cond_199
    const-string p0, "no CHV initialized"

    return-object p0

    :pswitch_data_19c
    .packed-switch 0x61
        :pswitch_14a
        :pswitch_127
        :pswitch_ef
        :pswitch_e6
        :pswitch_da
    .end packed-switch

    :pswitch_data_1aa
    .packed-switch 0x67
        :pswitch_d2
        :pswitch_bf
        :pswitch_9c
        :pswitch_7d
        :pswitch_7a
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_58
    .end packed-switch

    :pswitch_data_1c0
    .packed-switch 0x90
        :pswitch_57
        :pswitch_57
        :pswitch_49
        :pswitch_40
        :pswitch_28
    .end packed-switch

    :pswitch_data_1ce
    .packed-switch 0x80
        :pswitch_99
        :pswitch_96
        :pswitch_93
        :pswitch_90
        :pswitch_8d
        :pswitch_82
        :pswitch_8a
        :pswitch_87
        :pswitch_84
    .end packed-switch

    :pswitch_data_1e4
    .packed-switch 0x81
        :pswitch_b8
        :pswitch_b5
        :pswitch_b2
        :pswitch_af
        :pswitch_ac
        :pswitch_a9
    .end packed-switch

    :pswitch_data_1f4
    .packed-switch 0x81
        :pswitch_144
        :pswitch_141
        :pswitch_13e
        :pswitch_13b
    .end packed-switch

    :pswitch_data_200
    .packed-switch 0xf1
        :pswitch_138
        :pswitch_135
        :pswitch_132
    .end packed-switch

    :pswitch_data_20a
    .packed-switch 0x64
        :pswitch_184
        :pswitch_181
        :pswitch_17e
        :pswitch_17b
    .end packed-switch
.end method


# virtual methods
.method public blacklist getException()Lcom/android/internal/telephony/uicc/IccException;
    .registers 4

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccIoResult;->success()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    .line 225
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v1, 0x94

    if-eq v0, v1, :cond_31

    .line 233
    new-instance v0, Lcom/android/internal/telephony/uicc/IccException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sw1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sw2:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/IccException;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 227
    :cond_31
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    const/16 v0, 0x8

    if-ne p0, v0, :cond_3d

    .line 228
    new-instance p0, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccFileTypeMismatch;-><init>()V

    return-object p0

    .line 230
    :cond_3d
    new-instance p0, Lcom/android/internal/telephony/uicc/IccFileNotFound;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccFileNotFound;-><init>()V

    return-object p0
.end method

.method public greylist success()Z
    .registers 2

    .line 216
    iget p0, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    const/16 v0, 0x90

    if-eq p0, v0, :cond_15

    const/16 v0, 0x91

    if-eq p0, v0, :cond_15

    const/16 v0, 0x9e

    if-eq p0, v0, :cond_15

    const/16 v0, 0x9f

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x1

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IccIoResult sw1:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw1:I

    .line 201
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sw2:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->sw2:I

    .line 203
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    sget-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_31

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    goto :goto_33

    :cond_31
    const-string v1, "*******"

    :goto_33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccIoResult;->success()Z

    move-result v1

    if-nez v1, :cond_52

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccIoResult;->getErrorString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_54

    :cond_52
    const-string p0, ""

    :goto_54
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
