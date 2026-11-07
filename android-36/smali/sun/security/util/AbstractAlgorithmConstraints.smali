.class public abstract Lsun/security/util/AbstractAlgorithmConstraints;
.super Ljava/lang/Object;
.source "AbstractAlgorithmConstraints.java"

# interfaces
.implements Ljava/security/AlgorithmConstraints;


# instance fields
.field protected final blacklist decomposer:Lsun/security/util/AlgorithmDecomposer;


# direct methods
.method protected constructor blacklist <init>(Lsun/security/util/AlgorithmDecomposer;)V
    .registers 2
    .param p1, "decomposer"    # Lsun/security/util/AlgorithmDecomposer;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lsun/security/util/AbstractAlgorithmConstraints;->decomposer:Lsun/security/util/AlgorithmDecomposer;

    .line 44
    return-void
.end method

.method static greylist-max-o checkAlgorithm([Ljava/lang/String;Ljava/lang/String;Lsun/security/util/AlgorithmDecomposer;)Z
    .registers 11
    .param p0, "algorithms"    # [Ljava/lang/String;
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "decomposer"    # Lsun/security/util/AlgorithmDecomposer;

    .line 79
    if-eqz p1, :cond_43

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_43

    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_c
    if-ge v3, v1, :cond_41

    aget-object v4, p0, v3

    .line 85
    .local v4, "item":Ljava/lang/String;
    if-eqz v4, :cond_3e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_19

    .line 86
    goto :goto_3e

    .line 90
    :cond_19
    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 91
    return v2

    .line 95
    :cond_20
    if-nez v0, :cond_26

    .line 96
    invoke-virtual {p2, p1}, Lsun/security/util/AlgorithmDecomposer;->decompose(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 100
    :cond_26
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 101
    .local v6, "element":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3d

    .line 102
    return v2

    .line 104
    .end local v6    # "element":Ljava/lang/String;
    :cond_3d
    goto :goto_2a

    .line 84
    .end local v4    # "item":Ljava/lang/String;
    :cond_3e
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 107
    :cond_41
    const/4 v1, 0x1

    return v1

    .line 80
    .end local v0    # "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No algorithm name specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o getAlgorithms(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 48
    new-instance v0, Lsun/security/util/AbstractAlgorithmConstraints$1;

    invoke-direct {v0, p0}, Lsun/security/util/AbstractAlgorithmConstraints$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 57
    .local v0, "property":Ljava/lang/String;
    const/4 v1, 0x0

    .line 58
    .local v1, "algorithmsInProperty":[Ljava/lang/String;
    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4e

    .line 60
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_39

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_39

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_39

    .line 62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 64
    :cond_39
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 65
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_40
    array-length v4, v1

    if-ge v3, v4, :cond_4e

    .line 66
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 65
    add-int/lit8 v3, v3, 0x1

    goto :goto_40

    .line 71
    .end local v3    # "i":I
    :cond_4e
    if-nez v1, :cond_52

    .line 72
    new-array v1, v2, [Ljava/lang/String;

    .line 74
    :cond_52
    return-object v1
.end method
