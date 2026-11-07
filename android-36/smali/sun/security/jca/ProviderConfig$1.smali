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
        "Ljava/security/PrivilegedAction<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Lsun/security/jca/ProviderConfig;)V
    .registers 2
    .param p1, "this$0"    # Lsun/security/jca/ProviderConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist run()Ljava/lang/Boolean;
    .registers 4

    .line 105
    new-instance v0, Ljava/io/File;

    const-string v1, "/usr/lib/libpkcs11.so"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_10

    .line 107
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    .line 109
    :cond_10
    nop

    .line 110
    const-string v1, "sun.security.pkcs11.enable-solaris"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 109
    const-string v2, "false"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 111
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    .line 113
    :cond_22
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1
.end method

.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2

    .line 103
    invoke-virtual {p0}, Lsun/security/jca/ProviderConfig$1;->run()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
