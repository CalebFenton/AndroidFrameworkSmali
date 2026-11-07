.class public Lsun/net/util/URLUtil;
.super Ljava/lang/Object;
.source "URLUtil.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist urlNoFragString(Ljava/net/URL;)Ljava/lang/String;
    .registers 6
    .param p0, "url"    # Ljava/net/URL;

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v0, "strForm":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, "protocol":Ljava/lang/String;
    if-eqz v1, :cond_17

    .line 50
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, "://"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    :cond_17
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    .line 56
    .local v2, "host":Ljava/lang/String;
    if-eqz v2, :cond_3a

    .line 58
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    invoke-virtual {p0}, Ljava/net/URL;->getPort()I

    move-result v3

    .line 62
    .local v3, "port":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2f

    .line 65
    invoke-virtual {p0}, Ljava/net/URL;->getDefaultPort()I

    move-result v3

    .line 67
    :cond_2f
    if-eq v3, v4, :cond_3a

    .line 68
    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .end local v3    # "port":I
    :cond_3a
    invoke-virtual {p0}, Ljava/net/URL;->getFile()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "file":Ljava/lang/String;
    if-eqz v3, :cond_43

    .line 74
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    :cond_43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
