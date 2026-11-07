.class public final Landroid/icu/text/RuleBasedCollator;
.super Landroid/icu/text/Collator;
.source "RuleBasedCollator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RuleBasedCollator$CollationBuffer;,
        Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;,
        Landroid/icu/text/RuleBasedCollator$NFDIterator;,
        Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;,
        Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o actualLocaleIsSameAsValid:Z

.field private greylist-max-o collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

.field greylist-max-o data:Landroid/icu/impl/coll/CollationData;

.field private greylist-max-o frozenLock:Ljava/util/concurrent/locks/Lock;

.field greylist-max-o settings:Landroid/icu/impl/coll/SharedObject$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/coll/SharedObject$Reference<",
            "Landroid/icu/impl/coll/CollationSettings;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o tailoring:Landroid/icu/impl/coll/CollationTailoring;

.field private greylist-max-o validLocale:Landroid/icu/util/ULocale;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 187
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/icu/impl/coll/CollationTailoring;Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "t"    # Landroid/icu/impl/coll/CollationTailoring;
    .param p2, "vl"    # Landroid/icu/util/ULocale;

    .line 1699
    invoke-direct {p0}, Landroid/icu/text/Collator;-><init>()V

    .line 1700
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    .line 1701
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    .line 1702
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    .line 1703
    iput-object p2, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    .line 1704
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    .line 1705
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "rules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 205
    invoke-direct {p0}, Landroid/icu/text/Collator;-><init>()V

    .line 206
    if-eqz p1, :cond_d

    .line 209
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    .line 210
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator;->internalBuildTailoring(Ljava/lang/String;)V

    .line 211
    return-void

    .line 207
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Collation rules can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o adoptTailoring(Landroid/icu/impl/coll/CollationTailoring;)V
    .registers 3
    .param p1, "t"    # Landroid/icu/impl/coll/CollationTailoring;

    .line 1708
    nop

    .line 1709
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    .line 1710
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    .line 1711
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    .line 1712
    iget-object v0, p1, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    .line 1713
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    .line 1714
    return-void
.end method

.method private greylist-max-o checkNotFrozen()V
    .registers 3

    .line 345
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_7

    .line 348
    return-void

    .line 346
    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Attempt to modify frozen RuleBasedCollator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final greylist-max-o compareNFDIter(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/text/RuleBasedCollator$NFDIterator;Landroid/icu/text/RuleBasedCollator$NFDIterator;)I
    .registers 6
    .param p0, "nfcImpl"    # Landroid/icu/impl/Normalizer2Impl;
    .param p1, "left"    # Landroid/icu/text/RuleBasedCollator$NFDIterator;
    .param p2, "right"    # Landroid/icu/text/RuleBasedCollator$NFDIterator;

    .line 1567
    nop

    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextCodePoint()I

    move-result v0

    .line 1568
    .local v0, "leftCp":I
    invoke-virtual {p2}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextCodePoint()I

    move-result v1

    .line 1569
    .local v1, "rightCp":I
    if-ne v0, v1, :cond_f

    .line 1570
    if-gez v0, :cond_1

    .line 1591
    .end local v0    # "leftCp":I
    .end local v1    # "rightCp":I
    const/4 v0, 0x0

    return v0

    .line 1574
    .restart local v0    # "leftCp":I
    .restart local v1    # "rightCp":I
    :cond_f
    const v2, 0xfffe

    if-gez v0, :cond_16

    .line 1575
    const/4 v0, -0x2

    goto :goto_1e

    .line 1576
    :cond_16
    if-ne v0, v2, :cond_1a

    .line 1577
    const/4 v0, -0x1

    goto :goto_1e

    .line 1579
    :cond_1a
    invoke-virtual {p1, p0, v0}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextDecomposedCodePoint(Landroid/icu/impl/Normalizer2Impl;I)I

    move-result v0

    .line 1581
    :goto_1e
    if-gez v1, :cond_22

    .line 1582
    const/4 v1, -0x2

    goto :goto_2a

    .line 1583
    :cond_22
    if-ne v1, v2, :cond_26

    .line 1584
    const/4 v1, -0x1

    goto :goto_2a

    .line 1586
    :cond_26
    invoke-virtual {p2, p0, v1}, Landroid/icu/text/RuleBasedCollator$NFDIterator;->nextDecomposedCodePoint(Landroid/icu/impl/Normalizer2Impl;I)I

    move-result v1

    .line 1588
    :goto_2a
    if-ge v0, v1, :cond_2e

    const/4 v2, -0x1

    return v2

    .line 1589
    :cond_2e
    if-le v0, v1, :cond_32

    const/4 v2, 0x1

    return v2

    .line 1590
    .end local v0    # "leftCp":I
    .end local v1    # "rightCp":I
    :cond_32
    goto :goto_1
.end method

