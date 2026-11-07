.class Lsun/security/x509/AVAComparator;
.super Ljava/lang/Object;
.source "RDN.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lsun/security/x509/AVA;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist INSTANCE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 467
    new-instance v0, Lsun/security/x509/AVAComparator;

    invoke-direct {v0}, Lsun/security/x509/AVAComparator;-><init>()V

    sput-object v0, Lsun/security/x509/AVAComparator;->INSTANCE:Ljava/util/Comparator;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 469
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    return-void
.end method

.method static blacklist getInstance()Ljava/util/Comparator;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lsun/security/x509/AVA;",
            ">;"
        }
    .end annotation

    .line 474
    sget-object v0, Lsun/security/x509/AVAComparator;->INSTANCE:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 465
    check-cast p1, Lsun/security/x509/AVA;

    check-cast p2, Lsun/security/x509/AVA;

    invoke-virtual {p0, p1, p2}, Lsun/security/x509/AVAComparator;->compare(Lsun/security/x509/AVA;Lsun/security/x509/AVA;)I

    move-result p1

    return p1
.end method

.method public blacklist compare(Lsun/security/x509/AVA;Lsun/security/x509/AVA;)I
    .registers 11
    .param p1, "a1"    # Lsun/security/x509/AVA;
    .param p2, "a2"    # Lsun/security/x509/AVA;

    .line 482
    invoke-virtual {p1}, Lsun/security/x509/AVA;->hasRFC2253Keyword()Z

    move-result v0

    .line 483
    .local v0, "a1Has2253":Z
    invoke-virtual {p2}, Lsun/security/x509/AVA;->hasRFC2253Keyword()Z

    move-result v1

    .line 486
    .local v1, "a2Has2253":Z
    if-eqz v0, :cond_1b

    .line 487
    if-eqz v1, :cond_19

    .line 488
    invoke-virtual {p1}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v2

    .line 489
    invoke-virtual {p2}, Lsun/security/x509/AVA;->toRFC2253CanonicalString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 488
    return v2

    .line 491
    :cond_19
    const/4 v2, -0x1

    return v2

    .line 494
    :cond_1b
    if-eqz v1, :cond_1f

    .line 495
    const/4 v2, 0x1

    return v2

    .line 497
    :cond_1f
    invoke-virtual {p1}, Lsun/security/x509/AVA;->getObjectIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lsun/security/util/ObjectIdentifier;->toIntArray()[I

    move-result-object v2

    .line 498
    .local v2, "a1Oid":[I
    invoke-virtual {p2}, Lsun/security/x509/AVA;->getObjectIdentifier()Lsun/security/util/ObjectIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lsun/security/util/ObjectIdentifier;->toIntArray()[I

    move-result-object v3

    .line 499
    .local v3, "a2Oid":[I
    const/4 v4, 0x0

    .line 500
    .local v4, "pos":I
    array-length v5, v2

    array-length v6, v3

    if-le v5, v6, :cond_36

    array-length v5, v3

    goto :goto_37

    .line 501
    :cond_36
    array-length v5, v2

    :goto_37
    nop

    .line 502
    .local v5, "len":I
    :goto_38
    if-ge v4, v5, :cond_43

    aget v6, v2, v4

    aget v7, v3, v4

    if-ne v6, v7, :cond_43

    .line 503
    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 505
    :cond_43
    if-ne v4, v5, :cond_49

    array-length v6, v2

    array-length v7, v3

    sub-int/2addr v6, v7

    goto :goto_4e

    .line 506
    :cond_49
    aget v6, v2, v4

    aget v7, v3, v4

    sub-int/2addr v6, v7

    .line 505
    :goto_4e
    return v6
.end method
