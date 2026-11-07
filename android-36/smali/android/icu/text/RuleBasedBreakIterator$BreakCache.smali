.class Landroid/icu/text/RuleBasedBreakIterator$BreakCache;
.super Ljava/lang/Object;
.source "RuleBasedBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/text/RuleBasedBreakIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BreakCache"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final greylist-max-o CACHE_SIZE:I = 0x80

.field static final greylist-max-o RetainCachePosition:Z = false

.field static final greylist-max-o UpdateCachePosition:Z = true


# instance fields
.field greylist-max-o fBoundaries:[I

.field greylist-max-o fBufIdx:I

.field greylist-max-o fEndBufIdx:I

.field blacklist fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

.field greylist-max-o fStartBufIdx:I

.field greylist-max-o fStatuses:[S

.field greylist-max-o fTextIdx:I

.field final synthetic blacklist this$0:Landroid/icu/text/RuleBasedBreakIterator;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1302
    const-class v0, Landroid/icu/text/RuleBasedBreakIterator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/text/RuleBasedBreakIterator;)V
    .registers 4
    .param p1, "this$0"    # Landroid/icu/text/RuleBasedBreakIterator;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1304
    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1848
    const/16 v0, 0x80

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    .line 1849
    new-array v0, v0, [S

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    .line 1851
    new-instance v0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-direct {v0}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    .line 1305
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->reset()V

    .line 1306
    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/text/RuleBasedBreakIterator;Landroid/icu/text/RuleBasedBreakIterator$BreakCache;)V
    .registers 5
    .param p1, "this$0"    # Landroid/icu/text/RuleBasedBreakIterator;
    .param p2, "src"    # Landroid/icu/text/RuleBasedBreakIterator$BreakCache;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1817
    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1848
    const/16 v0, 0x80

    new-array v1, v0, [I

    iput-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    .line 1849
    new-array v0, v0, [S

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    .line 1851
    new-instance v0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-direct {v0}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    .line 1818
    iget v0, p2, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    .line 1819
    iget v0, p2, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    .line 1820
    iget v0, p2, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1821
    iget v0, p2, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1822
    iget-object v0, p2, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    .line 1823
    iget-object v0, p2, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    invoke-virtual {v0}, [S->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    .line 1824
    new-instance v0, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-direct {v0}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    .line 1825
    return-void
.end method

.method private final greylist-max-o modChunkSize(I)I
    .registers 3
    .param p1, "index"    # I

    .line 1837
    and-int/lit8 v0, p1, 0x7f

    return v0
.end method


# virtual methods
.method greylist-max-o addFollowing(IIZ)V
    .registers 8
    .param p1, "position"    # I
    .param p2, "ruleStatusIdx"    # I
    .param p3, "update"    # Z

    .line 1716
    nop

    .line 1717
    nop

    .line 1718
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    .line 1719
    .local v0, "nextIdx":I
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    if-ne v0, v2, :cond_18

    .line 1720
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    add-int/lit8 v2, v2, 0x6

    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v2

    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    .line 1722
    :cond_18
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aput p1, v2, v0

    .line 1723
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    int-to-short v3, p2

    aput-short v3, v2, v0

    .line 1724
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    .line 1725
    if-ne p3, v1, :cond_2a

    .line 1727
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1728
    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    goto :goto_2b

    .line 1733
    :cond_2a
    nop

    .line 1736
    :goto_2b
    return-void
.end method

.method greylist-max-o addPreceding(IIZ)Z
    .registers 8
    .param p1, "position"    # I
    .param p2, "ruleStatusIdx"    # I
    .param p3, "update"    # Z

    .line 1745
    nop

    .line 1746
    nop

    .line 1747
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    .line 1748
    .local v0, "nextIdx":I
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    if-ne v0, v2, :cond_21

    .line 1749
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    if-ne v2, v3, :cond_18

    if-nez p3, :cond_18

    .line 1753
    const/4 v1, 0x0

    return v1

    .line 1755
    :cond_18
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    sub-int/2addr v2, v1

    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v2

    iput v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    .line 1757
    :cond_21
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aput p1, v2, v0

    .line 1758
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    int-to-short v3, p2

    aput-short v3, v2, v0

    .line 1759
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    .line 1760
    if-ne p3, v1, :cond_32

    .line 1761
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1762
    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1764
    :cond_32
    return v1
.end method

.method greylist-max-o current()I
    .registers 4

    .line 1382
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfPosition(Landroid/icu/text/RuleBasedBreakIterator;I)V

    .line 1383
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget-short v1, v1, v2

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfRuleStatusIndex(Landroid/icu/text/RuleBasedBreakIterator;I)V

    .line 1384
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfDone(Landroid/icu/text/RuleBasedBreakIterator;Z)V

    .line 1385
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    return v0
.end method

.method greylist-max-o dumpCache()V
    .registers 5

    .line 1828
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fTextIdx:%d   fBufIdx:%d%n"

    invoke-virtual {v0, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1829
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    .line 1830
    .local v0, "i":I
    :goto_19
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%d  %d%n"

    invoke-virtual {v1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 1831
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    if-ne v0, v1, :cond_36

    .line 1832
    nop

    .line 1835
    .end local v0    # "i":I
    return-void

    .line 1829
    .restart local v0    # "i":I
    :cond_36
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    goto :goto_19
.end method

.method greylist-max-o following(I)V
    .registers 4
    .param p1, "startPos"    # I

    .line 1350
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-eq p1, v0, :cond_10

    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->seek(I)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populateNear(I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1356
    :cond_10
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfDone(Landroid/icu/text/RuleBasedBreakIterator;Z)V

    .line 1357
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->next()V

    .line 1360
    :cond_19
    return-void
.end method

.method greylist-max-o next()V
    .registers 4

    .line 1320
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    if-ne v0, v1, :cond_24

    .line 1321
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populateFollowing()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfDone(Landroid/icu/text/RuleBasedBreakIterator;Z)V

    .line 1322
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfPosition(Landroid/icu/text/RuleBasedBreakIterator;I)V

    .line 1323
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget-short v1, v1, v2

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfRuleStatusIndex(Landroid/icu/text/RuleBasedBreakIterator;I)V

    goto :goto_46

    .line 1325
    :cond_24
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1326
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfPosition(Landroid/icu/text/RuleBasedBreakIterator;I)V

    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1327
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget-short v1, v1, v2

    invoke-static {v0, v1}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfRuleStatusIndex(Landroid/icu/text/RuleBasedBreakIterator;I)V

    .line 1329
    :goto_46
    return-void
.end method

.method greylist-max-o populateFollowing()Z
    .registers 10

    .line 1538
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v0, v0, v1

    .line 1539
    .local v0, "fromPosition":I
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget-short v1, v1, v2

    .line 1540
    .local v1, "fromRuleStatusIdx":I
    const/4 v2, 0x0

    .line 1541
    .local v2, "pos":I
    const/4 v3, 0x0

    .line 1543
    .local v3, "ruleStatusIdx":I
    iget-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v4}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCache(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->following(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2f

    .line 1544
    iget-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v4}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCache(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v4

    iget v4, v4, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v6}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCache(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v6

    iget v6, v6, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    invoke-virtual {p0, v4, v6, v5}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->addFollowing(IIZ)V

    .line 1545
    return v5

    .line 1548
    :cond_2f
    iget-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v4, v0}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfPosition(Landroid/icu/text/RuleBasedBreakIterator;I)V

    .line 1549
    iget-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v4}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$mhandleNext(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v2

    .line 1550
    const/4 v4, 0x0

    const/4 v6, -0x1

    if-ne v2, v6, :cond_3f

    .line 1551
    return v4

    .line 1554
    :cond_3f
    iget-object v7, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v7}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfRuleStatusIndex(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v3

    .line 1555
    iget-object v7, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v7}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCharCount(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v7

    if-lez v7, :cond_76

    .line 1558
    iget-object v7, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v7}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCache(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v7

    invoke-virtual {v7, v0, v2, v1, v3}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->populateDictionary(IIII)V

    .line 1559
    iget-object v7, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v7}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCache(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->following(I)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 1560
    iget-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v4}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCache(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v4

    iget v4, v4, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v6}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCache(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v6

    iget v6, v6, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    invoke-virtual {p0, v4, v6, v5}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->addFollowing(IIZ)V

    .line 1561
    return v5

    .line 1571
    :cond_76
    invoke-virtual {p0, v2, v3, v5}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->addFollowing(IIZ)V

    .line 1576
    const/4 v7, 0x0

    .local v7, "count":I
    :goto_7a
    const/4 v8, 0x6

    if-ge v7, v8, :cond_9a

    .line 1577
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$mhandleNext(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v2

    .line 1578
    if-eq v2, v6, :cond_9a

    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCharCount(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v8

    if-lez v8, :cond_8e

    .line 1579
    goto :goto_9a

    .line 1581
    :cond_8e
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfRuleStatusIndex(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v8

    invoke-virtual {p0, v2, v8, v4}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->addFollowing(IIZ)V

    .line 1576
    add-int/lit8 v7, v7, 0x1

    goto :goto_7a

    .line 1583
    .end local v7    # "count":I
    :cond_9a
    :goto_9a
    return v5
.end method

.method greylist-max-o populateNear(I)Z
    .registers 12
    .param p1, "position"    # I

    .line 1404
    nop

    .line 1424
    const/16 v0, 0xf

    .line 1426
    .local v0, "CACHE_NEAR":I
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v1}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfText(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    .line 1427
    .local v1, "startOfText":I
    const/4 v2, -0x1

    .line 1428
    .local v2, "aBoundary":I
    const/4 v3, 0x0

    .line 1429
    .local v3, "ruleStatusIndex":I
    const/4 v4, 0x0

    .line 1430
    .local v4, "retainCache":Z
    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v6, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v5, v5, v6

    add-int/lit8 v5, v5, -0xf

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le p1, v5, :cond_29

    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v5, v5, v8

    add-int/lit8 v5, v5, 0xf

    if-ge p1, v5, :cond_29

    .line 1432
    const/4 v4, 0x1

    goto/16 :goto_ac

    .line 1433
    :cond_29
    add-int/lit8 v5, v1, 0xf

    if-gt p1, v5, :cond_31

    .line 1436
    const/4 v4, 0x0

    .line 1437
    move v2, v1

    goto/16 :goto_ac

    .line 1441
    :cond_31
    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v5, p1}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$mhandleSafePrevious(Landroid/icu/text/RuleBasedBreakIterator;I)I

    move-result v5

    .line 1443
    .local v5, "backupPos":I
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v9, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v8, v8, v9

    if-ge v8, p1, :cond_4b

    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v9, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v8, v8, v9

    add-int/lit8 v9, v5, -0xf

    if-lt v8, v9, :cond_4b

    .line 1447
    const/4 v4, 0x1

    goto :goto_ac

    .line 1448
    :cond_4b
    add-int/lit8 v8, v1, 0xf

    if-ge v5, v8, :cond_5f

    .line 1454
    move v2, v1

    .line 1455
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v9, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v8, v8, v9

    add-int/lit8 v9, p1, 0xf

    if-gt v8, v9, :cond_5c

    move v8, v7

    goto :goto_5d

    :cond_5c
    move v8, v6

    :goto_5d
    move v4, v8

    goto :goto_ac

    .line 1465
    :cond_5f
    const/4 v4, 0x0

    .line 1466
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8, v5}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfPosition(Landroid/icu/text/RuleBasedBreakIterator;I)V

    .line 1467
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$mhandleNext(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v2

    .line 1468
    add-int/lit8 v8, v5, 0x1

    if-eq v2, v8, :cond_93

    add-int/lit8 v8, v5, 0x2

    if-ne v2, v8, :cond_99

    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfText(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v8

    .line 1470
    invoke-interface {v8, v5}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_99

    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfText(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v8

    .line 1471
    invoke-interface {v8}, Ljava/text/CharacterIterator;->next()C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_99

    .line 1474
    :cond_93
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$mhandleNext(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v2

    .line 1476
    :cond_99
    const/4 v8, -0x1

    if-ne v2, v8, :cond_a6

    .line 1477
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfText(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v2

    .line 1479
    :cond_a6
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfRuleStatusIndex(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v3

    .line 1483
    .end local v5    # "backupPos":I
    :goto_ac
    if-nez v4, :cond_b2

    .line 1484
    nop

    .line 1485
    invoke-virtual {p0, v2, v3}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->reset(II)V

    .line 1491
    :cond_b2
    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v5, v5, v8

    if-ge v5, p1, :cond_df

    .line 1494
    :cond_ba
    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v5, v5, v8

    if-ge v5, p1, :cond_ca

    .line 1495
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populateFollowing()Z

    move-result v5

    if-nez v5, :cond_ba

    .line 1496
    nop

    .line 1497
    return v6

    .line 1500
    :cond_ca
    iget v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    iput v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1501
    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v6, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget v5, v5, v6

    iput v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1502
    :goto_d6
    iget v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-le v5, p1, :cond_de

    .line 1503
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->previous()V

    goto :goto_d6

    .line 1505
    :cond_de
    return v7

    .line 1508
    :cond_df
    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v6, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v5, v5, v6

    if-le v5, p1, :cond_10f

    .line 1511
    :goto_e7
    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v6, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v5, v5, v6

    if-le v5, p1, :cond_f3

    .line 1512
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populatePreceding()Z

    goto :goto_e7

    .line 1514
    :cond_f3
    iget v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    iput v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1515
    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v6, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget v5, v5, v6

    iput v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1516
    :goto_ff
    iget v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-ge v5, p1, :cond_107

    .line 1517
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->next()V

    goto :goto_ff

    .line 1519
    :cond_107
    iget v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-le v5, p1, :cond_10e

    .line 1522
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->previous()V

    .line 1524
    :cond_10e
    return v7

    .line 1527
    :cond_10f
    nop

    .line 1528
    return v7
.end method

.method greylist-max-o populatePreceding()Z
    .registers 14

    .line 1592
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v0}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfText(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    .line 1593
    .local v0, "textBegin":I
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v1, v1, v2

    .line 1594
    .local v1, "fromPosition":I
    const/4 v2, 0x0

    if-ne v1, v0, :cond_14

    .line 1595
    return v2

    .line 1598
    :cond_14
    move v3, v0

    .line 1599
    .local v3, "position":I
    const/4 v4, 0x0

    .line 1601
    .local v4, "positionStatusIdx":I
    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v5}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCache(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->preceding(I)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_37

    .line 1602
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v2}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCache(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v2

    iget v2, v2, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v5}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCache(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v5

    iget v5, v5, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    invoke-virtual {p0, v2, v5, v6}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->addPreceding(IIZ)Z

    .line 1603
    return v6

    .line 1606
    :cond_37
    move v5, v1

    .line 1610
    .local v5, "backupPosition":I
    :cond_38
    add-int/lit8 v5, v5, -0x1e

    .line 1611
    if-gt v5, v0, :cond_3e

    .line 1612
    move v5, v0

    goto :goto_44

    .line 1614
    :cond_3e
    iget-object v7, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v7, v5}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$mhandleSafePrevious(Landroid/icu/text/RuleBasedBreakIterator;I)I

    move-result v5

    .line 1616
    :goto_44
    const/4 v7, -0x1

    if-eq v5, v7, :cond_8a

    if-ne v5, v0, :cond_4a

    goto :goto_8a

    .line 1626
    :cond_4a
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8, v5}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfPosition(Landroid/icu/text/RuleBasedBreakIterator;I)V

    .line 1627
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$mhandleNext(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v3

    .line 1628
    add-int/lit8 v8, v5, 0x1

    if-eq v3, v8, :cond_7d

    add-int/lit8 v8, v5, 0x2

    if-ne v3, v8, :cond_83

    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfText(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v8

    .line 1630
    invoke-interface {v8, v5}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_83

    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfText(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;

    move-result-object v8

    .line 1631
    invoke-interface {v8}, Ljava/text/CharacterIterator;->next()C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_83

    .line 1634
    :cond_7d
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$mhandleNext(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v3

    .line 1636
    :cond_83
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfRuleStatusIndex(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v4

    goto :goto_8c

    .line 1617
    :cond_8a
    :goto_8a
    move v3, v0

    .line 1618
    const/4 v4, 0x0

    .line 1638
    :goto_8c
    if-ge v3, v1, :cond_38

    .line 1643
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v8}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->removeAllElements()V

    .line 1644
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v8, v3}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1645
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v8, v4}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1648
    :cond_9d
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v8, v3}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfPosition(Landroid/icu/text/RuleBasedBreakIterator;I)V

    move v8, v3

    .line 1649
    .local v8, "prevPosition":I
    move v9, v4

    .line 1650
    .local v9, "prevStatusIdx":I
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v10}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$mhandleNext(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v3

    .line 1651
    iget-object v10, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v10}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfRuleStatusIndex(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v4

    .line 1652
    if-ne v3, v7, :cond_b3

    .line 1653
    goto :goto_105

    .line 1656
    :cond_b3
    const/4 v10, 0x0

    .line 1657
    .local v10, "segmentHandledByDictionary":Z
    iget-object v11, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v11}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCharCount(Landroid/icu/text/RuleBasedBreakIterator;)I

    move-result v11

    if-eqz v11, :cond_f5

    .line 1660
    move v11, v3

    .line 1661
    .local v11, "dictSegEndPosition":I
    iget-object v12, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v12}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCache(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v12

    invoke-virtual {v12, v8, v11, v9, v4}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->populateDictionary(IIII)V

    .line 1662
    :goto_c6
    iget-object v12, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v12}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCache(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v12

    invoke-virtual {v12, v8}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->following(I)Z

    move-result v12

    if-eqz v12, :cond_f4

    .line 1663
    iget-object v12, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v12}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCache(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v12

    iget v3, v12, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fBoundary:I

    .line 1664
    iget-object v12, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    invoke-static {v12}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fgetfDictionaryCache(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    move-result-object v12

    iget v4, v12, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->fStatusIndex:I

    .line 1665
    const/4 v10, 0x1

    .line 1666
    nop

    .line 1667
    if-lt v3, v1, :cond_e7

    .line 1668
    goto :goto_f4

    .line 1670
    :cond_e7
    nop

    .line 1671
    iget-object v12, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v12, v3}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1672
    iget-object v12, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v12, v4}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1673
    move v8, v3

    goto :goto_c6

    .line 1675
    :cond_f4
    :goto_f4
    nop

    .line 1678
    .end local v11    # "dictSegEndPosition":I
    :cond_f5
    if-nez v10, :cond_103

    if-ge v3, v1, :cond_103

    .line 1679
    iget-object v11, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v11, v3}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1680
    iget-object v11, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v11, v4}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->push(I)V

    .line 1682
    .end local v8    # "prevPosition":I
    .end local v9    # "prevStatusIdx":I
    .end local v10    # "segmentHandledByDictionary":Z
    :cond_103
    if-lt v3, v1, :cond_9d

    .line 1685
    :goto_105
    const/4 v7, 0x0

    .line 1686
    .local v7, "success":Z
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v8}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11e

    .line 1687
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v8}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->pop()I

    move-result v4

    .line 1688
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v8}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->pop()I

    move-result v3

    .line 1689
    invoke-virtual {p0, v3, v4, v6}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->addPreceding(IIZ)Z

    .line 1690
    const/4 v7, 0x1

    .line 1693
    :cond_11e
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v6}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_139

    .line 1694
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v6}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->pop()I

    move-result v4

    .line 1695
    iget-object v6, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fSideBuffer:Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;

    invoke-virtual {v6}, Landroid/icu/impl/breakiter/DictionaryBreakEngine$DequeI;->pop()I

    move-result v3

    .line 1696
    invoke-virtual {p0, v3, v4, v2}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->addPreceding(IIZ)Z

    move-result v6

    if-nez v6, :cond_11e

    .line 1700
    nop

    .line 1703
    :cond_139
    return v7
.end method

.method greylist-max-o preceding(I)V
    .registers 3
    .param p1, "startPos"    # I

    .line 1363
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-eq p1, v0, :cond_10

    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->seek(I)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populateNear(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1364
    :cond_10
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    if-ne p1, v0, :cond_18

    .line 1365
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->previous()V

    goto :goto_1c

    .line 1370
    :cond_18
    nop

    .line 1371
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->current()I

    .line 1374
    :cond_1c
    :goto_1c
    return-void
.end method

.method greylist-max-o previous()V
    .registers 5

    .line 1332
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1333
    .local v0, "initialBufIdx":I
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_d

    .line 1335
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populatePreceding()Z

    goto :goto_1e

    .line 1338
    :cond_d
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    sub-int/2addr v1, v3

    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v1

    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1339
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget v1, v1, v2

    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1341
    :goto_1e
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    if-ne v2, v0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    :goto_26
    invoke-static {v1, v3}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfDone(Landroid/icu/text/RuleBasedBreakIterator;Z)V

    .line 1342
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    invoke-static {v1, v2}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfPosition(Landroid/icu/text/RuleBasedBreakIterator;I)V

    .line 1343
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->this$0:Landroid/icu/text/RuleBasedBreakIterator;

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget-short v2, v2, v3

    invoke-static {v1, v2}, Landroid/icu/text/RuleBasedBreakIterator;->-$$Nest$fputfRuleStatusIndex(Landroid/icu/text/RuleBasedBreakIterator;I)V

    .line 1344
    return-void
.end method

.method greylist-max-o reset()V
    .registers 2

    .line 1317
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->reset(II)V

    return-void
.end method

.method greylist-max-o reset(II)V
    .registers 6
    .param p1, "pos"    # I
    .param p2, "ruleStatus"    # I

    .line 1309
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    .line 1310
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    .line 1311
    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1312
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1313
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aput p1, v1, v0

    .line 1314
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStatuses:[S

    int-to-short v2, p2

    aput-short v2, v1, v0

    .line 1315
    return-void
.end method

.method greylist-max-o seek(I)Z
    .registers 8
    .param p1, "pos"    # I

    .line 1777
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v0, v0, v1

    const/4 v1, 0x0

    if-lt p1, v0, :cond_74

    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v0, v0, v2

    if-le p1, v0, :cond_12

    goto :goto_74

    .line 1780
    :cond_12
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    aget v0, v0, v2

    const/4 v2, 0x1

    if-ne p1, v0, :cond_28

    .line 1782
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1783
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1784
    return v2

    .line 1786
    :cond_28
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    aget v0, v0, v3

    if-ne p1, v0, :cond_3d

    .line 1787
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1788
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget v0, v0, v1

    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1789
    return v2

    .line 1792
    :cond_3d
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fStartBufIdx:I

    .line 1793
    .local v0, "min":I
    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fEndBufIdx:I

    .line 1794
    .local v3, "max":I
    :goto_41
    if-eq v0, v3, :cond_61

    .line 1795
    add-int v4, v0, v3

    if-le v0, v3, :cond_4a

    const/16 v5, 0x80

    goto :goto_4b

    :cond_4a
    move v5, v1

    :goto_4b
    add-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 1796
    .local v4, "probe":I
    invoke-direct {p0, v4}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v4

    .line 1797
    iget-object v5, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    aget v5, v5, v4

    if-le v5, p1, :cond_5a

    .line 1798
    move v3, v4

    goto :goto_60

    .line 1800
    :cond_5a
    add-int/lit8 v5, v4, 0x1

    invoke-direct {p0, v5}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v0

    .line 1802
    .end local v4    # "probe":I
    :goto_60
    goto :goto_41

    .line 1803
    :cond_61
    nop

    .line 1804
    add-int/lit8 v1, v3, -0x1

    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->modChunkSize(I)I

    move-result v1

    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    .line 1805
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBoundaries:[I

    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fBufIdx:I

    aget v1, v1, v4

    iput v1, p0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->fTextIdx:I

    .line 1806
    nop

    .line 1807
    return v2

    .line 1778
    .end local v0    # "min":I
    .end local v3    # "max":I
    :cond_74
    :goto_74
    return v1
.end method
