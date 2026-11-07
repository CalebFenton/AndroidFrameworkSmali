.class public final Lcom/android/telephony/Rlog;
.super Ljava/lang/Object;
.source "Rlog.java"


# static fields
.field private static final blacklist USER_BUILD:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_USER:Z

    sput-boolean v0, Lcom/android/telephony/Rlog;->USER_BUILD:Z

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 57
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 62
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 61
    const/4 v1, 0x3

    invoke-static {v1, p0, v0}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 88
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 93
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    const/4 v1, 0x6

    invoke-static {v1, p0, v0}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static blacklist getDialableCount(Ljava/lang/String;)I
    .registers 7
    .param p0, "toCount"    # Ljava/lang/String;

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "numDialable":I
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_16

    aget-char v4, v1, v3

    .line 199
    .local v4, "c":C
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 200
    add-int/lit8 v0, v0, 0x1

    .line 198
    .end local v4    # "c":C
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 203
    :cond_16
    return v0
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 66
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 71
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 70
    const/4 v1, 0x4

    invoke-static {v1, p0, v0}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist isLoggable(Ljava/lang/String;I)Z
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "level"    # I

    .line 101
    invoke-static {p0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method private static blacklist log(ILjava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 44
    invoke-static {p0, p1, p2}, Landroid/util/Log;->logToRadioBuffer(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static blacklist obfuscatePhoneNumber(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 8
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .line 179
    sget-boolean v0, Lcom/android/telephony/Rlog;->USER_BUILD:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    const/4 v0, 0x2

    .line 180
    .local v0, "numDigitsToLog":I
    :goto_7
    invoke-static {p1}, Lcom/android/telephony/Rlog;->getDialableCount(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v1, v0

    .line 181
    .local v1, "numDigitsToObfuscate":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_30

    .line 182
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 183
    .local v3, "c":C
    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    move-result v4

    .line 184
    .local v4, "isDialable":Z
    if-eqz v4, :cond_1f

    .line 185
    add-int/lit8 v1, v1, -0x1

    .line 187
    :cond_1f
    if-eqz v4, :cond_26

    if-ltz v1, :cond_26

    const-string v5, "*"

    goto :goto_2a

    :cond_26
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    :goto_2a
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .end local v3    # "c":C
    .end local v4    # "isDialable":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 189
    .end local v2    # "i":I
    :cond_30
    return-void
.end method

.method public static blacklist pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "pii"    # Ljava/lang/Object;

    .line 112
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "val":Ljava/lang/String;
    if-eqz p1, :cond_36

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_36

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_36

    .line 116
    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/telephony/Rlog;->secureHash([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 114
    :cond_36
    :goto_36
    return-object v0
.end method

.method public static blacklist pii(ZLjava/lang/Object;)Ljava/lang/String;
    .registers 5
    .param p0, "enablePiiLogging"    # Z
    .param p1, "pii"    # Ljava/lang/Object;

    .line 127
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "val":Ljava/lang/String;
    if-eqz p1, :cond_31

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_31

    if-eqz p0, :cond_f

    goto :goto_31

    .line 131
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/telephony/Rlog;->secureHash([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 129
    :cond_31
    :goto_31
    return-object v0
.end method

.method public static blacklist piiHandle(Ljava/lang/Object;)Ljava/lang/String;
    .registers 8
    .param p0, "pii"    # Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .local v0, "sb":Ljava/lang/StringBuilder;
    instance-of v1, p0, Landroid/net/Uri;

    if-eqz v1, :cond_5b

    .line 143
    move-object v1, p0

    check-cast v1, Landroid/net/Uri;

    .line 144
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 146
    .local v2, "scheme":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1f

    .line 147
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    :cond_1f
    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v3

    .line 151
    .local v3, "textToObfuscate":Ljava/lang/String;
    const-string/jumbo v4, "tel"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 152
    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->obfuscatePhoneNumber(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_66

    .line 153
    :cond_30
    const-string/jumbo v4, "sip"

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 154
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3a
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_54

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 156
    .local v5, "c":C
    const/16 v6, 0x40

    if-eq v5, v6, :cond_4e

    const/16 v6, 0x2e

    if-eq v5, v6, :cond_4e

    .line 157
    const/16 v5, 0x2a

    .line 159
    :cond_4e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 154
    .end local v5    # "c":C
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .end local v4    # "i":I
    :cond_54
    goto :goto_66

    .line 162
    :cond_55
    const-string v4, "***"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 164
    .end local v1    # "uri":Landroid/net/Uri;
    .end local v2    # "scheme":Ljava/lang/String;
    .end local v3    # "textToObfuscate":Ljava/lang/String;
    :cond_5b
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_66

    .line 165
    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    .line 166
    .local v1, "number":Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->obfuscatePhoneNumber(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_67

    .line 164
    .end local v1    # "number":Ljava/lang/String;
    :cond_66
    :goto_66
    nop

    .line 169
    :goto_67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static blacklist println(ILjava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p0, "priority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 97
    invoke-static {p0, p1, p2}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static blacklist secureHash([B)Ljava/lang/String;
    .registers 4
    .param p0, "input"    # [B

    .line 214
    sget-boolean v0, Lcom/android/telephony/Rlog;->USER_BUILD:Z

    if-eqz v0, :cond_7

    .line 215
    const-string v0, "****"

    return-object v0

    .line 221
    :cond_7
    :try_start_7
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_d
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_d} :catch_19

    .line 224
    .local v0, "messageDigest":Ljava/security/MessageDigest;
    nop

    .line 226
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 227
    .local v1, "result":[B
    const/16 v2, 0xb

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 222
    .end local v0    # "messageDigest":Ljava/security/MessageDigest;
    .end local v1    # "result":[B
    :catch_19
    move-exception v0

    .line 223
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v1, "####"

    return-object v1
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 48
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 53
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    const/4 v1, 0x2

    invoke-static {v1, p0, v0}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;)I
    .registers 3
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .line 75
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 5
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "tr"    # Ljava/lang/Throwable;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 80
    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    const/4 v1, 0x5

    invoke-static {v1, p0, v0}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static blacklist w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .line 84
    const/4 v0, 0x5

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/android/telephony/Rlog;->log(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method
