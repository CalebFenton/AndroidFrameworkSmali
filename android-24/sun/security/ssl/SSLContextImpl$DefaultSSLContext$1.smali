.class final Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;
.super Ljava/lang/Object;
.source "SSLContextImpl.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/ssl/SSLContextImpl$DefaultSSLContext;->getDefaultKeyManager()[Ljavax/net/ssl/KeyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$props:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    #@0
    .prologue
    .line 546
    .local p1, "val$props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;->val$props:Ljava/util/Map;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 548
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;->val$props:Ljava/util/Map;

    #@2
    const-string/jumbo v1, "keyStore"

    #@5
    .line 549
    const-string/jumbo v2, "javax.net.ssl.keyStore"

    #@8
    const-string/jumbo v3, ""

    #@b
    .line 548
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    .line 550
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;->val$props:Ljava/util/Map;

    #@14
    const-string/jumbo v1, "keyStoreType"

    #@17
    .line 551
    const-string/jumbo v2, "javax.net.ssl.keyStoreType"

    #@1a
    .line 552
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    #@1d
    move-result-object v3

    #@1e
    .line 550
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 553
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;->val$props:Ljava/util/Map;

    #@27
    const-string/jumbo v1, "keyStoreProvider"

    #@2a
    .line 554
    const-string/jumbo v2, "javax.net.ssl.keyStoreProvider"

    #@2d
    const-string/jumbo v3, ""

    #@30
    .line 553
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    .line 555
    iget-object v0, p0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$1;->val$props:Ljava/util/Map;

    #@39
    const-string/jumbo v1, "keyStorePasswd"

    #@3c
    .line 556
    const-string/jumbo v2, "javax.net.ssl.keyStorePassword"

    #@3f
    const-string/jumbo v3, ""

    #@42
    .line 555
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@49
    .line 557
    const/4 v0, 0x0

    #@4a
    return-object v0
.end method
