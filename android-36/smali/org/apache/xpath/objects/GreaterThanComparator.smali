.class Lorg/apache/xpath/objects/GreaterThanComparator;
.super Lorg/apache/xpath/objects/Comparator;
.source "XNodeSet.java"


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 832
    invoke-direct {p0}, Lorg/apache/xpath/objects/Comparator;-><init>()V

    return-void
.end method


# virtual methods
.method greylist compareNumbers(DD)Z
    .registers 5

    .line 0
    cmpl-double p0, p1, p3

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method greylist compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z
    .registers 5

    .line 846
    invoke-interface {p1}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide p0

    invoke-interface {p2}, Lorg/apache/xml/utils/XMLString;->toDouble()D

    move-result-wide v0

    cmpl-double p0, p0, v0

    if-lez p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method
