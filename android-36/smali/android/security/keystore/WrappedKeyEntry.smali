.class public Landroid/security/keystore/WrappedKeyEntry;
.super Ljava/lang/Object;
.source "WrappedKeyEntry.java"

# interfaces
.implements Ljava/security/KeyStore$Entry;


# instance fields
.field private final greylist-max-o mAlgorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

.field private final greylist-max-o mTransformation:Ljava/lang/String;

.field private final greylist-max-o mWrappedKeyBytes:[B

.field private final greylist-max-o mWrappingKeyAlias:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>([BLjava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .param p1, "wrappedKeyBytes"    # [B
    .param p2, "wrappingKeyAlias"    # Ljava/lang/String;
    .param p3, "transformation"    # Ljava/lang/String;
    .param p4, "algorithmParameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Landroid/security/keystore/WrappedKeyEntry;->mWrappedKeyBytes:[B

    .line 92
    iput-object p2, p0, Landroid/security/keystore/WrappedKeyEntry;->mWrappingKeyAlias:Ljava/lang/String;

    .line 93
    iput-object p3, p0, Landroid/security/keystore/WrappedKeyEntry;->mTransformation:Ljava/lang/String;

    .line 94
    iput-object p4, p0, Landroid/security/keystore/WrappedKeyEntry;->mAlgorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    .line 95
    return-void
.end method


# virtual methods
.method public whitelist getAlgorithmParameterSpec()Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/security/keystore/WrappedKeyEntry;->mAlgorithmParameterSpec:Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method public whitelist getTransformation()Ljava/lang/String;
    .registers 2

    .line 106
    iget-object v0, p0, Landroid/security/keystore/WrappedKeyEntry;->mTransformation:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWrappedKeyBytes()[B
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/security/keystore/WrappedKeyEntry;->mWrappedKeyBytes:[B

    return-object v0
.end method

.method public whitelist getWrappingKeyAlias()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/security/keystore/WrappedKeyEntry;->mWrappingKeyAlias:Ljava/lang/String;

    return-object v0
.end method
