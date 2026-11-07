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
        "Landroid/icu/impl/TextTrieMap$ResultHandler<",
        "Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;",
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

.field private blacklist _nameTypes:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist _region:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 236
    const-class v0, Landroid/icu/impl/TZDBTimeZoneNames;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/EnumSet;Ljava/lang/String;)V
    .registers 3
    .param p2, "region"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Landroid/icu/text/TimeZoneNames$NameType;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 241
    .local p1, "nameTypes":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Landroid/icu/text/TimeZoneNames$NameType;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    .line 243
    nop

    .line 244
    iput-object p2, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_region:Ljava/lang/String;

    .line 245
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

    .line 334
    iget-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_matches:Ljava/util/Collection;

    if-nez v0, :cond_9

    .line 335
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 337
    :cond_9
    iget-object v0, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_matches:Ljava/util/Collection;

    return-object v0
.end method

.method public blacklist handlePrefixMatch(ILjava/util/Iterator;)Z
    .registers 12
    .param p1, "matchLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Iterator<",
            "Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;",
            ">;)Z"
        }
    .end annotation

    .line 253
    .local p2, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;>;"
    const/4 v0, 0x0

    .line 254
    .local v0, "match":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    const/4 v1, 0x0

    .line 256
    .local v1, "defaultRegionMatch":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    .line 257
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;

    .line 259
    .local v2, "ninfo":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    iget-object v3, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    if-eqz v3, :cond_1d

    iget-object v3, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    iget-object v4, v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 260
    goto :goto_2

    .line 270
    :cond_1d
    iget-object v3, v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->parseRegions:[Ljava/lang/String;

    if-nez v3, :cond_26

    .line 273
    if-nez v1, :cond_43

    .line 274
    move-object v1, v2

    move-object v0, v2

    goto :goto_43

    .line 277
    :cond_26
    const/4 v3, 0x0

    .line 283
    .local v3, "matchRegion":Z
    iget-object v4, v2, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->parseRegions:[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    :goto_2b
    if-ge v6, v5, :cond_3d

    aget-object v7, v4, v6

    .line 284
    .local v7, "region":Ljava/lang/String;
    iget-object v8, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_region:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3a

    .line 285
    move-object v0, v2

    .line 286
    const/4 v3, 0x1

    .line 287
    goto :goto_3d

    .line 283
    .end local v7    # "region":Ljava/lang/String;
    :cond_3a
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 290
    :cond_3d
    :goto_3d
    if-eqz v3, :cond_40

    .line 291
    goto :goto_44

    .line 293
    :cond_40
    if-nez v0, :cond_43

    .line 294
    move-object v0, v2

    .line 297
    .end local v2    # "ninfo":Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;
    .end local v3    # "matchRegion":Z
    :cond_43
    :goto_43
    goto :goto_2

    .line 299
    :cond_44
    :goto_44
    if-eqz v0, :cond_82

    .line 300
    iget-object v2, v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->type:Landroid/icu/text/TimeZoneNames$NameType;

    .line 313
    .local v2, "ntype":Landroid/icu/text/TimeZoneNames$NameType;
    iget-boolean v3, v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->ambiguousType:Z

    if-eqz v3, :cond_6a

    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    if-eq v2, v3, :cond_54

    sget-object v3, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    if-ne v2, v3, :cond_6a

    :cond_54
    iget-object v3, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    .line 315
    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    iget-object v3, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_nameTypes:Ljava/util/EnumSet;

    sget-object v4, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    .line 316
    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6a

    .line 317
    sget-object v2, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_GENERIC:Landroid/icu/text/TimeZoneNames$NameType;

    .line 319
    :cond_6a
    new-instance v3, Landroid/icu/text/TimeZoneNames$MatchInfo;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameInfo;->mzID:Ljava/lang/String;

    invoke-direct {v3, v2, v4, v5, p1}, Landroid/icu/text/TimeZoneNames$MatchInfo;-><init>(Landroid/icu/text/TimeZoneNames$NameType;Ljava/lang/String;Ljava/lang/String;I)V

    .line 320
    .local v3, "minfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    iget-object v4, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_matches:Ljava/util/Collection;

    if-nez v4, :cond_7d

    .line 321
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_matches:Ljava/util/Collection;

    .line 323
    :cond_7d
    iget-object v4, p0, Landroid/icu/impl/TZDBTimeZoneNames$TZDBNameSearchHandler;->_matches:Ljava/util/Collection;

    invoke-interface {v4, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 326
    .end local v2    # "ntype":Landroid/icu/text/TimeZoneNames$NameType;
    .end local v3    # "minfo":Landroid/icu/text/TimeZoneNames$MatchInfo;
    :cond_82
    const/4 v2, 0x1

    return v2
.end method
