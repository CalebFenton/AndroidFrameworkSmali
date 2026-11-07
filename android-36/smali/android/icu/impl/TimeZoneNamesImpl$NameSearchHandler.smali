.class Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;
.super Ljava/lang/Object;
.source "TimeZoneNamesImpl.java"

# interfaces
.implements Landroid/icu/impl/TextTrieMap$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneNamesImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NameSearchHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/impl/TextTrieMap$ResultHandler<",
        "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private blacklist _matches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist _maxMatchLen:I

.field private blacklist _nameTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 521
    const-class v0, Landroid/icu/impl/TimeZoneNamesImpl;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/EnumSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;)V"
        }
    .end annotation

    .line 526
    .local p1, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 527
    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    .line 528
    return-void
.end method


# virtual methods
.method public blacklist getMatches()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    .line 563
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    if-nez v0, :cond_9

    .line 564
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 566
    :cond_9
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    return-object v0
.end method

.method public blacklist getMaxMatchLen()I
    .registers 2

    .line 574
    iget v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    return v0
.end method

.method public blacklist handlePrefixMatch(ILjava/util/Iterator;)Z
    .registers 8
    .param p1, "matchLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;)Z"
        }
    .end annotation

    .line 535
    .local p2, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;>;"
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 536
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;

    .line 537
    .local v0, "ninfo":Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;
    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    iget-object v2, v0, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 538
    goto :goto_1

    .line 541
    :cond_1c
    iget-object v1, v0, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->tzID:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    .line 542
    new-instance v1, Landroid/icu/text/TimeZoneNames$MatchInfo;

    iget-object v3, v0, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    iget-object v4, v0, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->tzID:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v2, p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;-><init>(Landroid/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V

    .local v1, "minfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    goto :goto_35

    .line 544
    .end local v1    # "minfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_2b
    nop

    .line 545
    new-instance v1, Landroid/icu/text/TimeZoneNames$MatchInfo;

    iget-object v3, v0, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    iget-object v4, v0, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->mzID:Ljava/lang/String;

    invoke-direct {v1, v3, v2, v4, p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;-><init>(Landroid/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V

    .line 547
    .restart local v1    # "minfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :goto_35
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    if-nez v2, :cond_40

    .line 548
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    .line 550
    :cond_40
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 551
    iget v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    if-le p1, v2, :cond_4b

    .line 552
    iput p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    .line 554
    .end local v0    # "ninfo":Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;
    .end local v1    # "minfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_4b
    goto :goto_1

    .line 555
    :cond_4c
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist resetResults()V
    .registers 2

    .line 581
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    .line 582
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    .line 583
    return-void
.end method
