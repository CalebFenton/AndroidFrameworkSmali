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
    new-instance v0, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->rc4:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v0

    #@32
    const-string/jumbo v1, "ARC4"

    #@35
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@38
    .line 100
    const-string/jumbo v0, "Alg.Alias.Cipher.ARCFOUR"

    #@3b
    const-string/jumbo v1, "ARC4"

    #@3e
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    .line 101
    const-string/jumbo v0, "Alg.Alias.Cipher.RC4"

    #@44
    const-string/jumbo v1, "ARC4"

    #@47
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    .line 102
    const-string/jumbo v0, "KeyGenerator.ARC4"

    #@4d
    new-instance v1, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$Mappings;->PREFIX:Ljava/lang/String;

    #@54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v1

    #@58
    const-string/jumbo v2, "$KeyGen"

    #@5b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v1

    #@5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@66
    .line 103
    const-string/jumbo v0, "Alg.Alias.KeyGenerator.RC4"

    #@69
    const-string/jumbo v1, "ARC4"

    #@6c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@6f
    .line 104
    const-string/jumbo v0, "Alg.Alias.KeyGenerator.1.2.840.113549.3.4"

    #@72
    const-string/jumbo v1, "ARC4"

    #@75
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@78
    .line 105
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND128BITRC4"

    #@7b
    new-instance v1, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$Mappings;->PREFIX:Ljava/lang/String;

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    const-string/jumbo v2, "$PBEWithSHAAnd128BitKeyFactory"

    #@89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@90
    move-result-object v1

    #@91
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@94
    .line 106
    const-string/jumbo v0, "SecretKeyFactory.PBEWITHSHAAND40BITRC4"

    #@97
    new-instance v1, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$Mappings;->PREFIX:Ljava/lang/String;

    #@9e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v1

    #@a2
    const-string/jumbo v2, "$PBEWithSHAAnd40BitKeyFactory"

    #@a5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v1

    #@a9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v1

    #@ad
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@b0
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@b8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v0

    #@bc
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC4:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@be
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@c1
    move-result-object v0

    #@c2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c5
    move-result-object v0

    #@c6
    const-string/jumbo v1, "PKCS12PBE"

    #@c9
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@cc
    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    #@ce
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d1
    const-string/jumbo v1, "Alg.Alias.AlgorithmParameters."

    #@d4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d7
    move-result-object v0

    #@d8
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC4:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@da
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@dd
    move-result-object v0

    #@de
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e1
    move-result-object v0

    #@e2
    const-string/jumbo v1, "PKCS12PBE"

    #@e5
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@e8
    .line 110
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND40BITRC4"

    #@eb
    const-string/jumbo v1, "PKCS12PBE"

    #@ee
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@f1
    .line 111
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAAND128BITRC4"

    #@f4
    const-string/jumbo v1, "PKCS12PBE"

    #@f7
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@fa
    .line 112
    const-string/jumbo v0, "Alg.Alias.AlgorithmParameters.PBEWITHSHAANDRC4"

    #@fd
    const-string/jumbo v1, "PKCS12PBE"

    #@100
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@103
    .line 113
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND128BITRC4"

    #@106
    new-instance v1, Ljava/lang/StringBuilder;

    #@108
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10b
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$Mappings;->PREFIX:Ljava/lang/String;

    #@10d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@110
    move-result-object v1

    #@111
    const-string/jumbo v2, "$PBEWithSHAAnd128Bit"

    #@114
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v1

    #@118
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11b
    move-result-object v1

    #@11c
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@11f
    .line 114
    const-string/jumbo v0, "Cipher.PBEWITHSHAAND40BITRC4"

    #@122
    new-instance v1, Ljava/lang/StringBuilder;

    #@124
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@127
    sget-object v2, Lcom/android/org/bouncycastle/jcajce/provider/symmetric/ARC4$Mappings;->PREFIX:Ljava/lang/String;

    #@129
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12c
    move-result-object v1

    #@12d
    const-string/jumbo v2, "$PBEWithSHAAnd40Bit"

    #@130
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@133
    move-result-object v1

    #@134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@137
    move-result-object v1

    #@138
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@13b
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    #@13d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@140
    const-string/jumbo v1, "Alg.Alias.SecretKeyFactory."

    #@143
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@146
    move-result-object v0

    #@147
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC4:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@14c
    move-result-object v0

    #@14d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@150
    move-result-object v0

    #@151
    const-string/jumbo v1, "PBEWITHSHAAND128BITRC4"

    #@154
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@157
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    #@159
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15c
    const-string/jumbo v1, "Alg.Alias.SecretKeyFactory."

    #@15f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@162
    move-result-object v0

    #@163
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC4:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@165
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@168
    move-result-object v0

    #@169
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16c
    move-result-object v0

    #@16d
    const-string/jumbo v1, "PBEWITHSHAAND40BITRC4"

    #@170
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@173
    .line 119
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND128BITRC4"

    #@176
    const-string/jumbo v1, "PBEWITHSHAAND128BITRC4"

    #@179
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@17c
    .line 120
    const-string/jumbo v0, "Alg.Alias.Cipher.PBEWITHSHA1AND40BITRC4"

    #@17f
    const-string/jumbo v1, "PBEWITHSHAAND40BITRC4"

    #@182
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@185
    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    #@187
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@18a
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@18d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v0

    #@191
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd128BitRC4:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@196
    move-result-object v0

    #@197
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19a
    move-result-object v0

    #@19b
    const-string/jumbo v1, "PBEWITHSHAAND128BITRC4"

    #@19e
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1a1
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    #@1a3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@1a6
    const-string/jumbo v1, "Alg.Alias.Cipher."

    #@1a9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ac
    move-result-object v0

    #@1ad
    sget-object v1, Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->pbeWithSHAAnd40BitRC4:Lcom/android/org/bouncycastle/asn1/ASN1ObjectIdentifier;

    #@1af
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1b2
    move-result-object v0

    #@1b3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b6
    move-result-object v0

    #@1b7
    const-string/jumbo v1, "PBEWITHSHAAND40BITRC4"

    #@1ba
    invoke-interface {p1, v0, v1}, Lcom/android/org/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    #@1bd
    .line 96
    return-void
.end method
