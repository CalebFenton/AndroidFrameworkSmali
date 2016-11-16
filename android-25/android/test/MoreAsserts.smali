.class public final Landroid/test/MoreAsserts;
.super Ljava/lang/Object;
.source "MoreAsserts.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static assertAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 57
    .local p0, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "actual":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Expected "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    .line 58
    const-string/jumbo v1, " to be assignable from actual class "

    #@17
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 58
    invoke-virtual {p1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .line 59
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    #@2a
    move-result v1

    #@2b
    .line 56
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@2e
    .line 55
    return-void
.end method

.method public static assertAssignableFrom(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .param p1, "actual"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 47
    .local p0, "expected":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->assertAssignableFrom(Ljava/lang/Class;Ljava/lang/Class;)V

    #@7
    .line 46
    return-void
.end method

.method public static assertContainsRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;
    .locals 1
    .param p0, "expectedRegex"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 294
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertContainsRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static assertContainsRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 278
    if-nez p2, :cond_0

    #@2
    .line 279
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failNotContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 281
    :cond_0
    invoke-static {p1, p2}, Landroid/test/MoreAsserts;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@8
    move-result-object v0

    #@9
    .line 282
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_1

    #@f
    .line 283
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failNotContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 285
    :cond_1
    return-object v0
.end method

.method public static varargs assertContentsInAnyOrder(Ljava/lang/Iterable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "expected"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 392
    .local p0, "actual":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    #@1
    check-cast v0, Ljava/lang/String;

    #@3
    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertContentsInAnyOrder(Ljava/lang/String;Ljava/lang/Iterable;[Ljava/lang/Object;)V

    #@6
    .line 391
    return-void
.end method

.method public static varargs assertContentsInAnyOrder(Ljava/lang/String;Ljava/lang/Iterable;[Ljava/lang/Object;)V
    .locals 6
    .param p0, "message"    # Ljava/lang/String;
    .param p2, "expected"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "actual":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v4, 0x0

    #@1
    .line 371
    new-instance v2, Ljava/util/HashMap;

    #@3
    array-length v5, p2

    #@4
    invoke-direct {v2, v5}, Ljava/util/HashMap;-><init>(I)V

    #@7
    .line 372
    .local v2, "expectedMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Object;Ljava/lang/Object;>;"
    array-length v5, p2

    #@8
    :goto_0
    if-ge v4, v5, :cond_0

    #@a
    aget-object v3, p2, v4

    #@c
    .line 373
    .local v3, "expectedObj":Ljava/lang/Object;
    invoke-virtual {v2, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 372
    add-int/lit8 v4, v4, 0x1

    #@11
    goto :goto_0

    #@12
    .line 376
    .end local v3    # "expectedObj":Ljava/lang/Object;
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@15
    move-result-object v1

    #@16
    .local v1, "actualObj$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@19
    move-result v4

    #@1a
    if-eqz v4, :cond_2

    #@1c
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1f
    move-result-object v0

    #@20
    .line 377
    .local v0, "actualObj":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v4

    #@24
    if-nez v4, :cond_1

    #@26
    .line 378
    new-instance v4, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    const-string/jumbo v5, "Extra object in actual: ("

    #@2e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v4

    #@3a
    const-string/jumbo v5, ")"

    #@3d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v4

    #@41
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    invoke-static {p0, v4}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    goto :goto_1

    #@49
    .line 382
    .end local v0    # "actualObj":Ljava/lang/Object;
    :cond_2
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    #@4c
    move-result v4

    #@4d
    if-lez v4, :cond_3

    #@4f
    .line 383
    const-string/jumbo v4, "Extra objects in expected."

    #@52
    invoke-static {p0, v4}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    #@55
    .line 370
    :cond_3
    return-void
.end method

.method public static varargs assertContentsInOrder(Ljava/lang/Iterable;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "expected"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 362
    .local p0, "actual":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    #@1
    check-cast v0, Ljava/lang/String;

    #@3
    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertContentsInOrder(Ljava/lang/String;Ljava/lang/Iterable;[Ljava/lang/Object;)V

    #@6
    .line 361
    return-void
.end method

.method public static varargs assertContentsInOrder(Ljava/lang/String;Ljava/lang/Iterable;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p2, "expected"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 349
    .local p1, "actual":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Ljava/util/ArrayList;

    #@2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 350
    .local v0, "actualList":Ljava/util/ArrayList;
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "o$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    .line 351
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@16
    goto :goto_0

    #@17
    .line 353
    .end local v1    # "o":Ljava/lang/Object;
    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1a
    move-result-object v3

    #@1b
    invoke-static {p0, v3, v0}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@1e
    .line 348
    return-void
.end method

.method public static assertEmpty(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 409
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Landroid/test/MoreAsserts;->assertEmpty(Ljava/lang/String;Ljava/lang/Iterable;)V

    #@4
    .line 408
    return-void
.end method

.method public static assertEmpty(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 399
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 400
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #@11
    .line 398
    :cond_0
    return-void
.end method

.method public static assertEmpty(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 416
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 417
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failNotEmpty(Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 415
    :cond_0
    return-void
.end method

.method public static assertEmpty(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 426
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Landroid/test/MoreAsserts;->assertEmpty(Ljava/lang/String;Ljava/util/Map;)V

    #@4
    .line 425
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 221
    .local p1, "expected":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/Object;>;"
    .local p2, "actual":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/HashSet;

    #@2
    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@5
    .line 222
    .local v2, "onlyInExpected":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v2, p2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    #@8
    .line 223
    new-instance v1, Ljava/util/HashSet;

    #@a
    invoke-direct {v1, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@d
    .line 224
    .local v1, "onlyInActual":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    #@10
    .line 225
    invoke-interface {v2}, Ljava/util/Set;->size()I

    #@13
    move-result v3

    #@14
    if-nez v3, :cond_0

    #@16
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_1

    #@1c
    .line 226
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    #@1e
    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    #@21
    .line 227
    .local v0, "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {v0, p2}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    #@24
    .line 230
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v4, "Sets do not match.\nOnly in expected: "

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    .line 231
    const-string/jumbo v4, "\nOnly in actual: "

    #@37
    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v3

    #@3b
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v3

    #@3f
    .line 232
    const-string/jumbo v4, "\nIntersection: "

    #@42
    .line 230
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v3

    #@4a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v3

    #@4e
    .line 228
    invoke-static {p0, v3}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    #@51
    .line 220
    .end local v0    # "intersection":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[B[B)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # [B
    .param p2, "actual"    # [B

    #@0
    .prologue
    .line 88
    array-length v1, p1

    #@1
    array-length v2, p2

    #@2
    if-eq v1, v2, :cond_0

    #@4
    .line 89
    array-length v1, p1

    #@5
    array-length v2, p2

    #@6
    invoke-static {p0, v1, v2}, Landroid/test/MoreAsserts;->failWrongLength(Ljava/lang/String;II)V

    #@9
    .line 91
    :cond_0
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@b
    if-ge v0, v1, :cond_2

    #@d
    .line 92
    aget-byte v1, p1, v0

    #@f
    aget-byte v2, p2, v0

    #@11
    if-eq v1, v2, :cond_1

    #@13
    .line 93
    aget-byte v1, p1, v0

    #@15
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@18
    move-result-object v1

    #@19
    aget-byte v2, p2, v0

    #@1b
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {p0, v0, v1, v2}, Landroid/test/MoreAsserts;->failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    #@22
    .line 91
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 87
    :cond_2
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[D[D)V
    .locals 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # [D
    .param p2, "actual"    # [D

    #@0
    .prologue
    .line 167
    array-length v1, p1

    #@1
    array-length v2, p2

    #@2
    if-eq v1, v2, :cond_0

    #@4
    .line 168
    array-length v1, p1

    #@5
    array-length v2, p2

    #@6
    invoke-static {p0, v1, v2}, Landroid/test/MoreAsserts;->failWrongLength(Ljava/lang/String;II)V

    #@9
    .line 170
    :cond_0
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@b
    if-ge v0, v1, :cond_2

    #@d
    .line 171
    aget-wide v2, p1, v0

    #@f
    aget-wide v4, p2, v0

    #@11
    cmpl-double v1, v2, v4

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 172
    aget-wide v2, p1, v0

    #@17
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@1a
    move-result-object v1

    #@1b
    aget-wide v2, p2, v0

    #@1d
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@20
    move-result-object v2

    #@21
    invoke-static {p0, v0, v1, v2}, Landroid/test/MoreAsserts;->failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    #@24
    .line 170
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 166
    :cond_2
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[I[I)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # [I
    .param p2, "actual"    # [I

    #@0
    .prologue
    .line 114
    array-length v1, p1

    #@1
    array-length v2, p2

    #@2
    if-eq v1, v2, :cond_0

    #@4
    .line 115
    array-length v1, p1

    #@5
    array-length v2, p2

    #@6
    invoke-static {p0, v1, v2}, Landroid/test/MoreAsserts;->failWrongLength(Ljava/lang/String;II)V

    #@9
    .line 117
    :cond_0
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@b
    if-ge v0, v1, :cond_2

    #@d
    .line 118
    aget v1, p1, v0

    #@f
    aget v2, p2, v0

    #@11
    if-eq v1, v2, :cond_1

    #@13
    .line 119
    aget v1, p1, v0

    #@15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v1

    #@19
    aget v2, p2, v0

    #@1b
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {p0, v0, v1, v2}, Landroid/test/MoreAsserts;->failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    #@22
    .line 117
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@24
    goto :goto_0

    #@25
    .line 113
    :cond_2
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[J[J)V
    .locals 6
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # [J
    .param p2, "actual"    # [J

    #@0
    .prologue
    .line 140
    array-length v1, p1

    #@1
    array-length v2, p2

    #@2
    if-eq v1, v2, :cond_0

    #@4
    .line 141
    array-length v1, p1

    #@5
    array-length v2, p2

    #@6
    invoke-static {p0, v1, v2}, Landroid/test/MoreAsserts;->failWrongLength(Ljava/lang/String;II)V

    #@9
    .line 143
    :cond_0
    const/4 v0, 0x0

    #@a
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@b
    if-ge v0, v1, :cond_2

    #@d
    .line 144
    aget-wide v2, p1, v0

    #@f
    aget-wide v4, p2, v0

    #@11
    cmp-long v1, v2, v4

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 145
    aget-wide v2, p1, v0

    #@17
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@1a
    move-result-object v1

    #@1b
    aget-wide v2, p2, v0

    #@1d
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@20
    move-result-object v2

    #@21
    invoke-static {p0, v0, v1, v2}, Landroid/test/MoreAsserts;->failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    #@24
    .line 143
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 139
    :cond_2
    return-void
.end method

.method public static assertEquals(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # [Ljava/lang/Object;
    .param p2, "actual"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 195
    array-length v3, p1

    #@1
    array-length v4, p2

    #@2
    if-eq v3, v4, :cond_0

    #@4
    .line 196
    array-length v3, p1

    #@5
    array-length v4, p2

    #@6
    invoke-static {p0, v3, v4}, Landroid/test/MoreAsserts;->failWrongLength(Ljava/lang/String;II)V

    #@9
    .line 198
    :cond_0
    const/4 v2, 0x0

    #@a
    .local v2, "i":I
    :goto_0
    array-length v3, p1

    #@b
    if-ge v2, v3, :cond_4

    #@d
    .line 199
    aget-object v1, p1, v2

    #@f
    .line 200
    .local v1, "exp":Ljava/lang/Object;
    aget-object v0, p2, v2

    #@11
    .line 202
    .local v0, "act":Ljava/lang/Object;
    if-nez v1, :cond_3

    #@13
    if-nez v0, :cond_2

    #@15
    const/4 v3, 0x1

    #@16
    :goto_1
    if-nez v3, :cond_1

    #@18
    .line 203
    invoke-static {p0, v2, v1, v0}, Landroid/test/MoreAsserts;->failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V

    #@1b
    .line 198
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 202
    :cond_2
    const/4 v3, 0x0

    #@1f
    goto :goto_1

    #@20
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v3

    #@24
    goto :goto_1

    #@25
    .line 194
    .end local v0    # "act":Ljava/lang/Object;
    .end local v1    # "exp":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method public static assertEquals(Ljava/util/Set;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Set",
            "<+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 238
    .local p0, "expected":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/Object;>;"
    .local p1, "actual":Ljava/util/Set;, "Ljava/util/Set<+Ljava/lang/Object;>;"
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;)V

    #@4
    .line 237
    return-void
.end method

.method public static assertEquals([B[B)V
    .locals 1
    .param p0, "expected"    # [B
    .param p1, "actual"    # [B

    #@0
    .prologue
    .line 104
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;[B[B)V

    #@4
    .line 103
    return-void
.end method

.method public static assertEquals([D[D)V
    .locals 1
    .param p0, "expected"    # [D
    .param p1, "actual"    # [D

    #@0
    .prologue
    .line 183
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;[D[D)V

    #@4
    .line 182
    return-void
.end method

.method public static assertEquals([I[I)V
    .locals 1
    .param p0, "expected"    # [I
    .param p1, "actual"    # [I

    #@0
    .prologue
    .line 130
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;[I[I)V

    #@4
    .line 129
    return-void
.end method

.method public static assertEquals([J[J)V
    .locals 1
    .param p0, "expected"    # [J
    .param p1, "actual"    # [J

    #@0
    .prologue
    .line 156
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;[J[J)V

    #@4
    .line 155
    return-void
.end method

.method public static assertEquals([Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "expected"    # [Ljava/lang/Object;
    .param p1, "actual"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 215
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertEquals(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Object;)V

    #@4
    .line 214
    return-void
.end method

.method public static assertMatchesRegex(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;
    .locals 1
    .param p0, "expectedRegex"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 266
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertMatchesRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static assertMatchesRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/MatchResult;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 250
    if-nez p2, :cond_0

    #@2
    .line 251
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failNotMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 253
    :cond_0
    invoke-static {p1, p2}, Landroid/test/MoreAsserts;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@8
    move-result-object v0

    #@9
    .line 254
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@c
    move-result v1

    #@d
    if-nez v1, :cond_1

    #@f
    .line 255
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failNotMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 257
    :cond_1
    return-object v0
.end method

.method public static assertNotContainsRegex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "expectedRegex"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 340
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertNotContainsRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 339
    return-void
.end method

.method public static assertNotContainsRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 328
    invoke-static {p1, p2}, Landroid/test/MoreAsserts;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@3
    move-result-object v0

    #@4
    .line 329
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 330
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 327
    :cond_0
    return-void
.end method

.method public static assertNotEmpty(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 443
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Landroid/test/MoreAsserts;->assertNotEmpty(Ljava/lang/String;Ljava/lang/Iterable;)V

    #@4
    .line 442
    return-void
.end method

.method public static assertNotEmpty(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 433
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    .line 434
    invoke-static {p0}, Landroid/test/MoreAsserts;->failEmpty(Ljava/lang/String;)V

    #@d
    .line 432
    :cond_0
    return-void
.end method

.method public static assertNotEmpty(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 450
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 451
    invoke-static {p0}, Landroid/test/MoreAsserts;->failEmpty(Ljava/lang/String;)V

    #@9
    .line 449
    :cond_0
    return-void
.end method

.method public static assertNotEmpty(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 460
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Landroid/test/MoreAsserts;->assertNotEmpty(Ljava/lang/String;Ljava/util/Map;)V

    #@4
    .line 459
    return-void
.end method

.method public static assertNotEqual(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "unexpected"    # Ljava/lang/Object;
    .param p1, "actual"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 78
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertNotEqual(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    #@4
    .line 77
    return-void
.end method

.method public static assertNotEqual(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # Ljava/lang/Object;
    .param p2, "actual"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 68
    invoke-static {p1, p2}, Landroid/test/MoreAsserts;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 69
    invoke-static {p0, p1}, Landroid/test/MoreAsserts;->failEqual(Ljava/lang/String;Ljava/lang/Object;)V

    #@9
    .line 67
    :cond_0
    return-void
.end method

.method public static assertNotMatchesRegex(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "expectedRegex"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 317
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Landroid/test/MoreAsserts;->assertNotMatchesRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@4
    .line 316
    return-void
.end method

.method public static assertNotMatchesRegex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 305
    invoke-static {p1, p2}, Landroid/test/MoreAsserts;->getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;

    #@3
    move-result-object v0

    #@4
    .line 306
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 307
    invoke-static {p0, p1, p2}, Landroid/test/MoreAsserts;->failMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@d
    .line 304
    :cond_0
    return-void
.end method

.method public static checkEqualsAndHashCodeMethods(Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "lhs"    # Ljava/lang/Object;
    .param p1, "rhs"    # Ljava/lang/Object;
    .param p2, "expectedResult"    # Z

    #@0
    .prologue
    .line 515
    const/4 v0, 0x0

    #@1
    check-cast v0, Ljava/lang/String;

    #@3
    invoke-static {v0, p0, p1, p2}, Landroid/test/MoreAsserts;->checkEqualsAndHashCodeMethods(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V

    #@6
    .line 514
    return-void
.end method

.method public static checkEqualsAndHashCodeMethods(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;
    .param p3, "expectedResult"    # Z

    #@0
    .prologue
    .line 478
    if-nez p1, :cond_0

    #@2
    if-nez p2, :cond_0

    #@4
    .line 480
    const-string/jumbo v1, "Your check is dubious...why would you expect null != null?"

    #@7
    .line 479
    invoke-static {v1, p3}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@a
    .line 482
    return-void

    #@b
    .line 485
    :cond_0
    if-eqz p1, :cond_1

    #@d
    if-nez p2, :cond_2

    #@f
    .line 487
    :cond_1
    const-string/jumbo v1, "Your check is dubious...why would you expect an object to be equal to null?"

    #@12
    .line 486
    invoke-static {v1, p3}, Ljunit/framework/Assert;->assertFalse(Ljava/lang/String;Z)V

    #@15
    .line 491
    :cond_2
    if-eqz p1, :cond_3

    #@17
    .line 492
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    invoke-static {p0, p3, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;ZZ)V

    #@1e
    .line 494
    :cond_3
    if-eqz p2, :cond_4

    #@20
    .line 495
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v1

    #@24
    invoke-static {p0, p3, v1}, Ljunit/framework/Assert;->assertEquals(Ljava/lang/String;ZZ)V

    #@27
    .line 498
    :cond_4
    if-eqz p3, :cond_6

    #@29
    .line 500
    const-string/jumbo v0, "hashCode() values for equal objects should be the same"

    #@2c
    .line 501
    .local v0, "hashMessage":Ljava/lang/String;
    if-eqz p0, :cond_5

    #@2e
    .line 502
    new-instance v1, Ljava/lang/StringBuilder;

    #@30
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    const-string/jumbo v2, ": "

    #@3a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v1

    #@42
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v0

    #@46
    .line 504
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    #@49
    move-result v1

    #@4a
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    #@4d
    move-result v2

    #@4e
    if-ne v1, v2, :cond_7

    #@50
    const/4 v1, 0x1

    #@51
    :goto_0
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    #@54
    .line 476
    .end local v0    # "hashMessage":Ljava/lang/String;
    :cond_6
    return-void

    #@55
    .line 504
    .restart local v0    # "hashMessage":Ljava/lang/String;
    :cond_7
    const/4 v1, 0x0

    #@56
    goto :goto_0
.end method

.method private static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 582
    if-eq p0, p1, :cond_0

    #@2
    if-eqz p0, :cond_1

    #@4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x1

    #@a
    goto :goto_0

    #@b
    :cond_1
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method private static failContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 561
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "expected not to contain regex:<"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 562
    const-string/jumbo v1, "> but was:<"

    #@13
    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 562
    const/16 v1, 0x3e

    #@1d
    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 560
    return-void
.end method

.method private static failEmpty(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;

    #@0
    .prologue
    .line 572
    const-string/jumbo v0, "expected not to be empty, but was"

    #@3
    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    #@6
    .line 571
    return-void
.end method

.method private static failEqual(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "unexpected"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "expected not to be:<"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, ">"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 523
    return-void
.end method

.method private static failMatch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "expected not to match regex:<"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 556
    const-string/jumbo v1, "> but was:<"

    #@13
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 556
    const/16 v1, 0x3e

    #@1d
    .line 555
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 554
    return-void
.end method

.method private static failNotContains(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 548
    if-nez p2, :cond_0

    #@2
    const-string/jumbo v0, "null"

    #@5
    .line 549
    .local v0, "actualDesc":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "expected to contain regex:<"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 550
    const-string/jumbo v2, "> but was:"

    #@18
    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {p0, v1}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 547
    return-void

    #@28
    .line 548
    .end local v0    # "actualDesc":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const/16 v2, 0x3c

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    const/16 v2, 0x3e

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .restart local v0    # "actualDesc":Ljava/lang/String;
    goto :goto_0
.end method

.method private static failNotEmpty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "expected to be empty, but contained: <"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 568
    const-string/jumbo v1, ">"

    #@13
    .line 567
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 566
    return-void
.end method

.method private static failNotMatches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expectedRegex"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 541
    if-nez p2, :cond_0

    #@2
    const-string/jumbo v0, "null"

    #@5
    .line 542
    .local v0, "actualDesc":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v2, "expected to match regex:<"

    #@d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    .line 543
    const-string/jumbo v2, "> but was:"

    #@18
    .line 542
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-static {p0, v1}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    #@27
    .line 540
    return-void

    #@28
    .line 541
    .end local v0    # "actualDesc":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const/16 v2, 0x3c

    #@2f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    const/16 v2, 0x3e

    #@39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v1

    #@3d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    .restart local v0    # "actualDesc":Ljava/lang/String;
    goto :goto_0
.end method

.method private static failWithMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "userMessage"    # Ljava/lang/String;
    .param p1, "ourMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 576
    if-nez p0, :cond_0

    #@2
    .end local p1    # "ourMessage":Ljava/lang/String;
    :goto_0
    invoke-static {p1}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    #@5
    .line 575
    return-void

    #@6
    .line 578
    .restart local p1    # "ourMessage":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v0

    #@f
    const/16 v1, 0x20

    #@11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object p1

    #@1d
    goto :goto_0
.end method

.method private static failWrongElement(Ljava/lang/String;ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "expected"    # Ljava/lang/Object;
    .param p3, "actual"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 535
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "expected array element["

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, "]:<"

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 536
    const-string/jumbo v1, "> but was:<"

    #@1e
    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    .line 536
    const/16 v1, 0x3e

    #@28
    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    .line 534
    return-void
.end method

.method private static failWrongLength(Ljava/lang/String;II)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # I
    .param p2, "actual"    # I

    #@0
    .prologue
    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "expected array length:<"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    .line 530
    const-string/jumbo v1, "> but was:<"

    #@13
    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    .line 530
    const/16 v1, 0x3e

    #@1d
    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    invoke-static {p0, v0}, Landroid/test/MoreAsserts;->failWithMessage(Ljava/lang/String;Ljava/lang/String;)V

    #@28
    .line 528
    return-void
.end method

.method private static getMatcher(Ljava/lang/String;Ljava/lang/String;)Ljava/util/regex/Matcher;
    .locals 2
    .param p0, "expectedRegex"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;

    #@0
    .prologue
    .line 519
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    #@3
    move-result-object v0

    #@4
    .line 520
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method
