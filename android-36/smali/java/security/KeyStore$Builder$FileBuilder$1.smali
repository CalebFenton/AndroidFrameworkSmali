.class Ljava/security/KeyStore$Builder$FileBuilder$1;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/PrivilegedExceptionAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/security/KeyStore$Builder$FileBuilder;->getKeyStore()Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedExceptionAction<",
        "Ljava/security/KeyStore;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Ljava/security/KeyStore$Builder$FileBuilder;


# direct methods
.method constructor blacklist <init>(Ljava/security/KeyStore$Builder$FileBuilder;)V
    .registers 2
    .param p1, "this$0"    # Ljava/security/KeyStore$Builder$FileBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2091
    iput-object p1, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api run()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2091
    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;->run()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public blacklist run()Ljava/security/KeyStore;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2093
    iget-object v0, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v0}, Ljava/security/KeyStore$Builder$FileBuilder;->-$$Nest$fgetprotection(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v0

    instance-of v0, v0, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-nez v0, :cond_f

    .line 2094
    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;->run0()Ljava/security/KeyStore;

    move-result-object v0

    return-object v0

    .line 2098
    :cond_f
    const/4 v0, 0x0

    .line 2100
    .local v0, "tries":I
    :goto_10
    add-int/lit8 v0, v0, 0x1

    .line 2102
    :try_start_12
    invoke-virtual {p0}, Ljava/security/KeyStore$Builder$FileBuilder$1;->run0()Ljava/security/KeyStore;

    move-result-object v1
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_16} :catch_17

    return-object v1

    .line 2103
    :catch_17
    move-exception v1

    .line 2104
    .local v1, "e":Ljava/io/IOException;
    const/4 v2, 0x3

    if-ge v0, v2, :cond_24

    .line 2105
    invoke-virtual {v1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/security/UnrecoverableKeyException;

    if-eqz v2, :cond_24

    .line 2106
    goto :goto_10

    .line 2108
    :cond_24
    throw v1
.end method

.method public blacklist run0()Ljava/security/KeyStore;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2114
    const/4 v0, 0x0

    .line 2117
    .local v0, "password":[C
    iget-object v1, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v1}, Ljava/security/KeyStore$Builder$FileBuilder;->-$$Nest$fgetprotection(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v1

    instance-of v1, v1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v1, :cond_23

    .line 2118
    iget-object v1, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v1}, Ljava/security/KeyStore$Builder$FileBuilder;->-$$Nest$fgetprotection(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$PasswordProtection;

    .line 2119
    invoke-virtual {v1}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v0

    .line 2120
    iget-object v1, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v2}, Ljava/security/KeyStore$Builder$FileBuilder;->-$$Nest$fgetprotection(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/KeyStore$Builder$FileBuilder;->-$$Nest$fputkeyProtection(Ljava/security/KeyStore$Builder$FileBuilder;Ljava/security/KeyStore$ProtectionParameter;)V

    goto :goto_6d

    .line 2122
    :cond_23
    iget-object v1, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v1}, Ljava/security/KeyStore$Builder$FileBuilder;->-$$Nest$fgetprotection(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v1

    check-cast v1, Ljava/security/KeyStore$CallbackHandlerProtection;

    .line 2124
    invoke-virtual {v1}, Ljava/security/KeyStore$CallbackHandlerProtection;->getCallbackHandler()Ljavax/security/auth/callback/CallbackHandler;

    move-result-object v1

    .line 2125
    .local v1, "handler":Ljavax/security/auth/callback/CallbackHandler;
    new-instance v2, Ljavax/security/auth/callback/PasswordCallback;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Password for keystore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v4}, Ljava/security/KeyStore$Builder$FileBuilder;->-$$Nest$fgetfile(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/io/File;

    move-result-object v4

    .line 2126
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    .line 2128
    .local v2, "callback":Ljavax/security/auth/callback/PasswordCallback;
    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/security/auth/callback/Callback;

    aput-object v2, v3, v4

    invoke-interface {v1, v3}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    .line 2129
    invoke-virtual {v2}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C

    move-result-object v0

    .line 2130
    if-eqz v0, :cond_c3

    .line 2134
    invoke-virtual {v2}, Ljavax/security/auth/callback/PasswordCallback;->clearPassword()V

    .line 2135
    iget-object v3, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    new-instance v4, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v4, v0}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    invoke-static {v3, v4}, Ljava/security/KeyStore$Builder$FileBuilder;->-$$Nest$fputkeyProtection(Ljava/security/KeyStore$Builder$FileBuilder;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 2138
    .end local v1    # "handler":Ljavax/security/auth/callback/CallbackHandler;
    .end local v2    # "callback":Ljavax/security/auth/callback/PasswordCallback;
    :goto_6d
    iget-object v1, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v1}, Ljava/security/KeyStore$Builder$FileBuilder;->-$$Nest$fgettype(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_84

    .line 2140
    iget-object v1, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v1}, Ljava/security/KeyStore$Builder$FileBuilder;->-$$Nest$fgetfile(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/security/KeyStore;->getInstance(Ljava/io/File;[C)Ljava/security/KeyStore;

    move-result-object v1

    .local v1, "ks":Ljava/security/KeyStore;
    goto :goto_b8

    .line 2143
    .end local v1    # "ks":Ljava/security/KeyStore;
    :cond_84
    iget-object v1, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v1}, Ljava/security/KeyStore$Builder$FileBuilder;->-$$Nest$fgetprovider(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/Provider;

    move-result-object v1

    if-nez v1, :cond_97

    .line 2144
    iget-object v1, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v1}, Ljava/security/KeyStore$Builder$FileBuilder;->-$$Nest$fgettype(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .restart local v1    # "ks":Ljava/security/KeyStore;
    goto :goto_a7

    .line 2146
    .end local v1    # "ks":Ljava/security/KeyStore;
    :cond_97
    iget-object v1, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v1}, Ljava/security/KeyStore$Builder$FileBuilder;->-$$Nest$fgettype(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v2}, Ljava/security/KeyStore$Builder$FileBuilder;->-$$Nest$fgetprovider(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/security/Provider;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v1

    .line 2149
    .restart local v1    # "ks":Ljava/security/KeyStore;
    :goto_a7
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Ljava/security/KeyStore$Builder$FileBuilder$1;->this$0:Ljava/security/KeyStore$Builder$FileBuilder;

    invoke-static {v3}, Ljava/security/KeyStore$Builder$FileBuilder;->-$$Nest$fgetfile(Ljava/security/KeyStore$Builder$FileBuilder;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2150
    .local v2, "in":Ljava/io/InputStream;
    :try_start_b2
    invoke-virtual {v1, v2, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_b9

    .line 2151
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 2153
    .end local v2    # "in":Ljava/io/InputStream;
    :goto_b8
    return-object v1

    .line 2149
    .restart local v2    # "in":Ljava/io/InputStream;
    :catchall_b9
    move-exception v3

    :try_start_ba
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_bd
    .catchall {:try_start_ba .. :try_end_bd} :catchall_be

    goto :goto_c2

    :catchall_be
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_c2
    throw v3

    .line 2131
    .local v1, "handler":Ljavax/security/auth/callback/CallbackHandler;
    .local v2, "callback":Ljavax/security/auth/callback/PasswordCallback;
    :cond_c3
    new-instance v3, Ljava/security/KeyStoreException;

    const-string v4, "No password provided"

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
