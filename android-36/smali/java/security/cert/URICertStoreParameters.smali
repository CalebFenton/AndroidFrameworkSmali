.class public final Ljava/security/cert/URICertStoreParameters;
.super Ljava/lang/Object;
.source "URICertStoreParameters.java"

# interfaces
.implements Ljava/security/cert/CertStoreParameters;


# instance fields
.field private blacklist myhash:I

.field private final blacklist uri:Ljava/net/URI;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/net/URI;)V
    .registers 3
    .param p1, "uri"    # Ljava/net/URI;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/URICertStoreParameters;->myhash:I

    .line 70
    if-eqz p1, :cond_b

    .line 73
    iput-object p1, p0, Ljava/security/cert/URICertStoreParameters;->uri:Ljava/net/URI;

    .line 74
    return-void

    .line 71
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 50
    invoke-virtual {p0}, Ljava/security/cert/URICertStoreParameters;->clone()Ljava/security/cert/URICertStoreParameters;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api clone()Ljava/security/cert/URICertStoreParameters;
    .registers 4

    .line 95
    :try_start_0
    new-instance v0, Ljava/security/cert/URICertStoreParameters;

    iget-object v1, p0, Ljava/security/cert/URICertStoreParameters;->uri:Ljava/net/URI;

    invoke-direct {v0, v1}, Ljava/security/cert/URICertStoreParameters;-><init>(Ljava/net/URI;)V
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_7} :catch_8

    return-object v0

    .line 96
    :catch_8
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "p"    # Ljava/lang/Object;

    .line 127
    if-eqz p1, :cond_19

    instance-of v0, p1, Ljava/security/cert/URICertStoreParameters;

    if-nez v0, :cond_7

    goto :goto_19

    .line 131
    :cond_7
    if-ne p1, p0, :cond_b

    .line 132
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_b
    move-object v0, p1

    check-cast v0, Ljava/security/cert/URICertStoreParameters;

    .line 136
    .local v0, "other":Ljava/security/cert/URICertStoreParameters;
    iget-object v1, p0, Ljava/security/cert/URICertStoreParameters;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/security/cert/URICertStoreParameters;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 128
    .end local v0    # "other":Ljava/security/cert/URICertStoreParameters;
    :cond_19
    :goto_19
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getURI()Ljava/net/URI;
    .registers 2

    .line 83
    iget-object v0, p0, Ljava/security/cert/URICertStoreParameters;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 110
    iget v0, p0, Ljava/security/cert/URICertStoreParameters;->myhash:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_f

    .line 111
    iget-object v0, p0, Ljava/security/cert/URICertStoreParameters;->uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x7

    iput v0, p0, Ljava/security/cert/URICertStoreParameters;->myhash:I

    .line 113
    :cond_f
    iget v0, p0, Ljava/security/cert/URICertStoreParameters;->myhash:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URICertStoreParameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/cert/URICertStoreParameters;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
