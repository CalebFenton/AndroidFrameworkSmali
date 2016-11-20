.class public Lsun/security/util/DisabledAlgorithmConstraints;
.super Ljava/lang/Object;
.source "DisabledAlgorithmConstraints.java"

# interfaces
.implements Ljava/security/AlgorithmConstraints;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;,
        Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;
    }
.end annotation


# static fields
.field public static final PROPERTY_CERTPATH_DISABLED_ALGS:Ljava/lang/String; = "jdk.certpath.disabledAlgorithms"

.field public static final PROPERTY_TLS_DISABLED_ALGS:Ljava/lang/String; = "jdk.tls.disabledAlgorithms"

.field private static disabledAlgorithmsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static keySizeConstraintsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private disabledAlgorithms:[Ljava/lang/String;

.field private keySizeConstraints:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 63
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@8
    move-result-object v0

    #@9
    .line 62
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithmsMap:Ljava/util/Map;

    #@b
    .line 65
    new-instance v0, Ljava/util/HashMap;

    #@d
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@10
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@13
    move-result-object v0

    #@14
    .line 64
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints;->keySizeConstraintsMap:Ljava/util/Map;

    #@16
    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    sget-object v1, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithmsMap:Ljava/util/Map;

    #@5
    monitor-enter v1

    #@6
    .line 78
    :try_start_0
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithmsMap:Ljava/util/Map;

    #@8
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_0

    #@e
    .line 79
    invoke-static {p1}, Lsun/security/util/DisabledAlgorithmConstraints;->loadDisabledAlgorithmsMap(Ljava/lang/String;)V

    #@11
    .line 82
    :cond_0
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithmsMap:Ljava/util/Map;

    #@13
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, [Ljava/lang/String;

    #@19
    iput-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    #@1b
    .line 83
    sget-object v0, Lsun/security/util/DisabledAlgorithmConstraints;->keySizeConstraintsMap:Ljava/util/Map;

    #@1d
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v0

    #@21
    check-cast v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;

    #@23
    iput-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->keySizeConstraints:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    monitor-exit v1

    #@26
    .line 76
    return-void

    #@27
    .line 77
    :catchall_0
    move-exception v0

    #@28
    monitor-exit v1

    #@29
    throw v0
.end method

.method private checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 3
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v2, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 240
    if-nez p3, :cond_0

    #@4
    .line 241
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v1, "The key cannot be null"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 245
    :cond_0
    if-eqz p2, :cond_1

    #@f
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 246
    invoke-virtual {p0, p1, p2, p4}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    #@18
    move-result v0

    #@19
    if-nez v0, :cond_1

    #@1b
    .line 247
    return v1

    #@1c
    .line 252
    :cond_1
    invoke-interface {p3}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p0, p1, v0, v2}, Lsun/security/util/DisabledAlgorithmConstraints;->permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z

    #@23
    move-result v0

    #@24
    if-nez v0, :cond_2

    #@26
    .line 253
    return v1

    #@27
    .line 257
    :cond_2
    iget-object v0, p0, Lsun/security/util/DisabledAlgorithmConstraints;->keySizeConstraints:Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;

    #@29
    invoke-virtual {v0, p3}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->disables(Ljava/security/Key;)Z

    #@2c
    move-result v0

    #@2d
    if-eqz v0, :cond_3

    #@2f
    .line 258
    return v1

    #@30
    .line 261
    :cond_3
    const/4 v0, 0x1

    #@31
    return v0
.end method

.method private static loadDisabledAlgorithmsMap(Ljava/lang/String;)V
    .locals 7
    .param p0, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v5, 0x22

    #@2
    const/4 v6, 0x0

    #@3
    .line 269
    new-instance v4, Lsun/security/util/DisabledAlgorithmConstraints$1;

    #@5
    invoke-direct {v4, p0}, Lsun/security/util/DisabledAlgorithmConstraints$1;-><init>(Ljava/lang/String;)V

    #@8
    .line 268
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    #@b
    move-result-object v3

    #@c
    check-cast v3, Ljava/lang/String;

    #@e
    .line 275
    .local v3, "property":Ljava/lang/String;
    const/4 v0, 0x0

    #@f
    .line 277
    .local v0, "algorithmsInProperty":[Ljava/lang/String;
    if-eqz v3, :cond_0

    #@11
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    #@14
    move-result v4

    #@15
    if-eqz v4, :cond_2

    #@17
    .line 292
    .end local v0    # "algorithmsInProperty":[Ljava/lang/String;
    :cond_0
    if-nez v0, :cond_1

    #@19
    .line 293
    new-array v0, v6, [Ljava/lang/String;

    #@1b
    .line 295
    :cond_1
    sget-object v4, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithmsMap:Ljava/util/Map;

    #@1d
    invoke-interface {v4, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    .line 299
    new-instance v2, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;

    #@22
    invoke-direct {v2, v0}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;-><init>([Ljava/lang/String;)V

    #@25
    .line 300
    .local v2, "keySizeConstraints":Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;
    sget-object v4, Lsun/security/util/DisabledAlgorithmConstraints;->keySizeConstraintsMap:Ljava/util/Map;

    #@27
    invoke-interface {v4, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    .line 266
    return-void

    #@2b
    .line 280
    .end local v2    # "keySizeConstraints":Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;
    .restart local v0    # "algorithmsInProperty":[Ljava/lang/String;
    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    #@2e
    move-result v4

    #@2f
    if-ne v4, v5, :cond_3

    #@31
    .line 281
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@34
    move-result v4

    #@35
    add-int/lit8 v4, v4, -0x1

    #@37
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    #@3a
    move-result v4

    #@3b
    if-ne v4, v5, :cond_3

    #@3d
    .line 282
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@40
    move-result v4

    #@41
    add-int/lit8 v4, v4, -0x1

    #@43
    const/4 v5, 0x1

    #@44
    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@47
    move-result-object v3

    #@48
    .line 285
    :cond_3
    const-string/jumbo v4, ","

    #@4b
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@4e
    move-result-object v0

    #@4f
    .line 286
    .local v0, "algorithmsInProperty":[Ljava/lang/String;
    const/4 v1, 0x0

    #@50
    .local v1, "i":I
    :goto_0
    array-length v4, v0

    #@51
    if-ge v1, v4, :cond_0

    #@53
    .line 287
    aget-object v4, v0, v1

    #@55
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    aput-object v4, v0, v1

    #@5b
    .line 286
    add-int/lit8 v1, v1, 0x1

    #@5d
    goto :goto_0
.end method


# virtual methods
.method protected decomposes(Ljava/lang/String;)Ljava/util/Set;
    .locals 13
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 153
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@6
    move-result v7

    #@7
    if-nez v7, :cond_1

    #@9
    .line 154
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    #@b
    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    #@e
    return-object v7

    #@f
    .line 158
    :cond_1
    const-string/jumbo v7, "/"

    #@12
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@15
    move-result-object v4

    #@16
    .line 159
    .local v4, "transPattern":Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@19
    move-result-object v6

    #@1a
    .line 161
    .local v6, "transTockens":[Ljava/lang/String;
    new-instance v0, Ljava/util/HashSet;

    #@1c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@1f
    .line 162
    .local v0, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v10, v6

    #@20
    move v9, v8

    #@21
    :goto_0
    if-ge v9, v10, :cond_6

    #@23
    aget-object v5, v6, v9

    #@25
    .line 163
    .local v5, "transTocken":Ljava/lang/String;
    if-eqz v5, :cond_2

    #@27
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@2a
    move-result v7

    #@2b
    if-nez v7, :cond_3

    #@2d
    .line 162
    :cond_2
    add-int/lit8 v7, v9, 0x1

    #@2f
    move v9, v7

    #@30
    goto :goto_0

    #@31
    .line 173
    :cond_3
    const-string/jumbo v7, "with|and"

    #@34
    const/4 v11, 0x2

    #@35
    invoke-static {v7, v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    #@38
    move-result-object v1

    #@39
    .line 174
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    #@3c
    move-result-object v3

    #@3d
    .line 176
    .local v3, "tokens":[Ljava/lang/String;
    array-length v11, v3

    #@3e
    move v7, v8

    #@3f
    :goto_1
    if-ge v7, v11, :cond_2

    #@41
    aget-object v2, v3, v7

    #@43
    .line 177
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_4

    #@45
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@48
    move-result v12

    #@49
    if-nez v12, :cond_5

    #@4b
    .line 176
    :cond_4
    :goto_2
    add-int/lit8 v7, v7, 0x1

    #@4d
    goto :goto_1

    #@4e
    .line 181
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@51
    goto :goto_2

    #@52
    .line 193
    .end local v1    # "pattern":Ljava/util/regex/Pattern;
    .end local v2    # "token":Ljava/lang/String;
    .end local v3    # "tokens":[Ljava/lang/String;
    .end local v5    # "transTocken":Ljava/lang/String;
    :cond_6
    const-string/jumbo v7, "SHA1"

    #@55
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@58
    move-result v7

    #@59
    if-eqz v7, :cond_7

    #@5b
    const-string/jumbo v7, "SHA-1"

    #@5e
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@61
    move-result v7

    #@62
    if-eqz v7, :cond_11

    #@64
    .line 196
    :cond_7
    :goto_3
    const-string/jumbo v7, "SHA-1"

    #@67
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@6a
    move-result v7

    #@6b
    if-eqz v7, :cond_8

    #@6d
    const-string/jumbo v7, "SHA1"

    #@70
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@73
    move-result v7

    #@74
    if-eqz v7, :cond_12

    #@76
    .line 201
    :cond_8
    :goto_4
    const-string/jumbo v7, "SHA224"

    #@79
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@7c
    move-result v7

    #@7d
    if-eqz v7, :cond_9

    #@7f
    const-string/jumbo v7, "SHA-224"

    #@82
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@85
    move-result v7

    #@86
    if-eqz v7, :cond_13

    #@88
    .line 204
    :cond_9
    :goto_5
    const-string/jumbo v7, "SHA-224"

    #@8b
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@8e
    move-result v7

    #@8f
    if-eqz v7, :cond_a

    #@91
    const-string/jumbo v7, "SHA224"

    #@94
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@97
    move-result v7

    #@98
    if-eqz v7, :cond_14

    #@9a
    .line 209
    :cond_a
    :goto_6
    const-string/jumbo v7, "SHA256"

    #@9d
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a0
    move-result v7

    #@a1
    if-eqz v7, :cond_b

    #@a3
    const-string/jumbo v7, "SHA-256"

    #@a6
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@a9
    move-result v7

    #@aa
    if-eqz v7, :cond_15

    #@ac
    .line 212
    :cond_b
    :goto_7
    const-string/jumbo v7, "SHA-256"

    #@af
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@b2
    move-result v7

    #@b3
    if-eqz v7, :cond_c

    #@b5
    const-string/jumbo v7, "SHA256"

    #@b8
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@bb
    move-result v7

    #@bc
    if-eqz v7, :cond_16

    #@be
    .line 217
    :cond_c
    :goto_8
    const-string/jumbo v7, "SHA384"

    #@c1
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@c4
    move-result v7

    #@c5
    if-eqz v7, :cond_d

    #@c7
    const-string/jumbo v7, "SHA-384"

    #@ca
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@cd
    move-result v7

    #@ce
    if-eqz v7, :cond_17

    #@d0
    .line 220
    :cond_d
    :goto_9
    const-string/jumbo v7, "SHA-384"

    #@d3
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@d6
    move-result v7

    #@d7
    if-eqz v7, :cond_e

    #@d9
    const-string/jumbo v7, "SHA384"

    #@dc
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@df
    move-result v7

    #@e0
    if-eqz v7, :cond_18

    #@e2
    .line 225
    :cond_e
    :goto_a
    const-string/jumbo v7, "SHA512"

    #@e5
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@e8
    move-result v7

    #@e9
    if-eqz v7, :cond_f

    #@eb
    const-string/jumbo v7, "SHA-512"

    #@ee
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@f1
    move-result v7

    #@f2
    if-eqz v7, :cond_19

    #@f4
    .line 228
    :cond_f
    :goto_b
    const-string/jumbo v7, "SHA-512"

    #@f7
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@fa
    move-result v7

    #@fb
    if-eqz v7, :cond_10

    #@fd
    const-string/jumbo v7, "SHA512"

    #@100
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@103
    move-result v7

    #@104
    if-eqz v7, :cond_1a

    #@106
    .line 232
    :cond_10
    :goto_c
    return-object v0

    #@107
    .line 194
    :cond_11
    const-string/jumbo v7, "SHA-1"

    #@10a
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@10d
    goto/16 :goto_3

    #@10f
    .line 197
    :cond_12
    const-string/jumbo v7, "SHA1"

    #@112
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@115
    goto/16 :goto_4

    #@117
    .line 202
    :cond_13
    const-string/jumbo v7, "SHA-224"

    #@11a
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@11d
    goto/16 :goto_5

    #@11f
    .line 205
    :cond_14
    const-string/jumbo v7, "SHA224"

    #@122
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@125
    goto/16 :goto_6

    #@127
    .line 210
    :cond_15
    const-string/jumbo v7, "SHA-256"

    #@12a
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@12d
    goto/16 :goto_7

    #@12f
    .line 213
    :cond_16
    const-string/jumbo v7, "SHA256"

    #@132
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@135
    goto :goto_8

    #@136
    .line 218
    :cond_17
    const-string/jumbo v7, "SHA-384"

    #@139
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@13c
    goto :goto_9

    #@13d
    .line 221
    :cond_18
    const-string/jumbo v7, "SHA384"

    #@140
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@143
    goto :goto_a

    #@144
    .line 226
    :cond_19
    const-string/jumbo v7, "SHA-512"

    #@147
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@14a
    goto :goto_b

    #@14b
    .line 229
    :cond_1a
    const-string/jumbo v7, "SHA512"

    #@14e
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@151
    goto :goto_c
.end method

.method public final permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/AlgorithmParameters;)Z
    .locals 9
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const/4 v5, 0x0

    #@1
    .line 91
    if-eqz p2, :cond_0

    #@3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@6
    move-result v4

    #@7
    if-nez v4, :cond_1

    #@9
    .line 92
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v5, "No algorithm name specified"

    #@e
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v4

    #@12
    .line 95
    :cond_1
    if-eqz p1, :cond_2

    #@14
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    #@17
    move-result v4

    #@18
    if-eqz v4, :cond_3

    #@1a
    .line 96
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1c
    .line 97
    const-string/jumbo v5, "No cryptographic primitive specified"

    #@1f
    .line 96
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v4

    #@23
    .line 100
    :cond_3
    const/4 v3, 0x0

    #@24
    .line 101
    .local v3, "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v6, p0, Lsun/security/util/DisabledAlgorithmConstraints;->disabledAlgorithms:[Ljava/lang/String;

    #@26
    array-length v7, v6

    #@27
    move v4, v5

    #@28
    .end local v3    # "elements":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    if-ge v4, v7, :cond_9

    #@2a
    aget-object v0, v6, v4

    #@2c
    .line 102
    .local v0, "disabled":Ljava/lang/String;
    if-eqz v0, :cond_4

    #@2e
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@31
    move-result v8

    #@32
    if-eqz v8, :cond_5

    #@34
    .line 101
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@36
    goto :goto_0

    #@37
    .line 107
    :cond_5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@3a
    move-result v8

    #@3b
    if-eqz v8, :cond_6

    #@3d
    .line 108
    return v5

    #@3e
    .line 112
    :cond_6
    if-nez v3, :cond_7

    #@40
    .line 113
    invoke-virtual {p0, p2}, Lsun/security/util/DisabledAlgorithmConstraints;->decomposes(Ljava/lang/String;)Ljava/util/Set;

    #@43
    move-result-object v3

    #@44
    .line 117
    :cond_7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@47
    move-result-object v2

    #@48
    .local v2, "element$iterator":Ljava/util/Iterator;
    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@4b
    move-result v8

    #@4c
    if-eqz v8, :cond_4

    #@4e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@51
    move-result-object v1

    #@52
    check-cast v1, Ljava/lang/String;

    #@54
    .line 118
    .local v1, "element":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@57
    move-result v8

    #@58
    if-eqz v8, :cond_8

    #@5a
    .line 119
    return v5

    #@5b
    .line 124
    .end local v0    # "disabled":Ljava/lang/String;
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "element$iterator":Ljava/util/Iterator;
    :cond_9
    const/4 v4, 0x1

    #@5c
    return v4
.end method

.method public final permits(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z
    .locals 2
    .param p2, "algorithm"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/security/Key;
    .param p4, "parameters"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/security/Key;",
            "Ljava/security/AlgorithmParameters;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .line 136
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_1

    #@8
    .line 137
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "No algorithm name specified"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 140
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lsun/security/util/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    #@14
    move-result v0

    #@15
    return v0
.end method

.method public final permits(Ljava/util/Set;Ljava/security/Key;)Z
    .locals 2
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/CryptoPrimitive;",
            ">;",
            "Ljava/security/Key;",
            ")Z"
        }
    .end annotation

    #@0
    .prologue
    .line 129
    .local p1, "primitives":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/CryptoPrimitive;>;"
    const-string/jumbo v0, ""

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {p0, p1, v0, p2, v1}, Lsun/security/util/DisabledAlgorithmConstraints;->checkConstraints(Ljava/util/Set;Ljava/lang/String;Ljava/security/Key;Ljava/security/AlgorithmParameters;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
