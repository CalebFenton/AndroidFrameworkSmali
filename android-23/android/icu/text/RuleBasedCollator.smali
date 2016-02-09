.class public final Landroid/icu/text/RuleBasedCollator;
.super Landroid/icu/text/Collator;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;,
        Landroid/icu/text/RuleBasedCollator$NFDIterator;,
        Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;,
        Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;,
        Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private actualLocaleIsSameAsValid:Z

.field private collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

.field data:Landroid/icu/impl/coll/CollationData;

.field private frozenLock:Ljava/util/concurrent/locks/Lock;

.field settings:Landroid/icu/impl/coll/SharedObject$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/coll/SharedObject$Reference",
            "<",
            "Landroid/icu/impl/coll/CollationSettings;",
            ">;"
        }
    .end annotation
.end field

.field tailoring:Landroid/icu/impl/coll/CollationTailoring;

.field private validLocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/text/RuleBasedCollator;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    #@b
    .line 197
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Landroid/icu/impl/coll/CollationTailoring;Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "t"    # Landroid/icu/impl/coll/CollationTailoring;
    .param p2, "vl"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1741
    invoke-direct {p0}, Landroid/icu/text/Collator;-><init>()V

    #@3
    .line 1742
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@5
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@7
    .line 1743
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@9
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@f
    .line 1744
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@11
    .line 1745
    iput-object p2, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    #@13
    .line 1746
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    #@16
    .line 1741
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "rules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 218
    invoke-direct {p0}, Landroid/icu/text/Collator;-><init>()V

    #@3
    .line 219
    if-nez p1, :cond_0

    #@5
    .line 220
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Collation rules can not be null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 222
    :cond_0
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@10
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    #@12
    .line 223
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator;->internalBuildTailoring(Ljava/lang/String;)V

    #@15
    .line 218
    return-void
.end method

.method private adoptTailoring(Landroid/icu/impl/coll/CollationTailoring;)V
    .locals 2
    .param p1, "t"    # Landroid/icu/impl/coll/CollationTailoring;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1750
    sget-boolean v0, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    #@3
    if-nez v0, :cond_1

    #@5
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@7
    if-nez v0, :cond_0

    #@9
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@b
    if-nez v0, :cond_0

    #@d
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@f
    if-nez v0, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    :goto_0
    if-nez v0, :cond_1

    #@14
    new-instance v0, Ljava/lang/AssertionError;

    #@16
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@19
    throw v0

    #@1a
    :cond_0
    move v0, v1

    #@1b
    goto :goto_0

    #@1c
    .line 1751
    :cond_1
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@1e
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@20
    .line 1752
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@22
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    #@25
    move-result-object v0

    #@26
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@28
    .line 1753
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@2a
    .line 1754
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    #@2c
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    #@2e
    .line 1755
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    #@30
    .line 1749
    return-void
.end method

.method private checkNotFrozen()V
    .locals 2

    #@0
    .prologue
    .line 366
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 367
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@8
    const-string/jumbo v1, "Attempt to modify frozen RuleBasedCollator"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 365
    :cond_0
    return-void
.end method

.method private static final compareNFDIter(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/text/RuleBasedCollator$NFDIterator;Landroid/icu/text/RuleBasedCollator$NFDIterator;)I
    .locals 4
    .param p0, "nfcImpl"    # Landroid/icu/impl/Normalizer2Impl;
    .param p1, "left"    # Landroid/icu/text/RuleBasedCollator$NFDIterator;
    .param p2, "right"    # Landroid/icu/text/RuleBasedCollator$NFDIterator;

    #@0
    .prologue
    const v3, 0xfffe

    #@3
    const/4 v2, 0x0

    #@4
    .line 1610
    :cond_0
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextCodePoint()I

    #@7
    move-result v0

    #@8
    .line 1611
    .local v0, "leftCp":I
    invoke-virtual {p2}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextCodePoint()I

    #@b
    move-result v1

    #@c
    .line 1612
    .local v1, "rightCp":I
    if-ne v0, v1, :cond_1

    #@e
    .line 1613
    if-gez v0, :cond_0

    #@10
    .line 1634
    return v2

    #@11
    .line 1617
    :cond_1
    if-gez v0, :cond_2

    #@13
    .line 1618
    const/4 v0, -0x2

    #@14
    .line 1624
    :goto_0
    if-gez v1, :cond_4

    #@16
    .line 1625
    const/4 v1, -0x2

    #@17
    .line 1631
    :goto_1
    if-ge v0, v1, :cond_6

    #@19
    const/4 v2, -0x1

    #@1a
    return v2

    #@1b
    .line 1619
    :cond_2
    if-ne v0, v3, :cond_3

    #@1d
    .line 1620
    const/4 v0, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1622
    :cond_3
    invoke-virtual {p1, p0, v0}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextDecomposedCodePoint(Landroid/icu/impl/Normalizer2Impl;I)I

    #@22
    move-result v0

    #@23
    goto :goto_0

    #@24
    .line 1626
    :cond_4
    if-ne v1, v3, :cond_5

    #@26
    .line 1627
    const/4 v1, -0x1

    #@27
    goto :goto_1

    #@28
    .line 1629
    :cond_5
    invoke-virtual {p2, p0, v1}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextDecomposedCodePoint(Landroid/icu/impl/Normalizer2Impl;I)I

    #@2b
    move-result v1

    #@2c
    goto :goto_1

    #@2d
    .line 1632
    :cond_6
    if-le v0, v1, :cond_0

    #@2f
    const/4 v2, 0x1

    #@30
    return v2
.end method

