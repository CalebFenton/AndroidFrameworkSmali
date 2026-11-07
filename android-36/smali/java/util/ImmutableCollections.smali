.class Ljava/util/ImmutableCollections;
.super Ljava/lang/Object;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ImmutableCollections$List12;,
        Ljava/util/ImmutableCollections$ListN;,
        Ljava/util/ImmutableCollections$SetN;,
        Ljava/util/ImmutableCollections$MapN;,
        Ljava/util/ImmutableCollections$Map1;,
        Ljava/util/ImmutableCollections$AbstractImmutableMap;,
        Ljava/util/ImmutableCollections$Set12;,
        Ljava/util/ImmutableCollections$AbstractImmutableSet;,
        Ljava/util/ImmutableCollections$SubList;,
        Ljava/util/ImmutableCollections$ListItr;,
        Ljava/util/ImmutableCollections$AbstractImmutableList;,
        Ljava/util/ImmutableCollections$AbstractImmutableCollection;,
        Ljava/util/ImmutableCollections$Access;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist EMPTY:Ljava/lang/Object;

.field static final blacklist EMPTY_LIST:Ljava/util/ImmutableCollections$ListN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ImmutableCollections$ListN<",
            "*>;"
        }
    .end annotation
.end field

.field static final blacklist EMPTY_LIST_NULLS:Ljava/util/ImmutableCollections$ListN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ImmutableCollections$ListN<",
            "*>;"
        }
    .end annotation
.end field

.field static final blacklist EMPTY_MAP:Ljava/util/ImmutableCollections$MapN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ImmutableCollections$MapN<",
            "**>;"
        }
    .end annotation
.end field

.field static final blacklist EMPTY_SET:Ljava/util/ImmutableCollections$SetN;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ImmutableCollections$SetN<",
            "*>;"
        }
    .end annotation
.end field

.field static final blacklist EXPAND_FACTOR:I = 0x2

.field private static final blacklist REVERSE:Z

