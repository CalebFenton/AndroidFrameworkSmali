.class public Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;
.super Ljava/lang/Object;
.source "AttributeTypeAndValueComparator.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/harmony/security/x501/AttributeTypeAndValue;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x11da77530460369cL


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static compateOids(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/utils/ObjectIdentifier;)I
    .locals 9
    .param p0, "oid1"    # Lorg/apache/harmony/security/utils/ObjectIdentifier;
    .param p1, "oid2"    # Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const/4 v6, -0x1

    #@3
    .line 79
    if-ne p0, p1, :cond_0

    #@5
    .line 80
    return v7

    #@6
    .line 83
    :cond_0
    invoke-virtual {p0}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    #@9
    move-result-object v1

    #@a
    .line 84
    .local v1, "ioid1":[I
    invoke-virtual {p1}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getOid()[I

    #@d
    move-result-object v2

    #@e
    .line 85
    .local v2, "ioid2":[I
    array-length v4, v1

    #@f
    array-length v5, v2

    #@10
    if-ge v4, v5, :cond_1

    #@12
    array-length v3, v1

    #@13
    .line 86
    .local v3, "min":I
    :goto_0
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_1
    if-ge v0, v3, :cond_6

    #@16
    .line 87
    aget v4, v1, v0

    #@18
    aget v5, v2, v0

    #@1a
    if-ge v4, v5, :cond_2

    #@1c
    .line 88
    return v6

    #@1d
    .line 85
    .end local v0    # "i":I
    .end local v3    # "min":I
    :cond_1
    array-length v3, v2

    #@1e
    .restart local v3    # "min":I
    goto :goto_0

    #@1f
    .line 90
    .restart local v0    # "i":I
    :cond_2
    aget v4, v1, v0

    #@21
    aget v5, v2, v0

    #@23
    if-le v4, v5, :cond_3

    #@25
    .line 91
    return v8

    #@26
    .line 93
    :cond_3
    add-int/lit8 v4, v0, 0x1

    #@28
    array-length v5, v1

    #@29
    if-ne v4, v5, :cond_4

    #@2b
    add-int/lit8 v4, v0, 0x1

    #@2d
    array-length v5, v2

    #@2e
    if-ge v4, v5, :cond_4

    #@30
    .line 94
    return v6

    #@31
    .line 96
    :cond_4
    add-int/lit8 v4, v0, 0x1

    #@33
    array-length v5, v1

    #@34
    if-ge v4, v5, :cond_5

    #@36
    add-int/lit8 v4, v0, 0x1

    #@38
    array-length v5, v2

    #@39
    if-ne v4, v5, :cond_5

    #@3b
    .line 97
    return v8

    #@3c
    .line 86
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@3e
    goto :goto_1

    #@3f
    .line 100
    :cond_6
    return v7
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "atav1"    # Ljava/lang/Object;
    .param p2, "atav2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 48
    check-cast p1, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    #@2
    .end local p1    # "atav1":Ljava/lang/Object;
    check-cast p2, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    #@4
    .end local p2    # "atav2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;->compare(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare(Lorg/apache/harmony/security/x501/AttributeTypeAndValue;Lorg/apache/harmony/security/x501/AttributeTypeAndValue;)I
    .locals 4
    .param p1, "atav1"    # Lorg/apache/harmony/security/x501/AttributeTypeAndValue;
    .param p2, "atav2"    # Lorg/apache/harmony/security/x501/AttributeTypeAndValue;

    #@0
    .prologue
    .line 49
    if-ne p1, p2, :cond_0

    #@2
    .line 50
    const/4 v2, 0x0

    #@3
    return v2

    #@4
    .line 53
    :cond_0
    invoke-virtual {p1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 54
    .local v0, "kw1":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Lorg/apache/harmony/security/utils/ObjectIdentifier;->getName()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 55
    .local v1, "kw2":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@16
    if-nez v1, :cond_1

    #@18
    .line 56
    const/4 v2, -0x1

    #@19
    return v2

    #@1a
    .line 58
    :cond_1
    if-nez v0, :cond_2

    #@1c
    if-eqz v1, :cond_2

    #@1e
    .line 59
    const/4 v2, 0x1

    #@1f
    return v2

    #@20
    .line 61
    :cond_2
    if-eqz v0, :cond_3

    #@22
    if-eqz v1, :cond_3

    #@24
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@27
    move-result v2

    #@28
    return v2

    #@29
    .line 65
    :cond_3
    invoke-virtual {p1}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {p2}, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->getType()Lorg/apache/harmony/security/utils/ObjectIdentifier;

    #@30
    move-result-object v3

    #@31
    invoke-static {v2, v3}, Lorg/apache/harmony/security/x501/AttributeTypeAndValueComparator;->compateOids(Lorg/apache/harmony/security/utils/ObjectIdentifier;Lorg/apache/harmony/security/utils/ObjectIdentifier;)I

    #@34
    move-result v2

    #@35
    return v2
.end method
