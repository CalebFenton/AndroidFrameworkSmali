.class public Landroid/icu/impl/data/BreakIteratorRules;
.super Ljava/util/ListResourceBundle;
.source "BreakIteratorRules.java"


# static fields
.field static final contents:[[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 24
    new-array v0, v6, [[Ljava/lang/Object;

    #@5
    .line 27
    new-array v1, v4, [Ljava/lang/Object;

    #@7
    const-string/jumbo v2, "BreakIteratorClasses"

    #@a
    aput-object v2, v1, v5

    #@c
    .line 28
    const/4 v2, 0x5

    #@d
    new-array v2, v2, [Ljava/lang/String;

    #@f
    const-string/jumbo v3, "RuleBasedBreakIterator"

    #@12
    aput-object v3, v2, v5

    #@14
    .line 29
    const-string/jumbo v3, "RuleBasedBreakIterator"

    #@17
    aput-object v3, v2, v6

    #@19
    .line 30
    const-string/jumbo v3, "RuleBasedBreakIterator"

    #@1c
    aput-object v3, v2, v4

    #@1e
    .line 31
    const-string/jumbo v3, "RuleBasedBreakIterator"

    #@21
    const/4 v4, 0x3

    #@22
    aput-object v3, v2, v4

    #@24
    .line 32
    const-string/jumbo v3, "RuleBasedBreakIterator"

    #@27
    const/4 v4, 0x4

    #@28
    aput-object v3, v2, v4

    #@2a
    .line 28
    aput-object v2, v1, v6

    #@2c
    .line 27
    aput-object v1, v0, v5

    #@2e
    .line 24
    sput-object v0, Landroid/icu/impl/data/BreakIteratorRules;->contents:[[Ljava/lang/Object;

    #@30
    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getContents()[[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 21
    sget-object v0, Landroid/icu/impl/data/BreakIteratorRules;->contents:[[Ljava/lang/Object;

    #@2
    return-object v0
.end method
