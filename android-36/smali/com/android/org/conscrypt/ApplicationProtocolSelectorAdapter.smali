.class final Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;
.super Ljava/lang/Object;
.source "ApplicationProtocolSelectorAdapter.java"


# static fields
.field private static final greylist-max-o NO_PROTOCOL_SELECTED:I = -0x1


# instance fields
.field private final greylist-max-o engine:Ljavax/net/ssl/SSLEngine;

.field private final greylist-max-o selector:Lcom/android/org/conscrypt/ApplicationProtocolSelector;

.field private final greylist-max-o socket:Ljavax/net/ssl/SSLSocket;


# direct methods
.method constructor greylist-max-o <init>(Ljavax/net/ssl/SSLEngine;Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
    .registers 4
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p2, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-string v0, "engine"

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLEngine;

    iput-object v0, p0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;->engine:Ljavax/net/ssl/SSLEngine;

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;->socket:Ljavax/net/ssl/SSLSocket;

    .line 40
    const-string v0, "selector"

    invoke-static {p2, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    iput-object v0, p0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;->selector:Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 41
    return-void
.end method

.method constructor greylist-max-o <init>(Ljavax/net/ssl/SSLSocket;Lcom/android/org/conscrypt/ApplicationProtocolSelector;)V
    .registers 4
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "selector"    # Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;->engine:Ljavax/net/ssl/SSLEngine;

    .line 45
    const-string v0, "socket"

    invoke-static {p1, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    iput-object v0, p0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;->socket:Ljavax/net/ssl/SSLSocket;

    .line 46
    const-string v0, "selector"

    invoke-static {p2, v0}, Lcom/android/org/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    iput-object v0, p0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;->selector:Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    .line 47
    return-void
.end method


# virtual methods
.method greylist-max-o selectApplicationProtocol([B)I
    .registers 9
    .param p1, "encodedProtocols"    # [B

    .line 57
    const/4 v0, -0x1

    if-eqz p1, :cond_4f

    array-length v1, p1

    if-nez v1, :cond_7

    goto :goto_4f

    .line 62
    :cond_7
    invoke-static {p1}, Lcom/android/org/conscrypt/SSLUtils;->decodeProtocols([B)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 66
    .local v1, "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;->engine:Ljavax/net/ssl/SSLEngine;

    if-eqz v2, :cond_1c

    .line 67
    iget-object v2, p0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;->selector:Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    iget-object v3, p0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v2, v3, v1}, Lcom/android/org/conscrypt/ApplicationProtocolSelector;->selectApplicationProtocol(Ljavax/net/ssl/SSLEngine;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .local v2, "selected":Ljava/lang/String;
    goto :goto_24

    .line 69
    .end local v2    # "selected":Ljava/lang/String;
    :cond_1c
    iget-object v2, p0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;->selector:Lcom/android/org/conscrypt/ApplicationProtocolSelector;

    iget-object v3, p0, Lcom/android/org/conscrypt/ApplicationProtocolSelectorAdapter;->socket:Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v2, v3, v1}, Lcom/android/org/conscrypt/ApplicationProtocolSelector;->selectApplicationProtocol(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .restart local v2    # "selected":Ljava/lang/String;
    :goto_24
    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2d

    goto :goto_4e

    .line 75
    :cond_2d
    const/4 v3, 0x0

    .line 76
    .local v3, "offset":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_32
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 77
    .local v5, "protocol":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 80
    return v3

    .line 84
    :cond_45
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v3, v6

    .line 85
    .end local v5    # "protocol":Ljava/lang/String;
    goto :goto_32

    .line 87
    :cond_4d
    return v0

    .line 72
    .end local v3    # "offset":I
    :cond_4e
    :goto_4e
    return v0

    .line 58
    .end local v1    # "protocols":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "selected":Ljava/lang/String;
    :cond_4f
    :goto_4f
    return v0
.end method
