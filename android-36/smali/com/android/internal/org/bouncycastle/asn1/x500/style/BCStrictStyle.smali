.class public Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;
.super Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;
.source "BCStrictStyle.java"


# static fields
.field public static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 16
    new-instance v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;->INSTANCE:Lcom/android/internal/org/bouncycastle/asn1/x500/X500NameStyle;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist areEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;)Z
    .registers 9
    .param p1, "name1"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;
    .param p2, "name2"    # Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;

    .line 20
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->size()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_c

    .line 22
    return v2

    .line 25
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v0

    .line 26
    .local v0, "rdns1":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    invoke-virtual {p2}, Lcom/android/internal/org/bouncycastle/asn1/x500/X500Name;->getRDNs()[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;

    move-result-object v1

    .line 28
    .local v1, "rdns2":[Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    array-length v4, v0

    if-eq v3, v4, :cond_26

    .line 30
    aget-object v4, v0, v3

    aget-object v5, v1, v3

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/org/bouncycastle/asn1/x500/style/BCStrictStyle;->rdnAreEqual(Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;Lcom/android/internal/org/bouncycastle/asn1/x500/RDN;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 32
    return v2

    .line 28
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 36
    .end local v3    # "i":I
    :cond_26
    const/4 v2, 0x1

    return v2
.end method
