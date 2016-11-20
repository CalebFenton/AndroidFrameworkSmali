.class Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;
.super Ljava/lang/Object;
.source "DisabledAlgorithmConstraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/DisabledAlgorithmConstraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeySizeConstraints"
.end annotation


# static fields
.field private static final pattern:Ljava/util/regex/Pattern;


# instance fields
.field private constraintsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 308
    const-string/jumbo v0, "(\\S+)\\s+keySize\\s*(<=|<|==|!=|>|>=)\\s*(\\d+)"

    #@3
    .line 307
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@6
    move-result-object v0

    #@7
    sput-object v0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->pattern:Ljava/util/regex/Pattern;

    #@9
    .line 306
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 12
    .param p1, "restrictions"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 312
    new-instance v7, Ljava/util/HashMap;

    #@5
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    #@8
    .line 311
    invoke-static {v7}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@b
    move-result-object v7

    #@c
    .line 310
    iput-object v7, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    #@e
    .line 315
    const/4 v7, 0x0

    #@f
    array-length v8, p1

    #@10
    :goto_0
    if-ge v7, v8, :cond_3

    #@12
    aget-object v6, p1, v7

    #@14
    .line 316
    .local v6, "restriction":Ljava/lang/String;
    if-eqz v6, :cond_0

    #@16
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    #@19
    move-result v9

    #@1a
    if-eqz v9, :cond_1

    #@1c
    .line 315
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 320
    :cond_1
    sget-object v9, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->pattern:Ljava/util/regex/Pattern;

    #@21
    invoke-virtual {v9, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@24
    move-result-object v4

    #@25
    .line 321
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    #@28
    move-result v9

    #@29
    if-eqz v9, :cond_0

    #@2b
    .line 322
    const/4 v9, 0x1

    #@2c
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 325
    .local v0, "algorithm":Ljava/lang/String;
    const/4 v9, 0x2

    #@31
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@34
    move-result-object v9

    #@35
    invoke-static {v9}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;->of(Ljava/lang/String;)Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;

    #@38
    move-result-object v5

    #@39
    .line 326
    .local v5, "operator":Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    const/4 v9, 0x3

    #@3a
    invoke-virtual {v4, v9}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    #@3d
    move-result-object v9

    #@3e
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@41
    move-result v3

    #@42
    .line 328
    .local v3, "length":I
    sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@44
    invoke-virtual {v0, v9}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    .line 330
    iget-object v9, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    #@4a
    monitor-enter v9

    #@4b
    .line 331
    :try_start_0
    iget-object v10, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    #@4d
    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@50
    move-result v10

    #@51
    if-nez v10, :cond_2

    #@53
    .line 332
    iget-object v10, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    #@55
    .line 333
    new-instance v11, Ljava/util/HashSet;

    #@57
    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    #@5a
    .line 332
    invoke-interface {v10, v0, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 337
    :cond_2
    iget-object v10, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    #@5f
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@62
    move-result-object v2

    #@63
    check-cast v2, Ljava/util/Set;

    #@65
    .line 339
    .local v2, "constraintSet":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;>;"
    new-instance v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;

    #@67
    invoke-direct {v1, v5, v3}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;-><init>(Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;I)V

    #@6a
    .line 340
    .local v1, "constraint":Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6d
    monitor-exit v9

    #@6e
    goto :goto_1

    #@6f
    .line 330
    .end local v1    # "constraint":Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
    .end local v2    # "constraintSet":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;>;"
    :catchall_0
    move-exception v7

    #@70
    monitor-exit v9

    #@71
    throw v7

    #@72
    .line 314
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v3    # "length":I
    .end local v4    # "matcher":Ljava/util/regex/Matcher;
    .end local v5    # "operator":Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint$Operator;
    .end local v6    # "restriction":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public disables(Ljava/security/Key;)Z
    .locals 6
    .param p1, "key"    # Ljava/security/Key;

    #@0
    .prologue
    .line 348
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@6
    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 349
    .local v0, "algorithm":Ljava/lang/String;
    iget-object v5, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    #@c
    monitor-enter v5

    #@d
    .line 350
    :try_start_0
    iget-object v4, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    #@f
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@12
    move-result v4

    #@13
    if-eqz v4, :cond_1

    #@15
    .line 352
    iget-object v4, p0, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraints;->constraintsMap:Ljava/util/Map;

    #@17
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Ljava/util/Set;

    #@1d
    .line 353
    .local v3, "constraintSet":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@20
    move-result-object v2

    #@21
    .local v2, "constraint$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_1

    #@27
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;

    #@2d
    .line 354
    .local v1, "constraint":Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
    invoke-virtual {v1, p1}, Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;->disables(Ljava/security/Key;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_0

    #@33
    .line 355
    const/4 v4, 0x1

    #@34
    monitor-exit v5

    #@35
    return v4

    #@36
    .end local v1    # "constraint":Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;
    .end local v2    # "constraint$iterator":Ljava/util/Iterator;
    .end local v3    # "constraintSet":Ljava/util/Set;, "Ljava/util/Set<Lsun/security/util/DisabledAlgorithmConstraints$KeySizeConstraint;>;"
    :cond_1
    monitor-exit v5

    #@37
    .line 361
    const/4 v4, 0x0

    #@38
    return v4

    #@39
    .line 349
    :catchall_0
    move-exception v4

    #@3a
    monitor-exit v5

    #@3b
    throw v4
.end method
