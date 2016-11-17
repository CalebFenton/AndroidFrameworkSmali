.class final Lsun/security/ssl/Alerts;
.super Ljava/lang/Object;
.source "Alerts.java"


# static fields
.field static final alert_access_denied:B = 0x31t

.field static final alert_bad_certificate:B = 0x2at

.field static final alert_bad_certificate_hash_value:B = 0x72t

.field static final alert_bad_certificate_status_response:B = 0x71t

.field static final alert_bad_record_mac:B = 0x14t

.field static final alert_certificate_expired:B = 0x2dt

.field static final alert_certificate_revoked:B = 0x2ct

.field static final alert_certificate_unknown:B = 0x2et

.field static final alert_certificate_unobtainable:B = 0x6ft

.field static final alert_close_notify:B = 0x0t

.field static final alert_decode_error:B = 0x32t

.field static final alert_decompression_failure:B = 0x1et

.field static final alert_decrypt_error:B = 0x33t

.field static final alert_decryption_failed:B = 0x15t

.field static final alert_export_restriction:B = 0x3ct

.field static final alert_fatal:B = 0x2t

.field static final alert_handshake_failure:B = 0x28t

.field static final alert_illegal_parameter:B = 0x2ft

.field static final alert_insufficient_security:B = 0x47t

.field static final alert_internal_error:B = 0x50t

.field static final alert_no_certificate:B = 0x29t

.field static final alert_no_renegotiation:B = 0x64t

.field static final alert_protocol_version:B = 0x46t

.field static final alert_record_overflow:B = 0x16t

.field static final alert_unexpected_message:B = 0xat

.field static final alert_unknown_ca:B = 0x30t

.field static final alert_unrecognized_name:B = 0x70t

.field static final alert_unsupported_certificate:B = 0x2bt

.field static final alert_unsupported_extension:B = 0x6et

.field static final alert_user_canceled:B = 0x5at

.field static final alert_warning:B = 0x1t


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static alertDescription(B)Ljava/lang/String;
    .locals 2
    .param p0, "code"    # B

    #@0
    .prologue
    .line 87
    sparse-switch p0, :sswitch_data_0

    #@3
    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    const-string/jumbo v1, "<UNKNOWN ALERT: "

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    and-int/lit16 v1, p0, 0xff

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    const-string/jumbo v1, ">"

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0

    #@21
    .line 90
    :sswitch_0
    const-string/jumbo v0, "close_notify"

    #@24
    return-object v0

    #@25
    .line 92
    :sswitch_1
    const-string/jumbo v0, "unexpected_message"

    #@28
    return-object v0

    #@29
    .line 94
    :sswitch_2
    const-string/jumbo v0, "bad_record_mac"

    #@2c
    return-object v0

    #@2d
    .line 96
    :sswitch_3
    const-string/jumbo v0, "decryption_failed"

    #@30
    return-object v0

    #@31
    .line 98
    :sswitch_4
    const-string/jumbo v0, "record_overflow"

    #@34
    return-object v0

    #@35
    .line 100
    :sswitch_5
    const-string/jumbo v0, "decompression_failure"

    #@38
    return-object v0

    #@39
    .line 102
    :sswitch_6
    const-string/jumbo v0, "handshake_failure"

    #@3c
    return-object v0

    #@3d
    .line 104
    :sswitch_7
    const-string/jumbo v0, "no_certificate"

    #@40
    return-object v0

    #@41
    .line 106
    :sswitch_8
    const-string/jumbo v0, "bad_certificate"

    #@44
    return-object v0

    #@45
    .line 108
    :sswitch_9
    const-string/jumbo v0, "unsupported_certificate"

    #@48
    return-object v0

    #@49
    .line 110
    :sswitch_a
    const-string/jumbo v0, "certificate_revoked"

    #@4c
    return-object v0

    #@4d
    .line 112
    :sswitch_b
    const-string/jumbo v0, "certificate_expired"

    #@50
    return-object v0

    #@51
    .line 114
    :sswitch_c
    const-string/jumbo v0, "certificate_unknown"

    #@54
    return-object v0

    #@55
    .line 116
    :sswitch_d
    const-string/jumbo v0, "illegal_parameter"

    #@58
    return-object v0

    #@59
    .line 118
    :sswitch_e
    const-string/jumbo v0, "unknown_ca"

    #@5c
    return-object v0

    #@5d
    .line 120
    :sswitch_f
    const-string/jumbo v0, "access_denied"

    #@60
    return-object v0

    #@61
    .line 122
    :sswitch_10
    const-string/jumbo v0, "decode_error"

    #@64
    return-object v0

    #@65
    .line 124
    :sswitch_11
    const-string/jumbo v0, "decrypt_error"

    #@68
    return-object v0

    #@69
    .line 126
    :sswitch_12
    const-string/jumbo v0, "export_restriction"

    #@6c
    return-object v0

    #@6d
    .line 128
    :sswitch_13
    const-string/jumbo v0, "protocol_version"

    #@70
    return-object v0

    #@71
    .line 130
    :sswitch_14
    const-string/jumbo v0, "insufficient_security"

    #@74
    return-object v0

    #@75
    .line 132
    :sswitch_15
    const-string/jumbo v0, "internal_error"

    #@78
    return-object v0

    #@79
    .line 134
    :sswitch_16
    const-string/jumbo v0, "user_canceled"

    #@7c
    return-object v0

    #@7d
    .line 136
    :sswitch_17
    const-string/jumbo v0, "no_renegotiation"

    #@80
    return-object v0

    #@81
    .line 138
    :sswitch_18
    const-string/jumbo v0, "unsupported_extension"

    #@84
    return-object v0

    #@85
    .line 140
    :sswitch_19
    const-string/jumbo v0, "certificate_unobtainable"

    #@88
    return-object v0

    #@89
    .line 142
    :sswitch_1a
    const-string/jumbo v0, "unrecognized_name"

    #@8c
    return-object v0

    #@8d
    .line 144
    :sswitch_1b
    const-string/jumbo v0, "bad_certificate_status_response"

    #@90
    return-object v0

    #@91
    .line 146
    :sswitch_1c
    const-string/jumbo v0, "bad_certificate_hash_value"

    #@94
    return-object v0

    #@95
    .line 87
    nop

    #@96
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_3
        0x16 -> :sswitch_4
        0x1e -> :sswitch_5
        0x28 -> :sswitch_6
        0x29 -> :sswitch_7
        0x2a -> :sswitch_8
        0x2b -> :sswitch_9
        0x2c -> :sswitch_a
        0x2d -> :sswitch_b
        0x2e -> :sswitch_c
        0x2f -> :sswitch_d
        0x30 -> :sswitch_e
        0x31 -> :sswitch_f
        0x32 -> :sswitch_10
        0x33 -> :sswitch_11
        0x3c -> :sswitch_12
        0x46 -> :sswitch_13
        0x47 -> :sswitch_14
        0x50 -> :sswitch_15
        0x5a -> :sswitch_16
        0x64 -> :sswitch_17
        0x6e -> :sswitch_18
        0x6f -> :sswitch_19
        0x70 -> :sswitch_1a
        0x71 -> :sswitch_1b
        0x72 -> :sswitch_1c
    .end sparse-switch
