.class public Landroid/net/ssl/SSLEngines;
.super Ljava/lang/Object;
.source "SSLEngines.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist checkSupported(Ljavax/net/ssl/SSLEngine;)V
    .registers 3
    .param p0, "e"    # Ljavax/net/ssl/SSLEngine;

    .line 42
    invoke-static {p0}, Landroid/net/ssl/SSLEngines;->isSupportedEngine(Ljavax/net/ssl/SSLEngine;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45
    return-void

    .line 43
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Engine is not a supported engine."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist test-api exportKeyingMaterial(Ljavax/net/ssl/SSLEngine;Ljava/lang/String;[BI)[B
    .registers 5
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 86
    invoke-static {p0}, Landroid/net/ssl/SSLEngines;->checkSupported(Ljavax/net/ssl/SSLEngine;)V

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/conscrypt/Conscrypt;->exportKeyingMaterial(Ljavax/net/ssl/SSLEngine;Ljava/lang/String;[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api isSupportedEngine(Ljavax/net/ssl/SSLEngine;)Z
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;

    .line 38
    invoke-static {p0}, Lcom/android/org/conscrypt/Conscrypt;->isConscrypt(Ljavax/net/ssl/SSLEngine;)Z

    move-result v0

    return v0
.end method

.method public static whitelist test-api setUseSessionTickets(Ljavax/net/ssl/SSLEngine;Z)V
    .registers 2
    .param p0, "engine"    # Ljavax/net/ssl/SSLEngine;
    .param p1, "useSessionTickets"    # Z

    .line 57
    invoke-static {p0}, Landroid/net/ssl/SSLEngines;->checkSupported(Ljavax/net/ssl/SSLEngine;)V

    .line 58
    invoke-static {p0, p1}, Lcom/android/org/conscrypt/Conscrypt;->setUseSessionTickets(Ljavax/net/ssl/SSLEngine;Z)V

    .line 59
    return-void
.end method