.method private final greylist-max-o getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    .registers 4

    .line 1794
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1795
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    goto :goto_1a

    .line 1796
    :cond_c
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    if-nez v0, :cond_1a

    .line 1797
    new-instance v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RuleBasedCollator$CollationBuffer;-><init>(Landroid/icu/impl/coll/CollationData;Landroid/icu/text/RuleBasedCollator-IA;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    .line 1799
    :cond_1a
    :goto_1a
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    return-object v0
.end method

.method private greylist-max-o getCollationKey(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/CollationKey;
    .registers 5
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "buffer"    # Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    .line 1054
    iget-object v0, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rawCollationKey:Landroid/icu/text/RawCollationKey;

    invoke-direct {p0, p1, v0, p2}, Landroid/icu/text/RuleBasedCollator;->getRawCollationKey(Ljava/lang/CharSequence;Landroid/icu/text/RawCollationKey;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/RawCollationKey;

    move-result-object v0

    iput-object v0, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rawCollationKey:Landroid/icu/text/RawCollationKey;

    .line 1055
    new-instance v0, Landroid/icu/text/CollationKey;

    iget-object v1, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rawCollationKey:Landroid/icu/text/RawCollationKey;

    invoke-direct {v0, p1, v1}, Landroid/icu/text/CollationKey;-><init>(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)V

    return-object v0
.end method

.method private final greylist-max-o getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;
    .registers 2

    .line 355
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    return-object v0
.end method

.method private final greylist-max-o getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;
    .registers 2

    .line 351
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->copyOnWrite()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    return-object v0
.end method

.method private greylist-max-o getRawCollationKey(Ljava/lang/CharSequence;Landroid/icu/text/RawCollationKey;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/RawCollationKey;
    .registers 6
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "key"    # Landroid/icu/text/RawCollationKey;
    .param p3, "buffer"    # Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    .line 1123
    if-nez p2, :cond_d

    .line 1124
    new-instance v0, Landroid/icu/text/RawCollationKey;

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator;->simpleKeyLengthEstimate(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/icu/text/RawCollationKey;-><init>(I)V

    move-object p2, v0

    goto :goto_19

    .line 1125
    :cond_d
    iget-object v0, p2, Landroid/icu/text/RawCollationKey;->bytes:[B

    if-nez v0, :cond_19

    .line 1126
    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedCollator;->simpleKeyLengthEstimate(Ljava/lang/CharSequence;)I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p2, Landroid/icu/text/RawCollationKey;->bytes:[B

    .line 1128
    :cond_19
    :goto_19
    new-instance v0, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;

    invoke-direct {v0, p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;-><init>(Landroid/icu/text/RawCollationKey;)V

    .line 1129
    .local v0, "sink":Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;
    invoke-direct {p0, p1, v0, p3}, Landroid/icu/text/RuleBasedCollator;->writeSortKey(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1130
    invoke-virtual {v0}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->NumberOfBytesAppended()I

    move-result v1

    iput v1, p2, Landroid/icu/text/RawCollationKey;->size:I

    .line 1131
    return-object p2
.end method

.method private final greylist-max-o initMaxExpansions()V
    .registers 4

    .line 254
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    monitor-enter v0

    .line 255
    :try_start_3
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;

    if-nez v1, :cond_15

    .line 256
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v2, v2, Landroid/icu/impl/coll/CollationTailoring;->data:Landroid/icu/impl/coll/CollationData;

    invoke-static {v2}, Landroid/icu/text/CollationElementIterator;->computeMaxExpansions(Landroid/icu/impl/coll/CollationData;)Ljava/util/Map;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/impl/coll/CollationTailoring;->maxExpansions:Ljava/util/Map;

    .line 258
    :cond_15
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v1
.end method

.method private final greylist-max-o internalBuildTailoring(Ljava/lang/String;)V
    .registers 10
    .param p1, "rules"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 219
    invoke-static {}, Landroid/icu/impl/coll/CollationRoot;->getRoot()Landroid/icu/impl/coll/CollationTailoring;

    move-result-object v0

    .line 223
    .local v0, "base":Landroid/icu/impl/coll/CollationTailoring;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object v1

    .line 226
    .local v1, "classLoader":Ljava/lang/ClassLoader;
    :try_start_c
    const-string v2, "android.icu.impl.coll.CollationBuilder"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 227
    .local v2, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/icu/impl/coll/CollationTailoring;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v2, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 229
    .local v4, "builder":Ljava/lang/Object;
    const-string v5, "parseAndBuild"

    new-array v3, v3, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v3, v6

    invoke-virtual {v2, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 230
    .local v3, "parseAndBuild":Ljava/lang/reflect/Method;
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/coll/CollationTailoring;
    :try_end_3c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_3c} :catch_44

    .line 233
    .end local v2    # "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "parseAndBuild":Ljava/lang/reflect/Method;
    .end local v4    # "builder":Ljava/lang/Object;
    .local v5, "t":Landroid/icu/impl/coll/CollationTailoring;
    nop

    .line 234
    const/4 v2, 0x0

    iput-object v2, v5, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    .line 235
    invoke-direct {p0, v5}, Landroid/icu/text/RuleBasedCollator;->adoptTailoring(Landroid/icu/impl/coll/CollationTailoring;)V

    .line 236
    return-void

    .line 231
    .end local v5    # "t":Landroid/icu/impl/coll/CollationTailoring;
    :catch_44
    move-exception v2

    .line 232
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/Exception;

    throw v3
.end method

.method private greylist-max-o internalSetVariableTop(J)V
    .registers 9
    .param p1, "varTop"    # J

    .line 834
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4f

    .line 837
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1, p2}, Landroid/icu/impl/coll/CollationData;->getGroupForPrimary(J)I

    move-result v0

    .line 838
    .local v0, "group":I
    const/16 v1, 0x1000

    if-lt v0, v1, :cond_47

    const/16 v1, 0x1003

    if-lt v1, v0, :cond_47

    .line 842
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, v0}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v1

    .line 843
    .local v1, "v":J
    nop

    .line 844
    move-wide p1, v1

    .line 845
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    iget-wide v3, v3, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    cmp-long v3, p1, v3

    if-eqz v3, :cond_4f

    .line 846
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v3

    .line 847
    .local v3, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    add-int/lit16 v4, v0, -0x1000

    .line 848
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v5

    iget v5, v5, Landroid/icu/impl/coll/CollationSettings;->options:I

    .line 847
    invoke-virtual {v3, v4, v5}, Landroid/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    .line 849
    iput-wide p1, v3, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    .line 850
    invoke-direct {p0, v3}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    goto :goto_4f

    .line 839
    .end local v1    # "v":J
    .end local v3    # "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    :cond_47
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The variable top must be a primary weight in the space/punctuation/symbols/currency symbols range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 853
    .end local v0    # "group":I
    :cond_4f
    :goto_4f
    return-void
.end method

.method private final greylist-max-o releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V
    .registers 3
    .param p1, "buffer"    # Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    .line 1803
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1804
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 1806
    :cond_b
    return-void
.end method

.method private greylist-max-o setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V
    .registers 4
    .param p1, "ownedSettings"    # Landroid/icu/impl/coll/CollationSettings;

    .line 927
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, p1, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    invoke-static {v0, p1, v1}, Landroid/icu/impl/coll/CollationFastLatin;->getOptions(Landroid/icu/impl/coll/CollationData;Landroid/icu/impl/coll/CollationSettings;[C)I

    move-result v0

    iput v0, p1, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    .line 929
    return-void
.end method

.method private greylist-max-o simpleKeyLengthEstimate(Ljava/lang/CharSequence;)I
    .registers 3
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 1135
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    return v0
.end method

.method private greylist-max-o writeIdenticalLevel(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)V
    .registers 13
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "sink"    # Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;

    .line 1161
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3, v1, v2}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILandroid/icu/impl/Normalizer2Impl$ReorderingBuffer;)I

    move-result v6

    .line 1162
    .local v6, "nfdQCYesLimit":I
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->Append(I)V

    .line 1164
    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->-$$Nest$fgetkey_(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    move-result-object v0

    invoke-virtual {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->NumberOfBytesAppended()I

    move-result v1

    iput v1, v0, Landroid/icu/text/RawCollationKey;->size:I

    .line 1165
    const/4 v0, 0x0

    .line 1166
    .local v0, "prev":I
    if-eqz v6, :cond_27

    .line 1167
    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->-$$Nest$fgetkey_(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    move-result-object v1

    invoke-static {v0, p1, v3, v6, v1}, Landroid/icu/impl/coll/BOCSU;->writeIdenticalLevelRun(ILjava/lang/CharSequence;IILandroid/icu/util/ByteArrayWrapper;)I

    move-result v0

    .line 1170
    :cond_27
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v6, v1, :cond_50

    .line 1171
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    sub-int v9, v1, v6

    .line 1172
    .local v9, "destLengthEstimate":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1173
    .local v8, "nfd":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v1, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    move-object v5, p1

    .end local p1    # "s":Ljava/lang/CharSequence;
    .local v5, "s":Ljava/lang/CharSequence;
    invoke-virtual/range {v4 .. v9}, Landroid/icu/impl/Normalizer2Impl;->decompose(Ljava/lang/CharSequence;IILjava/lang/StringBuilder;I)V

    .line 1174
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->-$$Nest$fgetkey_(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    move-result-object v1

    invoke-static {v0, v8, v3, p1, v1}, Landroid/icu/impl/coll/BOCSU;->writeIdenticalLevelRun(ILjava/lang/CharSequence;IILandroid/icu/util/ByteArrayWrapper;)I

    goto :goto_51

    .line 1170
    .end local v5    # "s":Ljava/lang/CharSequence;
    .end local v8    # "nfd":Ljava/lang/StringBuilder;
    .end local v9    # "destLengthEstimate":I
    .restart local p1    # "s":Ljava/lang/CharSequence;
    :cond_50
    move-object v5, p1

    .line 1177
    .end local p1    # "s":Ljava/lang/CharSequence;
    .restart local v5    # "s":Ljava/lang/CharSequence;
    :goto_51
    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->-$$Nest$fgetkey_(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    move-result-object p1

    iget-object p1, p1, Landroid/icu/text/RawCollationKey;->bytes:[B

    invoke-static {p2}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->-$$Nest$fgetkey_(Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)Landroid/icu/text/RawCollationKey;

    move-result-object v1

    iget v1, v1, Landroid/icu/text/RawCollationKey;->size:I

    invoke-virtual {p2, p1, v1}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->setBufferAndAppended([BI)V

    .line 1178
    return-void
.end method

.method private greylist-max-o writeSortKey(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V
    .registers 24
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "sink"    # Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;
    .param p3, "buffer"    # Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    .line 1139
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    iget-object v3, v0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v3

    .line 1140
    .local v3, "numeric":Z
    iget-object v4, v0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v4}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_3f

    .line 1141
    iget-object v4, v2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v4, v3, v1, v5}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1142
    iget-object v6, v2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object v4, v0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v7, v4, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iget-object v4, v0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    .line 1143
    invoke-virtual {v4}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Landroid/icu/impl/coll/CollationSettings;

    sget-object v11, Landroid/icu/impl/coll/CollationKeys;->SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    .line 1142
    const/4 v10, 0x1

    const/4 v12, 0x1

    move-object/from16 v9, p2

    invoke-static/range {v6 .. v12}, Landroid/icu/impl/coll/CollationKeys;->writeSortKeyUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;[ZLandroid/icu/impl/coll/CollationSettings;Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;ILandroid/icu/impl/coll/CollationKeys$LevelCallback;Z)V

    goto :goto_5e

    .line 1147
    :cond_3f
    iget-object v4, v2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v4, v3, v1, v5}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1148
    iget-object v13, v2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v4, v0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v14, v4, Landroid/icu/impl/coll/CollationData;->compressibleBytes:[Z

    iget-object v4, v0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    .line 1149
    invoke-virtual {v4}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/icu/impl/coll/CollationSettings;

    sget-object v18, Landroid/icu/impl/coll/CollationKeys;->SIMPLE_LEVEL_FALLBACK:Landroid/icu/impl/coll/CollationKeys$LevelCallback;

    .line 1148
    const/16 v17, 0x1

    const/16 v19, 0x1

    move-object/from16 v16, p2

    invoke-static/range {v13 .. v19}, Landroid/icu/impl/coll/CollationKeys;->writeSortKeyUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;[ZLandroid/icu/impl/coll/CollationSettings;Landroid/icu/impl/coll/CollationKeys$SortKeyByteSink;ILandroid/icu/impl/coll/CollationKeys$LevelCallback;Z)V

    .line 1153
    :goto_5e
    iget-object v4, v0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v4}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v4

    check-cast v4, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationSettings;->getStrength()I

    move-result v4

    const/16 v6, 0xf

    if-ne v4, v6, :cond_71

    .line 1154
    invoke-direct/range {p0 .. p2}, Landroid/icu/text/RuleBasedCollator;->writeIdenticalLevel(Ljava/lang/CharSequence;Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;)V

    .line 1156
    :cond_71
    move-object/from16 v9, p2

    invoke-virtual {v9, v5}, Landroid/icu/text/RuleBasedCollator$CollationKeyByteSink;->Append(I)V

    .line 1157
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 247
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 248
    return-object p0

    .line 250
    :cond_7
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->cloneAsThawed()Landroid/icu/text/RuleBasedCollator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Landroid/icu/text/Collator;
    .registers 2

    .line 187
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->cloneAsThawed()Landroid/icu/text/RuleBasedCollator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api cloneAsThawed()Landroid/icu/text/RuleBasedCollator;
    .registers 4

    .line 328
    const/4 v0, 0x0

    :try_start_1
    invoke-super {p0}, Landroid/icu/text/Collator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    .line 332
    .local v1, "result":Landroid/icu/text/RuleBasedCollator;
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->clone()Landroid/icu/impl/coll/SharedObject$Reference;

    move-result-object v2

    iput-object v2, v1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    .line 333
    iput-object v0, v1, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    .line 334
    iput-object v0, v1, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;
    :try_end_13
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_13} :catch_14

    .line 335
    return-object v1

    .line 336
    .end local v1    # "result":Landroid/icu/text/RuleBasedCollator;
    :catch_14
    move-exception v1

    .line 338
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    return-object v0
.end method

.method public bridge synthetic whitelist test-api cloneAsThawed()Ljava/lang/Object;
    .registers 2

    .line 187
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->cloneAsThawed()Landroid/icu/text/RuleBasedCollator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api compare(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "target"    # Ljava/lang/String;

    .line 1456
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/RuleBasedCollator;->doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    return v0
.end method

.method protected greylist-max-o doCompare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .registers 13
    .param p1, "left"    # Ljava/lang/CharSequence;
    .param p2, "right"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1603
    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    .line 1604
    return v0

    .line 1608
    :cond_4
    const/4 v1, 0x0

    .line 1610
    .local v1, "equalPrefixLength":I
    :goto_5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_12

    .line 1611
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_26

    return v0

    .line 1613
    :cond_12
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v1, v2, :cond_26

    .line 1614
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_23

    .line 1615
    goto :goto_26

    .line 1617
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1620
    :cond_26
    :goto_26
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    .line 1621
    .local v2, "roSettings":Landroid/icu/impl/coll/CollationSettings;
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v3

    .line 1622
    .local v3, "numeric":Z
    if-lez v1, :cond_6a

    .line 1623
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v1, v0, :cond_47

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    .line 1624
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v0

    if-nez v0, :cond_59

    .line 1625
    :cond_47
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v1, v0, :cond_6a

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    .line 1626
    invoke-interface {p2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 1628
    :cond_59
    :goto_59
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_6a

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    .line 1629
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4, v3}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_59

    .line 1641
    :cond_6a
    move v9, v1

    .end local v1    # "equalPrefixLength":I
    .local v9, "equalPrefixLength":I
    iget v6, v2, Landroid/icu/impl/coll/CollationSettings;->fastLatinOptions:I

    .line 1642
    .local v6, "fastLatinOptions":I
    if-ltz v6, :cond_9e

    .line 1643
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x17f

    if-eq v9, v0, :cond_81

    .line 1644
    invoke-interface {p1, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-gt v0, v1, :cond_7e

    goto :goto_81

    :cond_7e
    move-object v7, p1

    move-object v8, p2

    goto :goto_a0

    .line 1645
    :cond_81
    :goto_81
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eq v9, v0, :cond_91

    .line 1646
    invoke-interface {p2, v9}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-gt v0, v1, :cond_8e

    goto :goto_91

    :cond_8e
    move-object v7, p1

    move-object v8, p2

    goto :goto_a0

    .line 1647
    :cond_91
    :goto_91
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v0, Landroid/icu/impl/coll/CollationData;->fastLatinTable:[C

    iget-object v5, v2, Landroid/icu/impl/coll/CollationSettings;->fastLatinPrimaries:[C

    move-object v7, p1

    move-object v8, p2

    .end local p1    # "left":Ljava/lang/CharSequence;
    .end local p2    # "right":Ljava/lang/CharSequence;
    .local v7, "left":Ljava/lang/CharSequence;
    .local v8, "right":Ljava/lang/CharSequence;
    invoke-static/range {v4 .. v9}, Landroid/icu/impl/coll/CollationFastLatin;->compareUTF16([C[CILjava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result p1

    .local p1, "result":I
    goto :goto_a1

    .line 1642
    .end local v7    # "left":Ljava/lang/CharSequence;
    .end local v8    # "right":Ljava/lang/CharSequence;
    .local p1, "left":Ljava/lang/CharSequence;
    .restart local p2    # "right":Ljava/lang/CharSequence;
    :cond_9e
    move-object v7, p1

    move-object v8, p2

    .line 1652
    .end local p1    # "left":Ljava/lang/CharSequence;
    .end local p2    # "right":Ljava/lang/CharSequence;
    .restart local v7    # "left":Ljava/lang/CharSequence;
    .restart local v8    # "right":Ljava/lang/CharSequence;
    :goto_a0
    const/4 p1, -0x2

    .line 1655
    .local p1, "result":I
    :goto_a1
    const/4 p2, -0x2

    if-ne p1, p2, :cond_e0

    .line 1656
    const/4 p2, 0x0

    .line 1658
    .local p2, "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :try_start_a5
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v0

    move-object p2, v0

    .line 1659
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 1660
    iget-object v0, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v0, v3, v7, v9}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1661
    iget-object v0, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v0, v3, v8, v9}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1662
    iget-object v0, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object v1, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-static {v0, v1, v2}, Landroid/icu/impl/coll/CollationCompare;->compareUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationSettings;)I

    move-result v0

    move p1, v0

    .end local p1    # "result":I
    .local v0, "result":I
    goto :goto_d7

    .line 1665
    .end local v0    # "result":I
    .restart local p1    # "result":I
    :cond_c4
    iget-object v0, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v0, v3, v7, v9}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1666
    iget-object v0, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v0, v3, v8, v9}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1667
    iget-object v0, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v1, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-static {v0, v1, v2}, Landroid/icu/impl/coll/CollationCompare;->compareUpToQuaternary(Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationIterator;Landroid/icu/impl/coll/CollationSettings;)I

    move-result v0
    :try_end_d6
    .catchall {:try_start_a5 .. :try_end_d6} :catchall_db

    move p1, v0

    .line 1671
    :goto_d7
    invoke-direct {p0, p2}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1672
    goto :goto_e0

    .line 1671
    :catchall_db
    move-exception v0

    invoke-direct {p0, p2}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1672
    throw v0

    .line 1674
    .end local p2    # "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :cond_e0
    :goto_e0
    if-nez p1, :cond_12c

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->getStrength()I

    move-result p2

    const/16 v0, 0xf

    if-ge p2, v0, :cond_eb

    goto :goto_12c

    .line 1678
    :cond_eb
    const/4 p2, 0x0

    .line 1680
    .restart local p2    # "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :try_start_ec
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v0

    move-object p2, v0

    .line 1682
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationData;->nfcImpl:Landroid/icu/impl/Normalizer2Impl;

    .line 1683
    .local v0, "nfcImpl":Landroid/icu/impl/Normalizer2Impl;
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v1

    if-eqz v1, :cond_111

    .line 1684
    iget-object v1, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-virtual {v1, v7, v9}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->setText(Ljava/lang/CharSequence;I)V

    .line 1685
    iget-object v1, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-virtual {v1, v8, v9}, Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;->setText(Ljava/lang/CharSequence;I)V

    .line 1686
    iget-object v1, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    iget-object v4, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$UTF16NFDIterator;

    invoke-static {v0, v1, v4}, Landroid/icu/text/RuleBasedCollator;->compareNFDIter(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/text/RuleBasedCollator$NFDIterator;Landroid/icu/text/RuleBasedCollator$NFDIterator;)I

    move-result v1
    :try_end_10d
    .catchall {:try_start_ec .. :try_end_10d} :catchall_127

    .line 1693
    invoke-direct {p0, p2}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1686
    return v1

    .line 1688
    :cond_111
    :try_start_111
    iget-object v1, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-virtual {v1, v0, v7, v9}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->setText(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V

    .line 1689
    iget-object v1, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-virtual {v1, v0, v8, v9}, Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;->setText(Landroid/icu/impl/Normalizer2Impl;Ljava/lang/CharSequence;I)V

    .line 1690
    iget-object v1, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    iget-object v4, p2, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->rightFCDUTF16NFDIter:Landroid/icu/text/RuleBasedCollator$FCDUTF16NFDIterator;

    invoke-static {v0, v1, v4}, Landroid/icu/text/RuleBasedCollator;->compareNFDIter(Landroid/icu/impl/Normalizer2Impl;Landroid/icu/text/RuleBasedCollator$NFDIterator;Landroid/icu/text/RuleBasedCollator$NFDIterator;)I

    move-result v1
    :try_end_123
    .catchall {:try_start_111 .. :try_end_123} :catchall_127

    .line 1693
    invoke-direct {p0, p2}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1690
    return v1

    .line 1693
    .end local v0    # "nfcImpl":Landroid/icu/impl/Normalizer2Impl;
    :catchall_127
    move-exception v0

    invoke-direct {p0, p2}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1694
    throw v0

    .line 1675
    .end local p2    # "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :cond_12c
    :goto_12c
    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 12
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1377
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1378
    return v0

    .line 1380
    :cond_4
    invoke-super {p0, p1}, Landroid/icu/text/Collator;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 1381
    return v2

    .line 1383
    :cond_c
    move-object v1, p1

    check-cast v1, Landroid/icu/text/RuleBasedCollator;

    .line 1384
    .local v1, "o":Landroid/icu/text/RuleBasedCollator;
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    iget-object v4, v1, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v4}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/CollationSettings;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    return v2

    .line 1385
    :cond_24
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v1, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    if-ne v3, v4, :cond_2b

    return v0

    .line 1386
    :cond_2b
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-nez v3, :cond_33

    move v3, v0

    goto :goto_34

    :cond_33
    move v3, v2

    .line 1387
    .local v3, "thisIsRoot":Z
    :goto_34
    iget-object v4, v1, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v4, v4, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-nez v4, :cond_3c

    move v4, v0

    goto :goto_3d

    :cond_3c
    move v4, v2

    .line 1388
    .local v4, "otherIsRoot":Z
    :goto_3d
    nop

    .line 1389
    if-eq v3, v4, :cond_41

    return v2

    .line 1390
    :cond_41
    iget-object v5, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {v5}, Landroid/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v5

    .line 1391
    .local v5, "theseRules":Ljava/lang/String;
    iget-object v6, v1, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {v6}, Landroid/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v6

    .line 1392
    .local v6, "otherRules":Ljava/lang/String;
    if-nez v3, :cond_55

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_64

    :cond_55
    if-nez v4, :cond_5d

    .line 1393
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_64

    .line 1395
    :cond_5d
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_64

    return v0

    .line 1400
    :cond_64
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getTailoredSet()Landroid/icu/text/UnicodeSet;

    move-result-object v7

    .line 1401
    .local v7, "thisTailored":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v1}, Landroid/icu/text/RuleBasedCollator;->getTailoredSet()Landroid/icu/text/UnicodeSet;

    move-result-object v8

    .line 1402
    .local v8, "otherTailored":Landroid/icu/text/UnicodeSet;
    invoke-virtual {v7, v8}, Landroid/icu/text/UnicodeSet;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_73

    return v2

    .line 1408
    :cond_73
    return v0
.end method

.method public whitelist test-api freeze()Landroid/icu/text/Collator;
    .registers 4

    .line 313
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrozen()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 314
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    .line 315
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    if-nez v0, :cond_1b

    .line 316
    new-instance v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/icu/text/RuleBasedCollator$CollationBuffer;-><init>(Landroid/icu/impl/coll/CollationData;Landroid/icu/text/RuleBasedCollator-IA;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedCollator;->collationBuffer:Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    .line 319
    :cond_1b
    return-object p0
.end method

.method public bridge synthetic whitelist test-api freeze()Ljava/lang/Object;
    .registers 2

    .line 187
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->freeze()Landroid/icu/text/Collator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getCollationElementIterator(Landroid/icu/text/UCharacterIterator;)Landroid/icu/text/CollationElementIterator;
    .registers 3
    .param p1, "source"    # Landroid/icu/text/UCharacterIterator;

    .line 290
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->initMaxExpansions()V

    .line 291
    new-instance v0, Landroid/icu/text/CollationElementIterator;

    invoke-direct {v0, p1, p0}, Landroid/icu/text/CollationElementIterator;-><init>(Landroid/icu/text/UCharacterIterator;Landroid/icu/text/RuleBasedCollator;)V

    return-object v0
.end method

.method public whitelist test-api getCollationElementIterator(Ljava/lang/String;)Landroid/icu/text/CollationElementIterator;
    .registers 3
    .param p1, "source"    # Ljava/lang/String;

    .line 267
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->initMaxExpansions()V

    .line 268
    new-instance v0, Landroid/icu/text/CollationElementIterator;

    invoke-direct {v0, p1, p0}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator;)V

    return-object v0
.end method

.method public whitelist test-api getCollationElementIterator(Ljava/text/CharacterIterator;)Landroid/icu/text/CollationElementIterator;
    .registers 4
    .param p1, "source"    # Ljava/text/CharacterIterator;

    .line 278
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->initMaxExpansions()V

    .line 279
    invoke-interface {p1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/CharacterIterator;

    .line 280
    .local v0, "newsource":Ljava/text/CharacterIterator;
    new-instance v1, Landroid/icu/text/CollationElementIterator;

    invoke-direct {v1, v0, p0}, Landroid/icu/text/CollationElementIterator;-><init>(Ljava/text/CharacterIterator;Landroid/icu/text/RuleBasedCollator;)V

    return-object v1
.end method

.method public whitelist test-api getCollationKey(Ljava/lang/String;)Landroid/icu/text/CollationKey;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;

    .line 1041
    if-nez p1, :cond_4

    .line 1042
    const/4 v0, 0x0

    return-object v0

    .line 1044
    :cond_4
    const/4 v0, 0x0

    .line 1046
    .local v0, "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :try_start_5
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v1

    move-object v0, v1

    .line 1047
    invoke-direct {p0, p1, v0}, Landroid/icu/text/RuleBasedCollator;->getCollationKey(Ljava/lang/String;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/CollationKey;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    .line 1049
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1047
    return-object v1

    .line 1049
    :catchall_12
    move-exception v1

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1050
    throw v1
.end method

.method public whitelist test-api getContractionsAndExpansions(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Z)V
    .registers 6
    .param p1, "contractions"    # Landroid/icu/text/UnicodeSet;
    .param p2, "expansions"    # Landroid/icu/text/UnicodeSet;
    .param p3, "addPrefixes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1000
    if-eqz p1, :cond_5

    .line 1001
    invoke-virtual {p1}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 1003
    :cond_5
    if-eqz p2, :cond_a

    .line 1004
    invoke-virtual {p2}, Landroid/icu/text/UnicodeSet;->clear()Landroid/icu/text/UnicodeSet;

    .line 1006
    :cond_a
    new-instance v0, Landroid/icu/impl/coll/ContractionsAndExpansions;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1, p3}, Landroid/icu/impl/coll/ContractionsAndExpansions;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/ContractionsAndExpansions;->forData(Landroid/icu/impl/coll/CollationData;)V

    .line 1007
    return-void
.end method

.method public whitelist test-api getDecomposition()I
    .registers 2

    .line 1246
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_11

    .line 1247
    const/16 v0, 0x11

    goto :goto_13

    :cond_11
    const/16 v0, 0x10

    .line 1246
    :goto_13
    return v0
.end method

.method public greylist-max-r getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .registers 5
    .param p1, "type"    # Landroid/icu/util/ULocale$Type;

    .line 1815
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_10

    .line 1816
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    goto :goto_f

    :cond_b
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    :goto_f
    return-object v0

    .line 1817
    :cond_10
    sget-object v0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_17

    .line 1818
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    return-object v0

    .line 1820
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown ULocale.Type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api getMaxVariable()I
    .registers 2

    .line 759
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v0

    add-int/lit16 v0, v0, 0x1000

    return v0
.end method

.method public whitelist test-api getNumericCollation()Z
    .registers 2

    .line 1354
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public greylist-max-o getRawCollationKey(Ljava/lang/String;Landroid/icu/text/RawCollationKey;)Landroid/icu/text/RawCollationKey;
    .registers 5
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "key"    # Landroid/icu/text/RawCollationKey;

    .line 1074
    if-nez p1, :cond_4

    .line 1075
    const/4 v0, 0x0

    return-object v0

    .line 1077
    :cond_4
    const/4 v0, 0x0

    .line 1079
    .local v0, "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :try_start_5
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v1

    move-object v0, v1

    .line 1080
    invoke-direct {p0, p1, p2, v0}, Landroid/icu/text/RuleBasedCollator;->getRawCollationKey(Ljava/lang/CharSequence;Landroid/icu/text/RawCollationKey;Landroid/icu/text/RuleBasedCollator$CollationBuffer;)Landroid/icu/text/RawCollationKey;

    move-result-object v1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_12

    .line 1082
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1080
    return-object v1

    .line 1082
    :catchall_12
    move-exception v1

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1083
    throw v1
.end method

.method public whitelist test-api getReorderCodes()[I
    .registers 2

    .line 1367
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method

.method public whitelist test-api getRules()Ljava/lang/String;
    .registers 2

    .line 944
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getRules(Z)Ljava/lang/String;
    .registers 4
    .param p1, "fullrules"    # Z

    .line 965
    if-nez p1, :cond_9

    .line 966
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 968
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/icu/impl/coll/CollationLoader;->getRootRules()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationTailoring;->getRules()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getStrength()I
    .registers 2

    .line 1230
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getStrength()I

    move-result v0

    return v0
.end method

.method public whitelist test-api getTailoredSet()Landroid/icu/text/UnicodeSet;
    .registers 4

    .line 979
    new-instance v0, Landroid/icu/text/UnicodeSet;

    invoke-direct {v0}, Landroid/icu/text/UnicodeSet;-><init>()V

    .line 980
    .local v0, "tailored":Landroid/icu/text/UnicodeSet;
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-eqz v1, :cond_15

    .line 981
    new-instance v1, Landroid/icu/impl/coll/TailoredSet;

    invoke-direct {v1, v0}, Landroid/icu/impl/coll/TailoredSet;-><init>(Landroid/icu/text/UnicodeSet;)V

    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/TailoredSet;->forData(Landroid/icu/impl/coll/CollationData;)V

    .line 983
    :cond_15
    return-object v0
.end method

.method public whitelist test-api getUCAVersion()Landroid/icu/util/VersionInfo;
    .registers 6

    .line 1780
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getVersion()Landroid/icu/util/VersionInfo;

    move-result-object v0

    .line 1788
    .local v0, "v":Landroid/icu/util/VersionInfo;
    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMinor()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    invoke-virtual {v0}, Landroid/icu/util/VersionInfo;->getMilli()I

    move-result v3

    shr-int/lit8 v3, v3, 0x6

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getVariableTop()I
    .registers 3

    .line 1342
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget-wide v0, v0, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api getVersion()Landroid/icu/util/VersionInfo;
    .registers 7

    .line 1766
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget v0, v0, Landroid/icu/impl/coll/CollationTailoring;->version:I

    .line 1767
    .local v0, "version":I
    sget-object v1, Landroid/icu/util/VersionInfo;->UCOL_RUNTIME_VERSION:Landroid/icu/util/VersionInfo;

    invoke-virtual {v1}, Landroid/icu/util/VersionInfo;->getMajor()I

    move-result v1

    .line 1768
    .local v1, "rtVersion":I
    ushr-int/lit8 v2, v0, 0x18

    shl-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x4

    add-int/2addr v2, v3

    shr-int/lit8 v3, v0, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v0, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v5, v0, 0xff

    invoke-static {v2, v3, v4, v5}, Landroid/icu/util/VersionInfo;->getInstance(IIII)Landroid/icu/util/VersionInfo;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api hashCode()I
    .registers 6

    .line 1418
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->hashCode()I

    move-result v0

    .line 1419
    .local v0, "h":I
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, v1, Landroid/icu/impl/coll/CollationData;->base:Landroid/icu/impl/coll/CollationData;

    if-nez v1, :cond_13

    return v0

    .line 1421
    :cond_13
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getTailoredSet()Landroid/icu/text/UnicodeSet;

    move-result-object v1

    .line 1422
    .local v1, "set":Landroid/icu/text/UnicodeSet;
    new-instance v2, Landroid/icu/text/UnicodeSetIterator;

    invoke-direct {v2, v1}, Landroid/icu/text/UnicodeSetIterator;-><init>(Landroid/icu/text/UnicodeSet;)V

    .line 1423
    .local v2, "iter":Landroid/icu/text/UnicodeSetIterator;
    :goto_1c
    invoke-virtual {v2}, Landroid/icu/text/UnicodeSetIterator;->next()Z

    move-result v3

    if-eqz v3, :cond_32

    iget v3, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    sget v4, Landroid/icu/text/UnicodeSetIterator;->IS_STRING:I

    if-eq v3, v4, :cond_32

    .line 1424
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget v4, v2, Landroid/icu/text/UnicodeSetIterator;->codepoint:I

    invoke-virtual {v3, v4}, Landroid/icu/impl/coll/CollationData;->getCE32(I)I

    move-result v3

    xor-int/2addr v0, v3

    goto :goto_1c

    .line 1426
    :cond_32
    return v0
.end method

.method greylist-max-o internalAddContractions(ILandroid/icu/text/UnicodeSet;)V
    .registers 6
    .param p1, "c"    # I
    .param p2, "set"    # Landroid/icu/text/UnicodeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1017
    new-instance v0, Landroid/icu/impl/coll/ContractionsAndExpansions;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p2, v1, v1, v2}, Landroid/icu/impl/coll/ContractionsAndExpansions;-><init>(Landroid/icu/text/UnicodeSet;Landroid/icu/text/UnicodeSet;Landroid/icu/impl/coll/ContractionsAndExpansions$CESink;Z)V

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/ContractionsAndExpansions;->forCodePoint(Landroid/icu/impl/coll/CollationData;I)V

    .line 1018
    return-void
.end method

.method public greylist-max-o internalGetCEs(Ljava/lang/CharSequence;)[J
    .registers 9
    .param p1, "str"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1189
    const/4 v0, 0x0

    .line 1191
    .local v0, "buffer":Landroid/icu/text/RuleBasedCollator$CollationBuffer;
    :try_start_1
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getCollationBuffer()Landroid/icu/text/RuleBasedCollator$CollationBuffer;

    move-result-object v1

    move-object v0, v1

    .line 1192
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v1

    .line 1194
    .local v1, "numeric":Z
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v2}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_29

    .line 1195
    iget-object v2, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    invoke-virtual {v2, v1, p1, v3}, Landroid/icu/impl/coll/UTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1196
    iget-object v2, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftUTF16CollIter:Landroid/icu/impl/coll/UTF16CollationIterator;

    .local v2, "iter":Landroid/icu/impl/coll/CollationIterator;
    goto :goto_30

    .line 1198
    .end local v2    # "iter":Landroid/icu/impl/coll/CollationIterator;
    :cond_29
    iget-object v2, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    invoke-virtual {v2, v1, p1, v3}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->setText(ZLjava/lang/CharSequence;I)V

    .line 1199
    iget-object v2, v0, Landroid/icu/text/RuleBasedCollator$CollationBuffer;->leftFCDUTF16Iter:Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    .line 1201
    .restart local v2    # "iter":Landroid/icu/impl/coll/CollationIterator;
    :goto_30
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationIterator;->fetchCEs()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1202
    .local v4, "length":I
    nop

    .line 1203
    new-array v5, v4, [J

    .line 1204
    .local v5, "ces":[J
    invoke-virtual {v2}, Landroid/icu/impl/coll/CollationIterator;->getCEs()[J

    move-result-object v6

    invoke-static {v6, v3, v5, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_45

    .line 1205
    nop

    .line 1207
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1205
    return-object v5

    .line 1207
    .end local v1    # "numeric":Z
    .end local v2    # "iter":Landroid/icu/impl/coll/CollationIterator;
    .end local v4    # "length":I
    .end local v5    # "ces":[J
    :catchall_45
    move-exception v1

    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->releaseCollationBuffer(Landroid/icu/text/RuleBasedCollator$CollationBuffer;)V

    .line 1208
    throw v1
.end method

.method public whitelist test-api isAlternateHandlingShifted()Z
    .registers 2

    .line 1289
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getAlternateHandling()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isCaseLevel()Z
    .registers 2

    .line 1301
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist test-api isFrenchCollation()Z
    .registers 2

    .line 1312
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    iget v0, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public whitelist test-api isFrozen()Z
    .registers 2

    .line 304
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->frozenLock:Ljava/util/concurrent/locks/Lock;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public greylist-max-o isHiraganaQuaternary()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1331
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isLowerCaseFirst()Z
    .registers 3

    .line 1275
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getCaseFirst()I

    move-result v0

    const/16 v1, 0x200

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method final greylist-max-o isUnsafe(I)Z
    .registers 4
    .param p1, "c"    # I

    .line 1726
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/icu/impl/coll/CollationData;->isUnsafeBackward(IZ)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api isUpperCaseFirst()Z
    .registers 3

    .line 1261
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->getCaseFirst()I

    move-result v0

    const/16 v1, 0x300

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public whitelist test-api setAlternateHandlingDefault()V
    .registers 4

    .line 471
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 472
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 473
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_10

    return-void

    .line 474
    :cond_10
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    .line 475
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setAlternateHandlingDefault(I)V

    .line 476
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 477
    return-void
.end method

.method public whitelist test-api setAlternateHandlingShifted(Z)V
    .registers 3
    .param p1, "shifted"    # Z

    .line 596
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 597
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isAlternateHandlingShifted()Z

    move-result v0

    if-ne p1, v0, :cond_a

    return-void

    .line 598
    :cond_a
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 599
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationSettings;->setAlternateHandlingShifted(Z)V

    .line 600
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 601
    return-void
.end method

.method public final whitelist test-api setCaseFirstDefault()V
    .registers 4

    .line 455
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 456
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 457
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_10

    return-void

    .line 458
    :cond_10
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    .line 459
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirstDefault(I)V

    .line 460
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 461
    return-void
.end method

.method public whitelist test-api setCaseLevel(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .line 622
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 623
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isCaseLevel()Z

    move-result v0

    if-ne p1, v0, :cond_a

    return-void

    .line 624
    :cond_a
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 625
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    const/16 v1, 0x400

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 626
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 627
    return-void
.end method

.method public whitelist test-api setCaseLevelDefault()V
    .registers 5

    .line 487
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 488
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 489
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_10

    return-void

    .line 490
    :cond_10
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    .line 491
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    const/16 v2, 0x400

    iget v3, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    .line 492
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 493
    return-void
.end method

.method public whitelist test-api setDecomposition(I)V
    .registers 5
    .param p1, "decomposition"    # I

    .line 661
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 663
    packed-switch p1, :pswitch_data_2e

    .line 671
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong decomposition mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 668
    :pswitch_e
    const/4 v0, 0x1

    .line 669
    .local v0, "flag":Z
    goto :goto_12

    .line 665
    .end local v0    # "flag":Z
    :pswitch_10
    const/4 v0, 0x0

    .line 666
    .restart local v0    # "flag":Z
    nop

    .line 673
    :goto_12
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationSettings;->getFlag(I)Z

    move-result v1

    if-ne v0, v1, :cond_22

    return-void

    .line 674
    :cond_22
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    .line 675
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    invoke-virtual {v1, v2, v0}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 676
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 677
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x10
        :pswitch_10
        :pswitch_e
    .end packed-switch
.end method

.method public whitelist test-api setDecompositionDefault()V
    .registers 5

    .line 503
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 504
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 505
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_10

    return-void

    .line 506
    :cond_10
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    .line 507
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    const/4 v2, 0x1

    iget v3, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    .line 508
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 509
    return-void
.end method

.method public whitelist test-api setFrenchCollation(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .line 571
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 572
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isFrenchCollation()Z

    move-result v0

    if-ne p1, v0, :cond_a

    return-void

    .line 573
    :cond_a
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 574
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    const/16 v1, 0x800

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 575
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 576
    return-void
.end method

.method public whitelist test-api setFrenchCollationDefault()V
    .registers 5

    .line 519
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 520
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 521
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_10

    return-void

    .line 522
    :cond_10
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    .line 523
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    const/16 v2, 0x800

    iget v3, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    .line 524
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 525
    return-void
.end method

.method public greylist-max-o setHiraganaQuaternary(Z)V
    .registers 2
    .param p1, "flag"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 378
    return-void
.end method

.method public greylist-max-o setHiraganaQuaternaryDefault()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 396
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 397
    return-void
.end method

.method greylist-max-o setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "valid"    # Landroid/icu/util/ULocale;
    .param p2, "actual"    # Landroid/icu/util/ULocale;

    .line 1832
    nop

    .line 1835
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->tailoring:Landroid/icu/impl/coll/CollationTailoring;

    iget-object v0, v0, Landroid/icu/impl/coll/CollationTailoring;->actualLocale:Landroid/icu/util/ULocale;

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1836
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    goto :goto_13

    .line 1838
    :cond_f
    nop

    .line 1839
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/text/RuleBasedCollator;->actualLocaleIsSameAsValid:Z

    .line 1843
    :goto_13
    iput-object p1, p0, Landroid/icu/text/RuleBasedCollator;->validLocale:Landroid/icu/util/ULocale;

    .line 1844
    return-void
.end method

.method public whitelist test-api setLowerCaseFirst(Z)V
    .registers 4
    .param p1, "lowerfirst"    # Z

    .line 438
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 439
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isLowerCaseFirst()Z

    move-result v0

    if-ne p1, v0, :cond_a

    return-void

    .line 440
    :cond_a
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 441
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    if-eqz p1, :cond_13

    const/16 v1, 0x200

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    .line 442
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 443
    return-void
.end method

.method public bridge synthetic whitelist test-api setMaxVariable(I)Landroid/icu/text/Collator;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 187
    invoke-virtual {p0, p1}, Landroid/icu/text/RuleBasedCollator;->setMaxVariable(I)Landroid/icu/text/RuleBasedCollator;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api setMaxVariable(I)Landroid/icu/text/RuleBasedCollator;
    .registers 9
    .param p1, "group"    # I

    .line 721
    const/16 v0, 0x1000

    const/4 v1, -0x1

    if-ne p1, v1, :cond_7

    .line 722
    const/4 v2, -0x1

    .local v2, "value":I
    goto :goto_f

    .line 723
    .end local v2    # "value":I
    :cond_7
    if-gt v0, p1, :cond_4b

    const/16 v2, 0x1003

    if-gt p1, v2, :cond_4b

    .line 724
    add-int/lit16 v2, p1, -0x1000

    .line 728
    .restart local v2    # "value":I
    :goto_f
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v3}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v3

    .line 729
    .local v3, "oldValue":I
    if-ne v2, v3, :cond_1e

    .line 730
    return-object p0

    .line 732
    :cond_1e
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v4

    .line 733
    .local v4, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v5, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v5}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v5

    if-ne v5, v4, :cond_2d

    .line 734
    if-gez v2, :cond_2d

    .line 735
    return-object p0

    .line 738
    :cond_2d
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v5

    .line 740
    .local v5, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    if-ne p1, v1, :cond_39

    .line 741
    invoke-virtual {v4}, Landroid/icu/impl/coll/CollationSettings;->getMaxVariable()I

    move-result v1

    add-int/lit16 p1, v1, 0x1000

    .line 743
    :cond_39
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationData;->getLastPrimaryForGroup(I)J

    move-result-wide v0

    .line 744
    .local v0, "varTop":J
    nop

    .line 745
    iget v6, v4, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v5, v2, v6}, Landroid/icu/impl/coll/CollationSettings;->setMaxVariable(II)V

    .line 746
    iput-wide v0, v5, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    .line 747
    invoke-direct {p0, v5}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 748
    return-object p0

    .line 726
    .end local v0    # "varTop":J
    .end local v2    # "value":I
    .end local v3    # "oldValue":I
    .end local v4    # "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    .end local v5    # "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal max variable group "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setNumericCollation(Z)V
    .registers 4
    .param p1, "flag"    # Z

    .line 877
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 879
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getNumericCollation()Z

    move-result v0

    if-ne p1, v0, :cond_a

    return-void

    .line 880
    :cond_a
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 881
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/icu/impl/coll/CollationSettings;->setFlag(IZ)V

    .line 882
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 883
    return-void
.end method

.method public whitelist test-api setNumericCollationDefault()V
    .registers 5

    .line 550
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 551
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 552
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_10

    return-void

    .line 553
    :cond_10
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    .line 554
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    const/4 v2, 0x2

    iget v3, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/coll/CollationSettings;->setFlagDefault(II)V

    .line 555
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 556
    return-void
.end method

.method public varargs whitelist test-api setReorderCodes([I)V
    .registers 7
    .param p1, "order"    # [I

    .line 898
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 899
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    array-length v1, p1

    goto :goto_9

    :cond_8
    move v1, v0

    .line 900
    .local v1, "length":I
    :goto_9
    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    aget v3, p1, v0

    const/16 v4, 0x67

    if-ne v3, v4, :cond_13

    .line 901
    const/4 v1, 0x0

    .line 903
    :cond_13
    if-nez v1, :cond_23

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    .line 904
    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    array-length v3, v3

    if-nez v3, :cond_34

    goto :goto_33

    :cond_23
    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    .line 905
    invoke-virtual {v3}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v3

    check-cast v3, Landroid/icu/impl/coll/CollationSettings;

    iget-object v3, v3, Landroid/icu/impl/coll/CollationSettings;->reorderCodes:[I

    invoke-static {p1, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 906
    :goto_33
    return-void

    .line 908
    :cond_34
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v3

    .line 909
    .local v3, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    if-ne v1, v2, :cond_52

    aget v0, p1, v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_52

    .line 910
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    if-eq v0, v3, :cond_51

    .line 911
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 912
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    invoke-virtual {v0, v3}, Landroid/icu/impl/coll/CollationSettings;->copyReorderingFrom(Landroid/icu/impl/coll/CollationSettings;)V

    .line 913
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 915
    .end local v0    # "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    :cond_51
    return-void

    .line 917
    :cond_52
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 918
    .restart local v0    # "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    if-nez v1, :cond_5c

    .line 919
    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->resetReordering()V

    goto :goto_67

    .line 921
    :cond_5c
    iget-object v2, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    invoke-virtual {v0, v2, v4}, Landroid/icu/impl/coll/CollationSettings;->setReordering(Landroid/icu/impl/coll/CollationData;[I)V

    .line 923
    :goto_67
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 924
    return-void
.end method

.method public whitelist test-api setStrength(I)V
    .registers 3
    .param p1, "newStrength"    # I

    .line 699
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 700
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->getStrength()I

    move-result v0

    if-ne p1, v0, :cond_a

    return-void

    .line 701
    :cond_a
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 702
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    invoke-virtual {v0, p1}, Landroid/icu/impl/coll/CollationSettings;->setStrength(I)V

    .line 703
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 704
    return-void
.end method

.method public whitelist test-api setStrengthDefault()V
    .registers 4

    .line 535
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 536
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getDefaultSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 537
    .local v0, "defaultSettings":Landroid/icu/impl/coll/CollationSettings;
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    if-ne v1, v0, :cond_10

    return-void

    .line 538
    :cond_10
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v1

    .line 539
    .local v1, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    iget v2, v0, Landroid/icu/impl/coll/CollationSettings;->options:I

    invoke-virtual {v1, v2}, Landroid/icu/impl/coll/CollationSettings;->setStrengthDefault(I)V

    .line 540
    invoke-direct {p0, v1}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 541
    return-void
.end method

.method public whitelist test-api setUpperCaseFirst(Z)V
    .registers 4
    .param p1, "upperfirst"    # Z

    .line 415
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 416
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedCollator;->isUpperCaseFirst()Z

    move-result v0

    if-ne p1, v0, :cond_a

    return-void

    .line 417
    :cond_a
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->getOwnedSettings()Landroid/icu/impl/coll/CollationSettings;

    move-result-object v0

    .line 418
    .local v0, "ownedSettings":Landroid/icu/impl/coll/CollationSettings;
    if-eqz p1, :cond_13

    const/16 v1, 0x300

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    invoke-virtual {v0, v1}, Landroid/icu/impl/coll/CollationSettings;->setCaseFirst(I)V

    .line 419
    invoke-direct {p0, v0}, Landroid/icu/text/RuleBasedCollator;->setFastLatinOptions(Landroid/icu/impl/coll/CollationSettings;)V

    .line 420
    return-void
.end method

.method public greylist-max-o setVariableTop(Ljava/lang/String;)I
    .registers 10
    .param p1, "varTop"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 790
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 791
    if-eqz p1, :cond_6d

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6d

    .line 794
    iget-object v0, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v0}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v0}, Landroid/icu/impl/coll/CollationSettings;->isNumeric()Z

    move-result v0

    .line 796
    .local v0, "numeric":Z
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    invoke-virtual {v1}, Landroid/icu/impl/coll/CollationSettings;->dontCheckFCD()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_36

    .line 797
    new-instance v1, Landroid/icu/impl/coll/UTF16CollationIterator;

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v1, v3, v0, p1, v2}, Landroid/icu/impl/coll/UTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    .line 798
    .local v1, "ci":Landroid/icu/impl/coll/UTF16CollationIterator;
    invoke-virtual {v1}, Landroid/icu/impl/coll/UTF16CollationIterator;->nextCE()J

    move-result-wide v2

    .line 799
    .local v2, "ce1":J
    invoke-virtual {v1}, Landroid/icu/impl/coll/UTF16CollationIterator;->nextCE()J

    move-result-wide v4

    .line 800
    .end local v1    # "ci":Landroid/icu/impl/coll/UTF16CollationIterator;
    .local v4, "ce2":J
    goto :goto_45

    .line 801
    .end local v2    # "ce1":J
    .end local v4    # "ce2":J
    :cond_36
    new-instance v1, Landroid/icu/impl/coll/FCDUTF16CollationIterator;

    iget-object v3, p0, Landroid/icu/text/RuleBasedCollator;->data:Landroid/icu/impl/coll/CollationData;

    invoke-direct {v1, v3, v0, p1, v2}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;-><init>(Landroid/icu/impl/coll/CollationData;ZLjava/lang/CharSequence;I)V

    .line 802
    .local v1, "ci":Landroid/icu/impl/coll/FCDUTF16CollationIterator;
    invoke-virtual {v1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextCE()J

    move-result-wide v2

    .line 803
    .restart local v2    # "ce1":J
    invoke-virtual {v1}, Landroid/icu/impl/coll/FCDUTF16CollationIterator;->nextCE()J

    move-result-wide v4

    .line 805
    .end local v1    # "ci":Landroid/icu/impl/coll/FCDUTF16CollationIterator;
    .restart local v4    # "ce2":J
    :goto_45
    const-wide v6, 0x101000100L

    cmp-long v1, v2, v6

    if-eqz v1, :cond_65

    cmp-long v1, v4, v6

    if-nez v1, :cond_65

    .line 808
    const/16 v1, 0x20

    ushr-long v6, v2, v1

    invoke-direct {p0, v6, v7}, Landroid/icu/text/RuleBasedCollator;->internalSetVariableTop(J)V

    .line 809
    iget-object v1, p0, Landroid/icu/text/RuleBasedCollator;->settings:Landroid/icu/impl/coll/SharedObject$Reference;

    invoke-virtual {v1}, Landroid/icu/impl/coll/SharedObject$Reference;->readOnly()Landroid/icu/impl/coll/SharedObject;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/coll/CollationSettings;

    iget-wide v6, v1, Landroid/icu/impl/coll/CollationSettings;->variableTop:J

    long-to-int v1, v6

    return v1

    .line 806
    :cond_65
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v6, "Variable top argument string must map to exactly one collation element"

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 792
    .end local v0    # "numeric":Z
    .end local v2    # "ce1":J
    .end local v4    # "ce2":J
    :cond_6d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Variable top argument string can not be null or zero in length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-o setVariableTop(I)V
    .registers 6
    .param p1, "varTop"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 829
    invoke-direct {p0}, Landroid/icu/text/RuleBasedCollator;->checkNotFrozen()V

    .line 830
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Landroid/icu/text/RuleBasedCollator;->internalSetVariableTop(J)V

    .line 831
    return-void
.end method
