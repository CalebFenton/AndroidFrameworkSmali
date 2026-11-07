.class public Lsun/security/util/AlgorithmDecomposer;
.super Ljava/lang/Object;
.source "AlgorithmDecomposer.java"


# static fields
.field private static final blacklist PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 40
    nop

    .line 41
    const-string v0, "with|and|(?<!padd)in"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lsun/security/util/AlgorithmDecomposer;->PATTERN:Ljava/util/regex/Pattern;

    .line 40
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o decomposeImpl(Ljava/lang/String;)Ljava/util/Set;
    .registers 12
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 47
    .local v0, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 49
    .local v1, "transTokens":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_e
    if-ge v4, v2, :cond_39

    aget-object v5, v1, v4

    .line 50
    .local v5, "transToken":Ljava/lang/String;
    if-eqz v5, :cond_36

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 51
    goto :goto_36

    .line 60
    :cond_1b
    sget-object v6, Lsun/security/util/AlgorithmDecomposer;->PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v6

    .line 62
    .local v6, "tokens":[Ljava/lang/String;
    array-length v7, v6

    move v8, v3

    :goto_23
    if-ge v8, v7, :cond_36

    aget-object v9, v6, v8

    .line 63
    .local v9, "token":Ljava/lang/String;
    if-eqz v9, :cond_33

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-eqz v10, :cond_30

    .line 64
    goto :goto_33

    .line 67
    :cond_30
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 62
    .end local v9    # "token":Ljava/lang/String;
    :cond_33
    :goto_33
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 49
    .end local v5    # "transToken":Ljava/lang/String;
    .end local v6    # "tokens":[Ljava/lang/String;
    :cond_36
    :goto_36
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 70
    :cond_39
    return-object v0
.end method

.method public static blacklist decomposeOneHash(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    if-eqz p0, :cond_31

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_31

    .line 174
    :cond_9
    invoke-static {p0}, Lsun/security/util/AlgorithmDecomposer;->decomposeImpl(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 176
    .local v0, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "SHA-1"

    const-string v2, "SHA1"

    invoke-static {v0, v1, v2}, Lsun/security/util/AlgorithmDecomposer;->hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v1, "SHA-224"

    const-string v2, "SHA224"

    invoke-static {v0, v1, v2}, Lsun/security/util/AlgorithmDecomposer;->hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const-string v1, "SHA-256"

    const-string v2, "SHA256"

    invoke-static {v0, v1, v2}, Lsun/security/util/AlgorithmDecomposer;->hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v1, "SHA-384"

    const-string v2, "SHA384"

    invoke-static {v0, v1, v2}, Lsun/security/util/AlgorithmDecomposer;->hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const-string v1, "SHA-512"

    const-string v2, "SHA512"

    invoke-static {v0, v1, v2}, Lsun/security/util/AlgorithmDecomposer;->hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    return-object v0

    .line 171
    .end local v0    # "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_31
    :goto_31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static blacklist getAliases(Ljava/lang/String;)Ljava/util/Collection;
    .registers 6
    .param p0, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 146
    const-string v0, "DH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "DiffieHellman"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_18

    .line 147
    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_18

    .line 150
    :cond_13
    new-array v0, v3, [Ljava/lang/String;

    aput-object p0, v0, v4

    .local v0, "aliases":[Ljava/lang/String;
    goto :goto_20

    .line 148
    .end local v0    # "aliases":[Ljava/lang/String;
    :cond_18
    :goto_18
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object v0, v1, v4

    aput-object v2, v1, v3

    move-object v0, v1

    .line 153
    .restart local v0    # "aliases":[Ljava/lang/String;
    :goto_20
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o hasLoop(Ljava/util/Set;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "find"    # Ljava/lang/String;
    .param p2, "replace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 157
    .local p0, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 158
    invoke-interface {p0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 159
    invoke-interface {p0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_f
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 163
    :cond_12
    return-void
.end method

.method public static blacklist hashName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "algorithm"    # Ljava/lang/String;

    .line 190
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist decompose(Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 83
    if-eqz p1, :cond_b9

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto/16 :goto_b9

    .line 87
    :cond_a
    invoke-static {p1}, Lsun/security/util/AlgorithmDecomposer;->decomposeImpl(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 97
    .local v0, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v1, "SHA1"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SHA-1"

    if-eqz v2, :cond_21

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 98
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_21
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_30

    .line 101
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_30
    const-string v1, "SHA224"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SHA-224"

    if-eqz v2, :cond_43

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_43

    .line 106
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_43
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_52

    .line 109
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_52
    const-string v1, "SHA256"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SHA-256"

    if-eqz v2, :cond_65

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_65

    .line 114
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_65
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_74

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_74

    .line 117
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_74
    const-string v1, "SHA384"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SHA-384"

    if-eqz v2, :cond_87

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_87

    .line 122
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_87
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_96

    .line 125
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 129
    :cond_96
    const-string v1, "SHA512"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "SHA-512"

    if-eqz v2, :cond_a9

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a9

    .line 130
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_a9
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b8

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b8

    .line 133
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_b8
    return-object v0

    .line 84
    .end local v0    # "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_b9
    :goto_b9
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method