.field private static final blacklist SALT32L:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY()Ljava/lang/Object;
    .registers 1

    sget-object v0, Ljava/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetREVERSE()Z
    .registers 1

    sget-boolean v0, Ljava/util/ImmutableCollections;->REVERSE:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSALT32L()J
    .registers 2

    sget-wide v0, Ljava/util/ImmutableCollections;->SALT32L:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 8

    .line 50
    nop

    .line 73
    const-wide v0, 0x243f6a8885a308d3L

    .line 84
    .local v0, "color":J
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 86
    .local v2, "seed":J
    mul-long v4, v0, v2

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    long-to-int v4, v4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    sput-wide v4, Ljava/util/ImmutableCollections;->SALT32L:J

    .line 88
    sget-wide v4, Ljava/util/ImmutableCollections;->SALT32L:J

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_28

    move v4, v5

    goto :goto_29

    :cond_28
    move v4, v6

    :goto_29
    sput-boolean v4, Ljava/util/ImmutableCollections;->REVERSE:Z

    .line 99
    .end local v0    # "color":J
    .end local v2    # "seed":J
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/util/ImmutableCollections;->EMPTY:Ljava/lang/Object;

    .line 100
    new-instance v0, Ljava/util/ImmutableCollections$ListN;

    new-array v1, v6, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v6, v2}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;ZLjava/util/ImmutableCollections-IA;)V

    sput-object v0, Ljava/util/ImmutableCollections;->EMPTY_LIST:Ljava/util/ImmutableCollections$ListN;

    .line 101
    new-instance v0, Ljava/util/ImmutableCollections$ListN;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1, v5, v2}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;ZLjava/util/ImmutableCollections-IA;)V

    sput-object v0, Ljava/util/ImmutableCollections;->EMPTY_LIST_NULLS:Ljava/util/ImmutableCollections$ListN;

    .line 102
    new-instance v0, Ljava/util/ImmutableCollections$SetN;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$SetN;-><init>([Ljava/lang/Object;)V

    sput-object v0, Ljava/util/ImmutableCollections;->EMPTY_SET:Ljava/util/ImmutableCollections$SetN;

    .line 103
    new-instance v0, Ljava/util/ImmutableCollections$MapN;

    new-array v1, v6, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$MapN;-><init>([Ljava/lang/Object;)V

    sput-object v0, Ljava/util/ImmutableCollections;->EMPTY_MAP:Ljava/util/ImmutableCollections$MapN;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist listCopy(Ljava/util/Collection;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 176
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    instance-of v0, p0, Ljava/util/ImmutableCollections$List12;

    if-nez v0, :cond_26

    instance-of v0, p0, Ljava/util/ImmutableCollections$ListN;

    if-eqz v0, :cond_12

    move-object v0, p0

    check-cast v0, Ljava/util/ImmutableCollections$ListN;

    .local v0, "c":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<*>;"
    invoke-static {v0}, Ljava/util/ImmutableCollections$ListN;->-$$Nest$fgetallowNulls(Ljava/util/ImmutableCollections$ListN;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_26

    .line 178
    .end local v0    # "c":Ljava/util/ImmutableCollections$ListN;, "Ljava/util/ImmutableCollections$ListN<*>;"
    :cond_12
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 179
    invoke-static {}, Ljava/util/List;->of()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 181
    :cond_1d
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 177
    :cond_26
    :goto_26
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method static varargs blacklist listFromArray([Ljava/lang/Object;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 197
    .local p0, "input":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/Object;

    .line 198
    .local v0, "tmp":[Ljava/lang/Object;, "[TE;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 199
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 198
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 201
    .end local v1    # "i":I
    :cond_12
    new-instance v1, Ljava/util/ImmutableCollections$ListN;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;ZLjava/util/ImmutableCollections-IA;)V

    return-object v1
.end method

.method static varargs blacklist listFromTrustedArray([Ljava/lang/Object;)Ljava/util/List;
    .registers 5
    .param p0, "input"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 220
    nop

    .line 221
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_e

    aget-object v3, p0, v2

    .line 222
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    .end local v3    # "o":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 225
    :cond_e
    array-length v0, p0

    packed-switch v0, :pswitch_data_30

    .line 229
    new-instance v0, Ljava/util/ImmutableCollections$ListN;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;ZLjava/util/ImmutableCollections-IA;)V

    goto :goto_2e

    .line 228
    :pswitch_19
    new-instance v0, Ljava/util/ImmutableCollections$List12;

    aget-object v1, p0, v1

    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-direct {v0, v1, v2}, Ljava/util/ImmutableCollections$List12;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2e

    .line 227
    :pswitch_24
    new-instance v0, Ljava/util/ImmutableCollections$List12;

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/util/ImmutableCollections$List12;-><init>(Ljava/lang/Object;)V

    goto :goto_2e

    .line 226
    :pswitch_2c
    sget-object v0, Ljava/util/ImmutableCollections;->EMPTY_LIST:Ljava/util/ImmutableCollections$ListN;

    .line 225
    :goto_2e
    return-object v0

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_2c
        :pswitch_24
        :pswitch_19
    .end packed-switch
.end method

.method static varargs blacklist listFromTrustedArrayNullsAllowed([Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .param p0, "input"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 250
    nop

    .line 251
    array-length v0, p0

    if-nez v0, :cond_7

    .line 252
    sget-object v0, Ljava/util/ImmutableCollections;->EMPTY_LIST_NULLS:Ljava/util/ImmutableCollections$ListN;

    return-object v0

    .line 254
    :cond_7
    new-instance v0, Ljava/util/ImmutableCollections$ListN;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljava/util/ImmutableCollections$ListN;-><init>([Ljava/lang/Object;ZLjava/util/ImmutableCollections-IA;)V

    return-object v0
.end method

.method static blacklist uoe()Ljava/lang/UnsupportedOperationException;
    .registers 1

    .line 149
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    return-object v0
.end method
