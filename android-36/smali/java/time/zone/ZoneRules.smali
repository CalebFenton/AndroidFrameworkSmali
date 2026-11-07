.class public final Ljava/time/zone/ZoneRules;
.super Ljava/lang/Object;
.source "ZoneRules.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final blacklist DAYS_0000_TO_1970:J = 0xafaa8L

.field private static final blacklist DAYS_PER_CYCLE:I = 0x23ab1

.field private static final greylist-max-o EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

.field private static final greylist-max-o EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

.field private static final greylist-max-o EMPTY_LONG_ARRAY:[J

.field private static final greylist-max-o LAST_CACHED_YEAR:I = 0x834

.field private static final whitelist serialVersionUID:J = 0x2a3f985312278703L


# instance fields
.field private final greylist-max-o lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

.field private final transient greylist-max-o lastRulesCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o savingsInstantTransitions:[J

.field private final greylist-max-o savingsLocalTransitions:[Ljava/time/LocalDateTime;

.field private final greylist-max-o standardOffsets:[Ljava/time/ZoneOffset;

.field private final greylist-max-o standardTransitions:[J

.field private final greylist-max-o wallOffsets:[Ljava/time/ZoneOffset;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 154
    const/4 v0, 0x0

    new-array v1, v0, [J

    sput-object v1, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    .line 158
    new-array v1, v0, [Ljava/time/zone/ZoneOffsetTransitionRule;

    sput-object v1, Ljava/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 163
    new-array v0, v0, [Ljava/time/LocalDateTime;

    sput-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/time/ZoneOffset;)V
    .registers 4
    .param p1, "offset"    # Ljava/time/ZoneOffset;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 320
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 321
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 322
    sget-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    .line 323
    sget-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 324
    sget-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    .line 325
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 326
    sget-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 327
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 12
    .param p1, "baseStandardOffset"    # Ljava/time/ZoneOffset;
    .param p2, "baseWallOffset"    # Ljava/time/ZoneOffset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/ZoneOffset;",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransitionRule;",
            ">;)V"
        }
    .end annotation

    .line 225
    .local p3, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p4, "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p5, "lastRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 229
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    .line 231
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/time/ZoneOffset;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 232
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 233
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_22
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_49

    .line 234
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v2}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v2

    aput-wide v2, v1, v0

    .line 235
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v3

    aput-object v3, v1, v2

    .line 233
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 239
    .end local v0    # "i":I
    :cond_49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v0, "localTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/LocalDateTime;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v1, "localTransitionOffsetList":Ljava/util/List;, "Ljava/util/List<Ljava/time/ZoneOffset;>;"
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/time/zone/ZoneOffsetTransition;

    .line 243
    .local v3, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 244
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_89

    .line 247
    :cond_7b
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    :goto_89
    invoke-virtual {v3}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v3    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    goto :goto_5a

    .line 252
    :cond_91
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/time/LocalDateTime;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/time/LocalDateTime;

    iput-object v2, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    .line 253
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/time/ZoneOffset;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/time/ZoneOffset;

    iput-object v2, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 256
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [J

    iput-object v2, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 257
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b6
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_cd

    .line 258
    iget-object v3, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 257
    add-int/lit8 v2, v2, 0x1

    goto :goto_b6

    .line 262
    .end local v2    # "i":I
    :cond_cd
    invoke-interface {p5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    .line 263
    .local v2, "temp":[Ljava/lang/Object;
    array-length v3, v2

    const-class v4, [Ljava/time/zone/ZoneOffsetTransitionRule;

    invoke-static {v2, v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 264
    .local v3, "rulesArray":[Ljava/time/zone/ZoneOffsetTransitionRule;
    array-length v4, v3

    const/16 v5, 0x10

    if-gt v4, v5, :cond_e2

    .line 267
    iput-object v3, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 268
    return-void

    .line 265
    :cond_e2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Too many transition rules"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private constructor greylist-max-o <init>([J[Ljava/time/ZoneOffset;[J[Ljava/time/ZoneOffset;[Ljava/time/zone/ZoneOffsetTransitionRule;)V
    .registers 13
    .param p1, "standardTransitions"    # [J
    .param p2, "standardOffsets"    # [Ljava/time/ZoneOffset;
    .param p3, "savingsInstantTransitions"    # [J
    .param p4, "wallOffsets"    # [Ljava/time/ZoneOffset;
    .param p5, "lastRules"    # [Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    .line 286
    iput-object p1, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    .line 287
    iput-object p2, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 288
    iput-object p3, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 289
    iput-object p4, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 290
    iput-object p5, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 292
    array-length v0, p3

    if-nez v0, :cond_1c

    .line 293
    sget-object v0, Ljava/time/zone/ZoneRules;->EMPTY_LDT_ARRAY:[Ljava/time/LocalDateTime;

    iput-object v0, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    goto :goto_66

    .line 296
    :cond_1c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    .local v0, "localTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/LocalDateTime;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_22
    array-length v2, p3

    if-ge v1, v2, :cond_58

    .line 298
    aget-object v2, p4, v1

    .line 299
    .local v2, "before":Ljava/time/ZoneOffset;
    add-int/lit8 v3, v1, 0x1

    aget-object v3, p4, v3

    .line 300
    .local v3, "after":Ljava/time/ZoneOffset;
    new-instance v4, Ljava/time/zone/ZoneOffsetTransition;

    aget-wide v5, p3, v1

    invoke-direct {v4, v5, v6, v2, v3}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    .line 301
    .local v4, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 302
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 305
    :cond_47
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v2    # "before":Ljava/time/ZoneOffset;
    .end local v3    # "after":Ljava/time/ZoneOffset;
    .end local v4    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :goto_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_22

    .line 309
    .end local v1    # "i":I
    :cond_58
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/time/LocalDateTime;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/time/LocalDateTime;

    iput-object v1, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    .line 311
    .end local v0    # "localTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/LocalDateTime;>;"
    :goto_66
    return-void
.end method

.method private greylist-max-o findOffsetInfo(Ljava/time/LocalDateTime;Ljava/time/zone/ZoneOffsetTransition;)Ljava/lang/Object;
    .registers 5
    .param p1, "dt"    # Ljava/time/LocalDateTime;
    .param p2, "trans"    # Ljava/time/zone/ZoneOffsetTransition;

    .line 718
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeBefore()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 719
    .local v0, "localTransition":Ljava/time/LocalDateTime;
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->isGap()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 720
    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 721
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 723
    :cond_15
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 724
    return-object p2

    .line 726
    :cond_20
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 729
    :cond_25
    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 730
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 732
    :cond_30
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getDateTimeAfter()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 733
    invoke-virtual {p2}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 735
    :cond_3f
    return-object p2
.end method

.method private greylist-max-o findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;
    .registers 7
    .param p1, "year"    # I

    .line 747
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 748
    .local v0, "yearObj":Ljava/lang/Integer;
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/time/zone/ZoneOffsetTransition;

    .line 749
    .local v1, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    if-eqz v1, :cond_f

    .line 750
    return-object v1

    .line 752
    :cond_f
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 753
    .local v2, "ruleArray":[Ljava/time/zone/ZoneOffsetTransitionRule;
    array-length v3, v2

    new-array v1, v3, [Ljava/time/zone/ZoneOffsetTransition;

    .line 754
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_15
    array-length v4, v2

    if-ge v3, v4, :cond_23

    .line 755
    aget-object v4, v2, v3

    invoke-virtual {v4, p1}, Ljava/time/zone/ZoneOffsetTransitionRule;->createTransition(I)Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v4

    aput-object v4, v1, v3

    .line 754
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 757
    .end local v3    # "i":I
    :cond_23
    const/16 v3, 0x834

    if-ge p1, v3, :cond_2c

    .line 758
    iget-object v3, p0, Ljava/time/zone/ZoneRules;->lastRulesCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    :cond_2c
    return-object v1
.end method

.method private greylist-max-o findYear(JLjava/time/ZoneOffset;)I
    .registers 29
    .param p1, "epochSecond"    # J
    .param p3, "offset"    # Ljava/time/ZoneOffset;

    .line 950
    invoke-virtual/range {p3 .. p3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    int-to-long v0, v0

    add-long v0, p1, v0

    .line 951
    .local v0, "localSecond":J
    const v2, 0x15180

    invoke-static {v0, v1, v2}, Ljava/lang/Math;->floorDiv(JI)J

    move-result-wide v2

    const-wide/32 v4, 0xafaa8

    add-long/2addr v2, v4

    .line 954
    .local v2, "zeroDay":J
    const-wide/16 v4, 0x3c

    sub-long/2addr v2, v4

    .line 955
    const-wide/16 v4, 0x0

    .line 956
    .local v4, "adjust":J
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    const-wide/16 v9, 0x1

    const-wide/32 v11, 0x23ab1

    const-wide/16 v13, 0x190

    if-gez v8, :cond_32

    .line 958
    add-long v15, v2, v9

    div-long/2addr v15, v11

    move-wide/from16 v17, v6

    sub-long v6, v15, v9

    .line 959
    .local v6, "adjustCycles":J
    mul-long v4, v6, v13

    .line 960
    move-wide v15, v9

    neg-long v9, v6

    mul-long/2addr v9, v11

    add-long/2addr v2, v9

    goto :goto_35

    .line 956
    .end local v6    # "adjustCycles":J
    :cond_32
    move-wide/from16 v17, v6

    move-wide v15, v9

    .line 962
    :goto_35
    mul-long v6, v2, v13

    const-wide/16 v8, 0x24f

    add-long/2addr v6, v8

    div-long/2addr v6, v11

    .line 963
    .local v6, "yearEst":J
    const-wide/16 v8, 0x16d

    mul-long v10, v6, v8

    const-wide/16 v19, 0x4

    div-long v21, v6, v19

    add-long v10, v10, v21

    const-wide/16 v21, 0x64

    div-long v23, v6, v21

    sub-long v10, v10, v23

    div-long v23, v6, v13

    add-long v10, v10, v23

    sub-long v10, v2, v10

    .line 964
    .local v10, "doyEst":J
    cmp-long v12, v10, v17

    if-gez v12, :cond_62

    .line 966
    sub-long/2addr v6, v15

    .line 967
    mul-long/2addr v8, v6

    div-long v15, v6, v19

    add-long/2addr v8, v15

    div-long v15, v6, v21

    sub-long/2addr v8, v15

    div-long v12, v6, v13

    add-long/2addr v8, v12

    sub-long v10, v2, v8

    .line 969
    :cond_62
    add-long/2addr v6, v4

    .line 970
    long-to-int v8, v10

    .line 973
    .local v8, "marchDoy0":I
    mul-int/lit8 v9, v8, 0x5

    add-int/lit8 v9, v9, 0x2

    div-int/lit16 v9, v9, 0x99

    .line 974
    .local v9, "marchMonth0":I
    div-int/lit8 v12, v9, 0xa

    int-to-long v12, v12

    add-long/2addr v6, v12

    .line 977
    const-wide/32 v12, 0x3b9ac9ff

    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v12, v12

    return v12
.end method

.method private greylist-max-o getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;
    .registers 9
    .param p1, "dt"    # Ljava/time/LocalDateTime;

    .line 660
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 661
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v0, v0, v1

    return-object v0

    .line 664
    :cond_b
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v0, v0

    if-lez v0, :cond_45

    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    .line 665
    invoke-virtual {p1, v0}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 666
    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v0

    .line 667
    .local v0, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    const/4 v2, 0x0

    .line 668
    .local v2, "info":Ljava/lang/Object;
    array-length v3, v0

    :goto_29
    if-ge v1, v3, :cond_44

    aget-object v4, v0, v1

    .line 669
    .local v4, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-direct {p0, p1, v4}, Ljava/time/zone/ZoneRules;->findOffsetInfo(Ljava/time/LocalDateTime;Ljava/time/zone/ZoneOffsetTransition;)Ljava/lang/Object;

    move-result-object v2

    .line 670
    instance-of v5, v2, Ljava/time/zone/ZoneOffsetTransition;

    if-nez v5, :cond_43

    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_40

    goto :goto_43

    .line 668
    .end local v4    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_40
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 671
    .restart local v4    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_43
    :goto_43
    return-object v2

    .line 674
    .end local v4    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_44
    return-object v2

    .line 678
    .end local v0    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    .end local v2    # "info":Ljava/lang/Object;
    :cond_45
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    .line 679
    .local v0, "index":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_53

    .line 681
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v1, v2, v1

    return-object v1

    .line 683
    :cond_53
    if-gez v0, :cond_59

    .line 685
    neg-int v1, v0

    add-int/lit8 v0, v1, -0x2

    goto :goto_72

    .line 686
    :cond_59
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_72

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    aget-object v1, v1, v0

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    .line 687
    invoke-virtual {v1, v2}, Ljava/time/LocalDateTime;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 689
    add-int/lit8 v0, v0, 0x1

    .line 691
    :cond_72
    :goto_72
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_a4

    .line 693
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    aget-object v1, v1, v0

    .line 694
    .local v1, "dtBefore":Ljava/time/LocalDateTime;
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsLocalTransitions:[Ljava/time/LocalDateTime;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    .line 695
    .local v2, "dtAfter":Ljava/time/LocalDateTime;
    iget-object v3, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    div-int/lit8 v4, v0, 0x2

    aget-object v3, v3, v4

    .line 696
    .local v3, "offsetBefore":Ljava/time/ZoneOffset;
    iget-object v4, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    div-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    .line 697
    .local v4, "offsetAfter":Ljava/time/ZoneOffset;
    invoke-virtual {v4}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v5

    invoke-virtual {v3}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v6

    if-le v5, v6, :cond_9e

    .line 699
    new-instance v5, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v5, v1, v3, v4}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v5

    .line 702
    :cond_9e
    new-instance v5, Ljava/time/zone/ZoneOffsetTransition;

    invoke-direct {v5, v2, v3, v4}, Ljava/time/zone/ZoneOffsetTransition;-><init>(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v5

    .line 706
    .end local v1    # "dtBefore":Ljava/time/LocalDateTime;
    .end local v2    # "dtAfter":Ljava/time/LocalDateTime;
    .end local v3    # "offsetBefore":Ljava/time/ZoneOffset;
    .end local v4    # "offsetAfter":Ljava/time/ZoneOffset;
    :cond_a4
    iget-object v1, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    div-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static whitelist test-api of(Ljava/time/ZoneOffset;)Ljava/time/zone/ZoneRules;
    .registers 2
    .param p0, "offset"    # Ljava/time/ZoneOffset;

    .line 207
    const-string v0, "offset"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 208
    new-instance v0, Ljava/time/zone/ZoneRules;

    invoke-direct {v0, p0}, Ljava/time/zone/ZoneRules;-><init>(Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method public static whitelist test-api of(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Ljava/time/zone/ZoneRules;
    .registers 12
    .param p0, "baseStandardOffset"    # Ljava/time/ZoneOffset;
    .param p1, "baseWallOffset"    # Ljava/time/ZoneOffset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/ZoneOffset;",
            "Ljava/time/ZoneOffset;",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransitionRule;",
            ">;)",
            "Ljava/time/zone/ZoneRules;"
        }
    .end annotation

    .line 190
    .local p2, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p3, "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local p4, "lastRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    const-string v0, "baseStandardOffset"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 191
    const-string v0, "baseWallOffset"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 192
    const-string v0, "standardOffsetTransitionList"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    const-string v0, "transitionList"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    const-string v0, "lastRules"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    new-instance v1, Ljava/time/zone/ZoneRules;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .end local p0    # "baseStandardOffset":Ljava/time/ZoneOffset;
    .end local p1    # "baseWallOffset":Ljava/time/ZoneOffset;
    .end local p2    # "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .end local p3    # "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .end local p4    # "lastRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    .local v2, "baseStandardOffset":Ljava/time/ZoneOffset;
    .local v3, "baseWallOffset":Ljava/time/ZoneOffset;
    .local v4, "standardOffsetTransitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local v5, "transitionList":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    .local v6, "lastRules":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransitionRule;>;"
    invoke-direct/range {v1 .. v6}, Ljava/time/zone/ZoneRules;-><init>(Ljava/time/ZoneOffset;Ljava/time/ZoneOffset;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method static greylist-max-o readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneRules;
    .registers 11
    .param p0, "in"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 443
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 444
    .local v0, "stdSize":I
    const/16 v1, 0x400

    if-gt v0, v1, :cond_8c

    .line 447
    if-nez v0, :cond_d

    sget-object v2, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    goto :goto_f

    .line 448
    :cond_d
    new-array v2, v0, [J

    :goto_f
    move-object v4, v2

    .line 449
    .local v4, "stdTrans":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_11
    if-ge v2, v0, :cond_1c

    .line 450
    invoke-static {p0}, Ljava/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v5

    aput-wide v5, v4, v2

    .line 449
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 452
    .end local v2    # "i":I
    :cond_1c
    add-int/lit8 v2, v0, 0x1

    new-array v5, v2, [Ljava/time/ZoneOffset;

    .line 453
    .local v5, "stdOffsets":[Ljava/time/ZoneOffset;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_21
    array-length v3, v5

    if-ge v2, v3, :cond_2d

    .line 454
    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v3

    aput-object v3, v5, v2

    .line 453
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 456
    .end local v2    # "i":I
    :cond_2d
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v2

    .line 457
    .local v2, "savSize":I
    if-gt v2, v1, :cond_84

    .line 460
    if-nez v2, :cond_39

    sget-object v1, Ljava/time/zone/ZoneRules;->EMPTY_LONG_ARRAY:[J

    move-object v6, v1

    goto :goto_3c

    .line 461
    :cond_39
    new-array v1, v2, [J

    move-object v6, v1

    :goto_3c
    nop

    .line 462
    .local v6, "savTrans":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3e
    if-ge v1, v2, :cond_49

    .line 463
    invoke-static {p0}, Ljava/time/zone/Ser;->readEpochSec(Ljava/io/DataInput;)J

    move-result-wide v7

    aput-wide v7, v6, v1

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 465
    .end local v1    # "i":I
    :cond_49
    add-int/lit8 v1, v2, 0x1

    new-array v7, v1, [Ljava/time/ZoneOffset;

    .line 466
    .local v7, "savOffsets":[Ljava/time/ZoneOffset;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4e
    array-length v3, v7

    if-ge v1, v3, :cond_5a

    .line 467
    invoke-static {p0}, Ljava/time/zone/Ser;->readOffset(Ljava/io/DataInput;)Ljava/time/ZoneOffset;

    move-result-object v3

    aput-object v3, v7, v1

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_4e

    .line 469
    .end local v1    # "i":I
    :cond_5a
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v1

    .line 470
    .local v1, "ruleSize":I
    const/16 v3, 0x10

    if-gt v1, v3, :cond_7c

    .line 473
    if-nez v1, :cond_67

    .line 474
    sget-object v3, Ljava/time/zone/ZoneRules;->EMPTY_LASTRULES:[Ljava/time/zone/ZoneOffsetTransitionRule;

    goto :goto_69

    :cond_67
    new-array v3, v1, [Ljava/time/zone/ZoneOffsetTransitionRule;

    :goto_69
    move-object v8, v3

    .line 475
    .local v8, "rules":[Ljava/time/zone/ZoneOffsetTransitionRule;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6b
    if-ge v3, v1, :cond_76

    .line 476
    invoke-static {p0}, Ljava/time/zone/ZoneOffsetTransitionRule;->readExternal(Ljava/io/DataInput;)Ljava/time/zone/ZoneOffsetTransitionRule;

    move-result-object v9

    aput-object v9, v8, v3

    .line 475
    add-int/lit8 v3, v3, 0x1

    goto :goto_6b

    .line 478
    .end local v3    # "i":I
    :cond_76
    new-instance v3, Ljava/time/zone/ZoneRules;

    invoke-direct/range {v3 .. v8}, Ljava/time/zone/ZoneRules;-><init>([J[Ljava/time/ZoneOffset;[J[Ljava/time/ZoneOffset;[Ljava/time/zone/ZoneOffsetTransitionRule;)V

    return-object v3

    .line 471
    .end local v8    # "rules":[Ljava/time/zone/ZoneOffsetTransitionRule;
    :cond_7c
    new-instance v3, Ljava/io/InvalidObjectException;

    const-string v8, "Too many transition rules"

    invoke-direct {v3, v8}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 458
    .end local v1    # "ruleSize":I
    .end local v6    # "savTrans":[J
    .end local v7    # "savOffsets":[Ljava/time/ZoneOffset;
    :cond_84
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v3, "Too many saving offsets"

    invoke-direct {v1, v3}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 445
    .end local v2    # "savSize":I
    .end local v4    # "stdTrans":[J
    .end local v5    # "stdOffsets":[Ljava/time/ZoneOffset;
    :cond_8c
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Too many transitions"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 336
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Deserialization via serialization delegate"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 3

    .line 402
    new-instance v0, Ljava/time/zone/Ser;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava/time/zone/Ser;-><init>(BLjava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "otherRules"    # Ljava/lang/Object;

    .line 1039
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 1040
    return v0

    .line 1047
    :cond_4
    instance-of v1, p1, Ljava/time/zone/ZoneRules;

    if-eqz v1, :cond_3e

    .line 1042
    move-object v1, p1

    check-cast v1, Ljava/time/zone/ZoneRules;

    .local v1, "other":Ljava/time/zone/ZoneRules;
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    iget-object v3, v1, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    .line 1043
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    iget-object v3, v1, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 1044
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v3, v1, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 1045
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    iget-object v3, v1, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 1046
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    iget-object v3, v1, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 1047
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3e

    goto :goto_3f

    .end local v1    # "other":Ljava/time/zone/ZoneRules;
    :cond_3e
    const/4 v0, 0x0

    .line 1042
    :goto_3f
    return v0
.end method

.method public whitelist test-api getDaylightSavings(Ljava/time/Instant;)Ljava/time/Duration;
    .registers 6
    .param p1, "instant"    # Ljava/time/Instant;

    .line 806
    invoke-virtual {p0}, Ljava/time/zone/ZoneRules;->isFixedOffset()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 807
    sget-object v0, Ljava/time/Duration;->ZERO:Ljava/time/Duration;

    return-object v0

    .line 809
    :cond_9
    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    .line 810
    .local v0, "standardOffset":Ljava/time/ZoneOffset;
    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    .line 811
    .local v1, "actualOffset":Ljava/time/ZoneOffset;
    invoke-virtual {v1}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v2

    invoke-virtual {v0}, Ljava/time/ZoneOffset;->getTotalSeconds()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/time/Duration;->ofSeconds(J)Ljava/time/Duration;

    move-result-object v2

    return-object v2
.end method

.method public whitelist test-api getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;
    .registers 10
    .param p1, "instant"    # Ljava/time/Instant;

    .line 505
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_b

    .line 506
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 508
    :cond_b
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 510
    .local v0, "epochSec":J
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v2, v2

    if-lez v2, :cond_4e

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v3, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-wide v2, v2, v3

    cmp-long v2, v0, v2

    if-lez v2, :cond_4e

    .line 512
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    iget-object v3, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-direct {p0, v0, v1, v2}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v2

    .line 513
    .local v2, "year":I
    invoke-direct {p0, v2}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v3

    .line 514
    .local v3, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    const/4 v4, 0x0

    .line 515
    .local v4, "trans":Ljava/time/zone/ZoneOffsetTransition;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_34
    array-length v6, v3

    if-ge v5, v6, :cond_49

    .line 516
    aget-object v4, v3, v5

    .line 517
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v6

    cmp-long v6, v0, v6

    if-gez v6, :cond_46

    .line 518
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v6

    return-object v6

    .line 515
    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 521
    .end local v5    # "i":I
    :cond_49
    invoke-virtual {v4}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetAfter()Ljava/time/ZoneOffset;

    move-result-object v5

    return-object v5

    .line 525
    .end local v2    # "year":I
    .end local v3    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    .end local v4    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_4e
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    .line 526
    .local v2, "index":I
    if-gez v2, :cond_59

    .line 528
    neg-int v3, v2

    add-int/lit8 v2, v3, -0x2

    .line 530
    :cond_59
    iget-object v3, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    return-object v3
.end method

.method public whitelist test-api getOffset(Ljava/time/LocalDateTime;)Ljava/time/ZoneOffset;
    .registers 4
    .param p1, "localDateTime"    # Ljava/time/LocalDateTime;

    .line 562
    invoke-direct {p0, p1}, Ljava/time/zone/ZoneRules;->getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    .line 563
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_10

    .line 564
    move-object v1, v0

    check-cast v1, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->getOffsetBefore()Ljava/time/ZoneOffset;

    move-result-object v1

    return-object v1

    .line 566
    :cond_10
    move-object v1, v0

    check-cast v1, Ljava/time/ZoneOffset;

    return-object v1
.end method

.method public whitelist test-api getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;
    .registers 7
    .param p1, "instant"    # Ljava/time/Instant;

    .line 776
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_b

    .line 777
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    .line 779
    :cond_b
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v0

    .line 780
    .local v0, "epochSec":J
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-static {v2, v0, v1}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    .line 781
    .local v2, "index":I
    if-gez v2, :cond_1a

    .line 783
    neg-int v3, v2

    add-int/lit8 v2, v3, -0x2

    .line 785
    :cond_1a
    iget-object v3, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    return-object v3
.end method

.method public whitelist test-api getTransition(Ljava/time/LocalDateTime;)Ljava/time/zone/ZoneOffsetTransition;
    .registers 4
    .param p1, "localDateTime"    # Ljava/time/LocalDateTime;

    .line 655
    invoke-direct {p0, p1}, Ljava/time/zone/ZoneRules;->getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    .line 656
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_c

    move-object v1, v0

    check-cast v1, Ljava/time/zone/ZoneOffsetTransition;

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method public whitelist test-api getTransitionRules()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransitionRule;",
            ">;"
        }
    .end annotation

    .line 1022
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getTransitions()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/time/zone/ZoneOffsetTransition;",
            ">;"
        }
    .end annotation

    .line 993
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 994
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/time/zone/ZoneOffsetTransition;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v2, v2

    if-ge v1, v2, :cond_24

    .line 995
    new-instance v2, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v3, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    aget-wide v3, v3, v1

    iget-object v5, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v5, v5, v1

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v7, v1, 0x1

    aget-object v6, v6, v7

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 994
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 997
    .end local v1    # "i":I
    :cond_24
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;
    .registers 4
    .param p1, "localDateTime"    # Ljava/time/LocalDateTime;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/LocalDateTime;",
            ")",
            "Ljava/util/List<",
            "Ljava/time/ZoneOffset;",
            ">;"
        }
    .end annotation

    .line 613
    invoke-direct {p0, p1}, Ljava/time/zone/ZoneRules;->getOffsetInfo(Ljava/time/LocalDateTime;)Ljava/lang/Object;

    move-result-object v0

    .line 614
    .local v0, "info":Ljava/lang/Object;
    instance-of v1, v0, Ljava/time/zone/ZoneOffsetTransition;

    if-eqz v1, :cond_10

    .line 615
    move-object v1, v0

    check-cast v1, Ljava/time/zone/ZoneOffsetTransition;

    invoke-virtual {v1}, Ljava/time/zone/ZoneOffsetTransition;->getValidOffsets()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 617
    :cond_10
    move-object v1, v0

    check-cast v1, Ljava/time/ZoneOffset;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 1057
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    move-result v0

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    .line 1058
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    .line 1059
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([J)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    .line 1060
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    .line 1061
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    .line 1057
    return v0
.end method

.method public whitelist test-api isDaylightSavings(Ljava/time/Instant;)Z
    .registers 4
    .param p1, "instant"    # Ljava/time/Instant;

    .line 829
    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getStandardOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getOffset(Ljava/time/Instant;)Ljava/time/ZoneOffset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public whitelist test-api isFixedOffset()Z
    .registers 4

    .line 487
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/time/ZoneOffset;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v0, v0

    if-nez v0, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method public whitelist test-api isValidOffset(Ljava/time/LocalDateTime;Ljava/time/ZoneOffset;)Z
    .registers 4
    .param p1, "localDateTime"    # Ljava/time/LocalDateTime;
    .param p2, "offset"    # Ljava/time/ZoneOffset;

    .line 847
    invoke-virtual {p0, p1}, Ljava/time/zone/ZoneRules;->getValidOffsets(Ljava/time/LocalDateTime;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api nextTransition(Ljava/time/Instant;)Ljava/time/zone/ZoneOffsetTransition;
    .registers 13
    .param p1, "instant"    # Ljava/time/Instant;

    .line 862
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 863
    return-object v1

    .line 865
    :cond_7
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    .line 867
    .local v2, "epochSec":J
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v4, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v0, v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_51

    .line 868
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v0, v0

    if-nez v0, :cond_1e

    .line 869
    return-object v1

    .line 872
    :cond_1e
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    iget-object v4, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-object v0, v0, v4

    invoke-direct {p0, v2, v3, v0}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v0

    .line 873
    .local v0, "year":I
    invoke-direct {p0, v0}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v4

    .line 874
    .local v4, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_32
    if-ge v7, v5, :cond_42

    aget-object v8, v4, v7

    .line 875
    .local v8, "trans":Ljava/time/zone/ZoneOffsetTransition;
    invoke-virtual {v8}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v9

    cmp-long v9, v2, v9

    if-gez v9, :cond_3f

    .line 876
    return-object v8

    .line 874
    .end local v8    # "trans":Ljava/time/zone/ZoneOffsetTransition;
    :cond_3f
    add-int/lit8 v7, v7, 0x1

    goto :goto_32

    .line 880
    :cond_42
    const v5, 0x3b9ac9ff

    if-ge v0, v5, :cond_50

    .line 881
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 882
    .end local v4    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    .local v1, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    aget-object v4, v1, v6

    return-object v4

    .line 884
    .end local v1    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    .restart local v4    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    :cond_50
    return-object v1

    .line 888
    .end local v0    # "year":I
    .end local v4    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    :cond_51
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 889
    .local v0, "index":I
    if-gez v0, :cond_5d

    .line 890
    neg-int v1, v0

    add-int/lit8 v1, v1, -0x1

    .end local v0    # "index":I
    .local v1, "index":I
    goto :goto_5f

    .line 892
    .end local v1    # "index":I
    .restart local v0    # "index":I
    :cond_5d
    add-int/lit8 v1, v0, 0x1

    .line 894
    .end local v0    # "index":I
    .restart local v1    # "index":I
    :goto_5f
    new-instance v0, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v4, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    aget-wide v4, v4, v1

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v6, v6, v1

    iget-object v7, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v8, v1, 0x1

    aget-object v7, v7, v8

    invoke-direct {v0, v4, v5, v6, v7}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v0
.end method

.method public whitelist test-api previousTransition(Ljava/time/Instant;)Ljava/time/zone/ZoneOffsetTransition;
    .registers 13
    .param p1, "instant"    # Ljava/time/Instant;

    .line 909
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    .line 910
    return-object v1

    .line 912
    :cond_7
    invoke-virtual {p1}, Ljava/time/Instant;->getEpochSecond()J

    move-result-wide v2

    .line 913
    .local v2, "epochSec":J
    invoke-virtual {p1}, Ljava/time/Instant;->getNano()I

    move-result v0

    if-lez v0, :cond_1d

    const-wide v4, 0x7fffffffffffffffL

    cmp-long v0, v2, v4

    if-gez v0, :cond_1d

    .line 914
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 918
    :cond_1d
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    iget-object v4, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    aget-wide v4, v0, v4

    .line 919
    .local v4, "lastHistoric":J
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v0, v0

    if-lez v0, :cond_67

    cmp-long v0, v2, v4

    if-lez v0, :cond_67

    .line 921
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-object v0, v0, v6

    .line 922
    .local v0, "lastHistoricOffset":Ljava/time/ZoneOffset;
    invoke-direct {p0, v2, v3, v0}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v6

    .line 923
    .local v6, "year":I
    invoke-direct {p0, v6}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v7

    .line 924
    .local v7, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    array-length v8, v7

    add-int/lit8 v8, v8, -0x1

    .local v8, "i":I
    :goto_43
    if-ltz v8, :cond_55

    .line 925
    aget-object v9, v7, v8

    invoke-virtual {v9}, Ljava/time/zone/ZoneOffsetTransition;->toEpochSecond()J

    move-result-wide v9

    cmp-long v9, v2, v9

    if-lez v9, :cond_52

    .line 926
    aget-object v1, v7, v8

    return-object v1

    .line 924
    :cond_52
    add-int/lit8 v8, v8, -0x1

    goto :goto_43

    .line 930
    .end local v8    # "i":I
    :cond_55
    invoke-direct {p0, v4, v5, v0}, Ljava/time/zone/ZoneRules;->findYear(JLjava/time/ZoneOffset;)I

    move-result v8

    .line 931
    .local v8, "lastHistoricYear":I
    add-int/lit8 v6, v6, -0x1

    if-le v6, v8, :cond_67

    .line 932
    invoke-direct {p0, v6}, Ljava/time/zone/ZoneRules;->findTransitionArray(I)[Ljava/time/zone/ZoneOffsetTransition;

    move-result-object v1

    .line 933
    .end local v7    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    .local v1, "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    array-length v7, v1

    add-int/lit8 v7, v7, -0x1

    aget-object v7, v1, v7

    return-object v7

    .line 939
    .end local v0    # "lastHistoricOffset":Ljava/time/ZoneOffset;
    .end local v1    # "transArray":[Ljava/time/zone/ZoneOffsetTransition;
    .end local v6    # "year":I
    .end local v8    # "lastHistoricYear":I
    :cond_67
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v0

    .line 940
    .local v0, "index":I
    if-gez v0, :cond_72

    .line 941
    neg-int v6, v0

    add-int/lit8 v0, v6, -0x1

    .line 943
    :cond_72
    if-gtz v0, :cond_75

    .line 944
    return-object v1

    .line 946
    :cond_75
    new-instance v1, Ljava/time/zone/ZoneOffsetTransition;

    iget-object v6, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    add-int/lit8 v7, v0, -0x1

    aget-wide v6, v6, v7

    iget-object v8, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    add-int/lit8 v9, v0, -0x1

    aget-object v8, v8, v9

    iget-object v9, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    aget-object v9, v9, v0

    invoke-direct {v1, v6, v7, v8, v9}, Ljava/time/zone/ZoneOffsetTransition;-><init>(JLjava/time/ZoneOffset;Ljava/time/ZoneOffset;)V

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 1071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ZoneRules[currentStandardOffset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    iget-object v2, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o writeExternal(Ljava/io/DataOutput;)V
    .registers 8
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 412
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 413
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardTransitions:[J

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_15

    aget-wide v4, v0, v3

    .line 414
    .local v4, "trans":J
    invoke-static {v4, v5, p1}, Ljava/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 413
    .end local v4    # "trans":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 416
    :cond_15
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->standardOffsets:[Ljava/time/ZoneOffset;

    array-length v1, v0

    move v3, v2

    :goto_19
    if-ge v3, v1, :cond_23

    aget-object v4, v0, v3

    .line 417
    .local v4, "offset":Ljava/time/ZoneOffset;
    invoke-static {v4, p1}, Ljava/time/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 416
    .end local v4    # "offset":Ljava/time/ZoneOffset;
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 419
    :cond_23
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    .line 420
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->savingsInstantTransitions:[J

    array-length v1, v0

    move v3, v2

    :goto_2d
    if-ge v3, v1, :cond_37

    aget-wide v4, v0, v3

    .line 421
    .local v4, "trans":J
    invoke-static {v4, v5, p1}, Ljava/time/zone/Ser;->writeEpochSec(JLjava/io/DataOutput;)V

    .line 420
    .end local v4    # "trans":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 423
    :cond_37
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->wallOffsets:[Ljava/time/ZoneOffset;

    array-length v1, v0

    move v3, v2

    :goto_3b
    if-ge v3, v1, :cond_45

    aget-object v4, v0, v3

    .line 424
    .local v4, "offset":Ljava/time/ZoneOffset;
    invoke-static {v4, p1}, Ljava/time/zone/Ser;->writeOffset(Ljava/time/ZoneOffset;Ljava/io/DataOutput;)V

    .line 423
    .end local v4    # "offset":Ljava/time/ZoneOffset;
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 426
    :cond_45
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v0, v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    .line 427
    iget-object v0, p0, Ljava/time/zone/ZoneRules;->lastRules:[Ljava/time/zone/ZoneOffsetTransitionRule;

    array-length v1, v0

    :goto_4e
    if-ge v2, v1, :cond_58

    aget-object v3, v0, v2

    .line 428
    .local v3, "rule":Ljava/time/zone/ZoneOffsetTransitionRule;
    invoke-virtual {v3, p1}, Ljava/time/zone/ZoneOffsetTransitionRule;->writeExternal(Ljava/io/DataOutput;)V

    .line 427
    .end local v3    # "rule":Ljava/time/zone/ZoneOffsetTransitionRule;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    .line 430
    :cond_58
    return-void
.end method
