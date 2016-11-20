.class final Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$2;
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
        "Ljava/io/FileInputStream;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$defaultKeyStore:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "val$defaultKeyStore"    # Ljava/lang/String;

    #@0
    .prologue
    .line 581
    iput-object p1, p0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$2;->val$defaultKeyStore:Ljava/lang/String;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/io/FileInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 583
    new-instance v0, Ljava/io/FileInputStream;

    #@2
    iget-object v1, p0, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$2;->val$defaultKeyStore:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    #@7
    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 582
    invoke-virtual {p0}, Lsun/security/ssl/SSLContextImpl$DefaultSSLContext$2;->run()Ljava/io/FileInputStream;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
