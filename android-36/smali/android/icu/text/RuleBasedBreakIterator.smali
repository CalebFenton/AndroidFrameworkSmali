.class public Landroid/icu/text/RuleBasedBreakIterator;
.super Landroid/icu/text/BreakIterator;
.source "RuleBasedBreakIterator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RuleBasedBreakIterator$BreakCache;,
        Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o RBBI_DEBUG_ARG:Ljava/lang/String; = "rbbi"

.field private static final greylist-max-o RBBI_END:I = 0x2

.field private static final greylist-max-o RBBI_RUN:I = 0x1

.field private static final greylist-max-o RBBI_START:I = 0x0

.field private static final greylist-max-o START_STATE:I = 0x1

.field private static final greylist-max-o STOP_STATE:I

.field private static final greylist-max-o TRACE:Z

.field public static final greylist-max-o fDebugEnv:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final blacklist gAllBreakEngines:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Landroid/icu/impl/breakiter/LanguageBreakEngine;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist gUnhandledBreakEngine:Landroid/icu/impl/breakiter/UnhandledBreakEngine;


# instance fields
.field private greylist-max-o fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

.field private greylist-max-o fDictionaryCache:Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

.field private greylist-max-o fDictionaryCharCount:I

.field private greylist-max-o fDone:Z

.field private blacklist fLookAheadMatches:[I

.field private blacklist fPhraseBreaking:Z

.field private greylist-max-o fPosition:I

.field public blacklist fRData:Landroid/icu/impl/RBBIDataWrapper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private greylist-max-o fRuleStatusIndex:I

.field private greylist-max-o fText:Ljava/text/CharacterIterator;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetfDictionaryCache(Landroid/icu/text/RuleBasedBreakIterator;)Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCache:Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfDictionaryCharCount(Landroid/icu/text/RuleBasedBreakIterator;)I
    .registers 1

    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfPhraseBreaking(Landroid/icu/text/RuleBasedBreakIterator;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPhraseBreaking:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfRuleStatusIndex(Landroid/icu/text/RuleBasedBreakIterator;)I
    .registers 1

    iget p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetfText(Landroid/icu/text/RuleBasedBreakIterator;)Ljava/text/CharacterIterator;
    .registers 1

    iget-object p0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputfDone(Landroid/icu/text/RuleBasedBreakIterator;Z)V
    .registers 2

    iput-boolean p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDone:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputfPosition(Landroid/icu/text/RuleBasedBreakIterator;I)V
    .registers 2

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputfRuleStatusIndex(Landroid/icu/text/RuleBasedBreakIterator;I)V
    .registers 2

    iput p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLanguageBreakEngine(Landroid/icu/text/RuleBasedBreakIterator;I)Landroid/icu/impl/breakiter/LanguageBreakEngine;
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator;->getLanguageBreakEngine(I)Landroid/icu/impl/breakiter/LanguageBreakEngine;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleNext(Landroid/icu/text/RuleBasedBreakIterator;)I
    .registers 1

    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;->handleNext()I

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSafePrevious(Landroid/icu/text/RuleBasedBreakIterator;I)I
    .registers 2

    invoke-direct {p0, p1}, Landroid/icu/text/RuleBasedBreakIterator;->handleSafePrevious(I)I

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 50
    nop

    .line 316
    const-string v0, "rbbi"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 317
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "trace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    sput-boolean v1, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    .line 342
    new-instance v1, Landroid/icu/impl/breakiter/UnhandledBreakEngine;

    invoke-direct {v1}, Landroid/icu/impl/breakiter/UnhandledBreakEngine;-><init>()V

    sput-object v1, Landroid/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Landroid/icu/impl/breakiter/UnhandledBreakEngine;

    .line 343
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    sput-object v1, Landroid/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 344
    sget-object v1, Landroid/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/concurrent/ConcurrentLinkedQueue;

    sget-object v2, Landroid/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Landroid/icu/impl/breakiter/UnhandledBreakEngine;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 690
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 691
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->value(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3b

    :cond_3a
    const/4 v0, 0x0

    :goto_3b
    sput-object v0, Landroid/icu/text/RuleBasedBreakIterator;->fDebugEnv:Ljava/lang/String;

    .line 690
    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 58
    invoke-direct {p0}, Landroid/icu/text/BreakIterator;-><init>()V

    .line 249
    new-instance v0, Ljava/text/StringCharacterIterator;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 289
    new-instance v0, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-direct {v0, p0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;-><init>(Landroid/icu/text/RuleBasedBreakIterator;)V

    iput-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    .line 294
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPhraseBreaking:Z

    .line 306
    new-instance v1, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    invoke-direct {v1, p0}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;-><init>(Landroid/icu/text/RuleBasedBreakIterator;)V

    iput-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCache:Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    .line 59
    iput v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    .line 60
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 6
    .param p1, "rules"    # Ljava/lang/String;

    .line 138
    invoke-direct {p0}, Landroid/icu/text/RuleBasedBreakIterator;-><init>()V

    .line 140
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 141
    .local v0, "ruleOS":Ljava/io/ByteArrayOutputStream;
    invoke-static {p1, v0}, Landroid/icu/text/RuleBasedBreakIterator;->compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/RBBIDataWrapper;->get(Ljava/nio/ByteBuffer;)Landroid/icu/impl/RBBIDataWrapper;

    move-result-object v1

    iput-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    .line 143
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v1, v1, Landroid/icu/impl/RBBIDataWrapper;->fFTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget v1, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:[I
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_23} :catch_25

    .line 152
    .end local v0    # "ruleOS":Ljava/io/ByteArrayOutputStream;
    nop

    .line 153
    return-void

    .line 144
    :catch_25
    move-exception v0

    .line 148
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RuleBasedBreakIterator rule compilation internal error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 149
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 150
    .local v1, "rte":Ljava/lang/RuntimeException;
    throw v1
.end method

.method private static greylist-max-o CISetIndex32(Ljava/text/CharacterIterator;I)I
    .registers 3
    .param p0, "ci"    # Ljava/text/CharacterIterator;
    .param p1, "index"    # I

    .line 1039
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-gt p1, v0, :cond_a

    .line 1040
    invoke-interface {p0}, Ljava/text/CharacterIterator;->first()C

    goto :goto_2f

    .line 1041
    :cond_a
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    if-lt p1, v0, :cond_18

    .line 1042
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    invoke-interface {p0, v0}, Ljava/text/CharacterIterator;->setIndex(I)C

    goto :goto_2f

    .line 1043
    :cond_18
    invoke-interface {p0, p1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 1044
    invoke-interface {p0}, Ljava/text/CharacterIterator;->previous()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1045
    invoke-interface {p0}, Ljava/text/CharacterIterator;->next()C

    .line 1048
    :cond_2f
    :goto_2f
    invoke-interface {p0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    return v0
.end method

.method protected static final greylist-max-o checkOffset(ILjava/text/CharacterIterator;)V
    .registers 4
    .param p0, "offset"    # I
    .param p1, "text"    # Ljava/text/CharacterIterator;

    .line 517
    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-lt p0, v0, :cond_d

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    if-gt p0, v0, :cond_d

    .line 520
    return-void

    .line 518
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "offset out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 2
    .param p0, "rules"    # Ljava/lang/String;
    .param p1, "ruleBinary"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    invoke-static {p0, p1}, Landroid/icu/text/RBBIRuleBuilder;->compileRules(Ljava/lang/String;Ljava/io/OutputStream;)V

    .line 377
    return-void
.end method

.method public static greylist-max-o getInstanceFromCompiledRules(Ljava/io/InputStream;)Landroid/icu/text/RuleBasedBreakIterator;
    .registers 3
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 77
    new-instance v0, Landroid/icu/text/RuleBasedBreakIterator;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedBreakIterator;-><init>()V

    .line 78
    .local v0, "This":Landroid/icu/text/RuleBasedBreakIterator;
    invoke-static {p0}, Landroid/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Landroid/icu/impl/RBBIDataWrapper;->get(Ljava/nio/ByteBuffer;)Landroid/icu/impl/RBBIDataWrapper;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    .line 79
    iget-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v1, v1, Landroid/icu/impl/RBBIDataWrapper;->fFTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget v1, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:[I

    .line 80
    return-object v0
.end method

.method public static greylist-max-o getInstanceFromCompiledRules(Ljava/nio/ByteBuffer;)Landroid/icu/text/RuleBasedBreakIterator;
    .registers 3
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 127
    new-instance v0, Landroid/icu/text/RuleBasedBreakIterator;

    invoke-direct {v0}, Landroid/icu/text/RuleBasedBreakIterator;-><init>()V

    .line 128
    .local v0, "This":Landroid/icu/text/RuleBasedBreakIterator;
    invoke-static {p0}, Landroid/icu/impl/RBBIDataWrapper;->get(Ljava/nio/ByteBuffer;)Landroid/icu/impl/RBBIDataWrapper;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    .line 129
    iget-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v1, v1, Landroid/icu/impl/RBBIDataWrapper;->fFTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget v1, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:[I

    .line 130
    return-object v0
.end method

.method static blacklist getInstanceFromCompiledRules(Ljava/nio/ByteBuffer;Z)Landroid/icu/text/RuleBasedBreakIterator;
    .registers 3
    .param p0, "bytes"    # Ljava/nio/ByteBuffer;
    .param p1, "phraseBreaking"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    invoke-static {p0}, Landroid/icu/text/RuleBasedBreakIterator;->getInstanceFromCompiledRules(Ljava/nio/ByteBuffer;)Landroid/icu/text/RuleBasedBreakIterator;

    move-result-object v0

    .line 105
    .local v0, "instance":Landroid/icu/text/RuleBasedBreakIterator;
    iput-boolean p1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fPhraseBreaking:Z

    .line 106
    return-object v0
.end method

.method private blacklist getLanguageBreakEngine(I)Landroid/icu/impl/breakiter/LanguageBreakEngine;
    .registers 6
    .param p1, "c"    # I

    .line 700
    sget-object v0, Landroid/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/breakiter/LanguageBreakEngine;

    .line 701
    .local v1, "candidate":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    invoke-interface {v1, p1}, Landroid/icu/impl/breakiter/LanguageBreakEngine;->handles(I)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 702
    return-object v1

    .line 704
    .end local v1    # "candidate":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    :cond_19
    goto :goto_6

    .line 706
    :cond_1a
    sget-object v0, Landroid/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/concurrent/ConcurrentLinkedQueue;

    monitor-enter v0

    .line 708
    :try_start_1d
    sget-object v1, Landroid/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/breakiter/LanguageBreakEngine;

    .line 709
    .local v2, "candidate":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    invoke-interface {v2, p1}, Landroid/icu/impl/breakiter/LanguageBreakEngine;->handles(I)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 710
    monitor-exit v0

    return-object v2

    .line 712
    .end local v2    # "candidate":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    :cond_37
    goto :goto_23

    .line 715
    :cond_38
    const/16 v1, 0x100a

    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->getIntPropertyValue(II)I

    move-result v1
    :try_end_3e
    .catchall {:try_start_1d .. :try_end_3e} :catchall_a1

    .line 716
    .local v1, "script":I
    const/16 v2, 0x16

    if-eq v1, v2, :cond_46

    const/16 v2, 0x14

    if-ne v1, v2, :cond_48

    .line 719
    :cond_46
    const/16 v1, 0x11

    .line 724
    :cond_48
    sparse-switch v1, :sswitch_data_a4

    .line 752
    :try_start_4b
    sget-object v2, Landroid/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Landroid/icu/impl/breakiter/UnhandledBreakEngine;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4d} :catch_8a
    .catchall {:try_start_4b .. :try_end_4d} :catchall_a1

    goto :goto_8c

    .line 727
    :sswitch_4e
    :try_start_4e
    invoke-static {v1}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->createData(I)Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->create(ILandroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;)Landroid/icu/impl/breakiter/LSTMBreakEngine;

    move-result-object v2
    :try_end_56
    .catch Ljava/util/MissingResourceException; {:try_start_4e .. :try_end_56} :catch_57
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_56} :catch_8a
    .catchall {:try_start_4e .. :try_end_56} :catchall_a1

    .line 730
    .local v2, "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    goto :goto_91

    .line 728
    .end local v2    # "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    :catch_57
    move-exception v2

    .line 729
    .local v2, "e":Ljava/util/MissingResourceException;
    :try_start_58
    new-instance v3, Landroid/icu/impl/breakiter/ThaiBreakEngine;

    invoke-direct {v3}, Landroid/icu/impl/breakiter/ThaiBreakEngine;-><init>()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_5d} :catch_8a
    .catchall {:try_start_58 .. :try_end_5d} :catchall_a1

    move-object v2, v3

    .line 731
    .local v2, "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    goto :goto_91

    .line 737
    .end local v2    # "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    :sswitch_5f
    :try_start_5f
    invoke-static {v1}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->createData(I)Landroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/icu/impl/breakiter/LSTMBreakEngine;->create(ILandroid/icu/impl/breakiter/LSTMBreakEngine$LSTMData;)Landroid/icu/impl/breakiter/LSTMBreakEngine;

    move-result-object v2
    :try_end_67
    .catch Ljava/util/MissingResourceException; {:try_start_5f .. :try_end_67} :catch_68
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_67} :catch_8a
    .catchall {:try_start_5f .. :try_end_67} :catchall_a1

    .line 740
    .restart local v2    # "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    goto :goto_91

    .line 738
    .end local v2    # "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    :catch_68
    move-exception v2

    .line 739
    .local v2, "e":Ljava/util/MissingResourceException;
    :try_start_69
    new-instance v3, Landroid/icu/impl/breakiter/BurmeseBreakEngine;

    invoke-direct {v3}, Landroid/icu/impl/breakiter/BurmeseBreakEngine;-><init>()V

    move-object v2, v3

    .line 741
    .local v2, "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    goto :goto_91

    .line 733
    .end local v2    # "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    :sswitch_70
    new-instance v2, Landroid/icu/impl/breakiter/LaoBreakEngine;

    invoke-direct {v2}, Landroid/icu/impl/breakiter/LaoBreakEngine;-><init>()V

    .line 734
    .restart local v2    # "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    goto :goto_91

    .line 743
    .end local v2    # "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    :sswitch_76
    new-instance v2, Landroid/icu/impl/breakiter/KhmerBreakEngine;

    invoke-direct {v2}, Landroid/icu/impl/breakiter/KhmerBreakEngine;-><init>()V

    .line 744
    .restart local v2    # "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    goto :goto_91

    .line 749
    .end local v2    # "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    :sswitch_7c
    new-instance v2, Landroid/icu/impl/breakiter/CjkBreakEngine;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/icu/impl/breakiter/CjkBreakEngine;-><init>(Z)V

    .line 750
    .restart local v2    # "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    goto :goto_91

    .line 746
    .end local v2    # "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    :sswitch_83
    new-instance v2, Landroid/icu/impl/breakiter/CjkBreakEngine;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/icu/impl/breakiter/CjkBreakEngine;-><init>(Z)V

    .line 747
    .restart local v2    # "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    goto :goto_91

    .line 756
    .end local v2    # "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    :catch_8a
    move-exception v2

    goto :goto_92

    .line 752
    :goto_8c
    invoke-virtual {v2, p1}, Landroid/icu/impl/breakiter/UnhandledBreakEngine;->handleChar(I)V

    .line 753
    sget-object v2, Landroid/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Landroid/icu/impl/breakiter/UnhandledBreakEngine;
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_91} :catch_8a
    .catchall {:try_start_69 .. :try_end_91} :catchall_a1

    .line 758
    .restart local v2    # "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    :goto_91
    goto :goto_94

    .line 757
    .local v2, "e":Ljava/io/IOException;
    :goto_92
    const/4 v3, 0x0

    move-object v2, v3

    .line 760
    .local v2, "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    :goto_94
    if-eqz v2, :cond_9f

    :try_start_96
    sget-object v3, Landroid/icu/text/RuleBasedBreakIterator;->gUnhandledBreakEngine:Landroid/icu/impl/breakiter/UnhandledBreakEngine;

    if-eq v2, v3, :cond_9f

    .line 761
    sget-object v3, Landroid/icu/text/RuleBasedBreakIterator;->gAllBreakEngines:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 763
    :cond_9f
    monitor-exit v0

    return-object v2

    .line 764
    .end local v1    # "script":I
    .end local v2    # "eng":Landroid/icu/impl/breakiter/LanguageBreakEngine;
    :catchall_a1
    move-exception v1

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_96 .. :try_end_a3} :catchall_a1

    throw v1

    :sswitch_data_a4
    .sparse-switch
        0x11 -> :sswitch_83
        0x12 -> :sswitch_7c
        0x17 -> :sswitch_76
        0x18 -> :sswitch_70
        0x1c -> :sswitch_5f
        0x26 -> :sswitch_4e
    .end sparse-switch
.end method

.method private greylist-max-o handleNext()I
    .registers 22

    .line 790
    move-object/from16 v0, p0

    sget-boolean v1, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v1, :cond_d

    .line 791
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "Handle Next   pos      char  state category"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 796
    :cond_d
    const/4 v1, 0x0

    iput v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    .line 797
    iput v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    .line 800
    iget-object v2, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 801
    .local v2, "text":Ljava/text/CharacterIterator;
    iget-object v3, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v3, v3, Landroid/icu/impl/RBBIDataWrapper;->fTrie:Landroid/icu/util/CodePointTrie;

    .line 803
    .local v3, "trie":Landroid/icu/util/CodePointTrie;
    iget-object v4, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v4, v4, Landroid/icu/impl/RBBIDataWrapper;->fFTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget-object v4, v4, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    .line 804
    .local v4, "stateTable":[C
    iget v5, v0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    .line 805
    .local v5, "initialPosition":I
    invoke-interface {v2, v5}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 806
    move v6, v5

    .line 809
    .local v6, "result":I
    invoke-interface {v2}, Ljava/text/CharacterIterator;->current()C

    move-result v7

    .line 810
    .local v7, "c":I
    const v8, 0x7fffffff

    const v9, 0xd800

    const/4 v10, 0x1

    if-lt v7, v9, :cond_3b

    .line 811
    invoke-static {v2, v7}, Landroid/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    move-result v7

    .line 812
    if-ne v7, v8, :cond_3b

    .line 813
    iput-boolean v10, v0, Landroid/icu/text/RuleBasedBreakIterator;->fDone:Z

    .line 814
    const/4 v1, -0x1

    return v1

    .line 819
    :cond_3b
    const/4 v11, 0x1

    .line 820
    .local v11, "state":I
    iget-object v12, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    invoke-virtual {v12, v11}, Landroid/icu/impl/RBBIDataWrapper;->getRowIndex(I)I

    move-result v12

    .line 821
    .local v12, "row":I
    const/4 v13, 0x3

    .line 822
    .local v13, "category":S
    iget-object v14, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v14, v14, Landroid/icu/impl/RBBIDataWrapper;->fFTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget v14, v14, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fFlags:I

    .line 823
    .local v14, "flagsState":I
    iget-object v15, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v15, v15, Landroid/icu/impl/RBBIDataWrapper;->fFTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget v15, v15, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fDictCategoriesStart:I

    .line 824
    .local v15, "dictStart":I
    const/16 v16, 0x1

    .line 825
    .local v16, "mode":I
    and-int/lit8 v17, v14, 0x2

    const/4 v8, 0x5

    const-string v1, "            "

    if-eqz v17, :cond_b0

    .line 826
    const/4 v13, 0x2

    .line 827
    const/16 v16, 0x0

    .line 828
    sget-boolean v17, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v17, :cond_ab

    .line 829
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v19, v4

    .end local v4    # "stateTable":[C
    .local v19, "stateTable":[C
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v4

    invoke-static {v4, v8}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 830
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Landroid/icu/impl/RBBIDataWrapper;->intToHexString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 831
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x7

    invoke-static {v11, v10}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/4 v9, 0x6

    invoke-static {v13, v9}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_ad

    .line 828
    .end local v19    # "stateTable":[C
    .restart local v4    # "stateTable":[C
    :cond_ab
    move-object/from16 v19, v4

    .line 836
    .end local v4    # "stateTable":[C
    .restart local v19    # "stateTable":[C
    :goto_ad
    move/from16 v4, v16

    goto :goto_b4

    .line 825
    .end local v19    # "stateTable":[C
    .restart local v4    # "stateTable":[C
    :cond_b0
    move-object/from16 v19, v4

    .end local v4    # "stateTable":[C
    .restart local v19    # "stateTable":[C
    move/from16 v4, v16

    .line 836
    .end local v16    # "mode":I
    .local v4, "mode":I
    :goto_b4
    if-eqz v11, :cond_1a1

    .line 837
    const v8, 0x7fffffff

    if-ne v7, v8, :cond_cc

    .line 839
    const/4 v9, 0x2

    if-ne v4, v9, :cond_c0

    .line 843
    goto/16 :goto_1a1

    .line 846
    :cond_c0
    const/4 v4, 0x2

    .line 847
    const/4 v9, 0x1

    move-object/from16 v16, v1

    move v13, v9

    const v8, 0xd800

    const/16 v18, 0x6

    .end local v13    # "category":S
    .local v9, "category":S
    goto/16 :goto_14f

    .line 849
    .end local v9    # "category":S
    .restart local v13    # "category":S
    :cond_cc
    const/4 v9, 0x1

    if-ne v4, v9, :cond_146

    .line 858
    invoke-virtual {v3, v7}, Landroid/icu/util/CodePointTrie;->get(I)I

    move-result v10

    int-to-short v10, v10

    .line 861
    .end local v13    # "category":S
    .local v10, "category":S
    if-lt v10, v15, :cond_db

    .line 862
    iget v13, v0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    add-int/2addr v13, v9

    iput v13, v0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCharCount:I

    .line 865
    :cond_db
    sget-boolean v9, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v9, :cond_12c

    .line 866
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v8

    move-object/from16 v16, v1

    const/4 v1, 0x5

    invoke-static {v8, v1}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 867
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v9, 0xa

    invoke-static {v7, v9}, Landroid/icu/impl/RBBIDataWrapper;->intToHexString(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 868
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x7

    invoke-static {v11, v1}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v13, 0x6

    invoke-static {v10, v13}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12f

    .line 865
    :cond_12c
    move-object/from16 v16, v1

    const/4 v13, 0x6

    .line 874
    :goto_12f
    invoke-interface {v2}, Ljava/text/CharacterIterator;->next()C

    move-result v1

    .line 875
    .end local v7    # "c":I
    .local v1, "c":I
    const v8, 0xd800

    if-lt v1, v8, :cond_141

    .line 876
    invoke-static {v2, v1}, Landroid/icu/impl/CharacterIteration;->nextTrail32(Ljava/text/CharacterIterator;I)I

    move-result v1

    move v7, v1

    move/from16 v18, v13

    move v13, v10

    goto :goto_14f

    .line 875
    :cond_141
    move v7, v1

    move/from16 v18, v13

    move v13, v10

    goto :goto_14f

    .line 880
    .end local v1    # "c":I
    .end local v10    # "category":S
    .restart local v7    # "c":I
    .restart local v13    # "category":S
    :cond_146
    move-object/from16 v16, v1

    const v8, 0xd800

    const/16 v18, 0x6

    const/4 v1, 0x1

    move v4, v1

    .line 884
    :goto_14f
    add-int/lit8 v1, v12, 0x3

    add-int/2addr v1, v13

    aget-char v11, v19, v1

    .line 885
    iget-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    invoke-virtual {v1, v11}, Landroid/icu/impl/RBBIDataWrapper;->getRowIndex(I)I

    move-result v12

    .line 886
    add-int/lit8 v1, v12, 0x0

    aget-char v1, v19, v1

    .line 887
    .local v1, "accepting":I
    const v9, 0x10ffff

    const/high16 v10, 0x10000

    const/4 v8, 0x1

    if-ne v1, v8, :cond_177

    .line 889
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v6

    .line 890
    if-lt v7, v10, :cond_170

    if-gt v7, v9, :cond_170

    .line 893
    add-int/lit8 v6, v6, -0x1

    .line 897
    :cond_170
    add-int/lit8 v8, v12, 0x2

    aget-char v8, v19, v8

    iput v8, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    goto :goto_189

    .line 898
    :cond_177
    const/4 v8, 0x1

    if-le v1, v8, :cond_189

    .line 900
    iget-object v8, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:[I

    aget v8, v8, v1

    .line 901
    .local v8, "lookaheadResult":I
    if-ltz v8, :cond_189

    .line 902
    add-int/lit8 v9, v12, 0x2

    aget-char v9, v19, v9

    iput v9, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    .line 903
    iput v8, v0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    .line 904
    return v8

    .line 915
    .end local v8    # "lookaheadResult":I
    :cond_189
    :goto_189
    add-int/lit8 v8, v12, 0x1

    aget-char v8, v19, v8

    .line 916
    .local v8, "rule":I
    if-eqz v8, :cond_19d

    .line 917
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v20

    .line 918
    .local v20, "pos":I
    if-lt v7, v10, :cond_199

    if-gt v7, v9, :cond_199

    .line 921
    add-int/lit8 v20, v20, -0x1

    .line 923
    :cond_199
    iget-object v9, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:[I

    aput v20, v9, v8

    .line 927
    .end local v1    # "accepting":I
    .end local v8    # "rule":I
    .end local v20    # "pos":I
    :cond_19d
    move-object/from16 v1, v16

    goto/16 :goto_b4

    .line 935
    :cond_1a1
    :goto_1a1
    if-ne v6, v5, :cond_1bb

    .line 936
    sget-boolean v1, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v1, :cond_1ae

    .line 937
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "Iterator did not move. Advancing by 1."

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 939
    :cond_1ae
    invoke-interface {v2, v5}, Ljava/text/CharacterIterator;->setIndex(I)C

    .line 940
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->next32(Ljava/text/CharacterIterator;)I

    .line 941
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v6

    .line 942
    const/4 v1, 0x0

    iput v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    .line 948
    :cond_1bb
    iput v6, v0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    .line 950
    sget-boolean v1, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v1, :cond_1d9

    .line 951
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 953
    :cond_1d9
    return v6
.end method

.method private blacklist handleSafePrevious(I)I
    .registers 14
    .param p1, "fromPosition"    # I

    .line 969
    const/4 v0, 0x0

    .line 970
    .local v0, "category":S
    const/4 v1, 0x0

    .line 973
    .local v1, "result":I
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 974
    .local v2, "text":Ljava/text/CharacterIterator;
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v3, v3, Landroid/icu/impl/RBBIDataWrapper;->fTrie:Landroid/icu/util/CodePointTrie;

    .line 975
    .local v3, "trie":Landroid/icu/util/CodePointTrie;
    iget-object v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v4, v4, Landroid/icu/impl/RBBIDataWrapper;->fRTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget-object v4, v4, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fTable:[C

    .line 977
    .local v4, "stateTable":[C
    invoke-static {v2, p1}, Landroid/icu/text/RuleBasedBreakIterator;->CISetIndex32(Ljava/text/CharacterIterator;I)I

    .line 978
    sget-boolean v5, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v5, :cond_1c

    .line 979
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, "Handle Previous   pos   char  state category"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 983
    :cond_1c
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v5

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v6

    if-ne v5, v6, :cond_28

    .line 984
    const/4 v5, -0x1

    return v5

    .line 988
    :cond_28
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v5

    .line 989
    .local v5, "c":I
    const/4 v6, 0x1

    .line 990
    .local v6, "state":C
    iget-object v7, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    invoke-virtual {v7, v6}, Landroid/icu/impl/RBBIDataWrapper;->getRowIndex(I)I

    move-result v7

    .line 994
    .local v7, "row":I
    :goto_33
    const v8, 0x7fffffff

    if-eq v5, v8, :cond_a1

    .line 1000
    invoke-virtual {v3, v5}, Landroid/icu/util/CodePointTrie;->get(I)I

    move-result v8

    int-to-short v0, v8

    .line 1001
    sget-boolean v8, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v8, :cond_8d

    .line 1002
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "            "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v10

    const/4 v11, 0x5

    invoke-static {v10, v11}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1003
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v9, 0xa

    invoke-static {v5, v9}, Landroid/icu/impl/RBBIDataWrapper;->intToHexString(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1004
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x7

    invoke-static {v6, v10}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v10, 0x6

    invoke-static {v0, v10}, Landroid/icu/impl/RBBIDataWrapper;->intToString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1009
    :cond_8d
    nop

    .line 1010
    add-int/lit8 v8, v7, 0x3

    add-int/2addr v8, v0

    aget-char v6, v4, v8

    .line 1011
    iget-object v8, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    invoke-virtual {v8, v6}, Landroid/icu/impl/RBBIDataWrapper;->getRowIndex(I)I

    move-result v7

    .line 1013
    if-nez v6, :cond_9c

    .line 1016
    goto :goto_a1

    .line 994
    :cond_9c
    invoke-static {v2}, Landroid/icu/impl/CharacterIteration;->previous32(Ljava/text/CharacterIterator;)I

    move-result v5

    goto :goto_33

    .line 1021
    :cond_a1
    :goto_a1
    invoke-interface {v2}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v1

    .line 1022
    sget-boolean v8, Landroid/icu/text/RuleBasedBreakIterator;->TRACE:Z

    if-eqz v8, :cond_c1

    .line 1023
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1025
    :cond_c1
    return v1
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 4

    .line 167
    invoke-super {p0}, Landroid/icu/text/BreakIterator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/RuleBasedBreakIterator;

    .line 168
    .local v0, "result":Landroid/icu/text/RuleBasedBreakIterator;
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v1, :cond_14

    .line 169
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v1}, Ljava/text/CharacterIterator;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/CharacterIterator;

    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 171
    :cond_14
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v1, v1, Landroid/icu/impl/RBBIDataWrapper;->fFTable:Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;

    iget v1, v1, Landroid/icu/impl/RBBIDataWrapper$RBBIStateTable;->fLookAheadResultsSize:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fLookAheadMatches:[I

    .line 172
    new-instance v1, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-direct {v1, v0, v2}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;-><init>(Landroid/icu/text/RuleBasedBreakIterator;Landroid/icu/text/RuleBasedBreakIterator$BreakCache;)V

    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    .line 173
    new-instance v1, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCache:Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    invoke-direct {v1, v0, v2}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;-><init>(Landroid/icu/text/RuleBasedBreakIterator;Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;)V

    iput-object v1, v0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCache:Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    .line 174
    return-object v0
.end method

.method public whitelist test-api current()I
    .registers 2

    .line 564
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    goto :goto_8

    :cond_7
    const/4 v0, -0x1

    :goto_8
    return v0
.end method

.method public greylist-max-o dump(Ljava/io/PrintStream;)V
    .registers 3
    .param p1, "out"    # Ljava/io/PrintStream;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 355
    if-nez p1, :cond_4

    .line 356
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 358
    :cond_4
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    invoke-virtual {v0, p1}, Landroid/icu/impl/RBBIDataWrapper;->dump(Ljava/io/PrintStream;)V

    .line 359
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "that"    # Ljava/lang/Object;

    .line 184
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 185
    return v0

    .line 187
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 188
    return v1

    .line 191
    :cond_8
    :try_start_8
    move-object v2, p1

    check-cast v2, Landroid/icu/text/RuleBasedBreakIterator;

    .line 192
    .local v2, "other":Landroid/icu/text/RuleBasedBreakIterator;
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v4, v2, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    if-eq v3, v4, :cond_1a

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    if-eqz v3, :cond_19

    iget-object v3, v2, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    if-nez v3, :cond_1a

    .line 193
    :cond_19
    return v0

    .line 195
    :cond_1a
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    if-eqz v3, :cond_31

    iget-object v3, v2, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    if-eqz v3, :cond_31

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v3, v3, Landroid/icu/impl/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v4, v4, Landroid/icu/impl/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    .line 196
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 197
    return v0

    .line 199
    :cond_31
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v3, :cond_3a

    iget-object v3, v2, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v3, :cond_3a

    .line 200
    return v1

    .line 202
    :cond_3a
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v3, :cond_55

    iget-object v3, v2, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v3, :cond_55

    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    iget-object v4, v2, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v3, v4}, Ljava/text/CharacterIterator;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4d

    goto :goto_55

    .line 205
    :cond_4d
    iget v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    iget v4, v2, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I
    :try_end_51
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_51} :catch_56

    if-ne v3, v4, :cond_54

    move v0, v1

    :cond_54
    return v0

    .line 203
    :cond_55
    :goto_55
    return v0

    .line 207
    .end local v2    # "other":Landroid/icu/text/RuleBasedBreakIterator;
    :catch_56
    move-exception v1

    .line 208
    .local v1, "e":Ljava/lang/ClassCastException;
    return v0
.end method

.method public whitelist test-api first()I
    .registers 3

    .line 390
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v0, :cond_6

    .line 391
    const/4 v0, -0x1

    return v0

    .line 393
    :cond_6
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->first()C

    .line 394
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getIndex()I

    move-result v0

    .line 395
    .local v0, "start":I
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v1, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->seek(I)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 396
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v1, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populateNear(I)Z

    .line 398
    :cond_1e
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->current()I

    .line 399
    nop

    .line 400
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    return v1
.end method

.method public whitelist test-api following(I)I
    .registers 3
    .param p1, "startPos"    # I

    .line 478
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-ge p1, v0, :cond_d

    .line 479
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    move-result v0

    return v0

    .line 484
    :cond_d
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0, p1}, Landroid/icu/text/RuleBasedBreakIterator;->CISetIndex32(Ljava/text/CharacterIterator;I)I

    move-result p1

    .line 485
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0, p1}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->following(I)V

    .line 486
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDone:Z

    if-eqz v0, :cond_1e

    const/4 v0, -0x1

    goto :goto_20

    :cond_1e
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    :goto_20
    return v0
.end method

.method public whitelist test-api getRuleStatus()I
    .registers 4

    .line 602
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v1, v1, Landroid/icu/impl/RBBIDataWrapper;->fStatusTable:[I

    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 603
    .local v0, "idx":I
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v1, v1, Landroid/icu/impl/RBBIDataWrapper;->fStatusTable:[I

    aget v1, v1, v0

    .line 604
    .local v1, "tagVal":I
    return v1
.end method

.method public whitelist test-api getRuleStatusVec([I)I
    .registers 7
    .param p1, "fillInArray"    # [I

    .line 629
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v0, v0, Landroid/icu/impl/RBBIDataWrapper;->fStatusTable:[I

    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    aget v0, v0, v1

    .line 630
    .local v0, "numStatusVals":I
    if-eqz p1, :cond_22

    .line 631
    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 632
    .local v1, "numToCopy":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_10
    if-ge v2, v1, :cond_22

    .line 633
    iget-object v3, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v3, v3, Landroid/icu/impl/RBBIDataWrapper;->fStatusTable:[I

    iget v4, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRuleStatusIndex:I

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    aput v3, p1, v2

    .line 632
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 636
    .end local v1    # "numToCopy":I
    .end local v2    # "i":I
    :cond_22
    return v0
.end method

.method public whitelist test-api getText()Ljava/text/CharacterIterator;
    .registers 2

    .line 657
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v0, v0, Landroid/icu/impl/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api isBoundary(I)Z
    .registers 5
    .param p1, "offset"    # I

    .line 534
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {p1, v0}, Landroid/icu/text/RuleBasedBreakIterator;->checkOffset(ILjava/text/CharacterIterator;)V

    .line 539
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-static {v0, p1}, Landroid/icu/text/RuleBasedBreakIterator;->CISetIndex32(Ljava/text/CharacterIterator;I)I

    move-result v0

    .line 541
    .local v0, "adjustedOffset":I
    const/4 v1, 0x0

    .line 542
    .local v1, "result":Z
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v2, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->seek(I)Z

    move-result v2

    if-nez v2, :cond_1c

    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v2, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->populateNear(I)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 543
    :cond_1c
    iget-object v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v2}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->current()I

    move-result v2

    if-ne v2, p1, :cond_26

    const/4 v2, 0x1

    goto :goto_27

    :cond_26
    const/4 v2, 0x0

    :goto_27
    move v1, v2

    .line 546
    :cond_28
    if-nez v1, :cond_2d

    .line 549
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    .line 551
    :cond_2d
    return v1
.end method

.method public whitelist test-api last()I
    .registers 4

    .line 410
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-nez v0, :cond_6

    .line 411
    const/4 v0, -0x1

    return v0

    .line 413
    :cond_6
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    .line 414
    .local v0, "endPos":I
    invoke-virtual {p0, v0}, Landroid/icu/text/RuleBasedBreakIterator;->isBoundary(I)Z

    move-result v1

    .line 415
    .local v1, "endShouldBeBoundary":Z
    nop

    .line 416
    iget v2, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    if-eq v2, v0, :cond_16

    .line 417
    nop

    .line 419
    :cond_16
    return v0
.end method

.method public whitelist test-api next()I
    .registers 2

    .line 454
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->next()V

    .line 455
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDone:Z

    if-eqz v0, :cond_b

    const/4 v0, -0x1

    goto :goto_d

    :cond_b
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    :goto_d
    return v0
.end method

.method public whitelist test-api next(I)I
    .registers 4
    .param p1, "n"    # I

    .line 433
    const/4 v0, 0x0

    .line 434
    .local v0, "result":I
    const/4 v1, -0x1

    if-lez p1, :cond_f

    .line 435
    :goto_4
    if-lez p1, :cond_20

    if-eq v0, v1, :cond_20

    .line 436
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->next()I

    move-result v0

    .line 435
    add-int/lit8 p1, p1, -0x1

    goto :goto_4

    .line 438
    :cond_f
    if-gez p1, :cond_1c

    .line 439
    :goto_11
    if-gez p1, :cond_20

    if-eq v0, v1, :cond_20

    .line 440
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->previous()I

    move-result v0

    .line 439
    add-int/lit8 p1, p1, 0x1

    goto :goto_11

    .line 443
    :cond_1c
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->current()I

    move-result v0

    .line 445
    :cond_20
    return v0
.end method

.method public whitelist test-api preceding(I)I
    .registers 4
    .param p1, "offset"    # I

    .line 498
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getEndIndex()I

    move-result v0

    if-le p1, v0, :cond_d

    goto :goto_29

    .line 500
    :cond_d
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    invoke-interface {v0}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v0

    if-ge p1, v0, :cond_1a

    .line 501
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    move-result v0

    return v0

    .line 506
    :cond_1a
    move v0, p1

    .line 507
    .local v0, "adjustedOffset":I
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v1, v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->preceding(I)V

    .line 508
    iget-boolean v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDone:Z

    if-eqz v1, :cond_26

    const/4 v1, -0x1

    goto :goto_28

    :cond_26
    iget v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    :goto_28
    return v1

    .line 499
    .end local v0    # "adjustedOffset":I
    :cond_29
    :goto_29
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->last()I

    move-result v0

    return v0
.end method

.method public whitelist test-api previous()I
    .registers 2

    .line 464
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->previous()V

    .line 465
    iget-boolean v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDone:Z

    if-eqz v0, :cond_b

    const/4 v0, -0x1

    goto :goto_d

    :cond_b
    iget v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fPosition:I

    :goto_d
    return v0
.end method

.method public whitelist test-api setText(Ljava/text/CharacterIterator;)V
    .registers 5
    .param p1, "newText"    # Ljava/text/CharacterIterator;

    .line 674
    if-eqz p1, :cond_d

    .line 675
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-interface {p1}, Ljava/text/CharacterIterator;->getBeginIndex()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->reset(II)V

    goto :goto_12

    .line 677
    :cond_d
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fBreakCache:Landroid/icu/text/RuleBasedBreakIterator$BreakCache;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedBreakIterator$BreakCache;->reset()V

    .line 679
    :goto_12
    iget-object v0, p0, Landroid/icu/text/RuleBasedBreakIterator;->fDictionaryCache:Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;

    invoke-virtual {v0}, Landroid/icu/text/RuleBasedBreakIterator$DictionaryCache;->reset()V

    .line 680
    iput-object p1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fText:Ljava/text/CharacterIterator;

    .line 681
    invoke-virtual {p0}, Landroid/icu/text/RuleBasedBreakIterator;->first()I

    .line 682
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 218
    const-string v0, ""

    .line 219
    .local v0, "retStr":Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    if-eqz v1, :cond_a

    .line 220
    iget-object v1, p0, Landroid/icu/text/RuleBasedBreakIterator;->fRData:Landroid/icu/impl/RBBIDataWrapper;

    iget-object v0, v1, Landroid/icu/impl/RBBIDataWrapper;->fRuleSource:Ljava/lang/String;

    .line 222
    :cond_a
    return-object v0
.end method
