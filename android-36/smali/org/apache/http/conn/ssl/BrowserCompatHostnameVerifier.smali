.class public Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;
.super Lorg/apache/http/conn/ssl/AbstractVerifier;
.source "BrowserCompatHostnameVerifier.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Lorg/apache/http/conn/ssl/AbstractVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 64
    const-string v0, "BROWSER_COMPATIBLE"

    return-object v0
.end method

.method public final whitelist verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 5
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "cns"    # [Ljava/lang/String;
    .param p3, "subjectAlts"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/http/conn/ssl/BrowserCompatHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 60
    return-void
.end method
