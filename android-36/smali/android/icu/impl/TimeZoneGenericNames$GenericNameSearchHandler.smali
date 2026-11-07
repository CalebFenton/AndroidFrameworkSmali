.class Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;
.super Ljava/lang/Object;
.source "TimeZoneGenericNames.java"

# interfaces
.implements Landroid/icu/impl/TextTrieMap$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TimeZoneGenericNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenericNameSearchHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/impl/TextTrieMap$ResultHandler<",
        "Landroid/icu/impl/TimeZoneGenericNames$NameInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private greylist-max-o _matches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o _maxMatchLen:I

.field private greylist-max-o _types:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/EnumSet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)V"
        }
    .end annotation

    .line 648
    .local p1, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 649
    iput-object p1, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_types:Ljava/util/EnumSet;

    .line 650
    return-void
.end method


# virtual methods
.method public greylist-max-o getMatches()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation

    .line 679
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    return-object v0
.end method

.method public greylist-max-o getMaxMatchLen()I
    .registers 2

    .line 687
    iget v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    return v0
.end method

.method public greylist-max-o handlePrefixMatch(ILjava/util/Iterator;)Z
    .registers 8
    .param p1, "matchLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "Landroid/icu/impl/TimeZoneGenericNames$NameInfo;",
            ">;)Z"
        }
    .end annotation

    .line 657
    .local p2, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/TimeZoneGenericNames$NameInfo;>;"
    nop

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 658
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;

    .line 659
    .local v0, "info":Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_types:Ljava/util/EnumSet;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_types:Ljava/util/EnumSet;

    iget-object v2, v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    invoke-virtual {v1, v2}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    .line 660
    goto :goto_1

    .line 662
    :cond_1c
    new-instance v1, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    iget-object v2, v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    iget-object v3, v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->tzID:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>(Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;Ljava/lang/String;ILandroid/icu/impl/TimeZoneGenericNames-IA;)V

    .line 663
    .local v1, "matchInfo":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    if-nez v2, :cond_31

    .line 664
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    .line 666
    :cond_31
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 667
    iget v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    if-le p1, v2, :cond_3c

    .line 668
    iput p1, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    .line 670
    .end local v0    # "info":Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
    .end local v1    # "matchInfo":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    :cond_3c
    goto :goto_1

    .line 671
    :cond_3d
    const/4 v0, 0x1

    return v0
.end method

.method public greylist-max-o resetResults()V
    .registers 2

    .line 694
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    .line 695
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    .line 696
    return-void
.end method
