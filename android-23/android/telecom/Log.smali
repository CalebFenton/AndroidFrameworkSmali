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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 35
    const/4 v0, 0x3

    #@1
    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    #@4
    move-result v0

    #@5
    sput-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    #@7
    .line 36
    const/4 v0, 0x4

    #@8
    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    #@b
    move-result v0

    #@c
    sput-boolean v0, Landroid/telecom/Log;->INFO:Z

    #@e
    .line 37
    const/4 v0, 0x2

    #@f
    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    #@12
    move-result v0

    #@13
    sput-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    #@15
    .line 38
    const/4 v0, 0x5

    #@16
    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    #@19
    move-result v0

    #@1a
    sput-boolean v0, Landroid/telecom/Log;->WARN:Z

    #@1c
    .line 39
    const/4 v0, 0x6

    #@1d
    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    #@20
    move-result v0

    #@21
    sput-boolean v0, Landroid/telecom/Log;->ERROR:Z

    #@23
    .line 29
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
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
    .line 172
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
    .line 179
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
    .line 173
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
    .line 174
    .end local v1    # "msg":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@21
    .line 175
    .local v0, "ife":Ljava/util/IllegalFormatException;
    const-string/jumbo v2, "Log"

    #@24
    const-string/jumbo v3, "IllegalFormatException: formatString=\'%s\' numArgs=%d"

    #@27
    new-array v4, v8, [Ljava/lang/Object;

    #@29
    aput-object p1, v4, v6

    #@2b
    .line 176
    array-length v5, p2

    #@2c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f
    move-result-object v5

    #@30
    aput-object v5, v4, v7

    #@32
    .line 175
    invoke-static {v2, v0, v3, v4}, Landroid/telecom/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    #@35
    .line 177
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
    .line 54
    sget-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 55
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
    .line 53
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
    .line 48
    sget-boolean v0, Landroid/telecom/Log;->DEBUG:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 49
    const-string/jumbo v0, "TelecomFramework"

    #@7
    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 47
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
    .line 102
    sget-boolean v0, Landroid/telecom/Log;->ERROR:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 103
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
    .line 101
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
    .line 96
    sget-boolean v0, Landroid/telecom/Log;->ERROR:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 97
    const-string/jumbo v0, "TelecomFramework"

    #@7
    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@e
    .line 95
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
    .line 152
    new-instance v1, Ljava/lang/StringBuffer;

    #@4
    array-length v3, p0

    #@5
    mul-int/lit8 v3, v3, 0x2

    #@7
    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    #@a
    .line 154
    .local v1, "hex":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    #@b
    .local v2, "i":I
    :goto_0
    array-length v3, p0

    #@c
    if-ge v2, v3, :cond_1

    #@e
    .line 155
    aget-byte v3, p0, v2

    #@10
    and-int/lit16 v0, v3, 0xff

    #@12
    .line 156
    .local v0, "byteIntValue":I
    if-ge v0, v4, :cond_0

    #@14
    .line 157
    const-string/jumbo v3, "0"

    #@17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1a
    .line 159
    :cond_0
    invoke-static {v0, v4}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@21
    .line 154
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 162
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
    .line 166
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
    .line 66
    sget-boolean v0, Landroid/telecom/Log;->INFO:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 67
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
    .line 65
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
    .line 60
    sget-boolean v0, Landroid/telecom/Log;->INFO:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 61
    const-string/jumbo v0, "TelecomFramework"

    #@7
    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 59
    :cond_0
    return-void
.end method

.method public static isLoggable(I)Z
    .locals 1
    .param p0, "level"    # I

    #@0
    .prologue
    .line 44
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
    .line 133
    if-eqz p0, :cond_0

    #@2
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    #@4
    if-eqz v0, :cond_1

    #@6
    .line 134
    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 136
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v1, "["

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v1}, Landroid/telecom/Log;->secureHash([B)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    const-string/jumbo v1, "]"

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method

.method private static secureHash([B)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # [B

    #@0
    .prologue
    .line 142
    :try_start_0
    const-string/jumbo v3, "SHA-1"

    #@3
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    move-result-object v1

    #@7
    .line 146
    .local v1, "messageDigest":Ljava/security/MessageDigest;
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    #@a
    .line 147
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    #@d
    move-result-object v2

    #@e
    .line 148
    .local v2, "result":[B
    invoke-static {v2}, Landroid/telecom/Log;->encodeHex([B)Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    return-object v3

    #@13
    .line 143
    .end local v1    # "messageDigest":Ljava/security/MessageDigest;
    .end local v2    # "result":[B
    :catch_0
    move-exception v0

    #@14
    .line 144
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const/4 v3, 0x0

    #@15
    return-object v3
.end method

.method public static varargs v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "objectPrefix"    # Ljava/lang/Object;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 78
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 79
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
    .line 77
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
    .line 72
    sget-boolean v0, Landroid/telecom/Log;->VERBOSE:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 73
    const-string/jumbo v0, "TelecomFramework"

    #@7
    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 71
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
    .line 90
    sget-boolean v0, Landroid/telecom/Log;->WARN:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 91
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
    .line 89
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
    .line 84
    sget-boolean v0, Landroid/telecom/Log;->WARN:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 85
    const-string/jumbo v0, "TelecomFramework"

    #@7
    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 83
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
    .line 123
    invoke-static {p0}, Landroid/telecom/Log;->getPrefixFromObject(Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 124
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "TelecomFramework"

    #@b
    new-instance v2, Ljava/lang/IllegalStateException;

    #@d
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@13
    .line 122
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
    .line 113
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
    .line 112
    return-void
.end method

.method public static varargs wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 118
    invoke-static {p0, p1, p2}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 119
    .local v0, "msg":Ljava/lang/String;
    const-string/jumbo v1, "TelecomFramework"

    #@7
    new-instance v2, Ljava/lang/IllegalStateException;

    #@9
    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    invoke-static {v1, v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@f
    .line 117
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
    .line 109
    const-string/jumbo v0, "TelecomFramework"

    #@3
    invoke-static {p0, p2, p3}, Landroid/telecom/Log;->buildMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@a
    .line 108
    return-void
.end method
