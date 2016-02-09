.class public Lcom/android/org/bouncycastle/asn1/x509/CRLReason;
.super Lcom/android/org/bouncycastle/asn1/ASN1Object;
.source "CRLReason.java"


# static fields
.field public static final AA_COMPROMISE:I = 0xa

.field public static final AFFILIATION_CHANGED:I = 0x3

.field public static final CA_COMPROMISE:I = 0x2

.field public static final CERTIFICATE_HOLD:I = 0x6

.field public static final CESSATION_OF_OPERATION:I = 0x5

.field public static final KEY_COMPROMISE:I = 0x1

.field public static final PRIVILEGE_WITHDRAWN:I = 0x9

.field public static final REMOVE_FROM_CRL:I = 0x8

.field public static final SUPERSEDED:I = 0x4

.field public static final UNSPECIFIED:I = 0x0

.field public static final aACompromise:I = 0xa

.field public static final affiliationChanged:I = 0x3

.field public static final cACompromise:I = 0x2

.field public static final certificateHold:I = 0x6

.field public static final cessationOfOperation:I = 0x5

.field public static final keyCompromise:I = 0x1

.field public static final privilegeWithdrawn:I = 0x9

.field private static final reasonString:[Ljava/lang/String;

.field public static final removeFromCRL:I = 0x8

.field public static final superseded:I = 0x4

.field private static final table:Ljava/util/Hashtable;

.field public static final unspecified:I


# instance fields
.field private value:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 85
    const/16 v0, 0xb

    #@2
    new-array v0, v0, [Ljava/lang/String;

    #@4
    .line 86
    const-string/jumbo v1, "unspecified"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const-string/jumbo v1, "keyCompromise"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    const-string/jumbo v1, "cACompromise"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    const-string/jumbo v1, "affiliationChanged"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 87
    const-string/jumbo v1, "superseded"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    const-string/jumbo v1, "cessationOfOperation"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    const-string/jumbo v1, "certificateHold"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    const-string/jumbo v1, "unknown"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    .line 88
    const-string/jumbo v1, "removeFromCRL"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    const-string/jumbo v1, "privilegeWithdrawn"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    const-string/jumbo v1, "aACompromise"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 84
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->reasonString:[Ljava/lang/String;

    #@4b
    .line 91
    new-instance v0, Ljava/util/Hashtable;

    #@4d
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@50
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    #@52
    .line 28
    return-void
.end method

.method private constructor <init>(I)V
    .locals 1
    .param p1, "reason"    # I

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Object;-><init>()V

    #@3
    .line 112
    new-instance v0, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@5
    invoke-direct {v0, p1}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;-><init>(I)V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->value:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@a
    .line 110
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/x509/CRLReason;
    .locals 2
    .param p0, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 97
    instance-of v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 99
    check-cast p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    #@7
    .end local p0    # "o":Ljava/lang/Object;
    return-object p0

    #@8
    .line 101
    .restart local p0    # "o":Ljava/lang/Object;
    :cond_0
    if-eqz p0, :cond_1

    #@a
    .line 103
    invoke-static {p0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    #@15
    move-result v0

    #@16
    invoke-static {v0}, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->lookup(I)Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    #@19
    move-result-object v0

    #@1a
    return-object v0

    #@1b
    .line 106
    :cond_1
    return-object v1
.end method

.method public static lookup(I)Lcom/android/org/bouncycastle/asn1/x509/CRLReason;
    .locals 3
    .param p0, "value"    # I

    #@0
    .prologue
    .line 142
    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    #@3
    move-result-object v0

    #@4
    .line 144
    .local v0, "idx":Ljava/lang/Integer;
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    #@9
    move-result v1

    #@a
    if-nez v1, :cond_0

    #@c
    .line 146
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    #@e
    new-instance v2, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    #@10
    invoke-direct {v2, p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;-><init>(I)V

    #@13
    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 149
    :cond_0
    sget-object v1, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->table:Ljava/util/Hashtable;

    #@18
    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;

    #@1e
    return-object v1
.end method


# virtual methods
.method public getValue()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->value:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toASN1Primitive()Lcom/android/org/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    #@0
    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->value:Lcom/android/org/bouncycastle/asn1/ASN1Enumerated;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->getValue()Ljava/math/BigInteger;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    #@7
    move-result v0

    #@8
    .line 119
    .local v0, "reason":I
    if-ltz v0, :cond_0

    #@a
    const/16 v2, 0xa

    #@c
    if-le v0, v2, :cond_1

    #@e
    .line 121
    :cond_0
    const-string/jumbo v1, "invalid"

    #@11
    .line 127
    .local v1, "str":Ljava/lang/String;
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v3, "CRLReason: "

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    return-object v2

    #@26
    .line 125
    .end local v1    # "str":Ljava/lang/String;
    :cond_1
    sget-object v2, Lcom/android/org/bouncycastle/asn1/x509/CRLReason;->reasonString:[Ljava/lang/String;

    #@28
    aget-object v1, v2, v0

    #@2a
    .restart local v1    # "str":Ljava/lang/String;
    goto :goto_0
.end method
