.class public interface abstract Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ProviderConfiguration;
.super Ljava/lang/Object;
.source "ProviderConfiguration.java"


# virtual methods
.method public abstract blacklist getAcceptableNamedCurves()Ljava/util/Set;
.end method

.method public abstract blacklist getAdditionalECParameters()Ljava/util/Map;
.end method

.method public abstract blacklist getDHDefaultParameters(I)Ljavax/crypto/spec/DHParameterSpec;
.end method

.method public abstract blacklist getDSADefaultParameters(I)Ljava/security/spec/DSAParameterSpec;
.end method

.method public abstract blacklist getEcImplicitlyCa()Lcom/android/internal/org/bouncycastle/jce/spec/ECParameterSpec;
.end method
