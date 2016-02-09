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
        "Landroid/icu/impl/TextTrieMap$ResultHandler",
        "<",
        "Landroid/icu/impl/TimeZoneGenericNames$NameInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private _matches:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private _maxMatchLen:I

.field private _types:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 628
    .local p1, "types":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/ibm/icu/impl/TimeZoneGenericNames$GenericNameType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 629
    iput-object p1, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_types:Ljava/util/EnumSet;

    #@5
    .line 628
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
            "Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 662
    iget-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    #@2
    return-object v0
.end method

.method public getMaxMatchLen()I
    .locals 1

    #@0
    .prologue
    .line 670
    iget v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    #@2
    return v0
.end method

.method public handlePrefixMatch(ILjava/util/Iterator;)Z
    .locals 4
    .param p1, "matchLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/impl/TimeZoneGenericNames$NameInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 636
    .local p2, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/ibm/icu/impl/TimeZoneGenericNames$NameInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_3

    #@6
    .line 637
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;

    #@c
    .line 638
    .local v0, "info":Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_types:Ljava/util/EnumSet;

    #@e
    if-eqz v2, :cond_1

    #@10
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_types:Ljava/util/EnumSet;

    #@12
    iget-object v3, v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@14
    invoke-virtual {v2, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 641
    :cond_1
    new-instance v1, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;

    #@1c
    invoke-direct {v1}, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;-><init>()V

    #@1f
    .line 642
    .local v1, "matchInfo":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    iget-object v2, v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->tzID:Ljava/lang/String;

    #@21
    iput-object v2, v1, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->tzID:Ljava/lang/String;

    #@23
    .line 643
    iget-object v2, v0, Landroid/icu/impl/TimeZoneGenericNames$NameInfo;->type:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@25
    iput-object v2, v1, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->nameType:Landroid/icu/impl/TimeZoneGenericNames$GenericNameType;

    #@27
    .line 644
    iput p1, v1, Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;->matchLength:I

    #@29
    .line 646
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    #@2b
    if-nez v2, :cond_2

    #@2d
    .line 647
    new-instance v2, Ljava/util/LinkedList;

    #@2f
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    #@32
    iput-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    #@34
    .line 649
    :cond_2
    iget-object v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    #@36
    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@39
    .line 650
    iget v2, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    #@3b
    if-le p1, v2, :cond_0

    #@3d
    .line 651
    iput p1, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    #@3f
    goto :goto_0

    #@40
    .line 654
    .end local v0    # "info":Landroid/icu/impl/TimeZoneGenericNames$NameInfo;
    .end local v1    # "matchInfo":Landroid/icu/impl/TimeZoneGenericNames$GenericMatchInfo;
    :cond_3
    const/4 v2, 0x1

    #@41
    return v2
.end method

.method public resetResults()V
    .locals 1

    #@0
    .prologue
    .line 677
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_matches:Ljava/util/Collection;

    #@3
    .line 678
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/icu/impl/TimeZoneGenericNames$GenericNameSearchHandler;->_maxMatchLen:I

    #@6
    .line 676
    return-void
.end method
