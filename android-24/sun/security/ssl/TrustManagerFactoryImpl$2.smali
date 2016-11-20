.class final Lsun/security/ssl/TrustManagerFactoryImpl$2;
.super Ljava/lang/Object;
.source "TrustManagerFactoryImpl.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/ssl/TrustManagerFactoryImpl;->getCacertsKeyStore(Ljava/lang/String;)Ljava/security/KeyStore;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$props:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    #@0
    .prologue
    .line 141
    .local p1, "val$props":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lsun/security/ssl/TrustManagerFactoryImpl$2;->val$props:Ljava/util/HashMap;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 142
    invoke-virtual {p0}, Lsun/security/ssl/TrustManagerFactoryImpl$2;->run()Ljava/lang/Void;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public run()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 143
    iget-object v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl$2;->val$props:Ljava/util/HashMap;

    #@2
    const-string/jumbo v1, "trustStore"

    #@5
    .line 144
    const-string/jumbo v2, "javax.net.ssl.trustStore"

    #@8
    .line 143
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 145
    iget-object v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl$2;->val$props:Ljava/util/HashMap;

    #@11
    const-string/jumbo v1, "javaHome"

    #@14
    .line 146
    const-string/jumbo v2, "java.home"

    #@17
    .line 145
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    .line 147
    iget-object v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl$2;->val$props:Ljava/util/HashMap;

    #@20
    const-string/jumbo v1, "trustStoreType"

    #@23
    .line 148
    const-string/jumbo v2, "javax.net.ssl.trustStoreType"

    #@26
    .line 149
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    .line 147
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 150
    iget-object v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl$2;->val$props:Ljava/util/HashMap;

    #@33
    const-string/jumbo v1, "trustStoreProvider"

    #@36
    .line 151
    const-string/jumbo v2, "javax.net.ssl.trustStoreProvider"

    #@39
    const-string/jumbo v3, ""

    #@3c
    .line 150
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 152
    iget-object v0, p0, Lsun/security/ssl/TrustManagerFactoryImpl$2;->val$props:Ljava/util/HashMap;

    #@45
    const-string/jumbo v1, "trustStorePasswd"

    #@48
    .line 153
    const-string/jumbo v2, "javax.net.ssl.trustStorePassword"

    #@4b
    const-string/jumbo v3, ""

    #@4e
    .line 152
    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@55
    .line 154
    const/4 v0, 0x0

    #@56
    return-object v0
.end method
