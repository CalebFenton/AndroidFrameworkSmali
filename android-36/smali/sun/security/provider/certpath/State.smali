.class interface abstract Lsun/security/provider/certpath/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract whitelist test-api clone()Ljava/lang/Object;
.end method

.method public abstract blacklist isInitial()Z
.end method

.method public abstract blacklist keyParamsNeeded()Z
.end method

.method public abstract blacklist updateState(Ljava/security/cert/X509Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation
.end method
