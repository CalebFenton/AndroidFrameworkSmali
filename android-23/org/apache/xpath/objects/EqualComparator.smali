.class Lorg/apache/xpath/objects/EqualComparator;
.super Lorg/apache/xpath/objects/Comparator;
.source "XNodeSet.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 904
    invoke-direct {p0}, Lorg/apache/xpath/objects/Comparator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method compareNumbers(DD)Z
    .locals 1
    .param p1, "n1"    # D
    .param p3, "n2"    # D

    #@0
    .prologue
    .line 932
    cmpl-double v0, p1, p3

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z
    .locals 1
    .param p1, "s1"    # Lorg/apache/xml/utils/XMLString;
    .param p2, "s2"    # Lorg/apache/xml/utils/XMLString;

    #@0
    .prologue
    .line 918
    invoke-interface {p1, p2}, Lorg/apache/xml/utils/XMLString;->equals(Lorg/apache/xml/utils/XMLString;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method
