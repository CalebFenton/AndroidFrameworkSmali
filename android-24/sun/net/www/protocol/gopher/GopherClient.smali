.class public Lsun/net/www/protocol/gopher/GopherClient;
.super Lsun/net/NetworkClient;
.source "GopherClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static gopherProxyHost:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static gopherProxyPort:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static useGopherProxy:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field connection:Lsun/net/www/URLConnection;

.field gkey:Ljava/lang/String;

.field gtype:I

.field os:Ljava/io/PipedOutputStream;

.field u:Ljava/net/URL;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 71
    new-instance v0, Lsun/security/action/GetBooleanAction;

    #@2
    const-string/jumbo v1, "gopherProxySet"

    #@5
    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    #@8
    .line 70
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Boolean;

    #@e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v0

    #@12
    sput-boolean v0, Lsun/net/www/protocol/gopher/GopherClient;->useGopherProxy:Z

    #@14
    .line 75
    new-instance v0, Lsun/security/action/GetPropertyAction;

    #@16
    const-string/jumbo v1, "gopherProxyHost"

    #@19
    invoke-direct {v0, v1}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@1c
    .line 74
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    check-cast v0, Ljava/lang/String;

    #@22
    sput-object v0, Lsun/net/www/protocol/gopher/GopherClient;->gopherProxyHost:Ljava/lang/String;

    #@24
    .line 78
    new-instance v0, Lsun/security/action/GetIntegerAction;

    #@26
    const-string/jumbo v1, "gopherProxyPort"

    #@29
    const/16 v2, 0x50

    #@2b
    invoke-direct {v0, v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    #@2e
    .line 77
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Ljava/lang/Integer;

    #@34
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@37
    move-result v0

    #@38
    sput v0, Lsun/net/www/protocol/gopher/GopherClient;->gopherProxyPort:I

    #@3a
    .line 38
    return-void
.end method

.method constructor <init>(Lsun/net/www/URLConnection;)V
    .locals 0
    .param p1, "connection"    # Lsun/net/www/URLConnection;

    #@0
    .prologue
    .line 88
    invoke-direct {p0}, Lsun/net/NetworkClient;-><init>()V

    #@3
    .line 89
    iput-object p1, p0, Lsun/net/www/protocol/gopher/GopherClient;->connection:Lsun/net/www/URLConnection;

    #@5
    .line 88
    return-void
.end method

.method private decodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v13, 0x41

    #@2
    const/16 v12, 0x39

    #@4
    const/16 v11, 0x30

    #@6
    const/16 v10, 0x25

    #@8
    const/4 v9, 0x0

    #@9
    .line 181
    if-eqz p1, :cond_0

    #@b
    invoke-virtual {p1, v10}, Ljava/lang/String;->indexOf(I)I

    #@e
    move-result v8

    #@f
    if-gez v8, :cond_1

    #@11
    .line 182
    :cond_0
    return-object p1

    #@12
    .line 183
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@15
    move-result v4

    #@16
    .line 184
    .local v4, "limit":I
    new-array v1, v4, [C

    #@18
    .line 185
    .local v1, "d":[C
    const/4 v2, 0x0

    #@19
    .line 186
    .local v2, "dp":I
    const/4 v7, 0x0

    #@1a
    .local v7, "sp":I
    move v3, v2

    #@1b
    .end local v2    # "dp":I
    .local v3, "dp":I
    :goto_0
    if-ge v7, v4, :cond_9

    #@1d
    .line 187
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    #@20
    move-result v0

    #@21
    .line 188
    .local v0, "c":I
    if-ne v0, v10, :cond_2

    #@23
    add-int/lit8 v8, v7, 0x2

    #@25
    if-ge v8, v4, :cond_2

    #@27
    .line 189
    add-int/lit8 v8, v7, 0x1

    #@29
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    #@2c
    move-result v5

    #@2d
    .line 190
    .local v5, "s1":I
    add-int/lit8 v8, v7, 0x2

    #@2f
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    #@32
    move-result v6

    #@33
    .line 191
    .local v6, "s2":I
    if-gt v11, v5, :cond_3

    #@35
    if-gt v5, v12, :cond_3

    #@37
    .line 192
    add-int/lit8 v5, v5, -0x30

    #@39
    .line 199
    :goto_1
    if-gt v11, v6, :cond_6

    #@3b
    if-gt v6, v12, :cond_6

    #@3d
    .line 200
    add-int/lit8 v6, v6, -0x30

    #@3f
    .line 207
    :goto_2
    if-ltz v5, :cond_2

    #@41
    if-ltz v6, :cond_2

    #@43
    .line 208
    shl-int/lit8 v8, v5, 0x4

    #@45
    or-int v0, v8, v6

    #@47
    .line 209
    add-int/lit8 v7, v7, 0x2

    #@49
    .line 212
    .end local v5    # "s1":I
    .end local v6    # "s2":I
    :cond_2
    add-int/lit8 v2, v3, 0x1

    #@4b
    .end local v3    # "dp":I
    .restart local v2    # "dp":I
    int-to-char v8, v0

    #@4c
    aput-char v8, v1, v3

    #@4e
    .line 186
    add-int/lit8 v7, v7, 0x1

    #@50
    move v3, v2

    #@51
    .end local v2    # "dp":I
    .restart local v3    # "dp":I
    goto :goto_0

    #@52
    .line 193
    .restart local v5    # "s1":I
    .restart local v6    # "s2":I
    :cond_3
    const/16 v8, 0x61

    #@54
    if-gt v8, v5, :cond_4

    #@56
    const/16 v8, 0x66

    #@58
    if-gt v5, v8, :cond_4

    #@5a
    .line 194
    add-int/lit8 v8, v5, -0x61

    #@5c
    add-int/lit8 v5, v8, 0xa

    #@5e
    goto :goto_1

    #@5f
    .line 195
    :cond_4
    if-gt v13, v5, :cond_5

    #@61
    const/16 v8, 0x46

    #@63
    if-gt v5, v8, :cond_5

    #@65
    .line 196
    add-int/lit8 v8, v5, -0x41

    #@67
    add-int/lit8 v5, v8, 0xa

    #@69
    goto :goto_1

    #@6a
    .line 198
    :cond_5
    const/4 v5, -0x1

    #@6b
    goto :goto_1

    #@6c
    .line 201
    :cond_6
    const/16 v8, 0x61

    #@6e
    if-gt v8, v6, :cond_7

    #@70
    const/16 v8, 0x66

    #@72
    if-gt v6, v8, :cond_7

    #@74
    .line 202
    add-int/lit8 v8, v6, -0x61

    #@76
    add-int/lit8 v6, v8, 0xa

    #@78
    goto :goto_2

    #@79
    .line 203
    :cond_7
    if-gt v13, v6, :cond_8

    #@7b
    const/16 v8, 0x46

    #@7d
    if-gt v6, v8, :cond_8

    #@7f
    .line 204
    add-int/lit8 v8, v6, -0x41

    #@81
    add-int/lit8 v6, v8, 0xa

    #@83
    goto :goto_2

    #@84
    .line 206
    :cond_8
    const/4 v6, -0x1

    #@85
    goto :goto_2

    #@86
    .line 214
    .end local v0    # "c":I
    .end local v5    # "s1":I
    .end local v6    # "s2":I
    :cond_9
    new-instance v8, Ljava/lang/String;

    #@88
    invoke-direct {v8, v1, v9, v3}, Ljava/lang/String;-><init>([CII)V

    #@8b
    return-object v8
.end method

.method private encodePercent(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v11, 0x25

    #@2
    const/16 v10, 0xa

    #@4
    const/4 v9, 0x0

    #@5
    .line 219
    if-nez p1, :cond_0

    #@7
    .line 220
    return-object p1

    #@8
    .line 221
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@b
    move-result v4

    #@c
    .line 222
    .local v4, "limit":I
    const/4 v1, 0x0

    #@d
    .line 223
    .local v1, "d":[C
    const/4 v3, 0x0

    #@e
    .line 224
    .local v3, "dp":I
    const/4 v6, 0x0

    #@f
    .end local v1    # "d":[C
    .local v6, "sp":I
    :goto_0
    if-ge v6, v4, :cond_9

    #@11
    .line 225
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 226
    .local v0, "c":I
    const/16 v7, 0x20

    #@17
    if-le v0, v7, :cond_1

    #@19
    const/16 v7, 0x22

    #@1b
    if-ne v0, v7, :cond_4

    #@1d
    .line 227
    :cond_1
    if-nez v1, :cond_2

    #@1f
    .line 228
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    #@22
    move-result-object v1

    #@23
    .line 229
    :cond_2
    add-int/lit8 v7, v3, 0x3

    #@25
    array-length v8, v1

    #@26
    if-lt v7, v8, :cond_3

    #@28
    .line 230
    add-int/lit8 v7, v3, 0xa

    #@2a
    new-array v5, v7, [C

    #@2c
    .line 231
    .local v5, "nd":[C
    invoke-static {v1, v9, v5, v9, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@2f
    .line 232
    move-object v1, v5

    #@30
    .line 234
    .end local v5    # "nd":[C
    :cond_3
    aput-char v11, v1, v3

    #@32
    .line 235
    shr-int/lit8 v7, v0, 0x4

    #@34
    and-int/lit8 v2, v7, 0xf

    #@36
    .line 236
    .local v2, "dig":I
    add-int/lit8 v8, v3, 0x1

    #@38
    if-ge v2, v10, :cond_7

    #@3a
    add-int/lit8 v7, v2, 0x30

    #@3c
    :goto_1
    int-to-char v7, v7

    #@3d
    aput-char v7, v1, v8

    #@3f
    .line 237
    and-int/lit8 v2, v0, 0xf

    #@41
    .line 238
    add-int/lit8 v8, v3, 0x2

    #@43
    if-ge v2, v10, :cond_8

    #@45
    add-int/lit8 v7, v2, 0x30

    #@47
    :goto_2
    int-to-char v7, v7

    #@48
    aput-char v7, v1, v8

    #@4a
    .line 239
    add-int/lit8 v3, v3, 0x3

    #@4c
    .line 224
    .end local v2    # "dig":I
    :goto_3
    add-int/lit8 v6, v6, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 226
    :cond_4
    if-eq v0, v11, :cond_1

    #@51
    .line 241
    if-eqz v1, :cond_6

    #@53
    .line 242
    array-length v7, v1

    #@54
    if-lt v3, v7, :cond_5

    #@56
    .line 243
    add-int/lit8 v7, v3, 0xa

    #@58
    new-array v5, v7, [C

    #@5a
    .line 244
    .restart local v5    # "nd":[C
    invoke-static {v1, v9, v5, v9, v3}, Ljava/lang/System;->arraycopy([CI[CII)V

    #@5d
    .line 245
    move-object v1, v5

    #@5e
    .line 247
    .end local v5    # "nd":[C
    :cond_5
    int-to-char v7, v0

    #@5f
    aput-char v7, v1, v3

    #@61
    .line 249
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@63
    goto :goto_3

    #@64
    .line 236
    .restart local v2    # "dig":I
    :cond_7
    add-int/lit8 v7, v2, 0x37

    #@66
    goto :goto_1

    #@67
    .line 238
    :cond_8
    add-int/lit8 v7, v2, 0x37

    #@69
    goto :goto_2

    #@6a
    .line 252
    .end local v0    # "c":I
    .end local v2    # "dig":I
    :cond_9
    if-nez v1, :cond_a

    #@6c
    .end local p1    # "s":Ljava/lang/String;
    :goto_4
    return-object p1

    #@6d
    .restart local p1    # "s":Ljava/lang/String;
    :cond_a
    new-instance p1, Ljava/lang/String;

    #@6f
    .end local p1    # "s":Ljava/lang/String;
    invoke-direct {p1, v1, v9, v3}, Ljava/lang/String;-><init>([CII)V

    #@72
    goto :goto_4
.end method

.method public static getGopherProxyHost()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 106
    new-instance v1, Lsun/security/action/GetPropertyAction;

    #@2
    const-string/jumbo v2, "gopherProxyHost"

    #@5
    invoke-direct {v1, v2}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    #@8
    .line 105
    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/String;

    #@e
    .line 107
    .local v0, "host":Ljava/lang/String;
    const-string/jumbo v1, ""

    #@11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 108
    const/4 v0, 0x0

    #@18
    .line 110
    .end local v0    # "host":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getGopherProxyPort()I
    .locals 3

    #@0
    .prologue
    .line 118
    new-instance v0, Lsun/security/action/GetIntegerAction;

    #@2
    const-string/jumbo v1, "gopherProxyPort"

    #@5
    const/16 v2, 0x50

    #@7
    invoke-direct {v0, v1, v2}, Lsun/security/action/GetIntegerAction;-><init>(Ljava/lang/String;I)V

    #@a
    .line 117
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/Integer;

    #@10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v0

    #@14
    return v0
.end method

.method public static getUseGopherProxy()Z
    .locals 2

    #@0
    .prologue
    .line 98
    new-instance v0, Lsun/security/action/GetBooleanAction;

    #@2
    const-string/jumbo v1, "gopherProxySet"

    #@5
    invoke-direct {v0, v1}, Lsun/security/action/GetBooleanAction;-><init>(Ljava/lang/String;)V

    #@8
    .line 97
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/lang/Boolean;

    #@e
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@11
    move-result v0

    #@12
    return v0
.end method


# virtual methods
.method openStream(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 10
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v7, 0x2f

    #@2
    const/4 v9, 0x0

    #@3
    .line 124
    iput-object p1, p0, Lsun/net/www/protocol/gopher/GopherClient;->u:Ljava/net/URL;

    #@5
    .line 125
    iget-object v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    #@7
    iput-object v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    #@9
    .line 126
    const/4 v1, 0x0

    #@a
    .line 127
    .local v1, "i":I
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@d
    move-result-object v5

    #@e
    .line 128
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@11
    move-result v2

    #@12
    .line 129
    .local v2, "limit":I
    const/16 v0, 0x31

    #@14
    .line 130
    .local v0, "c":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@16
    invoke-virtual {v5, v1}, Ljava/lang/String;->charAt(I)C

    #@19
    move-result v0

    #@1a
    if-ne v0, v7, :cond_0

    #@1c
    .line 131
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 132
    :cond_0
    if-ne v0, v7, :cond_1

    #@21
    const/16 v0, 0x31

    #@23
    .end local v0    # "c":I
    :cond_1
    iput v0, p0, Lsun/net/www/protocol/gopher/GopherClient;->gtype:I

    #@25
    .line 133
    if-ge v1, v2, :cond_2

    #@27
    .line 134
    add-int/lit8 v1, v1, 0x1

    #@29
    .line 135
    :cond_2
    invoke-virtual {v5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2c
    move-result-object v6

    #@2d
    iput-object v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    #@2f
    .line 137
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@36
    move-result v6

    #@37
    if-gtz v6, :cond_3

    #@39
    const/16 v6, 0x46

    #@3b
    :goto_1
    invoke-virtual {p0, v7, v6}, Lsun/net/NetworkClient;->openServer(Ljava/lang/String;I)V

    #@3e
    .line 139
    new-instance v3, Lsun/net/www/MessageHeader;

    #@40
    invoke-direct {v3}, Lsun/net/www/MessageHeader;-><init>()V

    #@43
    .line 141
    .local v3, "msgh":Lsun/net/www/MessageHeader;
    iget v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->gtype:I

    #@45
    sparse-switch v6, :sswitch_data_0

    #@48
    .line 154
    const-string/jumbo v6, "content-type"

    #@4b
    const-string/jumbo v7, "content/unknown"

    #@4e
    invoke-virtual {v3, v6, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@51
    .line 157
    :goto_2
    iget v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->gtype:I

    #@53
    const/16 v7, 0x37

    #@55
    if-eq v6, v7, :cond_4

    #@57
    .line 158
    iget-object v6, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    #@59
    new-instance v7, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    iget-object v8, p0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    #@60
    invoke-direct {p0, v8}, Lsun/net/www/protocol/gopher/GopherClient;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    #@63
    move-result-object v8

    #@64
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v7

    #@68
    const-string/jumbo v8, "\r\n"

    #@6b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v7

    #@6f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v7

    #@73
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@76
    .line 159
    iget-object v6, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    #@78
    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V

    #@7b
    .line 168
    :goto_3
    iget-object v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->connection:Lsun/net/www/URLConnection;

    #@7d
    invoke-virtual {v6, v3}, Lsun/net/www/URLConnection;->setProperties(Lsun/net/www/MessageHeader;)V

    #@80
    .line 169
    const-string/jumbo v6, "content-type"

    #@83
    invoke-virtual {v3, v6}, Lsun/net/www/MessageHeader;->findValue(Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object v6

    #@87
    const-string/jumbo v7, "text/html"

    #@8a
    if-ne v6, v7, :cond_6

    #@8c
    .line 170
    new-instance v6, Ljava/io/PipedOutputStream;

    #@8e
    invoke-direct {v6}, Ljava/io/PipedOutputStream;-><init>()V

    #@91
    iput-object v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    #@93
    .line 171
    new-instance v4, Ljava/io/PipedInputStream;

    #@95
    invoke-direct {v4}, Ljava/io/PipedInputStream;-><init>()V

    #@98
    .line 172
    .local v4, "ret":Ljava/io/PipedInputStream;
    iget-object v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    #@9a
    invoke-virtual {v4, v6}, Ljava/io/PipedInputStream;->connect(Ljava/io/PipedOutputStream;)V

    #@9d
    .line 173
    new-instance v6, Ljava/lang/Thread;

    #@9f
    invoke-direct {v6, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #@a2
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    #@a5
    .line 174
    return-object v4

    #@a6
    .line 137
    .end local v3    # "msgh":Lsun/net/www/MessageHeader;
    .end local v4    # "ret":Ljava/io/PipedInputStream;
    :cond_3
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@a9
    move-result v6

    #@aa
    goto :goto_1

    #@ab
    .line 144
    .restart local v3    # "msgh":Lsun/net/www/MessageHeader;
    :sswitch_0
    const-string/jumbo v6, "content-type"

    #@ae
    const-string/jumbo v7, "text/plain"

    #@b1
    invoke-virtual {v3, v6, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@b4
    goto :goto_2

    #@b5
    .line 147
    :sswitch_1
    const-string/jumbo v6, "content-type"

    #@b8
    const-string/jumbo v7, "text/html"

    #@bb
    invoke-virtual {v3, v6, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@be
    goto :goto_2

    #@bf
    .line 151
    :sswitch_2
    const-string/jumbo v6, "content-type"

    #@c2
    const-string/jumbo v7, "image/gif"

    #@c5
    invoke-virtual {v3, v6, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@c8
    goto :goto_2

    #@c9
    .line 160
    :cond_4
    iget-object v6, p0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    #@cb
    const/16 v7, 0x3f

    #@cd
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    #@d0
    move-result v1

    #@d1
    if-ltz v1, :cond_5

    #@d3
    .line 161
    iget-object v6, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    #@d5
    new-instance v7, Ljava/lang/StringBuilder;

    #@d7
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@da
    iget-object v8, p0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    #@dc
    invoke-virtual {v8, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@df
    move-result-object v8

    #@e0
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e3
    move-result-object v7

    #@e4
    const-string/jumbo v8, "\t"

    #@e7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v7

    #@eb
    .line 162
    iget-object v8, p0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    #@ed
    add-int/lit8 v9, v1, 0x1

    #@ef
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f2
    move-result-object v8

    #@f3
    .line 161
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f6
    move-result-object v7

    #@f7
    .line 162
    const-string/jumbo v8, "\r\n"

    #@fa
    .line 161
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fd
    move-result-object v7

    #@fe
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@101
    move-result-object v7

    #@102
    invoke-direct {p0, v7}, Lsun/net/www/protocol/gopher/GopherClient;->decodePercent(Ljava/lang/String;)Ljava/lang/String;

    #@105
    move-result-object v7

    #@106
    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@109
    .line 163
    iget-object v6, p0, Lsun/net/NetworkClient;->serverOutput:Ljava/io/PrintStream;

    #@10b
    invoke-virtual {v6}, Ljava/io/PrintStream;->flush()V

    #@10e
    .line 164
    const-string/jumbo v6, "content-type"

    #@111
    const-string/jumbo v7, "text/html"

    #@114
    invoke-virtual {v3, v6, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@117
    goto/16 :goto_3

    #@119
    .line 166
    :cond_5
    const-string/jumbo v6, "content-type"

    #@11c
    const-string/jumbo v7, "text/html"

    #@11f
    invoke-virtual {v3, v6, v7}, Lsun/net/www/MessageHeader;->add(Ljava/lang/String;Ljava/lang/String;)V

    #@122
    goto/16 :goto_3

    #@124
    .line 176
    :cond_6
    new-instance v6, Lsun/net/www/protocol/gopher/GopherInputStream;

    #@126
    iget-object v7, p0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@128
    invoke-direct {v6, p0, v7}, Lsun/net/www/protocol/gopher/GopherInputStream;-><init>(Lsun/net/NetworkClient;Ljava/io/InputStream;)V

    #@12b
    return-object v6

    #@12c
    .line 141
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x37 -> :sswitch_0
        0x49 -> :sswitch_2
        0x67 -> :sswitch_2
    .end sparse-switch
.end method

.method public run()V
    .locals 24

    #@0
    .prologue
    .line 258
    const/4 v15, -0x1

    #@1
    .line 260
    .local v15, "qpos":I
    :try_start_0
    move-object/from16 v0, p0

    #@3
    iget v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->gtype:I

    #@5
    move/from16 v21, v0

    #@7
    const/16 v22, 0x37

    #@9
    move/from16 v0, v21

    #@b
    move/from16 v1, v22

    #@d
    if-ne v0, v1, :cond_1

    #@f
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    #@13
    move-object/from16 v21, v0

    #@15
    const/16 v22, 0x3f

    #@17
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(I)I

    #@1a
    move-result v15

    #@1b
    if-gez v15, :cond_1

    #@1d
    .line 261
    new-instance v14, Ljava/io/PrintStream;

    #@1f
    move-object/from16 v0, p0

    #@21
    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    #@23
    move-object/from16 v21, v0

    #@25
    sget-object v22, Lsun/net/www/protocol/gopher/GopherClient;->encoding:Ljava/lang/String;

    #@27
    const/16 v23, 0x0

    #@29
    move-object/from16 v0, v21

    #@2b
    move/from16 v1, v23

    #@2d
    move-object/from16 v2, v22

    #@2f
    invoke-direct {v14, v0, v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    #@32
    .line 262
    .local v14, "ps":Ljava/io/PrintStream;
    const-string/jumbo v21, "<html><head><title>Searchable Gopher Index</title></head>\n<body><h1>Searchable Gopher Index</h1><isindex>\n</body></html>\n"

    #@35
    move-object/from16 v0, v21

    #@37
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3a
    .line 331
    .end local v14    # "ps":Ljava/io/PrintStream;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lsun/net/NetworkClient;->closeServer()V

    #@3d
    .line 332
    move-object/from16 v0, p0

    #@3f
    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    #@41
    move-object/from16 v21, v0

    #@43
    invoke-virtual/range {v21 .. v21}, Ljava/io/PipedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    #@46
    .line 257
    :goto_1
    return-void

    #@47
    .line 263
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    #@49
    iget v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->gtype:I

    #@4b
    move/from16 v21, v0

    #@4d
    const/16 v22, 0x31

    #@4f
    move/from16 v0, v21

    #@51
    move/from16 v1, v22

    #@53
    if-eq v0, v1, :cond_2

    #@55
    move-object/from16 v0, p0

    #@57
    iget v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->gtype:I

    #@59
    move/from16 v21, v0

    #@5b
    const/16 v22, 0x37

    #@5d
    move/from16 v0, v21

    #@5f
    move/from16 v1, v22

    #@61
    if-eq v0, v1, :cond_2

    #@63
    .line 264
    const/16 v21, 0x800

    #@65
    move/from16 v0, v21

    #@67
    new-array v3, v0, [B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@69
    .line 267
    .local v3, "buf":[B
    :goto_2
    :try_start_3
    move-object/from16 v0, p0

    #@6b
    iget-object v0, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@6d
    move-object/from16 v21, v0

    #@6f
    move-object/from16 v0, v21

    #@71
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    #@74
    move-result v12

    #@75
    .local v12, "n":I
    if-ltz v12, :cond_0

    #@77
    .line 268
    move-object/from16 v0, p0

    #@79
    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    #@7b
    move-object/from16 v21, v0

    #@7d
    const/16 v22, 0x0

    #@7f
    move-object/from16 v0, v21

    #@81
    move/from16 v1, v22

    #@83
    invoke-virtual {v0, v3, v1, v12}, Ljava/io/PipedOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@86
    goto :goto_2

    #@87
    .line 269
    .end local v12    # "n":I
    :catch_0
    move-exception v7

    #@88
    .local v7, "e":Ljava/lang/Exception;
    goto :goto_0

    #@89
    .line 272
    .end local v3    # "buf":[B
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_4
    new-instance v14, Ljava/io/PrintStream;

    #@8b
    move-object/from16 v0, p0

    #@8d
    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    #@8f
    move-object/from16 v21, v0

    #@91
    sget-object v22, Lsun/net/www/protocol/gopher/GopherClient;->encoding:Ljava/lang/String;

    #@93
    const/16 v23, 0x0

    #@95
    move-object/from16 v0, v21

    #@97
    move/from16 v1, v23

    #@99
    move-object/from16 v2, v22

    #@9b
    invoke-direct {v14, v0, v1, v2}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;ZLjava/lang/String;)V

    #@9e
    .line 273
    .restart local v14    # "ps":Ljava/io/PrintStream;
    const/16 v20, 0x0

    #@a0
    .line 274
    .local v20, "title":Ljava/lang/String;
    move-object/from16 v0, p0

    #@a2
    iget v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->gtype:I

    #@a4
    move/from16 v21, v0

    #@a6
    const/16 v22, 0x37

    #@a8
    move/from16 v0, v21

    #@aa
    move/from16 v1, v22

    #@ac
    if-ne v0, v1, :cond_4

    #@ae
    .line 275
    new-instance v21, Ljava/lang/StringBuilder;

    #@b0
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@b3
    const-string/jumbo v22, "Results of searching for \""

    #@b6
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b9
    move-result-object v21

    #@ba
    move-object/from16 v0, p0

    #@bc
    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    #@be
    move-object/from16 v22, v0

    #@c0
    add-int/lit8 v23, v15, 0x1

    #@c2
    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@c5
    move-result-object v22

    #@c6
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c9
    move-result-object v21

    #@ca
    .line 276
    const-string/jumbo v22, "\" on "

    #@cd
    .line 275
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d0
    move-result-object v21

    #@d1
    .line 276
    move-object/from16 v0, p0

    #@d3
    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->u:Ljava/net/URL;

    #@d5
    move-object/from16 v22, v0

    #@d7
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@da
    move-result-object v22

    #@db
    .line 275
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@de
    move-result-object v21

    #@df
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e2
    move-result-object v20

    #@e3
    .line 279
    .local v20, "title":Ljava/lang/String;
    :goto_3
    const-string/jumbo v21, "<html><head><title>"

    #@e6
    move-object/from16 v0, v21

    #@e8
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@eb
    .line 280
    move-object/from16 v0, v20

    #@ed
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@f0
    .line 281
    const-string/jumbo v21, "</title></head>\n<body>\n<H1>"

    #@f3
    move-object/from16 v0, v21

    #@f5
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@f8
    .line 282
    move-object/from16 v0, v20

    #@fa
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@fd
    .line 283
    const-string/jumbo v21, "</h1><dl compact>\n"

    #@100
    move-object/from16 v0, v21

    #@102
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@105
    .line 284
    new-instance v4, Ljava/io/DataInputStream;

    #@107
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Lsun/net/NetworkClient;->serverInput:Ljava/io/InputStream;

    #@10b
    move-object/from16 v21, v0

    #@10d
    move-object/from16 v0, v21

    #@10f
    invoke-direct {v4, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    #@112
    .line 286
    .local v4, "ds":Ljava/io/DataInputStream;
    :cond_3
    :goto_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    #@115
    move-result-object v16

    #@116
    .local v16, "s":Ljava/lang/String;
    if-eqz v16, :cond_a

    #@118
    .line 287
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    #@11b
    move-result v11

    #@11c
    .line 288
    .local v11, "len":I
    :goto_5
    if-lez v11, :cond_5

    #@11e
    add-int/lit8 v21, v11, -0x1

    #@120
    move-object/from16 v0, v16

    #@122
    move/from16 v1, v21

    #@124
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@127
    move-result v21

    #@128
    const/16 v22, 0x20

    #@12a
    move/from16 v0, v21

    #@12c
    move/from16 v1, v22

    #@12e
    if-gt v0, v1, :cond_5

    #@130
    .line 289
    add-int/lit8 v11, v11, -0x1

    #@132
    goto :goto_5

    #@133
    .line 278
    .end local v4    # "ds":Ljava/io/DataInputStream;
    .end local v11    # "len":I
    .end local v16    # "s":Ljava/lang/String;
    .local v20, "title":Ljava/lang/String;
    :cond_4
    new-instance v21, Ljava/lang/StringBuilder;

    #@135
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    const-string/jumbo v22, "Gopher directory "

    #@13b
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v21

    #@13f
    move-object/from16 v0, p0

    #@141
    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->gkey:Ljava/lang/String;

    #@143
    move-object/from16 v22, v0

    #@145
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@148
    move-result-object v21

    #@149
    const-string/jumbo v22, " from "

    #@14c
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14f
    move-result-object v21

    #@150
    move-object/from16 v0, p0

    #@152
    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->u:Ljava/net/URL;

    #@154
    move-object/from16 v22, v0

    #@156
    invoke-virtual/range {v22 .. v22}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@159
    move-result-object v22

    #@15a
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15d
    move-result-object v21

    #@15e
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@161
    move-result-object v20

    #@162
    .local v20, "title":Ljava/lang/String;
    goto :goto_3

    #@163
    .line 290
    .restart local v4    # "ds":Ljava/io/DataInputStream;
    .restart local v11    # "len":I
    .restart local v16    # "s":Ljava/lang/String;
    :cond_5
    if-lez v11, :cond_3

    #@165
    .line 292
    const/16 v21, 0x0

    #@167
    move-object/from16 v0, v16

    #@169
    move/from16 v1, v21

    #@16b
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    #@16e
    move-result v10

    #@16f
    .line 293
    .local v10, "key":I
    const/16 v21, 0x9

    #@171
    move-object/from16 v0, v16

    #@173
    move/from16 v1, v21

    #@175
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    #@178
    move-result v17

    #@179
    .line 294
    .local v17, "t1":I
    if-lez v17, :cond_6

    #@17b
    const/16 v21, 0x9

    #@17d
    add-int/lit8 v22, v17, 0x1

    #@17f
    move-object/from16 v0, v16

    #@181
    move/from16 v1, v21

    #@183
    move/from16 v2, v22

    #@185
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    #@188
    move-result v18

    #@189
    .line 295
    .local v18, "t2":I
    :goto_6
    if-lez v18, :cond_7

    #@18b
    const/16 v21, 0x9

    #@18d
    add-int/lit8 v22, v18, 0x1

    #@18f
    move-object/from16 v0, v16

    #@191
    move/from16 v1, v21

    #@193
    move/from16 v2, v22

    #@195
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    #@198
    move-result v19

    #@199
    .line 296
    .local v19, "t3":I
    :goto_7
    if-ltz v19, :cond_3

    #@19b
    .line 300
    add-int/lit8 v21, v19, 0x1

    #@19d
    move/from16 v0, v21

    #@19f
    if-ge v0, v11, :cond_8

    #@1a1
    new-instance v21, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    const-string/jumbo v22, ":"

    #@1a9
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v21

    #@1ad
    add-int/lit8 v22, v19, 0x1

    #@1af
    move-object/from16 v0, v16

    #@1b1
    move/from16 v1, v22

    #@1b3
    invoke-virtual {v0, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1b6
    move-result-object v22

    #@1b7
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ba
    move-result-object v21

    #@1bb
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1be
    move-result-object v13

    #@1bf
    .line 301
    .local v13, "port":Ljava/lang/String;
    :goto_8
    add-int/lit8 v21, v18, 0x1

    #@1c1
    move/from16 v0, v21

    #@1c3
    move/from16 v1, v19

    #@1c5
    if-ge v0, v1, :cond_9

    #@1c7
    add-int/lit8 v21, v18, 0x1

    #@1c9
    move-object/from16 v0, v16

    #@1cb
    move/from16 v1, v21

    #@1cd
    move/from16 v2, v19

    #@1cf
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1d2
    move-result-object v9

    #@1d3
    .line 302
    .local v9, "host":Ljava/lang/String;
    :goto_9
    new-instance v21, Ljava/lang/StringBuilder;

    #@1d5
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@1d8
    const-string/jumbo v22, "<dt><a href=\"gopher://"

    #@1db
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v21

    #@1df
    move-object/from16 v0, v21

    #@1e1
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v21

    #@1e5
    move-object/from16 v0, v21

    #@1e7
    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ea
    move-result-object v21

    #@1eb
    const-string/jumbo v22, "/"

    #@1ee
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v21

    #@1f2
    .line 303
    const/16 v22, 0x0

    #@1f4
    const/16 v23, 0x1

    #@1f6
    move-object/from16 v0, v16

    #@1f8
    move/from16 v1, v22

    #@1fa
    move/from16 v2, v23

    #@1fc
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1ff
    move-result-object v22

    #@200
    .line 302
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@203
    move-result-object v21

    #@204
    .line 303
    add-int/lit8 v22, v17, 0x1

    #@206
    move-object/from16 v0, v16

    #@208
    move/from16 v1, v22

    #@20a
    move/from16 v2, v18

    #@20c
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@20f
    move-result-object v22

    #@210
    move-object/from16 v0, p0

    #@212
    move-object/from16 v1, v22

    #@214
    invoke-direct {v0, v1}, Lsun/net/www/protocol/gopher/GopherClient;->encodePercent(Ljava/lang/String;)Ljava/lang/String;

    #@217
    move-result-object v22

    #@218
    .line 302
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v21

    #@21c
    .line 303
    const-string/jumbo v22, "\">\n"

    #@21f
    .line 302
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@222
    move-result-object v21

    #@223
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@226
    move-result-object v21

    #@227
    move-object/from16 v0, v21

    #@229
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@22c
    .line 304
    const-string/jumbo v21, "<img align=middle border=0 width=25 height=32 src="

    #@22f
    move-object/from16 v0, v21

    #@231
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@234
    .line 305
    sparse-switch v10, :sswitch_data_0

    #@237
    .line 307
    const-string/jumbo v21, "java.net.ftp.imagepath.file"

    #@23a
    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@23d
    move-result-object v21

    #@23e
    move-object/from16 v0, v21

    #@240
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@243
    .line 319
    :goto_a
    const-string/jumbo v21, ".gif align=middle><dd>\n"

    #@246
    move-object/from16 v0, v21

    #@248
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@24b
    .line 320
    new-instance v21, Ljava/lang/StringBuilder;

    #@24d
    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    #@250
    const/16 v22, 0x1

    #@252
    move-object/from16 v0, v16

    #@254
    move/from16 v1, v22

    #@256
    move/from16 v2, v17

    #@258
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@25b
    move-result-object v22

    #@25c
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25f
    move-result-object v21

    #@260
    const-string/jumbo v22, "</a>\n"

    #@263
    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@266
    move-result-object v21

    #@267
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26a
    move-result-object v21

    #@26b
    move-object/from16 v0, v21

    #@26d
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@270
    goto/16 :goto_4

    #@272
    .line 326
    .end local v4    # "ds":Ljava/io/DataInputStream;
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "key":I
    .end local v11    # "len":I
    .end local v13    # "port":Ljava/lang/String;
    .end local v14    # "ps":Ljava/io/PrintStream;
    .end local v16    # "s":Ljava/lang/String;
    .end local v17    # "t1":I
    .end local v18    # "t2":I
    .end local v19    # "t3":I
    .end local v20    # "title":Ljava/lang/String;
    :catch_1
    move-exception v6

    #@273
    .line 327
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_5
    new-instance v21, Ljava/lang/InternalError;

    #@275
    new-instance v22, Ljava/lang/StringBuilder;

    #@277
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@27a
    sget-object v23, Lsun/net/www/protocol/gopher/GopherClient;->encoding:Ljava/lang/String;

    #@27c
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27f
    move-result-object v22

    #@280
    const-string/jumbo v23, " encoding not found"

    #@283
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@286
    move-result-object v22

    #@287
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28a
    move-result-object v22

    #@28b
    invoke-direct/range {v21 .. v22}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    #@28e
    throw v21
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@28f
    .line 329
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    :catchall_0
    move-exception v21

    #@290
    .line 331
    :try_start_6
    invoke-virtual/range {p0 .. p0}, Lsun/net/NetworkClient;->closeServer()V

    #@293
    .line 332
    move-object/from16 v0, p0

    #@295
    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    #@297
    move-object/from16 v22, v0

    #@299
    invoke-virtual/range {v22 .. v22}, Ljava/io/PipedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    #@29c
    .line 329
    :goto_b
    throw v21

    #@29d
    .line 294
    .restart local v4    # "ds":Ljava/io/DataInputStream;
    .restart local v10    # "key":I
    .restart local v11    # "len":I
    .restart local v14    # "ps":Ljava/io/PrintStream;
    .restart local v16    # "s":Ljava/lang/String;
    .restart local v17    # "t1":I
    .restart local v20    # "title":Ljava/lang/String;
    :cond_6
    const/16 v18, -0x1

    #@29f
    goto/16 :goto_6

    #@2a1
    .line 295
    .restart local v18    # "t2":I
    :cond_7
    const/16 v19, -0x1

    #@2a3
    goto/16 :goto_7

    #@2a5
    .line 300
    .restart local v19    # "t3":I
    :cond_8
    :try_start_7
    const-string/jumbo v13, ""

    #@2a8
    .restart local v13    # "port":Ljava/lang/String;
    goto/16 :goto_8

    #@2aa
    .line 301
    :cond_9
    move-object/from16 v0, p0

    #@2ac
    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->u:Ljava/net/URL;

    #@2ae
    move-object/from16 v21, v0

    #@2b0
    invoke-virtual/range {v21 .. v21}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@2b3
    move-result-object v9

    #@2b4
    .restart local v9    # "host":Ljava/lang/String;
    goto/16 :goto_9

    #@2b6
    .line 310
    :sswitch_0
    const-string/jumbo v21, "java.net.ftp.imagepath.text"

    #@2b9
    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@2bc
    move-result-object v21

    #@2bd
    move-object/from16 v0, v21

    #@2bf
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@2c2
    goto :goto_a

    #@2c3
    .line 328
    .end local v4    # "ds":Ljava/io/DataInputStream;
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "key":I
    .end local v11    # "len":I
    .end local v13    # "port":Ljava/lang/String;
    .end local v14    # "ps":Ljava/io/PrintStream;
    .end local v16    # "s":Ljava/lang/String;
    .end local v17    # "t1":I
    .end local v18    # "t2":I
    .end local v19    # "t3":I
    .end local v20    # "title":Ljava/lang/String;
    :catch_2
    move-exception v5

    #@2c4
    .line 331
    .local v5, "e":Ljava/io/IOException;
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lsun/net/NetworkClient;->closeServer()V

    #@2c7
    .line 332
    move-object/from16 v0, p0

    #@2c9
    iget-object v0, v0, Lsun/net/www/protocol/gopher/GopherClient;->os:Ljava/io/PipedOutputStream;

    #@2cb
    move-object/from16 v21, v0

    #@2cd
    invoke-virtual/range {v21 .. v21}, Ljava/io/PipedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    #@2d0
    goto/16 :goto_1

    #@2d2
    .line 333
    :catch_3
    move-exception v8

    #@2d3
    .local v8, "e2":Ljava/io/IOException;
    goto/16 :goto_1

    #@2d5
    .line 313
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "e2":Ljava/io/IOException;
    .restart local v4    # "ds":Ljava/io/DataInputStream;
    .restart local v9    # "host":Ljava/lang/String;
    .restart local v10    # "key":I
    .restart local v11    # "len":I
    .restart local v13    # "port":Ljava/lang/String;
    .restart local v14    # "ps":Ljava/io/PrintStream;
    .restart local v16    # "s":Ljava/lang/String;
    .restart local v17    # "t1":I
    .restart local v18    # "t2":I
    .restart local v19    # "t3":I
    .restart local v20    # "title":Ljava/lang/String;
    :sswitch_1
    :try_start_9
    const-string/jumbo v21, "java.net.ftp.imagepath.directory"

    #@2d8
    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@2db
    move-result-object v21

    #@2dc
    move-object/from16 v0, v21

    #@2de
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@2e1
    goto/16 :goto_a

    #@2e3
    .line 316
    :sswitch_2
    const-string/jumbo v21, "java.net.ftp.imagepath.gif"

    #@2e6
    invoke-static/range {v21 .. v21}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@2e9
    move-result-object v21

    #@2ea
    move-object/from16 v0, v21

    #@2ec
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@2ef
    goto/16 :goto_a

    #@2f1
    .line 322
    .end local v9    # "host":Ljava/lang/String;
    .end local v10    # "key":I
    .end local v11    # "len":I
    .end local v13    # "port":Ljava/lang/String;
    .end local v17    # "t1":I
    .end local v18    # "t2":I
    .end local v19    # "t3":I
    :cond_a
    const-string/jumbo v21, "</dl></body>\n"

    #@2f4
    move-object/from16 v0, v21

    #@2f6
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    #@2f9
    .line 323
    invoke-virtual {v14}, Ljava/io/PrintStream;->close()V
    :try_end_9
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    #@2fc
    goto/16 :goto_0

    #@2fe
    .line 333
    .end local v4    # "ds":Ljava/io/DataInputStream;
    .end local v14    # "ps":Ljava/io/PrintStream;
    .end local v16    # "s":Ljava/lang/String;
    .end local v20    # "title":Ljava/lang/String;
    :catch_4
    move-exception v8

    #@2ff
    .restart local v8    # "e2":Ljava/io/IOException;
    goto :goto_b

    #@300
    .end local v8    # "e2":Ljava/io/IOException;
    :catch_5
    move-exception v8

    #@301
    .restart local v8    # "e2":Ljava/io/IOException;
    goto/16 :goto_1

    #@303
    .line 305
    nop

    #@304
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x31 -> :sswitch_1
        0x67 -> :sswitch_2
    .end sparse-switch
.end method