.end method

.method static getSSLException(BLjava/lang/String;)Ljavax/net/ssl/SSLException;
    .locals 1
    .param p0, "description"    # B
    .param p1, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 154
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0, p1}, Lsun/security/ssl/Alerts;->getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method static getSSLException(BLjava/lang/Throwable;Ljava/lang/String;)Ljavax/net/ssl/SSLException;
    .locals 1
    .param p0, "description"    # B
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "reason"    # Ljava/lang/String;

    #@0
    .prologue
    .line 167
    if-nez p2, :cond_0

    #@2
    .line 168
    if-eqz p1, :cond_2

    #@4
    .line 169
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    #@7
    move-result-object p2

    #@8
    .line 174
    :cond_0
    :goto_0
    sparse-switch p0, :sswitch_data_0

    #@b
    .line 208
    new-instance v0, Ljavax/net/ssl/SSLException;

    #@d
    invoke-direct {v0, p2}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@10
    .line 212
    .local v0, "e":Ljavax/net/ssl/SSLException;
    :goto_1
    if-eqz p1, :cond_1

    #@12
    .line 213
    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    #@15
    .line 215
    :cond_1
    return-object v0

    #@16
    .line 171
    .end local v0    # "e":Ljavax/net/ssl/SSLException;
    :cond_2
    const-string/jumbo p2, ""

    #@19
    goto :goto_0

    #@1a
    .line 192
    :sswitch_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    #@1c
    invoke-direct {v0, p2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    #@1f
    .line 193
    .restart local v0    # "e":Ljavax/net/ssl/SSLException;
    goto :goto_1

    #@20
    .line 174
    :sswitch_data_0
    .sparse-switch
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x30 -> :sswitch_0
        0x31 -> :sswitch_0
        0x33 -> :sswitch_0
        0x3c -> :sswitch_0
        0x47 -> :sswitch_0
        0x6e -> :sswitch_0
        0x6f -> :sswitch_0
        0x70 -> :sswitch_0
        0x71 -> :sswitch_0
        0x72 -> :sswitch_0
    .end sparse-switch
.end method
