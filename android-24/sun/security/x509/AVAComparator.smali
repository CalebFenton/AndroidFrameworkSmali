.class Lsun/security/x509/AVAComparator;
.super Ljava/lang/Object;
.source "RDN.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lsun/security/x509/AVA;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 483
    new-instance v0, Lsun/security/x509/AVAComparator;

    #@2
    invoke-direct {v0}, Lsun/security/x509/AVAComparator;-><init>()V

    #@5
    sput-object v0, Lsun/security/x509/AVAComparator;->INSTANCE:Ljava/util/Comparator;

    #@7
    .line 481
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getInstance()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 490
    sget-object v0, Lsun/security/x509/AVAComparator;->INSTANCE:Ljava/util/Comparator;

    #@2
    return-object v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a1"    # Ljava/lang/Object;
    .param p2, "a2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 498
    check-cast p1, Lsun/security/x509/AVA;

    #@2
    .end local p1    # "a1":Ljava/lang/Object;
    check-cast p2, Lsun/security/x509/AVA;

    #@4
    .end local p2    # "a2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lsun/security/x509/AVAComparator;->compare(Lsun/security/x509/AVA;Lsun/security/x509/AVA;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Lsun/security/x509/AVA;Lsun/security/x509/AVA;)I
    .locals 8
    .param p1, "a1"    # Lsun/security/x509/AVA;
    .param p2, "a2"    # Lsun/security/x509/AVA;

    #@0
    .prologue
    .line 499
    invoke-virtual {p1}, Lsun/security/x509/AVA;->hasRFC2253Keyword()Z

    #@3
    move-result v0

    #@4
    .line 500
    .local v0, "a1Has2253":Z
    invoke-virtual {p2}, Lsun/security/x509/AVA;->hasRFC2253Keyword()Z

    #@7
    move-result v2

    #@8
    .line 502
    .local v2, "a2Has2253":Z
    if-eqz v0, :cond_1

    #@a
    .line 503
    if-eqz v2, :cond_0

    #@c
    .line 504
    invoke-virtual {p1}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    #@f
    move-result-object v6

    #@10
    .line 505
    invoke-virtual {p2}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    #@13
    move-result-object v7

    #@14
    .line 504
    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@17
    move-result v6

    #@18
    return v6

    #@19
    .line 507
    :cond_0
    const/4 v6, -0x1

    #@1a
    return v6

    #@1b
    .line 510
    :cond_1
    if-eqz v2, :cond_2

    #@1d
    .line 511
    const/4 v6, 0x1

    #@1e
    return v6

    #@1f
    .line 513
    :cond_2
    invoke-virtual {p1}, Lsun/security/x509/AVA;->getObjectIdentifier()Lsun/security/util/ObjectIdentifier;

    #@22
    move-result-object v6

    #@23
    invoke-virtual {v6}, Lsun/security/util/ObjectIdentifier;->toIntArray()[I

    #@26
    move-result-object v1

    #@27
    .line 514
    .local v1, "a1Oid":[I
    invoke-virtual {p2}, Lsun/security/x509/AVA;->getObjectIdentifier()Lsun/security/util/ObjectIdentifier;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v6}, Lsun/security/util/ObjectIdentifier;->toIntArray()[I

    #@2e
    move-result-object v3

    #@2f
    .line 515
    .local v3, "a2Oid":[I
    const/4 v5, 0x0

    #@30
    .line 516
    .local v5, "pos":I
    array-length v6, v1

    #@31
    array-length v7, v3

    #@32
    if-le v6, v7, :cond_3

    #@34
    array-length v4, v3

    #@35
    .line 518
    .local v4, "len":I
    :goto_0
    if-ge v5, v4, :cond_4

    #@37
    aget v6, v1, v5

    #@39
    aget v7, v3, v5

    #@3b
    if-ne v6, v7, :cond_4

    #@3d
    .line 519
    add-int/lit8 v5, v5, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 517
    .end local v4    # "len":I
    :cond_3
    array-length v4, v1

    #@41
    .restart local v4    # "len":I
    goto :goto_0

    #@42
    .line 521
    :cond_4
    if-ne v5, v4, :cond_5

    #@44
    array-length v6, v1

    #@45
    array-length v7, v3

    #@46
    sub-int/2addr v6, v7

    #@47
    :goto_1
    return v6

    #@48
    .line 522
    :cond_5
    aget v6, v1, v5

    #@4a
    aget v7, v3, v5

    #@4c
    sub-int/2addr v6, v7

    #@4d
    goto :goto_1
.end method
