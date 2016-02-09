.class public Landroid/icu/impl/data/BreakIteratorRules_th;
.super Ljava/util/ListResourceBundle;
.source "BreakIteratorRules_th.java"


# static fields
.field private static final DATA_NAME:Ljava/lang/String; = "data/th.brk"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 13
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    const/4 v7, 0x2

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 17
    const-string/jumbo v1, "data/th.brk"

    #@7
    invoke-static {v1}, Landroid/icu/impl/ICUData;->exists(Ljava/lang/String;)Z

    #@a
    move-result v0

    #@b
    .line 21
    .local v0, "exists":Z
    if-nez v0, :cond_0

    #@d
    .line 22
    const-class v1, Ljava/lang/Object;

    #@f
    filled-new-array {v5, v5}, [I

    #@12
    move-result-object v2

    #@13
    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, [[Ljava/lang/Object;

    #@19
    return-object v1

    #@1a
    .line 25
    :cond_0
    new-array v1, v8, [[Ljava/lang/Object;

    #@1c
    .line 29
    new-array v2, v7, [Ljava/lang/Object;

    #@1e
    const-string/jumbo v3, "BreakIteratorClasses"

    #@21
    aput-object v3, v2, v5

    #@23
    .line 30
    const/4 v3, 0x4

    #@24
    new-array v3, v3, [Ljava/lang/String;

    #@26
    const-string/jumbo v4, "RuleBasedBreakIterator"

    #@29
    aput-object v4, v3, v5

    #@2b
    .line 31
    const-string/jumbo v4, "DictionaryBasedBreakIterator"

    #@2e
    aput-object v4, v3, v6

    #@30
    .line 32
    const-string/jumbo v4, "DictionaryBasedBreakIterator"

    #@33
    aput-object v4, v3, v7

    #@35
    .line 33
    const-string/jumbo v4, "RuleBasedBreakIterator"

    #@38
    aput-object v4, v3, v8

    #@3a
    .line 30
    aput-object v3, v2, v6

    #@3c
    .line 29
    aput-object v2, v1, v5

    #@3e
    .line 37
    new-array v2, v7, [Ljava/lang/Object;

    #@40
    const-string/jumbo v3, "WordBreakDictionary"

    #@43
    aput-object v3, v2, v5

    #@45
    const-string/jumbo v3, "data/th.brk"

    #@48
    aput-object v3, v2, v6

    #@4a
    aput-object v2, v1, v6

    #@4c
    .line 38
    new-array v2, v7, [Ljava/lang/Object;

    #@4e
    const-string/jumbo v3, "LineBreakDictionary"

    #@51
    aput-object v3, v2, v5

    #@53
    const-string/jumbo v3, "data/th.brk"

    #@56
    aput-object v3, v2, v6

    #@58
    aput-object v2, v1, v7

    #@5a
    .line 25
    return-object v1
.end method
