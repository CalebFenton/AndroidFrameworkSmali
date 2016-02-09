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
        "Landroid/icu/impl/TextTrieMap$ResultHandler",
        "<",
        "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private _matches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _maxMatchLen:I

.field private _nameTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;

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
    sput-boolean v0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->-assertionsDisabled:Z

    #@b
    .line 355
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 360
    .local p1, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/text/TimeZoneNames$NameType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 361
    iput-object p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    #@5
    .line 360
    return-void
.end method


# virtual methods
.method public getMatches()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/text/TimeZoneNames$MatchInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 396
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 397
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 399
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    #@b
    return-object v0
.end method

.method public getMaxMatchLen()I
    .locals 1

    #@0
    .prologue
    .line 407
    iget v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    #@2
    return v0
.end method

.method public handlePrefixMatch(ILjava/util/Iterator;)Z
    .locals 6
    .param p1, "matchLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/TimeZoneNamesImpl$NameInfo;>;"
    const/4 v3, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 368
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@5
    move-result v2

    #@6
    if-eqz v2, :cond_6

    #@8
    .line 369
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@b
    move-result-object v1

    #@c
    check-cast v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;

    #@e
    .line 370
    .local v1, "ninfo":Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    #@10
    if-eqz v2, :cond_1

    #@12
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    #@14
    iget-object v4, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    #@16
    invoke-virtual {v2, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@19
    move-result v2

    #@1a
    if-eqz v2, :cond_0

    #@1c
    .line 374
    :cond_1
    iget-object v2, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->tzID:Ljava/lang/String;

    #@1e
    if-eqz v2, :cond_3

    #@20
    .line 375
    new-instance v0, Landroid/icu/text/TimeZoneNames$MatchInfo;

    #@22
    iget-object v2, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    #@24
    iget-object v4, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->tzID:Ljava/lang/String;

    #@26
    invoke-direct {v0, v2, v4, v5, p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;-><init>(Landroid/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V

    #@29
    .line 380
    .local v0, "minfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :goto_1
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    #@2b
    if-nez v2, :cond_2

    #@2d
    .line 381
    new-instance v2, Ljava/util/LinkedList;

    #@2f
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@32
    iput-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    #@34
    .line 383
    :cond_2
    iget-object v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    #@36
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@39
    .line 384
    iget v2, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    #@3b
    if-le p1, v2, :cond_0

    #@3d
    .line 385
    iput p1, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    #@3f
    goto :goto_0

    #@40
    .line 377
    .end local v0    # "minfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_3
    sget-boolean v2, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->-assertionsDisabled:Z

    #@42
    if-nez v2, :cond_5

    #@44
    iget-object v2, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->mzID:Ljava/lang/String;

    #@46
    if-eqz v2, :cond_4

    #@48
    move v2, v3

    #@49
    :goto_2
    if-nez v2, :cond_5

    #@4b
    new-instance v2, Ljava/lang/AssertionError;

    #@4d
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@50
    throw v2

    #@51
    :cond_4
    const/4 v2, 0x0

    #@52
    goto :goto_2

    #@53
    .line 378
    :cond_5
    new-instance v0, Landroid/icu/text/TimeZoneNames$MatchInfo;

    #@55
    iget-object v2, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    #@57
    iget-object v4, v1, Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;->mzID:Ljava/lang/String;

    #@59
    invoke-direct {v0, v2, v5, v4, p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;-><init>(Landroid/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V

    #@5c
    .restart local v0    # "minfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    goto :goto_1

    #@5d
    .line 388
    .end local v0    # "minfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v1    # "ninfo":Landroid/icu/impl/TimeZoneNamesImpl$NameInfo;
    :cond_6
    return v3
.end method

.method public resetResults()V
    .locals 1

    #@0
    .prologue
    .line 414
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_matches:Ljava/util/Collection;

    #@3
    .line 415
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/impl/TimeZoneNamesImpl$NameSearchHandler;->_maxMatchLen:I

    #@6
    .line 413
    return-void
.end method
