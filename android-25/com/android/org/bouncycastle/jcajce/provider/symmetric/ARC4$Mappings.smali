.class public Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$Mappings;
.super Lcom/android/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;
.source "ARC4.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# static fields
.field private static final PREFIX:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 90
    const-class v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$Mappings;->PREFIX:Ljava/lang/String;

    #@8
    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 92
    invoke-direct {p0}, Lcom/android/org/bouncycastle/jcajce/provider/util/AlgorithmProvider;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public configure(Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 3
    .param p1, "provider"    # Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;

    #@0
    .prologue
    .line 98
    const-string/jumbo v0, "Cipher.ARC4"

    #@3
    new-instance v1, Ljava/lang/StringBuilder;

    #@5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$Mappings;->PREFIX:Ljava/lang/String;

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    const-string/jumbo v2, "$Base"

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 99
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@1f
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rc4:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@21
    const-string/jumbo v2, "ARC4"

    #@24
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@27
    .line 100
    const-string/jumbo v0, "Alg.Alias.Cipher.ARCFOUR"

    #@2a
    const-string/jumbo v1, "ARC4"

    #@2d
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@30
    .line 101
    const-string/jumbo v0, "Alg.Alias.Cipher.RC4"

    #@33
    const-string/jumbo v1, "ARC4"

    #@36
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@39
    .line 102
    const-string/jumbo v0, "KeyGenerator.ARC4"

    #@3c
    new-instance v1, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$Mappings;->PREFIX:Ljava/lang/String;

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    const-string/jumbo v2, "$KeyGen"

    #@4a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v1

    #@4e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@51
    move-result-object v1

    #@52
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@55
    .line 103
    const-string/jumbo v0, "Alg.Alias.KeyGenerator.RC4"

    #@58
    const-string/jumbo v1, "ARC4"

    #@5b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@5e
    .line 104
    const-string/jumbo v0, "Alg.Alias.KeyGenerator.1.2.840.113549.3.4"

    #@61
    const-string/jumbo v1, "ARC4"

    #@64
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@67
    .line 105
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND128BITRC4"

    #@6a
    new-instance v1, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$Mappings;->PREFIX:Ljava/lang/String;

    #@71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v1

    #@75
    const-string/jumbo v2, "$PBEWithSHAAnd128BitKeyFactory"

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v1

    #@80
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@83
    .line 106
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND40BITRC4"

    #@86
    new-instance v1, Ljava/lang/StringBuilder;

    #@88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@8b
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$Mappings;->PREFIX:Ljava/lang/String;

    #@8d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    const-string/jumbo v2, "$PBEWithSHAAnd40BitKeyFactory"

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@97
    move-result-object v1

    #@98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9b
    move-result-object v1

    #@9c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@9f
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    #@a1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@a4
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@a7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v0

    #@ab
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC4:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@ad
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v0

    #@b1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b4
    move-result-object v0

    #@b5
    const-string/jumbo v1, "PKCS12PBE"

    #@b8
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@bb
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    #@bd
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c0
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@c3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v0

    #@c7
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC4:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@c9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@cc
    move-result-object v0

    #@cd
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d0
    move-result-object v0

    #@d1
    const-string/jumbo v1, "PKCS12PBE"

    #@d4
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@d7
    .line 110
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC4"

    #@da
    const-string/jumbo v1, "PKCS12PBE"

    #@dd
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@e0
    .line 111
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC4"

    #@e3
    const-string/jumbo v1, "PKCS12PBE"

    #@e6
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@e9
    .line 112
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC4"

    #@ec
    const-string/jumbo v1, "PKCS12PBE"

    #@ef
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@f2
    .line 113
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND128BITRC4"

    #@f5
    new-instance v1, Ljava/lang/StringBuilder;

    #@f7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@fa
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$Mappings;->PREFIX:Ljava/lang/String;

    #@fc
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ff
    move-result-object v1

    #@100
    const-string/jumbo v2, "$PBEWithSHAAnd128Bit"

    #@103
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@106
    move-result-object v1

    #@107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@10a
    move-result-object v1

    #@10b
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@10e
    .line 114
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND40BITRC4"

    #@111
    new-instance v1, Ljava/lang/StringBuilder;

    #@113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@116
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$Mappings;->PREFIX:Ljava/lang/String;

    #@118
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11b
    move-result-object v1

    #@11c
    const-string/jumbo v2, "$PBEWithSHAAnd40Bit"

    #@11f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@122
    move-result-object v1

    #@123
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@126
    move-result-object v1

    #@127
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@12a
    .line 116
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory"

    #@12d
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC4:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@12f
    const-string/jumbo v2, "PBEWITHSHAAND128BITRC4"

    #@132
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@135
    .line 117
    const-string/jumbo v0, "Alg.Alias.SecretKeyFactory"

    #@138
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC4:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@13a
    const-string/jumbo v2, "PBEWITHSHAAND40BITRC4"

    #@13d
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@140
    .line 119
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC4"

    #@143
    const-string/jumbo v1, "PBEWITHSHAAND128BITRC4"

    #@146
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@149
    .line 120
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC4"

    #@14c
    const-string/jumbo v1, "PBEWITHSHAAND40BITRC4"

    #@14f
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@152
    .line 122
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@155
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC4:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@157
    const-string/jumbo v2, "PBEWITHSHAAND128BITRC4"

    #@15a
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@15d
    .line 123
    const-string/jumbo v0, "Alg.Alias.Cipher"

    #@160
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC4:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@162
    const-string/jumbo v2, "PBEWITHSHAAND40BITRC4"

    #@165
    invoke-interface {p1, v0, v1, v2}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;)V

    #@168
    .line 96
    return-void
.end method
