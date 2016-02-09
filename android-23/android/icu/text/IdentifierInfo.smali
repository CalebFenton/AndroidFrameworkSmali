.class public Landroid/icu/text/IdentifierInfo;
.super Ljava/lang/Object;
.source "IdentifierInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/IdentifierInfo$1;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ASCII:Landroid/icu/text/UnicodeSet;

.field public static final BITSET_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final CHINESE:Ljava/util/BitSet;

.field private static final CONFUSABLE_WITH_LATIN:Ljava/util/BitSet;

.field private static final JAPANESE:Ljava/util/BitSet;

.field private static final KOREAN:Ljava/util/BitSet;


# instance fields
.field private final commonAmongAlternates:Ljava/util/BitSet;

.field private identifier:Ljava/lang/String;

.field private final identifierProfile:Landroid/icu/text/UnicodeSet;

.field private final numerics:Landroid/icu/text/UnicodeSet;

.field private final requiredScripts:Ljava/util/BitSet;

.field private final scriptSetSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x19

    #@2
    const/16 v3, 0x11

    #@4
    .line 42
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@6
    const/4 v1, 0x0

    #@7
    const/16 v2, 0x7f

    #@9
    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    #@c
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->freeze()Landroid/icu/text/UnicodeSet;

    #@f
    move-result-object v0

    #@10
    sput-object v0, Landroid/icu/text/IdentifierInfo;->ASCII:Landroid/icu/text/UnicodeSet;

    #@12
    .line 236
    new-instance v0, Ljava/util/BitSet;

    #@14
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    #@17
    const/16 v1, 0x14

    #@19
    .line 237
    const/16 v2, 0x16

    #@1b
    .line 236
    filled-new-array {v4, v3, v1, v2}, [I

    #@1e
    move-result-object v1

    #@1f
    invoke-static {v0, v1}, Landroid/icu/text/IdentifierInfo;->set(Ljava/util/BitSet;[I)Ljava/util/BitSet;

    #@22
    move-result-object v0

    #@23
    sput-object v0, Landroid/icu/text/IdentifierInfo;->JAPANESE:Ljava/util/BitSet;

    #@25
    .line 238
    new-instance v0, Ljava/util/BitSet;

    #@27
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    #@2a
    const/4 v1, 0x5

    #@2b
    filled-new-array {v4, v3, v1}, [I

    #@2e
    move-result-object v1

    #@2f
    invoke-static {v0, v1}, Landroid/icu/text/IdentifierInfo;->set(Ljava/util/BitSet;[I)Ljava/util/BitSet;

    #@32
    move-result-object v0

    #@33
    sput-object v0, Landroid/icu/text/IdentifierInfo;->CHINESE:Ljava/util/BitSet;

    #@35
    .line 239
    new-instance v0, Ljava/util/BitSet;

    #@37
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    #@3a
    const/16 v1, 0x12

    #@3c
    filled-new-array {v4, v3, v1}, [I

    #@3f
    move-result-object v1

    #@40
    invoke-static {v0, v1}, Landroid/icu/text/IdentifierInfo;->set(Ljava/util/BitSet;[I)Ljava/util/BitSet;

    #@43
    move-result-object v0

    #@44
    sput-object v0, Landroid/icu/text/IdentifierInfo;->KOREAN:Ljava/util/BitSet;

    #@46
    .line 240
    new-instance v0, Ljava/util/BitSet;

    #@48
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    #@4b
    const/16 v1, 0x8

    #@4d
    const/16 v2, 0xe

    #@4f
    .line 241
    const/4 v3, 0x6

    #@50
    .line 240
    filled-new-array {v1, v2, v3}, [I

    #@53
    move-result-object v1

    #@54
    invoke-static {v0, v1}, Landroid/icu/text/IdentifierInfo;->set(Ljava/util/BitSet;[I)Ljava/util/BitSet;

    #@57
    move-result-object v0

    #@58
    sput-object v0, Landroid/icu/text/IdentifierInfo;->CONFUSABLE_WITH_LATIN:Ljava/util/BitSet;

    #@5a
    .line 359
    new-instance v0, Landroid/icu/text/IdentifierInfo$1;

    #@5c
    invoke-direct {v0}, Landroid/icu/text/IdentifierInfo$1;-><init>()V

    #@5f
    sput-object v0, Landroid/icu/text/IdentifierInfo;->BITSET_COMPARATOR:Ljava/util/Comparator;

    #@61
    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    new-instance v0, Ljava/util/BitSet;

    #@5
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    #@a
    .line 46
    new-instance v0, Ljava/util/HashSet;

    #@c
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@f
    iput-object v0, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    #@11
    .line 47
    new-instance v0, Ljava/util/BitSet;

    #@13
    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    #@16
    iput-object v0, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    #@18
    .line 48
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@1a
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@1d
    iput-object v0, p0, Landroid/icu/text/IdentifierInfo;->numerics:Landroid/icu/text/UnicodeSet;

    #@1f
    .line 49
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@21
    const/4 v1, 0x0

    #@22
    const v2, 0x10ffff

    #@25
    invoke-direct {v0, v1, v2}, Landroid/icu/text/UnicodeSet;-><init>(II)V

    #@28
    iput-object v0, p0, Landroid/icu/text/IdentifierInfo;->identifierProfile:Landroid/icu/text/UnicodeSet;

    #@2a
    .line 58
    return-void
.end method

.method private clear()Landroid/icu/text/IdentifierInfo;
    .locals 1

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    #@2
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    #@5
    .line 64
    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    #@7
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    #@a
    .line 65
    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->numerics:Landroid/icu/text/UnicodeSet;

    #@c
    invoke-virtual {v0}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@f
    .line 66
    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    #@11
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    #@14
    .line 67
    return-object p0
.end method

.method public static final contains(Ljava/util/BitSet;Ljava/util/BitSet;)Z
    .locals 3
    .param p0, "container"    # Ljava/util/BitSet;
    .param p1, "containee"    # Ljava/util/BitSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 444
    invoke-virtual {p1, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    #@4
    move-result v0

    #@5
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@7
    .line 445
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 446
    return v2

    #@e
    .line 444
    :cond_0
    add-int/lit8 v1, v0, 0x1

    #@10
    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    #@13
    move-result v0

    #@14
    goto :goto_0

    #@15
    .line 449
    :cond_1
    const/4 v1, 0x1

    #@16
    return v1
.end method

.method private containsWithAlternates(Ljava/util/BitSet;Ljava/util/BitSet;)Z
    .locals 4
    .param p1, "container"    # Ljava/util/BitSet;
    .param p2, "containee"    # Ljava/util/BitSet;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 316
    invoke-static {p1, p2}, Landroid/icu/text/IdentifierInfo;->contains(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    #@4
    move-result v2

    #@5
    if-nez v2, :cond_0

    #@7
    .line 317
    return v3

    #@8
    .line 319
    :cond_0
    iget-object v2, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    #@a
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@d
    move-result-object v1

    #@e
    .local v1, "alternatives$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_2

    #@14
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Ljava/util/BitSet;

    #@1a
    .line 320
    .local v0, "alternatives":Ljava/util/BitSet;
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    #@1d
    move-result v2

    #@1e
    if-nez v2, :cond_1

    #@20
    .line 321
    return v3

    #@21
    .line 324
    .end local v0    # "alternatives":Ljava/util/BitSet;
    :cond_2
    const/4 v2, 0x1

    #@22
    return v2
.end method

.method public static displayAlternates(Ljava/util/Set;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/util/BitSet;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 337
    .local p0, "alternates":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/BitSet;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    #@3
    move-result v4

    #@4
    if-nez v4, :cond_0

    #@6
    .line 338
    const-string/jumbo v4, ""

    #@9
    return-object v4

    #@a
    .line 340
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    .line 342
    .local v2, "result":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/util/TreeSet;

    #@11
    sget-object v4, Landroid/icu/text/IdentifierInfo;->BITSET_COMPARATOR:Ljava/util/Comparator;

    #@13
    invoke-direct {v3, v4}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    #@16
    .line 343
    .local v3, "sorted":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/BitSet;>;"
    invoke-interface {v3, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@19
    .line 344
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1c
    move-result-object v1

    #@1d
    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@20
    move-result v4

    #@21
    if-eqz v4, :cond_2

    #@23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@26
    move-result-object v0

    #@27
    check-cast v0, Ljava/util/BitSet;

    #@29
    .line 345
    .local v0, "item":Ljava/util/BitSet;
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    #@2c
    move-result v4

    #@2d
    if-eqz v4, :cond_1

    #@2f
    .line 346
    const-string/jumbo v4, "; "

    #@32
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    .line 348
    :cond_1
    invoke-static {v0}, Landroid/icu/text/IdentifierInfo;->displayScripts(Ljava/util/BitSet;)Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    goto :goto_0

    #@3d
    .line 350
    .end local v0    # "item":Ljava/util/BitSet;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v4

    #@41
    return-object v4
.end method

.method public static displayScripts(Ljava/util/BitSet;)Ljava/lang/String;
    .locals 3
    .param p0, "scripts"    # Ljava/util/BitSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 385
    new-instance v1, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 386
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    #@9
    move-result v0

    #@a
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    #@c
    .line 387
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 388
    const/16 v2, 0x20

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@17
    .line 390
    :cond_0
    invoke-static {v0}, Landroid/icu/lang/UScript;->getShortName(I)Ljava/lang/String;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 386
    add-int/lit8 v2, v0, 0x1

    #@20
    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    #@23
    move-result v0

    #@24
    goto :goto_0

    #@25
    .line 392
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v2

    #@29
    return-object v2
.end method

.method public static parseAlternates(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p0, "scriptsSetString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 424
    new-instance v1, Ljava/util/HashSet;

    #@3
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    #@6
    .line 425
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/BitSet;>;"
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    const-string/jumbo v4, "\\s*;\\s*"

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    array-length v4, v3

    #@12
    :goto_0
    if-ge v2, v4, :cond_1

    #@14
    aget-object v0, v3, v2

    #@16
    .line 426
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 427
    invoke-static {v0}, Landroid/icu/text/IdentifierInfo;->parseScripts(Ljava/lang/String;)Ljava/util/BitSet;

    #@1f
    move-result-object v5

    #@20
    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@23
    .line 425
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 430
    .end local v0    # "item":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static parseScripts(Ljava/lang/String;)Ljava/util/BitSet;
    .locals 6
    .param p0, "scriptsString"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 405
    new-instance v1, Ljava/util/BitSet;

    #@3
    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    #@6
    .line 406
    .local v1, "result":Ljava/util/BitSet;
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@9
    move-result-object v3

    #@a
    const-string/jumbo v4, ",?\\s+"

    #@d
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    array-length v4, v3

    #@12
    :goto_0
    if-ge v2, v4, :cond_1

    #@14
    aget-object v0, v3, v2

    #@16
    .line 407
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@19
    move-result v5

    #@1a
    if-eqz v5, :cond_0

    #@1c
    .line 408
    invoke-static {v0}, Landroid/icu/lang/UScript;->getCodeFromName(Ljava/lang/String;)I

    #@1f
    move-result v5

    #@20
    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    #@23
    .line 406
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 411
    .end local v0    # "item":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static final varargs set(Ljava/util/BitSet;[I)Ljava/util/BitSet;
    .locals 3
    .param p0, "bitset"    # Ljava/util/BitSet;
    .param p1, "values"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 463
    const/4 v1, 0x0

    #@1
    array-length v2, p1

    #@2
    :goto_0
    if-ge v1, v2, :cond_0

    #@4
    aget v0, p1, v1

    #@6
    .line 464
    .local v0, "value":I
    invoke-virtual {p0, v0}, Ljava/util/BitSet;->set(I)V

    #@9
    .line 463
    add-int/lit8 v1, v1, 0x1

    #@b
    goto :goto_0

    #@c
    .line 466
    .end local v0    # "value":I
    :cond_0
    return-object p0
.end method


# virtual methods
.method public getAlternates()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 203
    new-instance v2, Ljava/util/HashSet;

    #@2
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 204
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/BitSet;>;"
    iget-object v3, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Ljava/util/BitSet;

    #@17
    .line 205
    .local v0, "item":Ljava/util/BitSet;
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@1a
    move-result-object v3

    #@1b
    check-cast v3, Ljava/util/BitSet;

    #@1d
    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@20
    goto :goto_0

    #@21
    .line 207
    .end local v0    # "item":Ljava/util/BitSet;
    :cond_0
    return-object v2
.end method

.method public getCommonAmongAlternates()Ljava/util/BitSet;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    #@2
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/BitSet;

    #@8
    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 178
    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->identifier:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getIdentifierProfile()Landroid/icu/text/UnicodeSet;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 95
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->identifierProfile:Landroid/icu/text/UnicodeSet;

    #@4
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@7
    return-object v0
.end method

.method public getNumerics()Landroid/icu/text/UnicodeSet;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 219
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->numerics:Landroid/icu/text/UnicodeSet;

    #@4
    invoke-direct {v0, v1}, Landroid/icu/text/UnicodeSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@7
    return-object v0
.end method

.method public getRestrictionLevel()Landroid/icu/text/SpoofChecker$RestrictionLevel;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    .line 252
    iget-object v2, p0, Landroid/icu/text/IdentifierInfo;->identifierProfile:Landroid/icu/text/UnicodeSet;

    #@4
    iget-object v3, p0, Landroid/icu/text/IdentifierInfo;->identifier:Ljava/lang/String;

    #@6
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    invoke-virtual {p0}, Landroid/icu/text/IdentifierInfo;->getNumerics()Landroid/icu/text/UnicodeSet;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSet;->size()I

    #@13
    move-result v2

    #@14
    if-le v2, v1, :cond_1

    #@16
    .line 253
    :cond_0
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->UNRESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@18
    return-object v1

    #@19
    .line 255
    :cond_1
    sget-object v2, Landroid/icu/text/IdentifierInfo;->ASCII:Landroid/icu/text/UnicodeSet;

    #@1b
    iget-object v3, p0, Landroid/icu/text/IdentifierInfo;->identifier:Ljava/lang/String;

    #@1d
    invoke-virtual {v2, v3}, Landroid/icu/text/UnicodeSet;->containsAll(Ljava/lang/String;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_2

    #@23
    .line 256
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->ASCII:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@25
    return-object v1

    #@26
    .line 265
    :cond_2
    iget-object v2, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    #@28
    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    #@2b
    move-result v2

    #@2c
    iget-object v3, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    #@2e
    invoke-virtual {v3}, Ljava/util/BitSet;->cardinality()I

    #@31
    move-result v3

    #@32
    if-nez v3, :cond_3

    #@34
    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    #@36
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@39
    move-result v1

    #@3a
    :cond_3
    add-int v0, v2, v1

    #@3c
    .line 266
    .local v0, "cardinalityPlus":I
    if-ge v0, v4, :cond_4

    #@3e
    .line 267
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->SINGLE_SCRIPT_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@40
    return-object v1

    #@41
    .line 269
    :cond_4
    sget-object v1, Landroid/icu/text/IdentifierInfo;->JAPANESE:Ljava/util/BitSet;

    #@43
    iget-object v2, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    #@45
    invoke-direct {p0, v1, v2}, Landroid/icu/text/IdentifierInfo;->containsWithAlternates(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    #@48
    move-result v1

    #@49
    if-nez v1, :cond_5

    #@4b
    sget-object v1, Landroid/icu/text/IdentifierInfo;->CHINESE:Ljava/util/BitSet;

    #@4d
    iget-object v2, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    #@4f
    invoke-direct {p0, v1, v2}, Landroid/icu/text/IdentifierInfo;->containsWithAlternates(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    #@52
    move-result v1

    #@53
    if-nez v1, :cond_5

    #@55
    .line 270
    sget-object v1, Landroid/icu/text/IdentifierInfo;->KOREAN:Ljava/util/BitSet;

    #@57
    iget-object v2, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    #@59
    invoke-direct {p0, v1, v2}, Landroid/icu/text/IdentifierInfo;->containsWithAlternates(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    #@5c
    move-result v1

    #@5d
    .line 269
    if-eqz v1, :cond_6

    #@5f
    .line 271
    :cond_5
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->HIGHLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@61
    return-object v1

    #@62
    .line 273
    :cond_6
    if-ne v0, v4, :cond_7

    #@64
    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    #@66
    const/16 v2, 0x19

    #@68
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    #@6b
    move-result v1

    #@6c
    if-eqz v1, :cond_7

    #@6e
    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    #@70
    sget-object v2, Landroid/icu/text/IdentifierInfo;->CONFUSABLE_WITH_LATIN:Ljava/util/BitSet;

    #@72
    invoke-virtual {v1, v2}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    #@75
    move-result v1

    #@76
    if-eqz v1, :cond_8

    #@78
    .line 276
    :cond_7
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MINIMALLY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@7a
    return-object v1

    #@7b
    .line 274
    :cond_8
    sget-object v1, Landroid/icu/text/SpoofChecker$RestrictionLevel;->MODERATELY_RESTRICTIVE:Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@7d
    return-object v1
.end method

.method public getScriptCount()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 296
    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    #@2
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    #@5
    move-result v2

    #@6
    .line 297
    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    #@8
    invoke-virtual {v1}, Ljava/util/BitSet;->cardinality()I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_0

    #@e
    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    #@10
    invoke-interface {v1}, Ljava/util/Set;->size()I

    #@13
    move-result v1

    #@14
    .line 296
    :goto_0
    add-int v0, v2, v1

    #@16
    .line 298
    .local v0, "count":I
    return v0

    #@17
    .line 297
    .end local v0    # "count":I
    :cond_0
    const/4 v1, 0x1

    #@18
    goto :goto_0
.end method

.method public getScripts()Ljava/util/BitSet;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 190
    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    #@2
    invoke-virtual {v0}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Ljava/util/BitSet;

    #@8
    return-object v0
.end method

.method public setIdentifier(Ljava/lang/String;)Landroid/icu/text/IdentifierInfo;
    .locals 10
    .param p1, "identifier"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 108
    iput-object p1, p0, Landroid/icu/text/IdentifierInfo;->identifier:Ljava/lang/String;

    #@3
    .line 109
    invoke-direct {p0}, Landroid/icu/text/IdentifierInfo;->clear()Landroid/icu/text/IdentifierInfo;

    #@6
    .line 110
    new-instance v6, Ljava/util/BitSet;

    #@8
    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    #@b
    .line 112
    .local v6, "scriptsForCP":Ljava/util/BitSet;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@f
    move-result v7

    #@10
    if-ge v1, v7, :cond_2

    #@12
    .line 113
    invoke-static {p1, v1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    #@15
    move-result v0

    #@16
    .line 115
    .local v0, "cp":I
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getType(I)I

    #@19
    move-result v7

    #@1a
    const/16 v8, 0x9

    #@1c
    if-ne v7, v8, :cond_0

    #@1e
    .line 117
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->numerics:Landroid/icu/text/UnicodeSet;

    #@20
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->getNumericValue(I)I

    #@23
    move-result v8

    #@24
    sub-int v8, v0, v8

    #@26
    invoke-virtual {v7, v8}, Landroid/icu/text/UnicodeSet;->add(I)Landroid/icu/text/UnicodeSet;

    #@29
    .line 119
    :cond_0
    invoke-static {v0, v6}, Landroid/icu/lang/UScript;->getScriptExtensions(ILjava/util/BitSet;)I

    #@2c
    .line 120
    invoke-virtual {v6, v9}, Ljava/util/BitSet;->clear(I)V

    #@2f
    .line 121
    const/4 v7, 0x1

    #@30
    invoke-virtual {v6, v7}, Ljava/util/BitSet;->clear(I)V

    #@33
    .line 126
    invoke-virtual {v6}, Ljava/util/BitSet;->cardinality()I

    #@36
    move-result v7

    #@37
    packed-switch v7, :pswitch_data_0

    #@3a
    .line 133
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    #@3c
    invoke-virtual {v7, v6}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    #@3f
    move-result v7

    #@40
    if-nez v7, :cond_1

    #@42
    .line 134
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    #@44
    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@47
    move-result v7

    #@48
    .line 133
    if-eqz v7, :cond_1

    #@4a
    .line 135
    new-instance v6, Ljava/util/BitSet;

    #@4c
    .end local v6    # "scriptsForCP":Ljava/util/BitSet;
    invoke-direct {v6}, Ljava/util/BitSet;-><init>()V

    #@4f
    .line 112
    .restart local v6    # "scriptsForCP":Ljava/util/BitSet;
    :cond_1
    :goto_1
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    #@52
    move-result v7

    #@53
    add-int/2addr v1, v7

    #@54
    goto :goto_0

    #@55
    .line 130
    :pswitch_1
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    #@57
    invoke-virtual {v7, v6}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    #@5a
    goto :goto_1

    #@5b
    .line 144
    .end local v0    # "cp":I
    :cond_2
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    #@5d
    invoke-interface {v7}, Ljava/util/Set;->size()I

    #@60
    move-result v7

    #@61
    if-lez v7, :cond_6

    #@63
    .line 145
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    #@65
    const/16 v8, 0xa7

    #@67
    invoke-virtual {v7, v9, v8}, Ljava/util/BitSet;->set(II)V

    #@6a
    .line 146
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    #@6c
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@6f
    move-result-object v2

    #@70
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/BitSet;>;"
    :cond_3
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@73
    move-result v7

    #@74
    if-eqz v7, :cond_6

    #@76
    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@79
    move-result-object v3

    #@7a
    check-cast v3, Ljava/util/BitSet;

    #@7c
    .line 149
    .local v3, "next":Ljava/util/BitSet;
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    #@7e
    invoke-virtual {v7, v3}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    #@81
    move-result v7

    #@82
    if-eqz v7, :cond_4

    #@84
    .line 150
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@87
    goto :goto_2

    #@88
    .line 153
    :cond_4
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    #@8a
    invoke-virtual {v7, v3}, Ljava/util/BitSet;->and(Ljava/util/BitSet;)V

    #@8d
    .line 154
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    #@8f
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@92
    move-result-object v5

    #@93
    .local v5, "other$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@96
    move-result v7

    #@97
    if-eqz v7, :cond_3

    #@99
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9c
    move-result-object v4

    #@9d
    check-cast v4, Ljava/util/BitSet;

    #@9f
    .line 155
    .local v4, "other":Ljava/util/BitSet;
    if-eq v3, v4, :cond_5

    #@a1
    invoke-static {v3, v4}, Landroid/icu/text/IdentifierInfo;->contains(Ljava/util/BitSet;Ljava/util/BitSet;)Z

    #@a4
    move-result v7

    #@a5
    if-eqz v7, :cond_5

    #@a7
    .line 156
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    #@aa
    goto :goto_2

    #@ab
    .line 163
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/BitSet;>;"
    .end local v3    # "next":Ljava/util/BitSet;
    .end local v4    # "other":Ljava/util/BitSet;
    .end local v5    # "other$iterator":Ljava/util/Iterator;
    :cond_6
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    #@ad
    invoke-interface {v7}, Ljava/util/Set;->size()I

    #@b0
    move-result v7

    #@b1
    if-nez v7, :cond_7

    #@b3
    .line 164
    iget-object v7, p0, Landroid/icu/text/IdentifierInfo;->commonAmongAlternates:Ljava/util/BitSet;

    #@b5
    invoke-virtual {v7}, Ljava/util/BitSet;->clear()V

    #@b8
    .line 166
    :cond_7
    return-object p0

    #@b9
    .line 126
    nop

    #@ba
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setIdentifierProfile(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/IdentifierInfo;
    .locals 1
    .param p1, "identifierProfile"    # Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/icu/text/IdentifierInfo;->identifierProfile:Landroid/icu/text/UnicodeSet;

    #@2
    invoke-virtual {v0, p1}, Landroid/icu/text/UnicodeSet;->set(Landroid/icu/text/UnicodeSet;)Landroid/icu/text/UnicodeSet;

    #@5
    .line 82
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->identifier:Ljava/lang/String;

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    const-string/jumbo v1, ", "

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->identifierProfile:Landroid/icu/text/UnicodeSet;

    #@15
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    const-string/jumbo v1, ", "

    #@20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v0

    #@24
    invoke-virtual {p0}, Landroid/icu/text/IdentifierInfo;->getRestrictionLevel()Landroid/icu/text/SpoofChecker$RestrictionLevel;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, ", "

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    .line 311
    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->requiredScripts:Ljava/util/BitSet;

    #@35
    invoke-static {v1}, Landroid/icu/text/IdentifierInfo;->displayScripts(Ljava/util/BitSet;)Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 311
    const-string/jumbo v1, ", "

    #@40
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 311
    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->scriptSetSet:Ljava/util/Set;

    #@46
    invoke-static {v1}, Landroid/icu/text/IdentifierInfo;->displayAlternates(Ljava/util/Set;)Ljava/lang/String;

    #@49
    move-result-object v1

    #@4a
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 311
    const-string/jumbo v1, ", "

    #@51
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v0

    #@55
    .line 312
    iget-object v1, p0, Landroid/icu/text/IdentifierInfo;->numerics:Landroid/icu/text/UnicodeSet;

    #@57
    invoke-virtual {v1, v2}, Landroid/icu/text/UnicodeSet;->toPattern(Z)Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    .line 310
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v0

    #@5f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v0

    #@63
    return-object v0
.end method
