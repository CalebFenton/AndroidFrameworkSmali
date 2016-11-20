.class public Lsun/security/ssl/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field private static args:Ljava/lang/String;


# instance fields
.field private prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 47
    new-instance v0, Lsun/security/action/GetPropertyAction;

    #@2
    const-string/jumbo v1, "javax.net.debug"

    #@5
    const-string/jumbo v2, ""

    #@8
    invoke-direct {v0, v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 46
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/lang/String;

    #@11
    sput-object v0, Lsun/security/ssl/Debug;->args:Ljava/lang/String;

    #@13
    .line 48
    sget-object v0, Lsun/security/ssl/Debug;->args:Ljava/lang/String;

    #@15
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    sput-object v0, Lsun/security/ssl/Debug;->args:Ljava/lang/String;

    #@1d
    .line 49
    sget-object v0, Lsun/security/ssl/Debug;->args:Ljava/lang/String;

    #@1f
    const-string/jumbo v1, "help"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v0

    #@26
    if-eqz v0, :cond_0

    #@28
    .line 50
    invoke-static {}, Lsun/security/ssl/Debug;->Help()V

    #@2b
    .line 39
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static Help()V
    .locals 2

    #@0
    .prologue
    .line 56
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@5
    .line 57
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@7
    const-string/jumbo v1, "all            turn on all debugging"

    #@a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@d
    .line 58
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@f
    const-string/jumbo v1, "ssl            turn on ssl debugging"

    #@12
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@15
    .line 59
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@17
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@1a
    .line 60
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@1c
    const-string/jumbo v1, "The following can be used with ssl:"

    #@1f
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22
    .line 61
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@24
    const-string/jumbo v1, "\trecord       enable per-record tracing"

    #@27
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2a
    .line 62
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2c
    const-string/jumbo v1, "\thandshake    print each handshake message"

    #@2f
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@32
    .line 63
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@34
    const-string/jumbo v1, "\tkeygen       print key generation data"

    #@37
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3a
    .line 64
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@3c
    const-string/jumbo v1, "\tsession      print session activity"

    #@3f
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@42
    .line 65
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@44
    const-string/jumbo v1, "\tdefaultctx   print default SSL initialization"

    #@47
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@4a
    .line 66
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@4c
    const-string/jumbo v1, "\tsslctx       print SSLContext tracing"

    #@4f
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@52
    .line 67
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@54
    const-string/jumbo v1, "\tsessioncache print session cache tracing"

    #@57
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@5a
    .line 68
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@5c
    const-string/jumbo v1, "\tkeymanager   print key manager tracing"

    #@5f
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@62
    .line 69
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@64
    const-string/jumbo v1, "\ttrustmanager print trust manager tracing"

    #@67
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@6a
    .line 70
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@6c
    const-string/jumbo v1, "\tpluggability print pluggability tracing"

    #@6f
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@72
    .line 71
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@74
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@77
    .line 72
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@79
    const-string/jumbo v1, "\thandshake debugging can be widened with:"

    #@7c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@7f
    .line 73
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@81
    const-string/jumbo v1, "\tdata         hex dump of each handshake message"

    #@84
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@87
    .line 74
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@89
    const-string/jumbo v1, "\tverbose      verbose handshake message printing"

    #@8c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@8f
    .line 75
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@91
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@94
    .line 76
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@96
    const-string/jumbo v1, "\trecord debugging can be widened with:"

    #@99
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@9c
    .line 77
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@9e
    const-string/jumbo v1, "\tplaintext    hex dump of record plaintext"

    #@a1
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@a4
    .line 78
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@a6
    const-string/jumbo v1, "\tpacket       print raw SSL/TLS packets"

    #@a9
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@ac
    .line 79
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@ae
    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    #@b1
    .line 80
    const/4 v0, 0x0

    #@b2
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    #@b5
    .line 54
    return-void
.end method

.method static getBooleanProperty(Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "propName"    # Ljava/lang/String;
    .param p1, "defaultValue"    # Z

    #@0
    .prologue
    .line 185
    new-instance v1, Lsun/security/action/GetPropertyAction;

    #@2
    invoke-direct {v1, p0}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@5
    .line 184
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/lang/String;

    #@b
    .line 186
    .local v0, "b":Ljava/lang/String;
    if-nez v0, :cond_0

    #@d
    .line 187
    return p1

    #@e
    .line 188
    :cond_0
    const-string/jumbo v1, "false"

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    .line 189
    const/4 v1, 0x0

    #@18
    return v1

    #@19
    .line 190
    :cond_1
    const-string/jumbo v1, "true"

    #@1c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1f
    move-result v1

    #@20
    if-eqz v1, :cond_2

    #@22
    .line 191
    const/4 v1, 0x1

    #@23
    return v1

    #@24
    .line 193
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    #@26
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v3, "Value of "

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    .line 194
    const-string/jumbo v3, " must either be \'true\' or \'false\'"

    #@39
    .line 193
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v2

    #@3d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v2

    #@41
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1
.end method

.method public static getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;
    .locals 1
    .param p0, "option"    # Ljava/lang/String;

    #@0
    .prologue
    .line 90
    invoke-static {p0, p0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Lsun/security/ssl/Debug;
    .locals 2
    .param p0, "option"    # Ljava/lang/String;
    .param p1, "prefix"    # Ljava/lang/String;

    #@0
    .prologue
    .line 99
    invoke-static {p0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 100
    new-instance v0, Lsun/security/ssl/Debug;

    #@8
    invoke-direct {v0}, Lsun/security/ssl/Debug;-><init>()V

    #@b
    .line 101
    .local v0, "d":Lsun/security/ssl/Debug;
    iput-object p1, v0, Lsun/security/ssl/Debug;->prefix:Ljava/lang/String;

    #@d
    .line 102
    return-object v0

    #@e
    .line 104
    .end local v0    # "d":Lsun/security/ssl/Debug;
    :cond_0
    const/4 v1, 0x0

    #@f
    return-object v1
.end method

.method public static isOn(Ljava/lang/String;)Z
    .locals 6
    .param p0, "option"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v5, -0x1

    #@3
    .line 114
    sget-object v3, Lsun/security/ssl/Debug;->args:Ljava/lang/String;

    #@5
    if-nez v3, :cond_0

    #@7
    .line 115
    return v2

    #@8
    .line 117
    :cond_0
    const/4 v0, 0x0

    #@9
    .line 118
    .local v0, "n":I
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@b
    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@e
    move-result-object p0

    #@f
    .line 120
    sget-object v3, Lsun/security/ssl/Debug;->args:Ljava/lang/String;

    #@11
    const-string/jumbo v4, "all"

    #@14
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@17
    move-result v3

    #@18
    if-eq v3, v5, :cond_1

    #@1a
    .line 121
    return v1

    #@1b
    .line 122
    :cond_1
    sget-object v3, Lsun/security/ssl/Debug;->args:Ljava/lang/String;

    #@1d
    const-string/jumbo v4, "ssl"

    #@20
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@23
    move-result v0

    #@24
    if-eq v0, v5, :cond_3

    #@26
    .line 123
    sget-object v3, Lsun/security/ssl/Debug;->args:Ljava/lang/String;

    #@28
    const-string/jumbo v4, "sslctx"

    #@2b
    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    #@2e
    move-result v3

    #@2f
    if-ne v3, v5, :cond_3

    #@31
    .line 125
    const-string/jumbo v3, "data"

    #@34
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v3

    #@38
    if-nez v3, :cond_2

    #@3a
    .line 126
    const-string/jumbo v3, "packet"

    #@3d
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v3

    #@41
    .line 125
    if-nez v3, :cond_2

    #@43
    .line 127
    const-string/jumbo v3, "plaintext"

    #@46
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49
    move-result v3

    #@4a
    .line 125
    :goto_0
    if-nez v3, :cond_3

    #@4c
    .line 128
    return v1

    #@4d
    :cond_2
    move v3, v1

    #@4e
    .line 125
    goto :goto_0

    #@4f
    .line 132
    :cond_3
    sget-object v3, Lsun/security/ssl/Debug;->args:Ljava/lang/String;

    #@51
    invoke-virtual {v3, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@54
    move-result v3

    #@55
    if-eq v3, v5, :cond_4

    #@57
    :goto_1
    return v1

    #@58
    :cond_4
    move v1, v2

    #@59
    goto :goto_1
.end method

.method public static println(Ljava/io/PrintStream;Ljava/lang/String;[B)V
    .locals 3
    .param p0, "s"    # Ljava/io/PrintStream;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "data"    # [B

    #@0
    .prologue
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v1

    #@9
    const-string/jumbo v2, ":  { "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@17
    .line 166
    if-nez p2, :cond_1

    #@19
    .line 167
    const-string/jumbo v1, "null"

    #@1c
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@1f
    .line 174
    :cond_0
    const-string/jumbo v1, " }"

    #@22
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@25
    .line 164
    return-void

    #@26
    .line 169
    :cond_1
    const/4 v0, 0x0

    #@27
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@28
    if-ge v0, v1, :cond_0

    #@2a
    .line 170
    if-eqz v0, :cond_2

    #@2c
    const-string/jumbo v1, ", "

    #@2f
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@32
    .line 171
    :cond_2
    aget-byte v1, p2, v0

    #@34
    and-int/lit16 v1, v1, 0xff

    #@36
    invoke-virtual {p0, v1}, Ljava/io/PrintStream;->print(I)V

    #@39
    .line 169
    add-int/lit8 v0, v0, 0x1

    #@3b
    goto :goto_0
.end method

.method public static println(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 161
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v1

    #@b
    const-string/jumbo v2, ": "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1d
    .line 159
    return-void
.end method

.method static toString([B)Ljava/lang/String;
    .locals 1
    .param p0, "b"    # [B

    #@0
    .prologue
    .line 199
    invoke-static {p0}, Lsun/security/util/Debug;->toString([B)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method


# virtual methods
.method public println()V
    .locals 3

    #@0
    .prologue
    .line 152
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    iget-object v2, p0, Lsun/security/ssl/Debug;->prefix:Ljava/lang/String;

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, ":"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1b
    .line 150
    return-void
.end method

.method public println(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 143
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    iget-object v2, p0, Lsun/security/ssl/Debug;->prefix:Ljava/lang/String;

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v1

    #@d
    const-string/jumbo v2, ": "

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1f
    .line 141
    return-void
.end method
