.class public Ljava/security/spec/X509EncodedKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "X509EncodedKeySpec.java"


# direct methods
.method public constructor whitelist test-api <init>([B)V
    .registers 2
    .param p1, "encodedKey"    # [B

    .line 64
    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    .line 65
    return-void
.end method

.method public constructor whitelist test-api <init>([BLjava/lang/String;)V
    .registers 3
    .param p1, "encodedKey"    # [B
    .param p2, "algorithm"    # Ljava/lang/String;

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/security/spec/EncodedKeySpec;-><init>([BLjava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method public whitelist test-api getEncoded()[B
    .registers 2

    .line 98
    invoke-super {p0}, Ljava/security/spec/EncodedKeySpec;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getFormat()Ljava/lang/String;
    .registers 2

    .line 108
    const-string v0, "X.509"

    return-object v0
.end method
