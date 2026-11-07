.class public interface abstract Ljava/security/Certificate;
.super Ljava/lang/Object;
.source "Certificate.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
    forRemoval = true
    since = "1.2"
.end annotation


# virtual methods
.method public abstract whitelist test-api decode(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api encode(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api getFormat()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getGuarantor()Ljava/security/Principal;
.end method

.method public abstract whitelist test-api getPrincipal()Ljava/security/Principal;
.end method

.method public abstract whitelist test-api getPublicKey()Ljava/security/PublicKey;
.end method

.method public abstract whitelist test-api toString(Z)Ljava/lang/String;
.end method
