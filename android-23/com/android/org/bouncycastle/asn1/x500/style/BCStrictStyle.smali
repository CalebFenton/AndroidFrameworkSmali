.class public Lcom/android/org/bouncycastle/asn1/x500/style/BCStrictStyle;
.super Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;
.source "BCStrictStyle.java"


# static fields
.field public static final INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 14
    new-instance v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStrictStyle;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/asn1/x500/style/BCStrictStyle;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/asn1/x500/style/BCStrictStyle;->INSTANCE:Lcom/android/org/bouncycastle/asn1/x500/X500NameStyle;

    #@7
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/org/bouncycastle/asn1/x500/style/BCStyle;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public areEqual(Lcom/android/org/bouncycastle/asn1/x500/X500Name;Lcom/android/org/bouncycastle/asn1/x500/X500Name;)Z
    .locals 6
    .param p1, "name1"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "name2"    # Lcom/android/org/bouncycastle/asn1/x500/X500Name;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 18
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@4
    move-result-object v1

    #@5
    .line 19
    .local v1, "rdns1":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/org/bouncycastle/asn1/x500/RDN;

    #@8
    move-result-object v2

    #@9
    .line 21
    .local v2, "rdns2":[Lcom/android/org/bouncycastle/asn1/x500/RDN;
    array-length v3, v1

    #@a
    array-length v4, v2

    #@b
    if-eq v3, v4, :cond_0

    #@d
    .line 23
    return v5

    #@e
    .line 26
    :cond_0
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    array-length v3, v1

    #@10
    if-eq v0, v3, :cond_2

    #@12
    .line 28
    aget-object v3, v1, v0

    #@14
    aget-object v4, v2, v0

    #@16
    invoke-virtual {p0, v3, v4}, Lcom/android/org/bouncycastle/asn1/x500/style/BCStrictStyle;->rdnAreEqual(Lcom/android/org/bouncycastle/asn1/x500/RDN;Lcom/android/org/bouncycastle/asn1/x500/RDN;)Z

    #@19
    move-result v3

    #@1a
    if-nez v3, :cond_1

    #@1c
    .line 30
    return v5

    #@1d
    .line 26
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 34
    :cond_2
    const/4 v3, 0x1

    #@21
    return v3
.end method
