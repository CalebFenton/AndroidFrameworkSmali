.class public final Landroid/telecom/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field public static final DEBUG:Z

.field public static final ERROR:Z

.field public static final FORCE_LOGGING:Z = false

.field public static final INFO:Z

.field private static final TAG:Ljava/lang/String; = "TelecomFramework"

.field public static final VERBOSE:Z

.field public static final WARN:Z

.field private static sMessageDigest:Ljava/security/MessageDigest;

.field private static final sMessageDigestLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    #@0
    sget-object v0, Landroid/telecom/Log;->sMessageDigestLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Ljava/security/MessageDigest;)Ljava/security/MessageDigest;
    .locals 0

    #@0
    sput-object p0, Landroid/telecom/Log;->sMessageDigest:Ljava/security/MessageDigest;

    #@2
    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    const/4 v0, 0x3

    #@1
    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    #@4
    move-result v0

    #@5
    sput-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    #@7
    .line 41
    const/4 v0, 0x4

    #@8
    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    #@b
    move-result v0

    #@c
    sput-boolean v0, Landroid/telecom/Log;->INFO:Z

    #@e
    .line 42
    const/4 v0, 0x2

    #@f
    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    #@12
    move-result v0

    #@13
    sput-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    #@15
    .line 43
    const/4 v0, 0x5

    #@16
    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    #@19
    move-result v0

    #@1a
    sput-boolean v0, Landroid/telecom/Log;->WARN:Z

    #@1c
    .line 44
    const/4 v0, 0x6

    #@1d
    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    #@20
    move-result v0

    #@21
    sput-boolean v0, Landroid/telecom/Log;->ERROR:Z

    #@23
    .line 47
    new-instance v0, Ljava/lang/Object;

    #@25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@28
    sput-object v0, Landroid/telecom/Log;->sMessageDigestLock:Ljava/lang/Object;

    #@2a
    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static varargs buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 226
    if-eqz p2, :cond_0

    #@5
    :try_start_0
    array-length v2, p2
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    if-nez v2, :cond_1

    #@8
    :cond_0
    move-object v1, p1

    #@9
    .line 233
    .local v1, "msg":Ljava/lang/String;
    :goto_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@b
    const-string/jumbo v3, "%s: %s"

    #@e
    new-array v4, v8, [Ljava/lang/Object;

    #@10
    aput-object p0, v4, v6

    #@12
    aput-object v1, v4, v7

    #@14
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    return-object v2

    #@19
    .line 227
    .end local v1    # "msg":Ljava/lang/String;
    :cond_1
    :try_start_1
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    #@1b
    invoke-static {v2, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/util/IllegalFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@1e
    move-result-object v1

    #@1f
    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_0

    #@20
    .line 228
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@21
    .line 229
    .local v0, "ife":Ljava/util/IllegalFormatException;
    const-string/jumbo v2, "Log"

    #@24
    const-string/jumbo v3, "IllegalFormatException: formatString=\'%s\' numArgs=%d"

    #@27
    new-array v4, v8, [Ljava/lang/Object;

    #@29
    aput-object p1, v4, v6

    #@2b
    .line 230
    array-length v5, p2

    #@2c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v5

    #@30
    aput-object v5, v4, v7

    #@32
    .line 229
    invoke-static {v2, v0, v3, v4}, Landroid/telecom/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    #@35
    .line 231
    new-instance v2, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    const-string/jumbo v3, " (An error occurred while formatting the message.)"

    #@41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    .restart local v1    # "msg":Ljava/lang/String;
    goto :goto_0
.end method

.method public static varargs d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 80
    sget-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 81
    const-string/jumbo v0, "TelecomFramework"

    #@7
    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 79
    :cond_0
    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 74
    sget-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 75
    const-string/jumbo v0, "TelecomFramework"

    #@7
    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 73
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 128
    sget-boolean v0, Landroid/telecom/Log;->ERROR:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 129
    const-string/jumbo v0, "TelecomFramework"

    #@7
    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@12
    .line 127
    :cond_0
    return-void
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 122
    sget-boolean v0, Landroid/telecom/Log;->ERROR:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 123
    const-string/jumbo v0, "TelecomFramework"

    #@7
    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e
    .line 121
    :cond_0
    return-void
.end method

.method private static encodeHex([B)Ljava/lang/String;
    .locals 5
    .param p0, "bytes"    # [B

    #@0
    .prologue
    const/16 v4, 0x10

    #@2
    .line 206
    new-instance v1, Ljava/lang/StringBuffer;

    #@4
    array-length v3, p0

    #@5
    mul-int/lit8 v3, v3, 0x2

    #@7
    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    #@a
    .line 208
    .local v1, "hex":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    array-length v3, p0

    #@c
    if-ge v2, v3, :cond_1

    #@e
    .line 209
    aget-byte v3, p0, v2

    #@10
    and-int/lit16 v0, v3, 0xff

    #@12
    .line 210
    .local v0, "byteIntValue":I
    if-ge v0, v4, :cond_0

    #@14
    .line 211
    const-string/jumbo v3, "0"

    #@17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    .line 213
    :cond_0
    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    .line 208
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 216
    .end local v0    # "byteIntValue":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    return-object v3
.end method

.method private static getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 220
    if-nez p0, :cond_0

    #@2
    const-string/jumbo v0, "<null>"

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    goto :goto_0
.end method

.method public static varargs i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 92
    sget-boolean v0, Landroid/telecom/Log;->INFO:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 93
    const-string/jumbo v0, "TelecomFramework"

    #@7
    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 91
    :cond_0
    return-void
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 86
    sget-boolean v0, Landroid/telecom/Log;->INFO:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 87
    const-string/jumbo v0, "TelecomFramework"

    #@7
    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 85
    :cond_0
    return-void
.end method

.method public static initMd5Sum()V
    .locals 2

    #@0
    .prologue
    .line 52
    new-instance v0, Landroid/telecom/Log$1;

    #@2
    invoke-direct {v0}, Landroid/telecom/Log$1;-><init>()V

    #@5
    const/4 v1, 0x0

    #@6
    new-array v1, v1, [Ljava/lang/Void;

    #@8
    invoke-virtual {v0, v1}, Landroid/telecom/Log$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    #@b
    .line 51
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1
    .param p0, "level"    # I

    #@0
    .prologue
    .line 70
    const-string/jumbo v0, "TelecomFramework"

    #@3
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public static pii(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "pii"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 159
    if-eqz p0, :cond_0

    #@2
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 160
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 161
    :cond_1
    instance-of v0, p0, Landroid/net/Uri;

    #@d
    if-eqz v0, :cond_2

    #@f
    .line 162
    check-cast p0, Landroid/net/Uri;

    #@11
    .end local p0    # "pii":Ljava/lang/Object;
    invoke-static {p0}, Landroid/telecom/Log;->piiUri(Landroid/net/Uri;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0

    #@16
    .line 164
    .restart local p0    # "pii":Ljava/lang/Object;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v1, "["

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@29
    move-result-object v1

    #@2a
    invoke-static {v1}, Landroid/telecom/Log;->secureHash([B)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    const-string/jumbo v1, "]"

    #@35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v0

    #@3d
    return-object v0
.end method

.method private static piiUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 7
    .param p0, "handle"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 168
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 169
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    .line 170
    .local v3, "scheme":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@c
    move-result v5

    #@d
    if-nez v5, :cond_0

    #@f
    .line 171
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v5

    #@13
    const-string/jumbo v6, ":"

    #@16
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    #@1c
    move-result-object v4

    #@1d
    .line 174
    .local v4, "value":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@20
    move-result v5

    #@21
    if-nez v5, :cond_6

    #@23
    .line 175
    const/4 v1, 0x0

    #@24
    .local v1, "i":I
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@27
    move-result v5

    #@28
    if-ge v1, v5, :cond_6

    #@2a
    .line 176
    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    #@2d
    move-result v0

    #@2e
    .line 177
    .local v0, "c":C
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isStartsPostDial(C)Z

    #@31
    move-result v5

    #@32
    if-eqz v5, :cond_1

    #@34
    .line 178
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@37
    .line 175
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 179
    :cond_1
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->isDialable(C)Z

    #@3d
    move-result v5

    #@3e
    if-eqz v5, :cond_2

    #@40
    .line 180
    const-string/jumbo v5, "*"

    #@43
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    goto :goto_1

    #@47
    .line 181
    :cond_2
    const/16 v5, 0x61

    #@49
    if-gt v5, v0, :cond_4

    #@4b
    const/16 v5, 0x7a

    #@4d
    if-gt v0, v5, :cond_4

    #@4f
    .line 182
    :cond_3
    const-string/jumbo v5, "*"

    #@52
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    goto :goto_1

    #@56
    .line 181
    :cond_4
    const/16 v5, 0x41

    #@58
    if-gt v5, v0, :cond_5

    #@5a
    const/16 v5, 0x5a

    #@5c
    if-le v0, v5, :cond_3

    #@5e
    .line 184
    :cond_5
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@61
    goto :goto_1

    #@62
    .line 188
    .end local v0    # "c":C
    .end local v1    # "i":I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v5

    #@66
    return-object v5
.end method

.method private static secureHash([B)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # [B

    #@0
    .prologue
    .line 193
    sget-object v2, Landroid/telecom/Log;->sMessageDigestLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 194
    :try_start_0
    sget-object v1, Landroid/telecom/Log;->sMessageDigest:Ljava/security/MessageDigest;

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 195
    sget-object v1, Landroid/telecom/Log;->sMessageDigest:Ljava/security/MessageDigest;

    #@9
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    #@c
    .line 196
    sget-object v1, Landroid/telecom/Log;->sMessageDigest:Ljava/security/MessageDigest;

    #@e
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    #@11
    .line 197
    sget-object v1, Landroid/telecom/Log;->sMessageDigest:Ljava/security/MessageDigest;

    #@13
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    #@16
    move-result-object v0

    #@17
    .line 198
    .local v0, "result":[B
    invoke-static {v0}, Landroid/telecom/Log;->encodeHex([B)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v1

    #@1b
    monitor-exit v2

    #@1c
    return-object v1

    #@1d
    .line 200
    .end local v0    # "result":[B
    :cond_0
    :try_start_1
    const-string/jumbo v1, "Uninitialized SHA1"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    monitor-exit v2

    #@21
    return-object v1

    #@22
    .line 193
    :catchall_0
    move-exception v1

    #@23
    monitor-exit v2

    #@24
    throw v1
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 104
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 105
    const-string/jumbo v0, "TelecomFramework"

    #@7
    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 103
    :cond_0
    return-void
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 98
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 99
    const-string/jumbo v0, "TelecomFramework"

    #@7
    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 97
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 116
    sget-boolean v0, Landroid/telecom/Log;->WARN:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 117
    const-string/jumbo v0, "TelecomFramework"

    #@7
    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@e
    move-result-object v1

    #@f
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    .line 115
    :cond_0
    return-void
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 110
    sget-boolean v0, Landroid/telecom/Log;->WARN:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 111
    const-string/jumbo v0, "TelecomFramework"

    #@7
    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 109
    :cond_0
    return-void
.end method

.method public static varargs wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 149
    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 150
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "TelecomFramework"

    #@b
    new-instance v2, Ljava/lang/IllegalStateException;

    #@d
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 148
    return-void
.end method

.method public static varargs wtf(Ljava/lang/Object;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 139
    const-string/jumbo v0, "TelecomFramework"

    #@3
    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v1, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e
    .line 138
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 144
    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 145
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "TelecomFramework"

    #@7
    new-instance v2, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    .line 143
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 135
    const-string/jumbo v0, "TelecomFramework"

    #@3
    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a
    .line 134
    return-void
.end method
