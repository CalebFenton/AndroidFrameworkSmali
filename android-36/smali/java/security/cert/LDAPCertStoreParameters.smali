.class public Ljava/security/cert/LDAPCertStoreParameters;
.super Ljava/lang/Object;
.source "LDAPCertStoreParameters.java"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# static fields
.field private static final greylist-max-o LDAP_DEFAULT_PORT:I = 0x185


# instance fields
.field private greylist-max-o port:I

.field private greylist-max-o serverName:Ljava/lang/String;


# direct methods
.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 99
    const-string v0, "localhost"

    const/16 v1, 0x185

    invoke-direct {p0, v0, v1}, Ljava/security/cert/LDAPCertStoreParameters;-><init>(Ljava/lang/String;I)V

    .line 100
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "serverName"    # Ljava/lang/String;

    .line 91
    const/16 v0, 0x185

    invoke-direct {p0, p1, v0}, Ljava/security/cert/LDAPCertStoreParameters;-><init>(Ljava/lang/String;I)V

    .line 92
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "serverName"    # Ljava/lang/String;
    .param p2, "port"    # I

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    if-eqz p1, :cond_a

    .line 78
    iput-object p1, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    .line 79
    iput p2, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    .line 80
    return-void

    .line 77
    :cond_a
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 133
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 134
    :catch_5
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api getPort()I
    .registers 2

    .line 117
    iget v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    return v0
.end method

.method public whitelist test-api getServerName()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "LDAPCertStoreParameters: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  serverName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  port: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
