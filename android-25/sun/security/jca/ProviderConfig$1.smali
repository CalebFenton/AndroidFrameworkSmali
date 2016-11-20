.class Lsun/security/jca/ProviderConfig$1;
.super Ljava/lang/Object;
.source "ProviderConfig.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lsun/security/jca/ProviderConfig;->checkSunPKCS11Solaris()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lsun/security/jca/ProviderConfig;


# direct methods
.method constructor <init>(Lsun/security/jca/ProviderConfig;)V
    .locals 0
    .param p1, "this$0"    # Lsun/security/jca/ProviderConfig;

    #@0
    .prologue
    .line 103
    iput-object p1, p0, Lsun/security/jca/ProviderConfig$1;->this$0:Lsun/security/jca/ProviderConfig;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Boolean;
    .locals 3

    #@0
    .prologue
    .line 105
    new-instance v0, Ljava/io/File;

    #@2
    const-string/jumbo v1, "/usr/lib/libpkcs11.so"

    #@5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    #@8
    .line 106
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    .line 107
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@10
    return-object v1

    #@11
    .line 109
    :cond_0
    const-string/jumbo v1, "false"

    #@14
    .line 110
    const-string/jumbo v2, "sun.security.pkcs11.enable-solaris"

    #@17
    .line 109
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1e
    move-result v1

    #@1f
    if-eqz v1, :cond_1

    #@21
    .line 111
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@23
    return-object v1

    #@24
    .line 113
    :cond_1
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@26
    return-object v1
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 104
    invoke-virtual {p0}, Lsun/security/jca/ProviderConfig$1;->run()Ljava/lang/Boolean;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
