.class Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;
.super Ljava/lang/Object;
.source "TZDBTimeZoneNames.java"

# interfaces
.implements Landroid/icu/impl/TextTrieMap$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/TZDBTimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TZDBNameSearchHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/icu/impl/TextTrieMap$ResultHandler",
        "<",
        "Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;",
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

.field private _region:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;

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
    sput-boolean v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->-assertionsDisabled:Z

    #@b
    .line 223
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method constructor <init>(Ljava/util/EnumSet;Ljava/lang/String;)V
    .locals 1
    .param p2, "region"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 228
    .local p1, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 229
    iput-object p1, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    #@5
    .line 230
    sget-boolean v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->-assertionsDisabled:Z

    #@7
    if-nez v0, :cond_1

    #@9
    if-eqz p2, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    if-nez v0, :cond_1

    #@e
    new-instance v0, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v0

    #@14
    :cond_0
    const/4 v0, 0x0

    #@15
    goto :goto_0

    #@16
    .line 231
    :cond_1
    iput-object p2, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_region:Ljava/lang/String;

    #@18
    .line 228
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
    .line 320
    iget-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_matches:Ljava/util/Collection;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 321
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    #@7
    move-result-object v0

    #@8
    return-object v0

    #@9
    .line 323
    :cond_0
    iget-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_matches:Ljava/util/Collection;

    #@b
    return-object v0
.end method

.method public handlePrefixMatch(ILjava/util/Iterator;)Z
    .locals 12
    .param p1, "matchLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator",
            "<",
            "Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;>;"
    const/4 v11, 0x0

    #@1
    .line 239
    const/4 v1, 0x0

    #@2
    .line 240
    .local v1, "match":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    const/4 v0, 0x0

    #@3
    .line 242
    .end local v1    # "match":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    #@6
    move-result v7

    #@7
    if-eqz v7, :cond_4

    #@9
    .line 243
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@c
    move-result-object v4

    #@d
    check-cast v4, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;

    #@f
    .line 245
    .local v4, "ninfo":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    iget-object v7, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    #@11
    if-eqz v7, :cond_1

    #@13
    iget-object v7, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    #@15
    iget-object v8, v4, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    #@17
    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_0

    #@1d
    .line 256
    :cond_1
    iget-object v7, v4, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->parseRegions:[Ljava/lang/String;

    #@1f
    if-nez v7, :cond_2

    #@21
    .line 259
    if-nez v0, :cond_0

    #@23
    .line 260
    move-object v0, v4

    #@24
    .local v0, "defaultRegionMatch":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    move-object v1, v4

    #@25
    .local v1, "match":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    goto :goto_0

    #@26
    .line 263
    .end local v0    # "defaultRegionMatch":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    .end local v1    # "match":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    :cond_2
    const/4 v2, 0x0

    #@27
    .line 269
    .local v2, "matchRegion":Z
    iget-object v8, v4, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->parseRegions:[Ljava/lang/String;

    #@29
    const/4 v7, 0x0

    #@2a
    array-length v9, v8

    #@2b
    :goto_1
    if-ge v7, v9, :cond_3

    #@2d
    aget-object v6, v8, v7

    #@2f
    .line 270
    .local v6, "region":Ljava/lang/String;
    iget-object v10, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_region:Ljava/lang/String;

    #@31
    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v10

    #@35
    if-eqz v10, :cond_9

    #@37
    .line 271
    move-object v1, v4

    #@38
    .line 272
    .restart local v1    # "match":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    const/4 v2, 0x1

    #@39
    .line 276
    .end local v1    # "match":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    .end local v6    # "region":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_a

    #@3b
    .line 285
    .end local v2    # "matchRegion":Z
    .end local v4    # "ninfo":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    :cond_4
    if-eqz v1, :cond_8

    #@3d
    .line 286
    iget-object v5, v1, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    #@3f
    .line 299
    .local v5, "ntype":Landroid/icu/text/TimeZoneNames$NameType;
    iget-boolean v7, v1, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->ambiguousType:Z

    #@41
    if-eqz v7, :cond_6

    #@43
    .line 300
    sget-object v7, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@45
    if-eq v5, v7, :cond_5

    #@47
    sget-object v7, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@49
    if-ne v5, v7, :cond_6

    #@4b
    .line 301
    :cond_5
    iget-object v7, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    #@4d
    sget-object v8, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@4f
    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    #@52
    move-result v7

    #@53
    .line 299
    if-eqz v7, :cond_6

    #@55
    .line 302
    iget-object v7, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    #@57
    sget-object v8, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@59
    invoke-virtual {v7, v8}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    #@5c
    move-result v7

    #@5d
    .line 299
    if-eqz v7, :cond_6

    #@5f
    .line 303
    sget-object v5, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    #@61
    .line 305
    :cond_6
    new-instance v3, Landroid/icu/text/TimeZoneNames$MatchInfo;

    #@63
    iget-object v7, v1, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->mzID:Ljava/lang/String;

    #@65
    invoke-direct {v3, v5, v11, v7, p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;-><init>(Landroid/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V

    #@68
    .line 306
    .local v3, "minfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    iget-object v7, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_matches:Ljava/util/Collection;

    #@6a
    if-nez v7, :cond_7

    #@6c
    .line 307
    new-instance v7, Ljava/util/LinkedList;

    #@6e
    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    #@71
    iput-object v7, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_matches:Ljava/util/Collection;

    #@73
    .line 309
    :cond_7
    iget-object v7, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_matches:Ljava/util/Collection;

    #@75
    invoke-interface {v7, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    #@78
    .line 312
    .end local v3    # "minfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    .end local v5    # "ntype":Landroid/icu/text/TimeZoneNames$NameType;
    :cond_8
    const/4 v7, 0x1

    #@79
    return v7

    #@7a
    .line 269
    .restart local v2    # "matchRegion":Z
    .restart local v4    # "ninfo":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    .restart local v6    # "region":Ljava/lang/String;
    :cond_9
    add-int/lit8 v7, v7, 0x1

    #@7c
    goto :goto_1

    #@7d
    .line 279
    .end local v6    # "region":Ljava/lang/String;
    :cond_a
    if-nez v1, :cond_0

    #@7f
    .line 280
    move-object v1, v4

    #@80
    .restart local v1    # "match":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    goto :goto_0
.end method
