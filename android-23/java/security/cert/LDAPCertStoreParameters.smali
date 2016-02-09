.class public Ljava/security/cert/LDAPCertStoreParameters;
.super Ljava/lang/Object;
.source "LDAPCertStoreParameters.java"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# static fields
.field private static final DEFAULT_LDAP_PORT:I = 0x185

.field private static final DEFAULT_LDAP_SERVER_NAME:Ljava/lang/String; = "localhost"


# instance fields
.field private final port:I

.field private final serverName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 60
    const-string/jumbo v0, "localhost"

    #@6
    iput-object v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    #@8
    .line 61
    const/16 v0, 0x185

    #@a
    iput v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    #@c
    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "serverName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    if-nez p1, :cond_0

    #@5
    .line 75
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "serverName == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 77
    :cond_0
    const/16 v0, 0x185

    #@10
    iput v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    #@12
    .line 78
    iput-object p1, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    #@14
    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "serverName"    # Ljava/lang/String;
    .param p2, "port"    # I

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 46
    if-nez p1, :cond_0

    #@5
    .line 47
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "serverName == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 49
    :cond_0
    iput p2, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    #@10
    .line 50
    iput-object p1, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    #@12
    .line 45
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    #@0
    .prologue
    .line 88
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@3
    move-result-object v1

    #@4
    return-object v1

    #@5
    .line 89
    :catch_0
    move-exception v0

    #@6
    .line 90
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    const/4 v1, 0x0

    #@7
    return-object v1
.end method

.method public getPort()I
    .locals 1

    #@0
    .prologue
    .line 100
    iget v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->port:I

    #@2
    return v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 109
    iget-object v0, p0, Ljava/security/cert/LDAPCertStoreParameters;->serverName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    const-string/jumbo v1, "LDAPCertStoreParameters: [\n serverName: "

    #@5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@8
    .line 122
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/security/cert/LDAPCertStoreParameters;->getServerName()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    .line 123
    const-string/jumbo v1, "\n port: "

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 124
    invoke-virtual {p0}, Ljava/security/cert/LDAPCertStoreParameters;->getPort()I

    #@18
    move-result v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1c
    .line 125
    const-string/jumbo v1, "\n]"

    #@1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    return-object v1
.end method
