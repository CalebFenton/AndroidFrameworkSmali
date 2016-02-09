.class public final Ljava/net/URL;
.super Ljava/lang/Object;
.source "URL.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x69dac8c9e5031b8eL

.field private static streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

.field private static final streamHandlers:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URLStreamHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authority:Ljava/lang/String;

.field private file:Ljava/lang/String;

.field private transient hashCode:I

.field private host:Ljava/lang/String;

.field private transient path:Ljava/lang/String;

.field private port:I

.field private protocol:Ljava/lang/String;

.field private transient query:Ljava/lang/String;

.field private ref:Ljava/lang/String;

.field transient streamHandler:Ljava/net/URLStreamHandler;

.field private transient userInfo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 82
    new-instance v0, Ljava/util/Hashtable;

    #@2
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@5
    .line 81
    sput-object v0, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    #@7
    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    move-object v0, v1

    #@2
    .line 125
    check-cast v0, Ljava/net/URL;

    #@4
    invoke-direct {p0, v0, p1, v1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    #@7
    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 216
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move v3, p3

    #@5
    move-object v4, p4

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    #@9
    .line 215
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V
    .locals 5
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "handler"    # Ljava/net/URLStreamHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, -0x1

    #@2
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 87
    iput v3, p0, Ljava/net/URL;->port:I

    #@7
    .line 233
    if-ge p3, v3, :cond_0

    #@9
    .line 234
    new-instance v1, Ljava/net/MalformedURLException;

    #@b
    new-instance v2, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v3, "port < -1: "

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 236
    :cond_0
    if-nez p1, :cond_1

    #@25
    .line 237
    new-instance v1, Ljava/lang/NullPointerException;

    #@27
    const-string/jumbo v2, "protocol == null"

    #@2a
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v1

    #@2e
    .line 241
    :cond_1
    if-eqz p2, :cond_2

    #@30
    const-string/jumbo v1, ":"

    #@33
    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@36
    move-result v1

    #@37
    if-eqz v1, :cond_2

    #@39
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    #@3c
    move-result v1

    #@3d
    const/16 v2, 0x5b

    #@3f
    if-eq v1, v2, :cond_2

    #@41
    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    #@43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@46
    const-string/jumbo v2, "["

    #@49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v1

    #@4d
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    const-string/jumbo v2, "]"

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object p2

    #@5c
    .line 245
    :cond_2
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@5e
    .line 246
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@60
    .line 247
    iput p3, p0, Ljava/net/URL;->port:I

    #@62
    .line 249
    invoke-static {p2, p4}, Llibcore/net/url/UrlUtils;->authoritySafePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@65
    move-result-object p4

    #@66
    .line 253
    const-string/jumbo v1, "#"

    #@69
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@6c
    move-result v0

    #@6d
    .line 254
    .local v0, "hash":I
    if-eq v0, v3, :cond_3

    #@6f
    .line 255
    invoke-virtual {p4, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@72
    move-result-object v1

    #@73
    iput-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@75
    .line 256
    add-int/lit8 v1, v0, 0x1

    #@77
    invoke-virtual {p4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@7a
    move-result-object v1

    #@7b
    iput-object v1, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    #@7d
    .line 260
    :goto_0
    invoke-virtual {p0, v4}, Ljava/net/URL;->fixURL(Z)V

    #@80
    .line 265
    if-nez p5, :cond_4

    #@82
    .line 266
    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    #@85
    .line 267
    iget-object v1, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@87
    if-nez v1, :cond_5

    #@89
    .line 268
    new-instance v1, Ljava/net/MalformedURLException;

    #@8b
    new-instance v2, Ljava/lang/StringBuilder;

    #@8d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@90
    const-string/jumbo v3, "Unknown protocol: "

    #@93
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@96
    move-result-object v2

    #@97
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v2

    #@9b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9e
    move-result-object v2

    #@9f
    invoke-direct {v1, v2}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v1

    #@a3
    .line 258
    :cond_3
    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@a5
    goto :goto_0

    #@a6
    .line 271
    :cond_4
    iput-object p5, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@a8
    .line 232
    :cond_5
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "file"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 202
    const/4 v3, -0x1

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move-object v4, p3

    #@6
    invoke-direct/range {v0 .. v5}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/net/URLStreamHandler;)V

    #@9
    .line 201
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 137
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V

    #@4
    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Ljava/lang/String;Ljava/net/URLStreamHandler;)V
    .locals 11
    .param p1, "context"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "handler"    # Ljava/net/URLStreamHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    const/4 v0, -0x1

    #@4
    iput v0, p0, Ljava/net/URL;->port:I

    #@6
    .line 151
    if-nez p2, :cond_0

    #@8
    .line 152
    new-instance v0, Ljava/net/MalformedURLException;

    #@a
    invoke-direct {v0}, Ljava/net/MalformedURLException;-><init>()V

    #@d
    throw v0

    #@e
    .line 154
    :cond_0
    if-eqz p3, :cond_1

    #@10
    .line 155
    iput-object p3, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@12
    .line 157
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@15
    move-result-object p2

    #@16
    .line 159
    invoke-static {p2}, Llibcore/net/url/UrlUtils;->getSchemePrefix(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@1c
    .line 160
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@1e
    if-eqz v0, :cond_4

    #@20
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@25
    move-result v0

    #@26
    add-int/lit8 v10, v0, 0x1

    #@28
    .line 163
    .local v10, "schemeSpecificPartStart":I
    :goto_0
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@2a
    if-eqz v0, :cond_2

    #@2c
    if-eqz p1, :cond_2

    #@2e
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@30
    iget-object v1, p1, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@32
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v0

    #@36
    if-eqz v0, :cond_5

    #@38
    .line 168
    .end local p1    # "context":Ljava/net/URL;
    :cond_2
    :goto_1
    if-eqz p1, :cond_6

    #@3a
    .line 169
    iget-object v1, p1, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@3c
    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {p1}, Ljava/net/URL;->getPort()I

    #@43
    move-result v3

    #@44
    invoke-virtual {p1}, Ljava/net/URL;->getAuthority()Ljava/lang/String;

    #@47
    move-result-object v4

    #@48
    .line 170
    invoke-virtual {p1}, Ljava/net/URL;->getUserInfo()Ljava/lang/String;

    #@4b
    move-result-object v5

    #@4c
    invoke-virtual {p1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {p1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    #@53
    move-result-object v7

    #@54
    .line 171
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@57
    move-result-object v8

    #@58
    move-object v0, p0

    #@59
    .line 169
    invoke-virtual/range {v0 .. v8}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5c
    .line 172
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@5e
    if-nez v0, :cond_3

    #@60
    .line 173
    iget-object v0, p1, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@62
    iput-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@64
    .line 179
    :cond_3
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@66
    if-nez v0, :cond_7

    #@68
    .line 180
    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    #@6b
    .line 181
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@6d
    if-nez v0, :cond_7

    #@6f
    .line 182
    new-instance v0, Ljava/net/MalformedURLException;

    #@71
    new-instance v1, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v2, "Unknown protocol: "

    #@79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v1

    #@7d
    iget-object v2, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@8a
    throw v0

    #@8b
    .line 160
    .end local v10    # "schemeSpecificPartStart":I
    .restart local p1    # "context":Ljava/net/URL;
    :cond_4
    const/4 v10, 0x0

    #@8c
    .restart local v10    # "schemeSpecificPartStart":I
    goto :goto_0

    #@8d
    .line 164
    :cond_5
    const/4 p1, 0x0

    #@8e
    .local p1, "context":Ljava/net/URL;
    goto :goto_1

    #@8f
    .line 175
    .end local p1    # "context":Ljava/net/URL;
    :cond_6
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@91
    if-nez v0, :cond_3

    #@93
    .line 176
    new-instance v0, Ljava/net/MalformedURLException;

    #@95
    new-instance v1, Ljava/lang/StringBuilder;

    #@97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9a
    const-string/jumbo v2, "Protocol not found: "

    #@9d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a0
    move-result-object v1

    #@a1
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v1

    #@a5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a8
    move-result-object v1

    #@a9
    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@ac
    throw v0

    #@ad
    .line 188
    :cond_7
    :try_start_0
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@af
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@b2
    move-result v1

    #@b3
    invoke-virtual {v0, p0, p2, v10, v1}, Ljava/net/URLStreamHandler;->parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@b6
    .line 150
    return-void

    #@b7
    .line 189
    :catch_0
    move-exception v9

    #@b8
    .line 190
    .local v9, "e":Ljava/lang/Exception;
    new-instance v0, Ljava/net/MalformedURLException;

    #@ba
    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@bd
    move-result-object v1

    #@be
    invoke-direct {v0, v1}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    #@c1
    throw v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 543
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 544
    iget-object v2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@6
    if-eqz v2, :cond_1

    #@8
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@a
    if-nez v2, :cond_1

    #@c
    .line 545
    const/4 v2, 0x1

    #@d
    invoke-virtual {p0, v2}, Ljava/net/URL;->fixURL(Z)V

    #@10
    .line 558
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/net/URL;->setupStreamHandler()V

    #@13
    .line 559
    iget-object v2, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@15
    if-nez v2, :cond_4

    #@17
    .line 560
    new-instance v2, Ljava/io/IOException;

    #@19
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Unknown protocol: "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    iget-object v4, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@33
    .line 563
    :catch_0
    move-exception v0

    #@34
    .line 564
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v2, Ljava/io/IOException;

    #@36
    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    #@39
    throw v2

    #@3a
    .line 546
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    :try_start_1
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@3c
    if-eqz v2, :cond_0

    #@3e
    .line 548
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@40
    const/16 v3, 0x40

    #@42
    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    #@45
    move-result v1

    #@46
    .local v1, "index":I
    if-le v1, v4, :cond_2

    #@48
    .line 549
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@4a
    const/4 v3, 0x0

    #@4b
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4e
    move-result-object v2

    #@4f
    iput-object v2, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    #@51
    .line 551
    :cond_2
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@53
    if-eqz v2, :cond_3

    #@55
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@57
    const/16 v3, 0x3f

    #@59
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    #@5c
    move-result v1

    #@5d
    if-le v1, v4, :cond_3

    #@5f
    .line 552
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@61
    add-int/lit8 v3, v1, 0x1

    #@63
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    iput-object v2, p0, Ljava/net/URL;->query:Ljava/lang/String;

    #@69
    .line 553
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@6b
    const/4 v3, 0x0

    #@6c
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@6f
    move-result-object v2

    #@70
    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    #@72
    goto :goto_0

    #@73
    .line 555
    :cond_3
    iget-object v2, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@75
    iput-object v2, p0, Ljava/net/URL;->path:Ljava/lang/String;

    #@77
    goto :goto_0

    #@78
    .line 562
    .end local v1    # "index":I
    :cond_4
    const/4 v2, 0x0

    #@79
    iput v2, p0, Ljava/net/URL;->hashCode:I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    #@7b
    .line 541
    return-void
.end method

.method public static declared-synchronized setURLStreamHandlerFactory(Ljava/net/URLStreamHandlerFactory;)V
    .locals 3
    .param p0, "factory"    # Ljava/net/URLStreamHandlerFactory;

    #@0
    .prologue
    const-class v1, Ljava/net/URL;

    #@2
    monitor-enter v1

    #@3
    .line 111
    :try_start_0
    sget-object v0, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 112
    new-instance v0, Ljava/lang/Error;

    #@9
    const-string/jumbo v2, "Factory already set"

    #@c
    invoke-direct {v0, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    #@f
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :catchall_0
    move-exception v0

    #@11
    monitor-exit v1

    #@12
    throw v0

    #@13
    .line 114
    :cond_0
    :try_start_1
    sget-object v0, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    #@15
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    #@18
    .line 115
    sput-object p0, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1a
    monitor-exit v1

    #@1b
    .line 110
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 569
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@3
    .line 568
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 346
    if-nez p1, :cond_0

    #@3
    .line 347
    return v2

    #@4
    .line 349
    :cond_0
    if-ne p0, p1, :cond_1

    #@6
    .line 350
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 352
    :cond_1
    invoke-virtual {p0}, Ljava/net/URL;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v1

    #@10
    if-eq v0, v1, :cond_2

    #@12
    .line 353
    return v2

    #@13
    .line 355
    :cond_2
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@15
    check-cast p1, Ljava/net/URL;

    #@17
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->equals(Ljava/net/URL;Ljava/net/URL;)Z

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method fixURL(Z)V
    .locals 6
    .param p1, "fixHost"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v4, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 277
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@5
    if-eqz v1, :cond_0

    #@7
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@c
    move-result v1

    #@d
    if-lez v1, :cond_0

    #@f
    .line 278
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@11
    iput-object v1, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@13
    .line 279
    iget v1, p0, Ljava/net/URL;->port:I

    #@15
    if-eq v1, v4, :cond_0

    #@17
    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    iget-object v2, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@1e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    const-string/jumbo v2, ":"

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    iget v2, p0, Ljava/net/URL;->port:I

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    iput-object v1, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@35
    .line 283
    :cond_0
    if-eqz p1, :cond_1

    #@37
    .line 284
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@39
    if-eqz v1, :cond_2

    #@3b
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@3d
    const/16 v2, 0x40

    #@3f
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    #@42
    move-result v0

    #@43
    .local v0, "index":I
    if-le v0, v4, :cond_2

    #@45
    .line 285
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@47
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    iput-object v1, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    #@4d
    .line 286
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@4f
    add-int/lit8 v2, v0, 0x1

    #@51
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@54
    move-result-object v1

    #@55
    iput-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@57
    .line 291
    .end local v0    # "index":I
    :cond_1
    :goto_0
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@59
    if-eqz v1, :cond_3

    #@5b
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@5d
    const/16 v2, 0x3f

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    #@62
    move-result v0

    #@63
    .restart local v0    # "index":I
    if-le v0, v4, :cond_3

    #@65
    .line 292
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@67
    add-int/lit8 v2, v0, 0x1

    #@69
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@6c
    move-result-object v1

    #@6d
    iput-object v1, p0, Ljava/net/URL;->query:Ljava/lang/String;

    #@6f
    .line 293
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@71
    invoke-virtual {v1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@74
    move-result-object v1

    #@75
    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;

    #@77
    .line 275
    .end local v0    # "index":I
    :goto_1
    return-void

    #@78
    .line 288
    :cond_2
    iput-object v3, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    #@7a
    goto :goto_0

    #@7b
    .line 295
    :cond_3
    iput-object v3, p0, Ljava/net/URL;->query:Ljava/lang/String;

    #@7d
    .line 296
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@7f
    iput-object v1, p0, Ljava/net/URL;->path:Ljava/lang/String;

    #@81
    goto :goto_1
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 590
    iget-object v0, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getContent()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 455
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/net/URLConnection;->getContent()Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getContent([Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "types"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 463
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->getContent([Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDefaultPort()I
    .locals 1

    #@0
    .prologue
    .line 626
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@2
    invoke-virtual {v0}, Ljava/net/URLStreamHandler;->getDefaultPort()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getEffectivePort()I
    .locals 2

    #@0
    .prologue
    .line 574
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@2
    iget v1, p0, Ljava/net/URL;->port:I

    #@4
    invoke-static {v0, v1}, Ljava/net/URI;->getEffectivePort(Ljava/lang/String;I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 633
    iget-object v0, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 604
    iget-object v0, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 640
    iget-object v0, p0, Ljava/net/URL;->path:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 615
    iget v0, p0, Ljava/net/URL;->port:I

    #@2
    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 582
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 647
    iget-object v0, p0, Ljava/net/URL;->query:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getRef()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 655
    iget-object v0, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getUserInfo()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 597
    iget-object v0, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 367
    iget v0, p0, Ljava/net/URL;->hashCode:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 368
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@6
    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->hashCode(Ljava/net/URL;)I

    #@9
    move-result v0

    #@a
    iput v0, p0, Ljava/net/URL;->hashCode:I

    #@c
    .line 370
    :cond_0
    iget v0, p0, Ljava/net/URL;->hashCode:I

    #@e
    return v0
.end method

.method public openConnection()Ljava/net/URLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 479
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@2
    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;
    .locals 2
    .param p1, "proxy"    # Ljava/net/Proxy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 493
    if-nez p1, :cond_0

    #@2
    .line 494
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "proxy == null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 496
    :cond_0
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@d
    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->openConnection(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/URLConnection;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public final openStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 470
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public sameFile(Ljava/net/URL;)Z
    .locals 1
    .param p1, "otherURL"    # Ljava/net/URL;

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@2
    invoke-virtual {v0, p0, p1}, Ljava/net/URLStreamHandler;->sameFile(Ljava/net/URL;Ljava/net/URL;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "file"    # Ljava/lang/String;
    .param p5, "ref"    # Ljava/lang/String;

    #@0
    .prologue
    .line 306
    iget-object v0, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 307
    iput-object p1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@6
    .line 309
    :cond_0
    iput-object p2, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@8
    .line 310
    iput-object p4, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@a
    .line 311
    iput p3, p0, Ljava/net/URL;->port:I

    #@c
    .line 312
    iput-object p5, p0, Ljava/net/URL;->ref:Ljava/lang/String;

    #@e
    .line 313
    const/4 v0, 0x0

    #@f
    iput v0, p0, Ljava/net/URL;->hashCode:I

    #@11
    .line 314
    const/4 v0, 0x1

    #@12
    invoke-virtual {p0, v0}, Ljava/net/URL;->fixURL(Z)V

    #@15
    .line 305
    return-void
.end method

.method protected set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "protocol"    # Ljava/lang/String;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "authority"    # Ljava/lang/String;
    .param p5, "userInfo"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;
    .param p7, "query"    # Ljava/lang/String;
    .param p8, "ref"    # Ljava/lang/String;

    #@0
    .prologue
    .line 665
    move-object v4, p6

    #@1
    .line 666
    .local v4, "file":Ljava/lang/String;
    if-eqz p7, :cond_0

    #@3
    invoke-virtual {p7}, Ljava/lang/String;->isEmpty()Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    :cond_0
    :goto_0
    move-object v0, p0

    #@a
    move-object v1, p1

    #@b
    move-object v2, p2

    #@c
    move v3, p3

    #@d
    move-object v5, p8

    #@e
    .line 669
    invoke-virtual/range {v0 .. v5}, Ljava/net/URL;->set(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    #@11
    .line 670
    iput-object p4, p0, Ljava/net/URL;->authority:Ljava/lang/String;

    #@13
    .line 671
    iput-object p5, p0, Ljava/net/URL;->userInfo:Ljava/lang/String;

    #@15
    .line 672
    iput-object p6, p0, Ljava/net/URL;->path:Ljava/lang/String;

    #@17
    .line 673
    iput-object p7, p0, Ljava/net/URL;->query:Ljava/lang/String;

    #@19
    .line 664
    return-void

    #@1a
    .line 667
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@1c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1f
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    const-string/jumbo v1, "?"

    #@26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    goto :goto_0
.end method

.method setupStreamHandler()V
    .locals 17

    #@0
    .prologue
    .line 386
    sget-object v11, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    #@2
    move-object/from16 v0, p0

    #@4
    iget-object v12, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@6
    invoke-virtual {v11, v12}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v11

    #@a
    check-cast v11, Ljava/net/URLStreamHandler;

    #@c
    move-object/from16 v0, p0

    #@e
    iput-object v11, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@10
    .line 387
    move-object/from16 v0, p0

    #@12
    iget-object v11, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@14
    if-eqz v11, :cond_0

    #@16
    .line 388
    return-void

    #@17
    .line 393
    :cond_0
    sget-object v11, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    #@19
    if-eqz v11, :cond_1

    #@1b
    .line 394
    sget-object v11, Ljava/net/URL;->streamHandlerFactory:Ljava/net/URLStreamHandlerFactory;

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v12, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@21
    invoke-interface {v11, v12}, Ljava/net/URLStreamHandlerFactory;->createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;

    #@24
    move-result-object v11

    #@25
    move-object/from16 v0, p0

    #@27
    iput-object v11, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@29
    .line 395
    move-object/from16 v0, p0

    #@2b
    iget-object v11, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@2d
    if-eqz v11, :cond_1

    #@2f
    .line 396
    sget-object v11, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v12, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@35
    move-object/from16 v0, p0

    #@37
    iget-object v13, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@39
    invoke-virtual {v11, v12, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    .line 397
    return-void

    #@3d
    .line 403
    :cond_1
    const-string/jumbo v11, "java.protocol.handler.pkgs"

    #@40
    invoke-static {v11}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@43
    move-result-object v9

    #@44
    .line 404
    .local v9, "packageList":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@47
    move-result-object v11

    #@48
    invoke-virtual {v11}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    #@4b
    move-result-object v3

    #@4c
    .line 405
    .local v3, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v9, :cond_3

    #@4e
    if-eqz v3, :cond_3

    #@50
    .line 406
    const-string/jumbo v11, "\\|"

    #@53
    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@56
    move-result-object v13

    #@57
    const/4 v11, 0x0

    #@58
    array-length v14, v13

    #@59
    move v12, v11

    #@5a
    :goto_0
    if-ge v12, v14, :cond_3

    #@5c
    aget-object v10, v13, v12

    #@5e
    .line 407
    .local v10, "packageName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    #@60
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@63
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v11

    #@67
    const-string/jumbo v15, "."

    #@6a
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v11

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-object v15, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@72
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v11

    #@76
    const-string/jumbo v15, ".Handler"

    #@79
    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v11

    #@7d
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@80
    move-result-object v2

    #@81
    .line 409
    .local v2, "className":Ljava/lang/String;
    :try_start_0
    invoke-virtual {v3, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@84
    move-result-object v1

    #@85
    .line 410
    .local v1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@88
    move-result-object v11

    #@89
    check-cast v11, Ljava/net/URLStreamHandler;

    #@8b
    move-object/from16 v0, p0

    #@8d
    iput-object v11, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@8f
    .line 411
    move-object/from16 v0, p0

    #@91
    iget-object v11, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@93
    if-eqz v11, :cond_2

    #@95
    .line 412
    sget-object v11, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    #@97
    move-object/from16 v0, p0

    #@99
    iget-object v15, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@9f
    move-object/from16 v16, v0

    #@a1
    move-object/from16 v0, v16

    #@a3
    invoke-virtual {v11, v15, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    #@a6
    .line 414
    :cond_2
    return-void

    #@a7
    .line 415
    .end local v1    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v6

    #@a8
    .line 406
    :goto_1
    add-int/lit8 v11, v12, 0x1

    #@aa
    move v12, v11

    #@ab
    goto :goto_0

    #@ac
    .line 423
    .end local v2    # "className":Ljava/lang/String;
    .end local v10    # "packageName":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    #@ae
    iget-object v11, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@b0
    const-string/jumbo v12, "file"

    #@b3
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b6
    move-result v11

    #@b7
    if-eqz v11, :cond_6

    #@b9
    .line 424
    new-instance v11, Llibcore/net/url/FileHandler;

    #@bb
    invoke-direct {v11}, Llibcore/net/url/FileHandler;-><init>()V

    #@be
    move-object/from16 v0, p0

    #@c0
    iput-object v11, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@c2
    .line 444
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    #@c4
    iget-object v11, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@c6
    if-eqz v11, :cond_5

    #@c8
    .line 445
    sget-object v11, Ljava/net/URL;->streamHandlers:Ljava/util/Hashtable;

    #@ca
    move-object/from16 v0, p0

    #@cc
    iget-object v12, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@ce
    move-object/from16 v0, p0

    #@d0
    iget-object v13, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@d2
    invoke-virtual {v11, v12, v13}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d5
    .line 383
    :cond_5
    return-void

    #@d6
    .line 425
    :cond_6
    move-object/from16 v0, p0

    #@d8
    iget-object v11, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@da
    const-string/jumbo v12, "ftp"

    #@dd
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e0
    move-result v11

    #@e1
    if-eqz v11, :cond_7

    #@e3
    .line 426
    new-instance v11, Llibcore/net/url/FtpHandler;

    #@e5
    invoke-direct {v11}, Llibcore/net/url/FtpHandler;-><init>()V

    #@e8
    move-object/from16 v0, p0

    #@ea
    iput-object v11, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@ec
    goto :goto_2

    #@ed
    .line 427
    :cond_7
    move-object/from16 v0, p0

    #@ef
    iget-object v11, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@f1
    const-string/jumbo v12, "http"

    #@f4
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f7
    move-result v11

    #@f8
    if-eqz v11, :cond_8

    #@fa
    .line 429
    :try_start_1
    const-string/jumbo v8, "com.android.okhttp.HttpHandler"

    #@fd
    .line 430
    .local v8, "name":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@100
    move-result-object v11

    #@101
    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@104
    move-result-object v11

    #@105
    check-cast v11, Ljava/net/URLStreamHandler;

    #@107
    move-object/from16 v0, p0

    #@109
    iput-object v11, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@10b
    goto :goto_2

    #@10c
    .line 431
    .end local v8    # "name":Ljava/lang/String;
    :catch_1
    move-exception v4

    #@10d
    .line 432
    .local v4, "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/AssertionError;

    #@10f
    invoke-direct {v11, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@112
    throw v11

    #@113
    .line 434
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_8
    move-object/from16 v0, p0

    #@115
    iget-object v11, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@117
    const-string/jumbo v12, "https"

    #@11a
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11d
    move-result v11

    #@11e
    if-eqz v11, :cond_9

    #@120
    .line 436
    :try_start_2
    const-string/jumbo v8, "com.android.okhttp.HttpsHandler"

    #@123
    .line 437
    .restart local v8    # "name":Ljava/lang/String;
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    #@126
    move-result-object v11

    #@127
    invoke-virtual {v11}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@12a
    move-result-object v11

    #@12b
    check-cast v11, Ljava/net/URLStreamHandler;

    #@12d
    move-object/from16 v0, p0

    #@12f
    iput-object v11, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    #@131
    goto :goto_2

    #@132
    .line 438
    .end local v8    # "name":Ljava/lang/String;
    :catch_2
    move-exception v4

    #@133
    .line 439
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v11, Ljava/lang/AssertionError;

    #@135
    invoke-direct {v11, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@138
    throw v11

    #@139
    .line 441
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_9
    move-object/from16 v0, p0

    #@13b
    iget-object v11, v0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@13d
    const-string/jumbo v12, "jar"

    #@140
    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@143
    move-result v11

    #@144
    if-eqz v11, :cond_4

    #@146
    .line 442
    new-instance v11, Llibcore/net/url/JarHandler;

    #@148
    invoke-direct {v11}, Llibcore/net/url/JarHandler;-><init>()V

    #@14b
    move-object/from16 v0, p0

    #@14d
    iput-object v11, v0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@14f
    goto/16 :goto_2

    #@151
    .line 416
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v10    # "packageName":Ljava/lang/String;
    :catch_3
    move-exception v7

    #@152
    .local v7, "ignored":Ljava/lang/InstantiationException;
    goto/16 :goto_1

    #@154
    .line 417
    .end local v7    # "ignored":Ljava/lang/InstantiationException;
    :catch_4
    move-exception v5

    #@155
    .local v5, "ignored":Ljava/lang/ClassNotFoundException;
    goto/16 :goto_1
.end method

.method public toExternalForm()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 535
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v1, "unknown protocol("

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    iget-object v1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, ")://"

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Ljava/net/URL;->host:Ljava/lang/String;

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    iget-object v1, p0, Ljava/net/URL;->file:Ljava/lang/String;

    #@25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v0

    #@29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    return-object v0

    #@2e
    .line 538
    :cond_0
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@30
    invoke-virtual {v0, p0}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;)Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 527
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public toURI()Ljava/net/URI;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 505
    new-instance v0, Ljava/net/URI;

    #@2
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@9
    return-object v0
.end method

.method public toURILenient()Ljava/net/URI;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 515
    iget-object v0, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 516
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    iget-object v1, p0, Ljava/net/URL;->protocol:Ljava/lang/String;

    #@8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b
    throw v0

    #@c
    .line 518
    :cond_0
    new-instance v0, Ljava/net/URI;

    #@e
    iget-object v1, p0, Ljava/net/URL;->streamHandler:Ljava/net/URLStreamHandler;

    #@10
    const/4 v2, 0x1

    #@11
    invoke-virtual {v1, p0, v2}, Ljava/net/URLStreamHandler;->toExternalForm(Ljava/net/URL;Z)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    #@18
    return-object v0
.end method