.method private final getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1838
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 1839
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    #@9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    #@c
    .line 1843
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@e
    return-object v0

    #@f
    .line 1840
    :cond_1
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@11
    if-nez v0, :cond_0

    #@13
    .line 1841
    new-instance v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@15
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@17
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RuleBasedCollator$CollationBuffer;-><init>(Landroid/icu/impl/coll/CollationData;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    #@1a
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@1c
    goto :goto_0
.end method

.method private getCollationKey(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/CollationKey;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "buffer"    # Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@0
    .prologue
    .line 1087
    iget-object v0, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rawCollationKey:Landroid/icu/text/RawCollationKey;

    #@2
    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/RuleBasedCollator;->getRawCollationKey(Ljava/lang/CharSequence;Landroid/icu/text/RawCollationKey;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/RawCollationKey;

    #@5
    move-result-object v0

    #@6
    iput-object v0, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rawCollationKey:Landroid/icu/text/RawCollationKey;

    #@8
    .line 1088
    new-instance v0, Landroid/icu/text/CollationKey;

    #@a
    iget-object v1, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rawCollationKey:Landroid/icu/text/RawCollationKey;

    #@c
    invoke-direct {v0, p1, v1}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)V

    #@f
    return-object v0
.end method

.method private final getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;
    .locals 1

    #@0
    .prologue
    .line 376
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@2
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@a
    return-object v0
.end method

.method private final getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;
    .locals 1

    #@0
    .prologue
    .line 372
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Landroid/icu/impl/coll/SharedObject;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@8
    return-object v0
.end method

.method private getRawCollationKey(Ljava/lang/CharSequence;Landroid/icu/text/RawCollationKey;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/RawCollationKey;
    .locals 2
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "key"    # Landroid/icu/text/RawCollationKey;
    .param p3, "buffer"    # Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@0
    .prologue
    .line 1156
    if-nez p2, :cond_1

    #@2
    .line 1157
    new-instance p2, Landroid/icu/text/RawCollationKey;

    #@4
    .end local p2    # "key":Landroid/icu/text/RawCollationKey;
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator;->simpleKeyLengthEstimate(Ljava/lang/CharSequence;)I

    #@7
    move-result v1

    #@8
    invoke-direct {p2, v1}, Landroid/icu/text/RawCollationKey;-><init>(I)V

    #@b
    .line 1161
    .restart local p2    # "key":Landroid/icu/text/RawCollationKey;
    :cond_0
    :goto_0
    new-instance v0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;

    #@d
    invoke-direct {v0, p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;-><init>(Landroid/icu/text/RawCollationKey;)V

    #@10
    .line 1162
    .local v0, "sink":Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;
    invoke-direct {p0, p1, v0, p3}, Landroid/icu/text/RuleBasedCollator;->writeSortKey(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    #@13
    .line 1163
    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->NumberOfBytesAppended()I

    #@16
    move-result v1

    #@17
    iput v1, p2, Landroid/icu/text/RawCollationKey;->size:I

    #@19
    .line 1164
    return-object p2

    #@1a
    .line 1158
    .end local v0    # "sink":Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;
    :cond_1
    iget-object v1, p2, Landroid/icu/text/RawCollationKey;->bytes:[B

    #@1c
    if-nez v1, :cond_0

    #@1e
    .line 1159
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator;->simpleKeyLengthEstimate(Ljava/lang/CharSequence;)I

    #@21
    move-result v1

    #@22
    new-array v1, v1, [B

    #@24
    iput-object v1, p2, Landroid/icu/text/RawCollationKey;->bytes:[B

    #@26
    goto :goto_0
.end method

.method private final initMaxExpansions()V
    .locals 3

    #@0
    .prologue
    .line 268
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@2
    monitor-enter v1

    #@3
    .line 269
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@5
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;

    #@7
    if-nez v0, :cond_0

    #@9
    .line 270
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@b
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@d
    iget-object v2, v2, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    #@f
    invoke-static {v2}, Landroid/icu/text/CollationElementIterator;->computeMaxExpansions(Landroid/icu/impl/coll/CollationData;)Ljava/util/Map;

    #@12
    move-result-object v2

    #@13
    iput-object v2, v0, Landroid/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :cond_0
    monitor-exit v1

    #@16
    .line 267
    return-void

    #@17
    .line 268
    :catchall_0
    move-exception v0

    #@18
    monitor-exit v1

    #@19
    throw v0
.end method

.method private final internalBuildTailoring(Ljava/lang/String;)V
    .locals 11
    .param p1, "rules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 232
    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    #@3
    move-result-object v0

    #@4
    .line 236
    .local v0, "base":Landroid/icu/impl/coll/CollationTailoring;
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getClass()Ljava/lang/Class;

    #@7
    move-result-object v7

    #@8
    invoke-static {v7}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    #@b
    move-result-object v3

    #@c
    .line 239
    .local v3, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    const-string/jumbo v7, "android.icu.impl.coll.CollationBuilder"

    #@f
    invoke-virtual {v3, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@12
    move-result-object v2

    #@13
    .line 240
    .local v2, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    #@14
    new-array v7, v7, [Ljava/lang/Class;

    #@16
    const-class v8, Landroid/icu/impl/coll/CollationTailoring;

    #@18
    const/4 v9, 0x0

    #@19
    aput-object v8, v7, v9

    #@1b
    invoke-virtual {v2, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@1e
    move-result-object v7

    #@1f
    const/4 v8, 0x1

    #@20
    new-array v8, v8, [Ljava/lang/Object;

    #@22
    const/4 v9, 0x0

    #@23
    aput-object v0, v8, v9

    #@25
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    .line 242
    .local v1, "builder":Ljava/lang/Object;
    const-string/jumbo v7, "parseAndBuild"

    #@2c
    const/4 v8, 0x1

    #@2d
    new-array v8, v8, [Ljava/lang/Class;

    #@2f
    const-class v9, Ljava/lang/String;

    #@31
    const/4 v10, 0x0

    #@32
    aput-object v9, v8, v10

    #@34
    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@37
    move-result-object v5

    #@38
    .line 243
    .local v5, "parseAndBuild":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    #@39
    new-array v7, v7, [Ljava/lang/Object;

    #@3b
    const/4 v8, 0x0

    #@3c
    aput-object p1, v7, v8

    #@3e
    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    move-result-object v6

    #@42
    check-cast v6, Landroid/icu/impl/coll/CollationTailoring;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    #@44
    .line 247
    .local v6, "t":Landroid/icu/impl/coll/CollationTailoring;
    const/4 v7, 0x0

    #@45
    iput-object v7, v6, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    #@47
    .line 248
    invoke-direct {p0, v6}, Landroid/icu/text/RuleBasedCollator;->adoptTailoring(Landroid/icu/impl/coll/CollationTailoring;)V

    #@4a
    .line 231
    return-void

    #@4b
    .line 244
    .end local v1    # "builder":Ljava/lang/Object;
    .end local v2    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "parseAndBuild":Ljava/lang/reflect/Method;
    .end local v6    # "t":Landroid/icu/impl/coll/CollationTailoring;
    :catch_0
    move-exception v4

    #@4c
    .line 245
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v4}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    #@4f
    move-result-object v7

    #@50
    check-cast v7, Ljava/lang/Exception;

    #@52
    throw v7
.end method

.method private internalSetVariableTop(J)V
    .locals 9
    .param p1, "varTop"    # J

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 860
    iget-object v4, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@3
    invoke-virtual {v4}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@6
    move-result-object v4

    #@7
    check-cast v4, Landroid/icu/impl/coll/CollationSettings;

    #@9
    iget-wide v6, v4, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@b
    cmp-long v4, p1, v6

    #@d
    if-eqz v4, :cond_4

    #@f
    .line 863
    iget-object v4, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@11
    invoke-virtual {v4, p1, p2}, Landroid/icu/impl/coll/CollationData;->getGroupForPrimary(J)I

    #@14
    move-result v0

    #@15
    .line 864
    .local v0, "group":I
    const/16 v4, 0x1000

    #@17
    if-lt v0, v4, :cond_0

    #@19
    const/16 v4, 0x1003

    #@1b
    if-ge v4, v0, :cond_1

    #@1d
    .line 865
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@1f
    const-string/jumbo v5, "The variable top must be a primary weight in the space/punctuation/symbols/currency symbols range"

    #@22
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v4

    #@26
    .line 868
    :cond_1
    iget-object v4, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@28
    invoke-virtual {v4, v0}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    #@2b
    move-result-wide v2

    #@2c
    .line 869
    .local v2, "v":J
    sget-boolean v4, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    #@2e
    if-nez v4, :cond_3

    #@30
    const-wide/16 v6, 0x0

    #@32
    cmp-long v4, v2, v6

    #@34
    if-eqz v4, :cond_2

    #@36
    cmp-long v4, v2, p1

    #@38
    if-ltz v4, :cond_2

    #@3a
    const/4 v4, 0x1

    #@3b
    :goto_0
    if-nez v4, :cond_3

    #@3d
    new-instance v4, Ljava/lang/AssertionError;

    #@3f
    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    #@42
    throw v4

    #@43
    :cond_2
    move v4, v5

    #@44
    goto :goto_0

    #@45
    .line 870
    :cond_3
    move-wide p1, v2

    #@46
    .line 871
    iget-object v4, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@48
    invoke-virtual {v4}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@4b
    move-result-object v4

    #@4c
    check-cast v4, Landroid/icu/impl/coll/CollationSettings;

    #@4e
    iget-wide v4, v4, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@50
    cmp-long v4, p1, v4

    #@52
    if-eqz v4, :cond_4

    #@54
    .line 872
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@57
    move-result-object v1

    #@58
    .line 873
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    add-int/lit16 v4, v0, -0x1000

    #@5a
    .line 874
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    #@5d
    move-result-object v5

    #@5e
    iget v5, v5, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@60
    .line 873
    invoke-virtual {v1, v4, v5}, Landroid/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    #@63
    .line 875
    iput-wide p1, v1, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@65
    .line 876
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@68
    .line 859
    .end local v0    # "group":I
    .end local v1    # "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    .end local v2    # "v":J
    :cond_4
    return-void
.end method

.method private final releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V
    .locals 1
    .param p1, "buffer"    # Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@0
    .prologue
    .line 1847
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1848
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    #@8
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    #@b
    .line 1846
    :cond_0
    return-void
.end method

.method private setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V
    .locals 2
    .param p1, "ownedSettings"    # Landroid/icu/impl/coll/CollationSettings;

    #@0
    .prologue
    .line 956
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@2
    iget-object v1, p1, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    #@4
    .line 955
    invoke-static {v0, p1, v1}, Landroid/icu/impl/coll/CollationFastLatin;->getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I

    #@7
    move-result v0

    #@8
    iput v0, p1, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    #@a
    .line 954
    return-void
.end method

.method private simpleKeyLengthEstimate(Ljava/lang/CharSequence;)I
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1168
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    mul-int/lit8 v0, v0, 0x2

    #@6
    add-int/lit8 v0, v0, 0xa

    #@8
    return v0
.end method

.method private writeIdenticalLevel(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "sink"    # Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1194
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@3
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@8
    move-result v1

    #@9
    const/4 v3, 0x0

    #@a
    invoke-virtual {v0, p1, v7, v1, v3}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    #@d
    move-result v2

    #@e
    .line 1195
    .local v2, "nfdQCYesLimit":I
    const/4 v0, 0x1

    #@f
    invoke-virtual {p2, v0}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->Append(I)V

    #@12
    .line 1197
    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->-get0(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    #@15
    move-result-object v0

    #@16
    invoke-virtual {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->NumberOfBytesAppended()I

    #@19
    move-result v1

    #@1a
    iput v1, v0, Landroid/icu/text/RawCollationKey;->size:I

    #@1c
    .line 1198
    const/4 v6, 0x0

    #@1d
    .line 1199
    .local v6, "prev":I
    if-eqz v2, :cond_0

    #@1f
    .line 1200
    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->-get0(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    #@22
    move-result-object v0

    #@23
    invoke-static {v6, p1, v7, v2, v0}, Landroid/icu/impl/coll/BOCSU;->writeIdenticalLevelRun(ILjava/lang/CharSequence;IILandroid/icu/util/ByteArrayWrapper;)I

    #@26
    move-result v6

    #@27
    .line 1203
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@2a
    move-result v0

    #@2b
    if-ge v2, v0, :cond_1

    #@2d
    .line 1204
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@30
    move-result v0

    #@31
    sub-int v5, v0, v2

    #@33
    .line 1205
    .local v5, "destLengthEstimate":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    .line 1206
    .local v4, "nfd":Ljava/lang/StringBuilder;
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@3a
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@3c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3f
    move-result v3

    #@40
    move-object v1, p1

    #@41
    invoke-virtual/range {v0 .. v5}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V

    #@44
    .line 1207
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@47
    move-result v0

    #@48
    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->-get0(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    #@4b
    move-result-object v1

    #@4c
    invoke-static {v6, v4, v7, v0, v1}, Landroid/icu/impl/coll/BOCSU;->writeIdenticalLevelRun(ILjava/lang/CharSequence;IILandroid/icu/util/ByteArrayWrapper;)I

    #@4f
    .line 1210
    .end local v4    # "nfd":Ljava/lang/StringBuilder;
    .end local v5    # "destLengthEstimate":I
    :cond_1
    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->-get0(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    #@52
    move-result-object v0

    #@53
    iget-object v0, v0, Landroid/icu/text/RawCollationKey;->bytes:[B

    #@55
    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->-get0(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    #@58
    move-result-object v1

    #@59
    iget v1, v1, Landroid/icu/text/RawCollationKey;->size:I

    #@5b
    invoke-virtual {p2, v0, v1}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->setBufferAndAppended([BI)V

    #@5e
    .line 1192
    return-void
.end method

.method private writeSortKey(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V
    .locals 9
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "sink"    # Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;
    .param p3, "buffer"    # Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v4, 0x1

    #@2
    .line 1172
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@a
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    #@d
    move-result v7

    #@e
    .line 1173
    .local v7, "numeric":Z
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@10
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@16
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    #@19
    move-result v0

    #@1a
    if-eqz v0, :cond_1

    #@1c
    .line 1174
    iget-object v0, p3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    #@1e
    invoke-virtual {v0, v7, p1, v8}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    #@21
    .line 1176
    iget-object v0, p3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    #@23
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@25
    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    #@27
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@29
    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@2c
    move-result-object v2

    #@2d
    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    #@2f
    .line 1178
    sget-object v5, Landroid/icu/impl/coll/CollationKeys;->SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    #@31
    move-object v3, p2

    #@32
    move v6, v4

    #@33
    .line 1175
    invoke-static/range {v0 .. v6}, Landroid/icu/impl/coll/CollationKeys;->writeSortKeyUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;[ZLandroid/icu/impl/coll/CollationSettings;Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;ILandroid/icu/impl/coll/CollationKeys$LevelCallback;Z)V

    #@36
    .line 1186
    :goto_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@38
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@3b
    move-result-object v0

    #@3c
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@3e
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getStrength()I

    #@41
    move-result v0

    #@42
    const/16 v1, 0xf

    #@44
    if-ne v0, v1, :cond_0

    #@46
    .line 1187
    invoke-direct {p0, p1, p2}, Landroid/icu/text/RuleBasedCollator;->writeIdenticalLevel(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)V

    #@49
    .line 1189
    :cond_0
    invoke-virtual {p2, v8}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->Append(I)V

    #@4c
    .line 1171
    return-void

    #@4d
    .line 1180
    :cond_1
    iget-object v0, p3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@4f
    invoke-virtual {v0, v7, p1, v8}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    #@52
    .line 1182
    iget-object v0, p3, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@54
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@56
    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    #@58
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@5a
    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@5d
    move-result-object v2

    #@5e
    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    #@60
    .line 1184
    sget-object v5, Landroid/icu/impl/coll/CollationKeys;->SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    #@62
    move-object v3, p2

    #@63
    move v6, v4

    #@64
    .line 1181
    invoke-static/range {v0 .. v6}, Landroid/icu/impl/coll/CollationKeys;->writeSortKeyUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;[ZLandroid/icu/impl/coll/CollationSettings;Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;ILandroid/icu/impl/coll/CollationKeys$LevelCallback;Z)V

    #@67
    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 261
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 262
    return-object p0

    #@7
    .line 264
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->cloneAsThawed()Landroid/icu/text/RuleBasedCollator;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public bridge synthetic cloneAsThawed()Landroid/icu/text/Collator;
    .locals 1

    #@0
    .prologue
    .line 347
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->cloneAsThawed()Landroid/icu/text/RuleBasedCollator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public cloneAsThawed()Landroid/icu/text/RuleBasedCollator;
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 349
    :try_start_0
    invoke-super {p0}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    #@4
    move-result-object v1

    #@5
    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    #@7
    .line 353
    .local v1, "result":Landroid/icu/text/RuleBasedCollator;
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@9
    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    #@c
    move-result-object v2

    #@d
    iput-object v2, v1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@f
    .line 354
    const/4 v2, 0x0

    #@10
    iput-object v2, v1, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@12
    .line 355
    const/4 v2, 0x0

    #@13
    iput-object v2, v1, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    .line 356
    return-object v1

    #@16
    .line 357
    .end local v1    # "result":Landroid/icu/text/RuleBasedCollator;
    :catch_0
    move-exception v0

    #@17
    .line 359
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    return-object v3
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1499
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RuleBasedCollator;->doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 11
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/16 v4, 0x17f

    #@2
    const/4 v3, 0x0

    #@3
    .line 1645
    if-ne p1, p2, :cond_0

    #@5
    .line 1646
    return v3

    #@6
    .line 1650
    :cond_0
    const/4 v5, 0x0

    #@7
    .line 1652
    .local v5, "equalPrefixLength":I
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@a
    move-result v0

    #@b
    if-ne v5, v0, :cond_1

    #@d
    .line 1653
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@10
    move-result v0

    #@11
    if-ne v5, v0, :cond_2

    #@13
    return v3

    #@14
    .line 1655
    :cond_1
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@17
    move-result v0

    #@18
    if-eq v5, v0, :cond_2

    #@1a
    .line 1656
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@1d
    move-result v0

    #@1e
    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@21
    move-result v1

    #@22
    if-eq v0, v1, :cond_a

    #@24
    .line 1662
    :cond_2
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@26
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@29
    move-result-object v10

    #@2a
    check-cast v10, Landroid/icu/impl/coll/CollationSettings;

    #@2c
    .line 1663
    .local v10, "roSettings":Landroid/icu/impl/coll/CollationSettings;
    invoke-virtual {v10}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    #@2f
    move-result v8

    #@30
    .line 1664
    .local v8, "numeric":Z
    if-lez v5, :cond_5

    #@32
    .line 1665
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@35
    move-result v0

    #@36
    if-eq v5, v0, :cond_3

    #@38
    .line 1666
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@3a
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@3d
    move-result v1

    #@3e
    invoke-virtual {v0, v1, v8}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    #@41
    move-result v0

    #@42
    .line 1665
    if-nez v0, :cond_4

    #@44
    .line 1667
    :cond_3
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@47
    move-result v0

    #@48
    if-eq v5, v0, :cond_5

    #@4a
    .line 1668
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@4c
    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@4f
    move-result v1

    #@50
    invoke-virtual {v0, v1, v8}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    #@53
    move-result v0

    #@54
    .line 1665
    if-eqz v0, :cond_5

    #@56
    .line 1670
    :cond_4
    add-int/lit8 v5, v5, -0x1

    #@58
    if-lez v5, :cond_5

    #@5a
    .line 1671
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@5c
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@5f
    move-result v1

    #@60
    invoke-virtual {v0, v1, v8}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    #@63
    move-result v0

    #@64
    .line 1670
    if-nez v0, :cond_4

    #@66
    .line 1683
    :cond_5
    iget v2, v10, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    #@68
    .line 1684
    .local v2, "fastLatinOptions":I
    if-ltz v2, :cond_b

    #@6a
    .line 1685
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@6d
    move-result v0

    #@6e
    if-eq v5, v0, :cond_6

    #@70
    .line 1686
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@73
    move-result v0

    #@74
    if-gt v0, v4, :cond_b

    #@76
    .line 1687
    :cond_6
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    #@79
    move-result v0

    #@7a
    if-eq v5, v0, :cond_7

    #@7c
    .line 1688
    invoke-interface {p2, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@7f
    move-result v0

    #@80
    if-gt v0, v4, :cond_b

    #@82
    .line 1689
    :cond_7
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@84
    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    #@86
    .line 1690
    iget-object v1, v10, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    #@88
    move-object v3, p1

    #@89
    move-object v4, p2

    #@8a
    .line 1689
    invoke-static/range {v0 .. v5}, Landroid/icu/impl/coll/CollationFastLatin;->compareUTF16([C[CILjava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    #@8d
    move-result v9

    #@8e
    .line 1697
    .local v9, "result":I
    :goto_1
    const/4 v0, -0x2

    #@8f
    if-ne v9, v0, :cond_8

    #@91
    .line 1698
    const/4 v6, 0x0

    #@92
    .line 1700
    .local v6, "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :try_start_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@95
    move-result-object v6

    #@96
    .line 1701
    .local v6, "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    invoke-virtual {v10}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    #@99
    move-result v0

    #@9a
    if-eqz v0, :cond_c

    #@9c
    .line 1702
    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    #@9e
    invoke-virtual {v0, v8, p1, v5}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    #@a1
    .line 1703
    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    #@a3
    invoke-virtual {v0, v8, p2, v5}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    #@a6
    .line 1705
    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    #@a8
    iget-object v1, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    #@aa
    .line 1704
    invoke-static {v0, v1, v10}, Landroid/icu/impl/coll/CollationCompare;->compareUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationSettings;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@ad
    move-result v9

    #@ae
    .line 1713
    :goto_2
    invoke-direct {p0, v6}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    #@b1
    .line 1716
    .end local v6    # "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :cond_8
    if-nez v9, :cond_9

    #@b3
    invoke-virtual {v10}, Landroid/icu/impl/coll/CollationSettings;->getStrength()I

    #@b6
    move-result v0

    #@b7
    const/16 v1, 0xf

    #@b9
    if-ge v0, v1, :cond_d

    #@bb
    .line 1717
    :cond_9
    return v9

    #@bc
    .line 1659
    .end local v2    # "fastLatinOptions":I
    .end local v8    # "numeric":Z
    .end local v9    # "result":I
    .end local v10    # "roSettings":Landroid/icu/impl/coll/CollationSettings;
    :cond_a
    add-int/lit8 v5, v5, 0x1

    #@be
    goto/16 :goto_0

    #@c0
    .line 1694
    .restart local v2    # "fastLatinOptions":I
    .restart local v8    # "numeric":Z
    .restart local v10    # "roSettings":Landroid/icu/impl/coll/CollationSettings;
    :cond_b
    const/4 v9, -0x2

    #@c1
    .restart local v9    # "result":I
    goto :goto_1

    #@c2
    .line 1707
    .restart local v6    # "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :cond_c
    :try_start_1
    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@c4
    invoke-virtual {v0, v8, p1, v5}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    #@c7
    .line 1708
    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@c9
    invoke-virtual {v0, v8, p2, v5}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    #@cc
    .line 1710
    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@ce
    iget-object v1, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@d0
    .line 1709
    invoke-static {v0, v1, v10}, Landroid/icu/impl/coll/CollationCompare;->compareUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationSettings;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@d3
    move-result v9

    #@d4
    goto :goto_2

    #@d5
    .line 1712
    .end local v6    # "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :catchall_0
    move-exception v0

    #@d6
    .line 1713
    invoke-direct {p0, v6}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    #@d9
    .line 1712
    throw v0

    #@da
    .line 1720
    :cond_d
    const/4 v6, 0x0

    #@db
    .line 1722
    .local v6, "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :try_start_2
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@de
    move-result-object v6

    #@df
    .line 1724
    .local v6, "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@e1
    iget-object v7, v0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    #@e3
    .line 1725
    .local v7, "nfcImpl":Landroid/icu/impl/Normalizer2Impl;
    invoke-virtual {v10}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    #@e6
    move-result v0

    #@e7
    if-eqz v0, :cond_e

    #@e9
    .line 1726
    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    #@eb
    invoke-virtual {v0, p1, v5}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->setText(Ljava/lang/CharSequence;I)V

    #@ee
    .line 1727
    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    #@f0
    invoke-virtual {v0, p2, v5}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->setText(Ljava/lang/CharSequence;I)V

    #@f3
    .line 1728
    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    #@f5
    iget-object v1, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    #@f7
    invoke-static {v7, v0, v1}, Landroid/icu/text/RuleBasedCollator;->compareNFDIter(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/text/RuleBasedCollator$NFDIterator;Landroid/icu/text/RuleBasedCollator$NFDIterator;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@fa
    move-result v0

    #@fb
    .line 1735
    invoke-direct {p0, v6}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    #@fe
    .line 1728
    return v0

    #@ff
    .line 1730
    :cond_e
    :try_start_3
    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    #@101
    invoke-virtual {v0, v7, p1, v5}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->setText(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V

    #@104
    .line 1731
    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    #@106
    invoke-virtual {v0, v7, p2, v5}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->setText(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V

    #@109
    .line 1732
    iget-object v0, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    #@10b
    iget-object v1, v6, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    #@10d
    invoke-static {v7, v0, v1}, Landroid/icu/text/RuleBasedCollator;->compareNFDIter(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/text/RuleBasedCollator$NFDIterator;Landroid/icu/text/RuleBasedCollator$NFDIterator;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@110
    move-result v0

    #@111
    .line 1735
    invoke-direct {p0, v6}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    #@114
    .line 1732
    return v0

    #@115
    .line 1734
    .end local v6    # "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    .end local v7    # "nfcImpl":Landroid/icu/impl/Normalizer2Impl;
    :catchall_1
    move-exception v0

    #@116
    .line 1735
    invoke-direct {p0, v6}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    #@119
    .line 1734
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 1419
    if-ne p0, p1, :cond_0

    #@4
    .line 1420
    return v6

    #@5
    .line 1422
    :cond_0
    invoke-super {p0, p1}, Landroid/icu/text/Collator;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v5

    #@9
    if-nez v5, :cond_1

    #@b
    .line 1423
    return v7

    #@c
    :cond_1
    move-object v0, p1

    #@d
    .line 1425
    check-cast v0, Landroid/icu/text/RuleBasedCollator;

    #@f
    .line 1426
    .local v0, "o":Landroid/icu/text/RuleBasedCollator;
    iget-object v5, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@11
    invoke-virtual {v5}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@14
    move-result-object v5

    #@15
    check-cast v5, Landroid/icu/impl/coll/CollationSettings;

    #@17
    iget-object v8, v0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@19
    invoke-virtual {v8}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@1c
    move-result-object v8

    #@1d
    invoke-virtual {v5, v8}, Landroid/icu/impl/coll/CollationSettings;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v5

    #@21
    if-nez v5, :cond_2

    #@23
    return v7

    #@24
    .line 1427
    :cond_2
    iget-object v5, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@26
    iget-object v8, v0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@28
    if-ne v5, v8, :cond_3

    #@2a
    return v6

    #@2b
    .line 1428
    :cond_3
    iget-object v5, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@2d
    iget-object v5, v5, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@2f
    if-nez v5, :cond_4

    #@31
    const/4 v3, 0x1

    #@32
    .line 1429
    .local v3, "thisIsRoot":Z
    :goto_0
    iget-object v5, v0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@34
    iget-object v5, v5, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@36
    if-nez v5, :cond_5

    #@38
    const/4 v1, 0x1

    #@39
    .line 1430
    .local v1, "otherIsRoot":Z
    :goto_1
    sget-boolean v5, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    #@3b
    if-nez v5, :cond_7

    #@3d
    if-eqz v3, :cond_6

    #@3f
    if-eqz v1, :cond_6

    #@41
    move v5, v7

    #@42
    :goto_2
    if-nez v5, :cond_7

    #@44
    new-instance v5, Ljava/lang/AssertionError;

    #@46
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@49
    throw v5

    #@4a
    .line 1428
    .end local v1    # "otherIsRoot":Z
    .end local v3    # "thisIsRoot":Z
    :cond_4
    const/4 v3, 0x0

    #@4b
    .restart local v3    # "thisIsRoot":Z
    goto :goto_0

    #@4c
    .line 1429
    :cond_5
    const/4 v1, 0x0

    #@4d
    .restart local v1    # "otherIsRoot":Z
    goto :goto_1

    #@4e
    :cond_6
    move v5, v6

    #@4f
    .line 1430
    goto :goto_2

    #@50
    .line 1431
    :cond_7
    if-eq v3, v1, :cond_8

    #@52
    return v7

    #@53
    .line 1432
    :cond_8
    if-nez v3, :cond_9

    #@55
    iget-object v5, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@57
    iget-object v5, v5, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    #@59
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@5c
    move-result v5

    #@5d
    if-eqz v5, :cond_b

    #@5f
    .line 1433
    :cond_9
    if-nez v1, :cond_a

    #@61
    iget-object v5, v0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@63
    iget-object v5, v5, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    #@65
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@68
    move-result v5

    #@69
    if-eqz v5, :cond_b

    #@6b
    .line 1435
    :cond_a
    iget-object v5, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@6d
    iget-object v5, v5, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    #@6f
    iget-object v8, v0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@71
    iget-object v8, v8, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    #@73
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v5

    #@77
    if-eqz v5, :cond_b

    #@79
    return v6

    #@7a
    .line 1440
    :cond_b
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getTailoredSet()Landroid/icu/text/UnicodeSet;

    #@7d
    move-result-object v4

    #@7e
    .line 1441
    .local v4, "thisTailored":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator;->getTailoredSet()Landroid/icu/text/UnicodeSet;

    #@81
    move-result-object v2

    #@82
    .line 1442
    .local v2, "otherTailored":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v4, v2}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    #@85
    move-result v5

    #@86
    if-nez v5, :cond_c

    #@88
    return v7

    #@89
    .line 1448
    :cond_c
    return v6
.end method

.method public freeze()Landroid/icu/text/Collator;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 333
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 334
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    #@9
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    #@c
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    #@e
    .line 335
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@10
    if-nez v0, :cond_0

    #@12
    .line 336
    new-instance v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@14
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@16
    invoke-direct {v0, v1, v2}, Landroid/icu/text/RuleBasedCollator$CollationBuffer;-><init>(Landroid/icu/impl/coll/CollationData;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    #@19
    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@1b
    .line 339
    :cond_0
    return-object p0
.end method

.method public getCollationElementIterator(Landroid/icu/text/UCharacterIterator;)Landroid/icu/text/CollationElementIterator;
    .locals 1
    .param p1, "source"    # Landroid/icu/text/UCharacterIterator;

    #@0
    .prologue
    .line 307
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->initMaxExpansions()V

    #@3
    .line 308
    new-instance v0, Landroid/icu/text/CollationElementIterator;

    #@5
    invoke-direct {v0, p1, p0}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/UCharacterIterator;Landroid/icu/text/RuleBasedCollator;)V

    #@8
    return-object v0
.end method

.method public getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    .line 282
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->initMaxExpansions()V

    #@3
    .line 283
    new-instance v0, Landroid/icu/text/CollationElementIterator;

    #@5
    invoke-direct {v0, p1, p0}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    #@8
    return-object v0
.end method

.method public getCollationElementIterator(Ljava/text/CharacterIterator;)Landroid/icu/text/CollationElementIterator;
    .locals 2
    .param p1, "source"    # Ljava/text/CharacterIterator;

    #@0
    .prologue
    .line 294
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->initMaxExpansions()V

    #@3
    .line 295
    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Ljava/text/CharacterIterator;

    #@9
    .line 296
    .local v0, "newsource":Ljava/text/CharacterIterator;
    new-instance v1, Landroid/icu/text/CollationElementIterator;

    #@b
    invoke-direct {v1, v0, p0}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V

    #@e
    return-object v1
.end method

.method public getCollationKey(Ljava/lang/String;)Landroid/icu/text/CollationKey;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1074
    if-nez p1, :cond_0

    #@3
    .line 1075
    return-object v1

    #@4
    .line 1077
    :cond_0
    const/4 v0, 0x0

    #@5
    .line 1079
    .local v0, "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :try_start_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@8
    move-result-object v0

    #@9
    .line 1080
    .local v0, "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    invoke-direct {p0, p1, v0}, Landroid/icu/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/CollationKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v1

    #@d
    .line 1082
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    #@10
    .line 1080
    return-object v1

    #@11
    .line 1081
    .end local v0    # "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :catchall_0
    move-exception v1

    #@12
    .line 1082
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    #@15
    .line 1081
    throw v1
.end method

.method public getContractionsAndExpansions(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Z)V
    .locals 2
    .param p1, "contractions"    # Landroid/icu/text/UnicodeSet;
    .param p2, "expansions"    # Landroid/icu/text/UnicodeSet;
    .param p3, "addPrefixes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1029
    if-eqz p1, :cond_0

    #@3
    .line 1030
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@6
    .line 1032
    :cond_0
    if-eqz p2, :cond_1

    #@8
    .line 1033
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    #@b
    .line 1035
    :cond_1
    new-instance v0, Landroid/icu/impl/coll/ContractionsAndExpansions;

    #@d
    invoke-direct {v0, p1, p2, v1, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    #@10
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@12
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/ContractionsAndExpansions;->forData(Landroid/icu/impl/coll/CollationData;)V

    #@15
    .line 1028
    return-void
.end method

.method public getDecomposition()I
    .locals 1

    #@0
    .prologue
    .line 1280
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@8
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@a
    and-int/lit8 v0, v0, 0x1

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 1281
    const/16 v0, 0x11

    #@10
    .line 1280
    :goto_0
    return v0

    #@11
    .line 1281
    :cond_0
    const/16 v0, 0x10

    #@13
    goto :goto_0
.end method

.method public getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 3
    .param p1, "type"    # Landroid/icu/util/ULocale$Type;

    #@0
    .prologue
    .line 1859
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 1860
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    #@a
    :goto_0
    return-object v0

    #@b
    :cond_0
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@d
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    #@f
    goto :goto_0

    #@10
    .line 1861
    :cond_1
    sget-object v0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@12
    if-ne p1, v0, :cond_2

    #@14
    .line 1862
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    #@16
    return-object v0

    #@17
    .line 1864
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v2, "unknown ULocale.Type "

    #@21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@30
    throw v0
.end method

.method public getMaxVariable()I
    .locals 1

    #@0
    .prologue
    .line 787
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@8
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    #@b
    move-result v0

    #@c
    add-int/lit16 v0, v0, 0x1000

    #@e
    return v0
.end method

.method public getNumericCollation()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1394
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@3
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@9
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@b
    and-int/lit8 v0, v0, 0x2

    #@d
    if-eqz v0, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    move v0, v1

    #@12
    goto :goto_0
.end method

.method public getRawCollationKey(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)Landroid/icu/text/RawCollationKey;
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/icu/text/RawCollationKey;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1107
    if-nez p1, :cond_0

    #@3
    .line 1108
    return-object v1

    #@4
    .line 1110
    :cond_0
    const/4 v0, 0x0

    #@5
    .line 1112
    .local v0, "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :try_start_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@8
    move-result-object v0

    #@9
    .line 1113
    .local v0, "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedCollator;->getRawCollationKey(Ljava/lang/CharSequence;Landroid/icu/text/RawCollationKey;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/RawCollationKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result-object v1

    #@d
    .line 1115
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    #@10
    .line 1113
    return-object v1

    #@11
    .line 1114
    .end local v0    # "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :catchall_0
    move-exception v1

    #@12
    .line 1115
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    #@15
    .line 1114
    throw v1
.end method

.method public getReorderCodes()[I
    .locals 1

    #@0
    .prologue
    .line 1408
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@8
    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@a
    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [I

    #@10
    return-object v0
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 970
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@2
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    #@4
    return-object v0
.end method

.method public getRules(Z)Ljava/lang/String;
    .locals 2
    .param p1, "fullrules"    # Z

    #@0
    .prologue
    .line 992
    if-nez p1, :cond_0

    #@2
    .line 993
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@4
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    #@6
    return-object v0

    #@7
    .line 995
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    invoke-static {}, Landroid/icu/impl/coll/CollationLoader;->getRootRules()Ljava/lang/String;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@16
    iget-object v1, v1, Landroid/icu/impl/coll/CollationTailoring;->rules:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v0

    #@1c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v0

    #@20
    return-object v0
.end method

.method public getStrength()I
    .locals 1

    #@0
    .prologue
    .line 1263
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@8
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getStrength()I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getTailoredSet()Landroid/icu/text/UnicodeSet;
    .locals 3

    #@0
    .prologue
    .line 1007
    new-instance v0, Landroid/icu/text/UnicodeSet;

    #@2
    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    #@5
    .line 1008
    .local v0, "tailored":Landroid/icu/text/UnicodeSet;
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@7
    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 1009
    new-instance v1, Landroid/icu/impl/coll/TailoredSet;

    #@d
    invoke-direct {v1, v0}, Landroid/icu/impl/coll/TailoredSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@10
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@12
    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/TailoredSet;->forData(Landroid/icu/impl/coll/CollationData;)V

    #@15
    .line 1011
    :cond_0
    return-object v0
.end method

.method public getUCAVersion()Landroid/icu/util/VersionInfo;
    .locals 5

    #@0
    .prologue
    .line 1824
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getVersion()Landroid/icu/util/VersionInfo;

    #@3
    move-result-object v0

    #@4
    .line 1832
    .local v0, "v":Landroid/icu/util/VersionInfo;
    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMinor()I

    #@7
    move-result v1

    #@8
    shr-int/lit8 v1, v1, 0x3

    #@a
    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMinor()I

    #@d
    move-result v2

    #@e
    and-int/lit8 v2, v2, 0x7

    #@10
    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMilli()I

    #@13
    move-result v3

    #@14
    shr-int/lit8 v3, v3, 0x6

    #@16
    const/4 v4, 0x0

    #@17
    invoke-static {v1, v2, v3, v4}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public getVariableTop()I
    .locals 2

    #@0
    .prologue
    .line 1381
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@8
    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@a
    long-to-int v0, v0

    #@b
    return v0
.end method

.method public getVersion()Landroid/icu/util/VersionInfo;
    .locals 6

    #@0
    .prologue
    .line 1809
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@2
    iget v1, v2, Landroid/icu/impl/coll/CollationTailoring;->version:I

    #@4
    .line 1810
    .local v1, "version":I
    sget-object v2, Landroid/icu/util/VersionInfo;->UCOL_RUNTIME_VERSION:Landroid/icu/util/VersionInfo;

    #@6
    invoke-virtual {v2}, Landroid/icu/util/VersionInfo;->getMajor()I

    #@9
    move-result v0

    #@a
    .line 1812
    .local v0, "rtVersion":I
    ushr-int/lit8 v2, v1, 0x18

    #@c
    shl-int/lit8 v3, v0, 0x4

    #@e
    add-int/2addr v2, v3

    #@f
    shr-int/lit8 v3, v0, 0x4

    #@11
    add-int/2addr v2, v3

    #@12
    .line 1813
    shr-int/lit8 v3, v1, 0x10

    #@14
    and-int/lit16 v3, v3, 0xff

    #@16
    shr-int/lit8 v4, v1, 0x8

    #@18
    and-int/lit16 v4, v4, 0xff

    #@1a
    and-int/lit16 v5, v1, 0xff

    #@1c
    .line 1811
    invoke-static {v2, v3, v4, v5}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    #@1f
    move-result-object v2

    #@20
    return-object v2
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    .line 1459
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@2
    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@5
    move-result-object v3

    #@6
    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    #@8
    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationSettings;->hashCode()I

    #@b
    move-result v0

    #@c
    .line 1460
    .local v0, "h":I
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@e
    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    #@10
    if-nez v3, :cond_0

    #@12
    return v0

    #@13
    .line 1462
    :cond_0
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getTailoredSet()Landroid/icu/text/UnicodeSet;

    #@16
    move-result-object v2

    #@17
    .line 1463
    .local v2, "set":Landroid/icu/text/UnicodeSet;
    new-instance v1, Landroid/icu/text/UnicodeSetIterator;

    #@19
    invoke-direct {v1, v2}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    #@1c
    .line 1464
    .local v1, "iter":Landroid/icu/text/UnicodeSetIterator;
    :goto_0
    invoke-virtual {v1}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    #@1f
    move-result v3

    #@20
    if-eqz v3, :cond_1

    #@22
    iget v3, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@24
    sget v4, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    #@26
    if-eq v3, v4, :cond_1

    #@28
    .line 1465
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@2a
    iget v4, v1, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    #@2c
    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    #@2f
    move-result v3

    #@30
    xor-int/2addr v0, v3

    #@31
    goto :goto_0

    #@32
    .line 1467
    :cond_1
    return v0
.end method

.method internalAddContractions(ILandroid/icu/text/UnicodeSet;)V
    .locals 3
    .param p1, "c"    # I
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1045
    new-instance v0, Landroid/icu/impl/coll/ContractionsAndExpansions;

    #@3
    const/4 v1, 0x0

    #@4
    invoke-direct {v0, p2, v2, v2, v1}, Landroid/icu/impl/coll/ContractionsAndExpansions;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    #@7
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@9
    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/ContractionsAndExpansions;->forCodePoint(Landroid/icu/impl/coll/CollationData;I)V

    #@c
    .line 1044
    return-void
.end method

.method public internalGetCEs(Ljava/lang/CharSequence;)[J
    .locals 12
    .param p1, "str"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1221
    const/4 v0, 0x0

    #@2
    .line 1223
    .local v0, "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :try_start_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    #@5
    move-result-object v0

    #@6
    .line 1224
    .local v0, "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    iget-object v5, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@8
    invoke-virtual {v5}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@b
    move-result-object v5

    #@c
    check-cast v5, Landroid/icu/impl/coll/CollationSettings;

    #@e
    invoke-virtual {v5}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    #@11
    move-result v4

    #@12
    .line 1226
    .local v4, "numeric":Z
    iget-object v5, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@14
    invoke-virtual {v5}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@17
    move-result-object v5

    #@18
    check-cast v5, Landroid/icu/impl/coll/CollationSettings;

    #@1a
    invoke-virtual {v5}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_0

    #@20
    .line 1227
    iget-object v5, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    #@22
    const/4 v7, 0x0

    #@23
    invoke-virtual {v5, v4, p1, v7}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    #@26
    .line 1228
    iget-object v2, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    #@28
    .line 1233
    .local v2, "iter":Landroid/icu/impl/coll/CollationIterator;
    :goto_0
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationIterator;->fetchCEs()I

    #@2b
    move-result v5

    #@2c
    add-int/lit8 v3, v5, -0x1

    #@2e
    .line 1234
    .local v3, "length":I
    sget-boolean v5, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    #@30
    if-nez v5, :cond_2

    #@32
    if-ltz v3, :cond_1

    #@34
    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationIterator;->getCE(I)J

    #@37
    move-result-wide v8

    #@38
    const-wide v10, 0x101000100L

    #@3d
    cmp-long v5, v8, v10

    #@3f
    if-nez v5, :cond_1

    #@41
    const/4 v5, 0x1

    #@42
    :goto_1
    if-nez v5, :cond_2

    #@44
    new-instance v5, Ljava/lang/AssertionError;

    #@46
    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    #@49
    throw v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4a
    .line 1238
    .end local v0    # "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    .end local v2    # "iter":Landroid/icu/impl/coll/CollationIterator;
    .end local v3    # "length":I
    .end local v4    # "numeric":Z
    :catchall_0
    move-exception v5

    #@4b
    .line 1239
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    #@4e
    .line 1238
    throw v5

    #@4f
    .line 1230
    .restart local v0    # "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    .restart local v4    # "numeric":Z
    :cond_0
    :try_start_1
    iget-object v5, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@51
    const/4 v7, 0x0

    #@52
    invoke-virtual {v5, v4, p1, v7}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    #@55
    .line 1231
    iget-object v2, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@57
    .restart local v2    # "iter":Landroid/icu/impl/coll/CollationIterator;
    goto :goto_0

    #@58
    .restart local v3    # "length":I
    :cond_1
    move v5, v6

    #@59
    .line 1234
    goto :goto_1

    #@5a
    .line 1235
    :cond_2
    new-array v1, v3, [J

    #@5c
    .line 1236
    .local v1, "ces":[J
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationIterator;->getCEs()[J

    #@5f
    move-result-object v5

    #@60
    const/4 v6, 0x0

    #@61
    const/4 v7, 0x0

    #@62
    invoke-static {v5, v6, v1, v7, v3}, Ljava/lang/System;->arraycopy([JI[JII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@65
    .line 1239
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    #@68
    .line 1237
    return-object v1
.end method

.method public isAlternateHandlingShifted()Z
    .locals 1

    #@0
    .prologue
    .line 1326
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@8
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getAlternateHandling()Z

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public isCaseLevel()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1339
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@3
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@9
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@b
    and-int/lit16 v0, v0, 0x400

    #@d
    if-eqz v0, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    move v0, v1

    #@12
    goto :goto_0
.end method

.method public isFrenchCollation()Z
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1351
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@3
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@9
    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@b
    and-int/lit16 v0, v0, 0x800

    #@d
    if-eqz v0, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :goto_0
    return v0

    #@11
    :cond_0
    move v0, v1

    #@12
    goto :goto_0
.end method

.method public isFrozen()Z
    .locals 1

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isHiraganaQuaternary()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1369
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isLowerCaseFirst()Z
    .locals 2

    #@0
    .prologue
    .line 1311
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@8
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getCaseFirst()I

    #@b
    move-result v0

    #@c
    const/16 v1, 0x200

    #@e
    if-ne v0, v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method final isUnsafe(I)Z
    .locals 2
    .param p1, "c"    # I

    #@0
    .prologue
    .line 1768
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@2
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@a
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    #@d
    move-result v0

    #@e
    invoke-virtual {v1, p1, v0}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public isUpperCaseFirst()Z
    .locals 2

    #@0
    .prologue
    .line 1296
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    #@8
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getCaseFirst()I

    #@b
    move-result v0

    #@c
    const/16 v1, 0x300

    #@e
    if-ne v0, v1, :cond_0

    #@10
    const/4 v0, 0x1

    #@11
    :goto_0
    return v0

    #@12
    :cond_0
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method public setAlternateHandlingDefault()V
    .locals 3

    #@0
    .prologue
    .line 490
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 491
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    #@6
    move-result-object v0

    #@7
    .line 492
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@9
    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@c
    move-result-object v2

    #@d
    if-ne v2, v0, :cond_0

    #@f
    return-void

    #@10
    .line 493
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@13
    move-result-object v1

    #@14
    .line 494
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@16
    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setAlternateHandlingDefault(I)V

    #@19
    .line 495
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@1c
    .line 489
    return-void
.end method

.method public setAlternateHandlingShifted(Z)V
    .locals 2
    .param p1, "shifted"    # Z

    #@0
    .prologue
    .line 618
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 619
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    #@6
    move-result v1

    #@7
    if-ne p1, v1, :cond_0

    #@9
    return-void

    #@a
    .line 620
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@d
    move-result-object v0

    #@e
    .line 621
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationSettings;->setAlternateHandlingShifted(Z)V

    #@11
    .line 622
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@14
    .line 617
    return-void
.end method

.method public final setCaseFirstDefault()V
    .locals 3

    #@0
    .prologue
    .line 473
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 474
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    #@6
    move-result-object v0

    #@7
    .line 475
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@9
    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@c
    move-result-object v2

    #@d
    if-ne v2, v0, :cond_0

    #@f
    return-void

    #@10
    .line 476
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@13
    move-result-object v1

    #@14
    .line 477
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@16
    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirstDefault(I)V

    #@19
    .line 478
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@1c
    .line 472
    return-void
.end method

.method public setCaseLevel(Z)V
    .locals 2
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 646
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 647
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isCaseLevel()Z

    #@6
    move-result v1

    #@7
    if-ne p1, v1, :cond_0

    #@9
    return-void

    #@a
    .line 648
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@d
    move-result-object v0

    #@e
    .line 649
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    const/16 v1, 0x400

    #@10
    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    #@13
    .line 650
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@16
    .line 645
    return-void
.end method

.method public setCaseLevelDefault()V
    .locals 4

    #@0
    .prologue
    .line 507
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 508
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    #@6
    move-result-object v0

    #@7
    .line 509
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@9
    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@c
    move-result-object v2

    #@d
    if-ne v2, v0, :cond_0

    #@f
    return-void

    #@10
    .line 510
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@13
    move-result-object v1

    #@14
    .line 511
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@16
    const/16 v3, 0x400

    #@18
    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    #@1b
    .line 512
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@1e
    .line 506
    return-void
.end method

.method public setDecomposition(I)V
    .locals 4
    .param p1, "decomposition"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 686
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@4
    .line 688
    packed-switch p1, :pswitch_data_0

    #@7
    .line 696
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v3, "Wrong decomposition mode."

    #@c
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v2

    #@10
    .line 690
    :pswitch_0
    const/4 v0, 0x0

    #@11
    .line 698
    .local v0, "flag":Z
    :goto_0
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@13
    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@16
    move-result-object v2

    #@17
    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    #@19
    invoke-virtual {v2, v3}, Landroid/icu/impl/coll/CollationSettings;->getFlag(I)Z

    #@1c
    move-result v2

    #@1d
    if-ne v0, v2, :cond_0

    #@1f
    return-void

    #@20
    .line 693
    .end local v0    # "flag":Z
    :pswitch_1
    const/4 v0, 0x1

    #@21
    .line 694
    .restart local v0    # "flag":Z
    goto :goto_0

    #@22
    .line 699
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@25
    move-result-object v1

    #@26
    .line 700
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    invoke-virtual {v1, v3, v0}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    #@29
    .line 701
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@2c
    .line 684
    return-void

    #@2d
    .line 688
    nop

    #@2e
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDecompositionDefault()V
    .locals 4

    #@0
    .prologue
    .line 524
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 525
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    #@6
    move-result-object v0

    #@7
    .line 526
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@9
    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@c
    move-result-object v2

    #@d
    if-ne v2, v0, :cond_0

    #@f
    return-void

    #@10
    .line 527
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@13
    move-result-object v1

    #@14
    .line 528
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@16
    const/4 v3, 0x1

    #@17
    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    #@1a
    .line 529
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@1d
    .line 523
    return-void
.end method

.method public setFrenchCollation(Z)V
    .locals 2
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 595
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 596
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrenchCollation()Z

    #@6
    move-result v1

    #@7
    if-ne p1, v1, :cond_0

    #@9
    return-void

    #@a
    .line 597
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@d
    move-result-object v0

    #@e
    .line 598
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    const/16 v1, 0x800

    #@10
    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    #@13
    .line 599
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@16
    .line 594
    return-void
.end method

.method public setFrenchCollationDefault()V
    .locals 4

    #@0
    .prologue
    .line 541
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 542
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    #@6
    move-result-object v0

    #@7
    .line 543
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@9
    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@c
    move-result-object v2

    #@d
    if-ne v2, v0, :cond_0

    #@f
    return-void

    #@10
    .line 544
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@13
    move-result-object v1

    #@14
    .line 545
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@16
    const/16 v3, 0x800

    #@18
    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    #@1b
    .line 546
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@1e
    .line 540
    return-void
.end method

.method public setHiraganaQuaternary(Z)V
    .locals 0
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 397
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 396
    return-void
.end method

.method public setHiraganaQuaternaryDefault()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 415
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 414
    return-void
.end method

.method setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 4
    .param p1, "valid"    # Landroid/icu/util/ULocale;
    .param p2, "actual"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1876
    sget-boolean v0, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    #@4
    if-nez v0, :cond_3

    #@6
    if-nez p1, :cond_0

    #@8
    move v3, v1

    #@9
    :goto_0
    if-nez p2, :cond_1

    #@b
    move v0, v1

    #@c
    :goto_1
    if-ne v3, v0, :cond_2

    #@e
    move v0, v1

    #@f
    :goto_2
    if-nez v0, :cond_3

    #@11
    new-instance v0, Ljava/lang/AssertionError;

    #@13
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@16
    throw v0

    #@17
    :cond_0
    move v3, v2

    #@18
    goto :goto_0

    #@19
    :cond_1
    move v0, v2

    #@1a
    goto :goto_1

    #@1b
    :cond_2
    move v0, v2

    #@1c
    goto :goto_2

    #@1d
    .line 1880
    :cond_3
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    #@1f
    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    #@21
    invoke-static {p2, v0}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@24
    move-result v0

    #@25
    if-eqz v0, :cond_4

    #@27
    .line 1881
    iput-boolean v2, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    #@29
    .line 1888
    :goto_3
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    #@2b
    .line 1872
    return-void

    #@2c
    .line 1883
    :cond_4
    sget-boolean v0, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    #@2e
    if-nez v0, :cond_5

    #@30
    invoke-static {p2, p1}, Landroid/icu/impl/Utility;->objectEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@33
    move-result v0

    #@34
    if-nez v0, :cond_5

    #@36
    new-instance v0, Ljava/lang/AssertionError;

    #@38
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@3b
    throw v0

    #@3c
    .line 1884
    :cond_5
    iput-boolean v1, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    #@3e
    goto :goto_3
.end method

.method public setLowerCaseFirst(Z)V
    .locals 2
    .param p1, "lowerfirst"    # Z

    #@0
    .prologue
    .line 455
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 456
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isLowerCaseFirst()Z

    #@6
    move-result v1

    #@7
    if-ne p1, v1, :cond_0

    #@9
    return-void

    #@a
    .line 457
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@d
    move-result-object v0

    #@e
    .line 458
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    if-eqz p1, :cond_1

    #@10
    const/16 v1, 0x200

    #@12
    :goto_0
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    #@15
    .line 459
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@18
    .line 454
    return-void

    #@19
    .line 458
    :cond_1
    const/4 v1, 0x0

    #@1a
    goto :goto_0
.end method

.method public bridge synthetic setMaxVariable(I)Landroid/icu/text/Collator;
    .locals 1
    .param p1, "group"    # I

    #@0
    .prologue
    .line 745
    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedCollator;->setMaxVariable(I)Landroid/icu/text/RuleBasedCollator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public setMaxVariable(I)Landroid/icu/text/RuleBasedCollator;
    .locals 10
    .param p1, "group"    # I

    #@0
    .prologue
    const/16 v6, 0x1000

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v8, -0x1

    #@4
    .line 748
    if-ne p1, v8, :cond_0

    #@6
    .line 749
    const/4 v3, -0x1

    #@7
    .line 755
    .local v3, "value":I
    :goto_0
    iget-object v6, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@9
    invoke-virtual {v6}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@c
    move-result-object v6

    #@d
    check-cast v6, Landroid/icu/impl/coll/CollationSettings;

    #@f
    invoke-virtual {v6}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    #@12
    move-result v1

    #@13
    .line 756
    .local v1, "oldValue":I
    if-ne v3, v1, :cond_2

    #@15
    .line 757
    return-object p0

    #@16
    .line 750
    .end local v1    # "oldValue":I
    .end local v3    # "value":I
    :cond_0
    if-gt v6, p1, :cond_1

    #@18
    const/16 v6, 0x1003

    #@1a
    if-gt p1, v6, :cond_1

    #@1c
    .line 751
    add-int/lit16 v3, p1, -0x1000

    #@1e
    .line 750
    .restart local v3    # "value":I
    goto :goto_0

    #@1f
    .line 753
    .end local v3    # "value":I
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@21
    new-instance v7, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v8, "illegal max variable group "

    #@29
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v7

    #@31
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v7

    #@35
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v6

    #@39
    .line 759
    .restart local v1    # "oldValue":I
    .restart local v3    # "value":I
    :cond_2
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    #@3c
    move-result-object v0

    #@3d
    .line 760
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v6, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@3f
    invoke-virtual {v6}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@42
    move-result-object v6

    #@43
    if-ne v6, v0, :cond_3

    #@45
    .line 761
    if-gez v3, :cond_3

    #@47
    .line 762
    return-object p0

    #@48
    .line 765
    :cond_3
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@4b
    move-result-object v2

    #@4c
    .line 767
    .local v2, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    if-ne p1, v8, :cond_4

    #@4e
    .line 768
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    #@51
    move-result v6

    #@52
    add-int/lit16 p1, v6, 0x1000

    #@54
    .line 770
    :cond_4
    iget-object v6, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@56
    invoke-virtual {v6, p1}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    #@59
    move-result-wide v4

    #@5a
    .line 771
    .local v4, "varTop":J
    sget-boolean v6, Landroid/icu/text/RuleBasedCollator;->-assertionsDisabled:Z

    #@5c
    if-nez v6, :cond_6

    #@5e
    const-wide/16 v8, 0x0

    #@60
    cmp-long v6, v4, v8

    #@62
    if-eqz v6, :cond_5

    #@64
    const/4 v6, 0x1

    #@65
    :goto_1
    if-nez v6, :cond_6

    #@67
    new-instance v6, Ljava/lang/AssertionError;

    #@69
    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    #@6c
    throw v6

    #@6d
    :cond_5
    move v6, v7

    #@6e
    goto :goto_1

    #@6f
    .line 772
    :cond_6
    iget v6, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@71
    invoke-virtual {v2, v3, v6}, Landroid/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    #@74
    .line 773
    iput-wide v4, v2, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@76
    .line 774
    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@79
    .line 775
    return-object p0
.end method

.method public setNumericCollation(Z)V
    .locals 2
    .param p1, "flag"    # Z

    #@0
    .prologue
    .line 904
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 906
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getNumericCollation()Z

    #@6
    move-result v1

    #@7
    if-ne p1, v1, :cond_0

    #@9
    return-void

    #@a
    .line 907
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@d
    move-result-object v0

    #@e
    .line 908
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    const/4 v1, 0x2

    #@f
    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    #@12
    .line 909
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@15
    .line 903
    return-void
.end method

.method public setNumericCollationDefault()V
    .locals 4

    #@0
    .prologue
    .line 574
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 575
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    #@6
    move-result-object v0

    #@7
    .line 576
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@9
    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@c
    move-result-object v2

    #@d
    if-ne v2, v0, :cond_0

    #@f
    return-void

    #@10
    .line 577
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@13
    move-result-object v1

    #@14
    .line 578
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@16
    const/4 v3, 0x2

    #@17
    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    #@1a
    .line 579
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@1d
    .line 573
    return-void
.end method

.method public varargs setReorderCodes([I)V
    .locals 7
    .param p1, "order"    # [I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 926
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@5
    .line 927
    if-eqz p1, :cond_2

    #@7
    array-length v1, p1

    #@8
    .line 928
    .local v1, "length":I
    :goto_0
    if-ne v1, v6, :cond_0

    #@a
    aget v3, p1, v5

    #@c
    const/16 v4, 0x67

    #@e
    if-ne v3, v4, :cond_0

    #@10
    .line 929
    const/4 v1, 0x0

    #@11
    .line 931
    :cond_0
    if-nez v1, :cond_3

    #@13
    .line 932
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@15
    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    #@1b
    iget-object v3, v3, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@1d
    array-length v3, v3

    #@1e
    if-nez v3, :cond_4

    #@20
    .line 934
    :cond_1
    return-void

    #@21
    .line 927
    .end local v1    # "length":I
    :cond_2
    const/4 v1, 0x0

    #@22
    .restart local v1    # "length":I
    goto :goto_0

    #@23
    .line 933
    :cond_3
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@25
    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    #@2b
    iget-object v3, v3, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    #@2d
    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    #@30
    move-result v3

    #@31
    .line 931
    if-nez v3, :cond_1

    #@33
    .line 936
    :cond_4
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    #@36
    move-result-object v0

    #@37
    .line 937
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    if-ne v1, v6, :cond_6

    #@39
    aget v3, p1, v5

    #@3b
    const/4 v4, -0x1

    #@3c
    if-ne v3, v4, :cond_6

    #@3e
    .line 938
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@40
    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@43
    move-result-object v3

    #@44
    if-eq v3, v0, :cond_5

    #@46
    .line 939
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@49
    move-result-object v2

    #@4a
    .line 940
    .local v2, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    invoke-virtual {v2, v0}, Landroid/icu/impl/coll/CollationSettings;->copyReorderingFrom(Landroid/icu/impl/coll/CollationSettings;)V

    #@4d
    .line 941
    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@50
    .line 943
    .end local v2    # "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    :cond_5
    return-void

    #@51
    .line 945
    :cond_6
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@54
    move-result-object v2

    #@55
    .line 946
    .restart local v2    # "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    if-nez v1, :cond_7

    #@57
    .line 947
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    #@5a
    .line 951
    :goto_1
    invoke-direct {p0, v2}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@5d
    .line 925
    return-void

    #@5e
    .line 949
    :cond_7
    iget-object v4, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@60
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@63
    move-result-object v3

    #@64
    check-cast v3, [I

    #@66
    invoke-virtual {v2, v4, v3}, Landroid/icu/impl/coll/CollationSettings;->setReordering(Landroid/icu/impl/coll/CollationData;[I)V

    #@69
    goto :goto_1
.end method

.method public setStrength(I)V
    .locals 2
    .param p1, "newStrength"    # I

    #@0
    .prologue
    .line 725
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 726
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    #@6
    move-result v1

    #@7
    if-ne p1, v1, :cond_0

    #@9
    return-void

    #@a
    .line 727
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@d
    move-result-object v0

    #@e
    .line 728
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationSettings;->setStrength(I)V

    #@11
    .line 729
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@14
    .line 724
    return-void
.end method

.method public setStrengthDefault()V
    .locals 3

    #@0
    .prologue
    .line 558
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 559
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    #@6
    move-result-object v0

    #@7
    .line 560
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@9
    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@c
    move-result-object v2

    #@d
    if-ne v2, v0, :cond_0

    #@f
    return-void

    #@10
    .line 561
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@13
    move-result-object v1

    #@14
    .line 562
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    #@16
    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setStrengthDefault(I)V

    #@19
    .line 563
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@1c
    .line 557
    return-void
.end method

.method public setUpperCaseFirst(Z)V
    .locals 2
    .param p1, "upperfirst"    # Z

    #@0
    .prologue
    .line 433
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 434
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isUpperCaseFirst()Z

    #@6
    move-result v1

    #@7
    if-ne p1, v1, :cond_0

    #@9
    return-void

    #@a
    .line 435
    :cond_0
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    #@d
    move-result-object v0

    #@e
    .line 436
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    if-eqz p1, :cond_1

    #@10
    const/16 v1, 0x300

    #@12
    :goto_0
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    #@15
    .line 437
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    #@18
    .line 432
    return-void

    #@19
    .line 436
    :cond_1
    const/4 v1, 0x0

    #@1a
    goto :goto_0
.end method

.method public setVariableTop(Ljava/lang/String;)I
    .locals 12
    .param p1, "varTop"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const-wide v10, 0x101000100L

    #@5
    const/4 v8, 0x0

    #@6
    .line 817
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@9
    .line 818
    if-eqz p1, :cond_0

    #@b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@e
    move-result v7

    #@f
    if-nez v7, :cond_1

    #@11
    .line 819
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v8, "Variable top argument string can not be null or zero in length."

    #@16
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v7

    #@1a
    .line 821
    :cond_1
    iget-object v7, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@1c
    invoke-virtual {v7}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@1f
    move-result-object v7

    #@20
    check-cast v7, Landroid/icu/impl/coll/CollationSettings;

    #@22
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    #@25
    move-result v6

    #@26
    .line 823
    .local v6, "numeric":Z
    iget-object v7, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@28
    invoke-virtual {v7}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@2b
    move-result-object v7

    #@2c
    check-cast v7, Landroid/icu/impl/coll/CollationSettings;

    #@2e
    invoke-virtual {v7}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    #@31
    move-result v7

    #@32
    if-eqz v7, :cond_3

    #@34
    .line 824
    new-instance v5, Landroid/icu/impl/coll/UTF16CollationIterator;

    #@36
    iget-object v7, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@38
    invoke-direct {v5, v7, v6, p1, v8}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    #@3b
    .line 825
    .local v5, "ci":Landroid/icu/impl/coll/UTF16CollationIterator;
    invoke-virtual {v5}, Landroid/icu/impl/coll/UTF16CollationIterator;->nextCE()J

    #@3e
    move-result-wide v0

    #@3f
    .line 826
    .local v0, "ce1":J
    invoke-virtual {v5}, Landroid/icu/impl/coll/UTF16CollationIterator;->nextCE()J

    #@42
    move-result-wide v2

    #@43
    .line 832
    .end local v5    # "ci":Landroid/icu/impl/coll/UTF16CollationIterator;
    .local v2, "ce2":J
    :goto_0
    cmp-long v7, v0, v10

    #@45
    if-eqz v7, :cond_2

    #@47
    cmp-long v7, v2, v10

    #@49
    if-eqz v7, :cond_4

    #@4b
    .line 833
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@4d
    const-string/jumbo v8, "Variable top argument string must map to exactly one collation element"

    #@50
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v7

    #@54
    .line 828
    .end local v0    # "ce1":J
    .end local v2    # "ce2":J
    :cond_3
    new-instance v4, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    #@56
    iget-object v7, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    #@58
    invoke-direct {v4, v7, v6, p1, v8}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    #@5b
    .line 829
    .local v4, "ci":Landroid/icu/impl/coll/FCDUTF16CollationIterator;
    invoke-virtual {v4}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextCE()J

    #@5e
    move-result-wide v0

    #@5f
    .line 830
    .restart local v0    # "ce1":J
    invoke-virtual {v4}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextCE()J

    #@62
    move-result-wide v2

    #@63
    .restart local v2    # "ce2":J
    goto :goto_0

    #@64
    .line 835
    .end local v4    # "ci":Landroid/icu/impl/coll/FCDUTF16CollationIterator;
    :cond_4
    const/16 v7, 0x20

    #@66
    ushr-long v8, v0, v7

    #@68
    invoke-direct {p0, v8, v9}, Landroid/icu/text/RuleBasedCollator;->internalSetVariableTop(J)V

    #@6b
    .line 836
    iget-object v7, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    #@6d
    invoke-virtual {v7}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    #@70
    move-result-object v7

    #@71
    check-cast v7, Landroid/icu/impl/coll/CollationSettings;

    #@73
    iget-wide v8, v7, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    #@75
    long-to-int v7, v8

    #@76
    return v7
.end method

.method public setVariableTop(I)V
    .locals 4
    .param p1, "varTop"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 855
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    #@3
    .line 856
    int-to-long v0, p1

    #@4
    const-wide v2, 0xffffffffL

    #@9
    and-long/2addr v0, v2

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/text/RuleBasedCollator;->internalSetVariableTop(J)V

    #@d
    .line 854
    return-void
.end method
