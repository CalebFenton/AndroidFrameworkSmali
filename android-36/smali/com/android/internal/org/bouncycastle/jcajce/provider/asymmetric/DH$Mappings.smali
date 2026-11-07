.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DH$Mappings;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;
.source "DH.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public blacklist configure(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .registers 5
    .param p1, "provider"    # Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    .line 40
    const-string v0, "KeyPairGenerator.DH"

    const-string v1, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dh.KeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v0, "Alg.Alias.KeyPairGenerator.DIFFIEHELLMAN"

    const-string v1, "DH"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DH;->-$$Nest$sfgetgeneralDhAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v2, "KeyAgreement.DH"

    invoke-interface {p1, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAttributes(Ljava/lang/String;Ljava/util/Map;)V

    .line 44
    const-string v0, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dh.KeyAgreementSpi"

    invoke-interface {p1, v2, v0}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v0, "Alg.Alias.KeyAgreement.DIFFIEHELLMAN"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "KeyFactory.DH"

    const-string v2, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dh.KeyFactorySpi"

    invoke-interface {p1, v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v0, "Alg.Alias.KeyFactory.DIFFIEHELLMAN"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v0, "AlgorithmParameters.DH"

    const-string v2, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dh.AlgorithmParametersSpi"

    invoke-interface {p1, v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v0, "Alg.Alias.AlgorithmParameters.DIFFIEHELLMAN"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v0, "Alg.Alias.AlgorithmParameterGenerator.DIFFIEHELLMAN"

    invoke-interface {p1, v0, v1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v0, "AlgorithmParameterGenerator.DH"

    const-string v2, "com.android.internal.org.bouncycastle.jcajce.provider.asymmetric.dh.AlgorithmParameterGeneratorSpi"

    invoke-interface {p1, v0, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->dhKeyAgreement:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DH$Mappings;->registerOid(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 106
    sget-object v0, Lcom/android/internal/org/bouncycastle/asn1/x9/X9ObjectIdentifiers;->dhpublicnumber:Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v2, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;

    invoke-direct {v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/dh/KeyFactorySpi;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/DH$Mappings;->registerOid(Lcom/android/internal/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lcom/android/internal/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lcom/android/internal/org/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    .line 107
    return-void
.end method
