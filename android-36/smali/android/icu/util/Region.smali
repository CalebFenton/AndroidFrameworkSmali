.class public Landroid/icu/util/Region;
.super Ljava/lang/Object;
.source "Region.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/Region$RegionType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/util/Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final greylist-max-o OUTLYING_OCEANIA_REGION_ID:Ljava/lang/String; = "QO"

.field private static final greylist-max-o UNKNOWN_REGION_ID:Ljava/lang/String; = "ZZ"

.field private static final greylist-max-o WORLD_ID:Ljava/lang/String; = "001"

.field private static greylist-max-o availableRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Set<",
            "Landroid/icu/util/Region;",
            ">;>;"
        }
    .end annotation
.end field

.field private static greylist-max-o numericCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o regionAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o regionDataIsLoaded:Z

.field private static greylist-max-o regionIDMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static greylist-max-o regions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o code:I

.field private greylist-max-o containedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o containingRegion:Landroid/icu/util/Region;

.field private greylist-max-o id:Ljava/lang/String;

.field private greylist-max-o preferredValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o type:Landroid/icu/util/Region$RegionType;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 114
    const/4 v0, 0x0

    sput-boolean v0, Landroid/icu/util/Region;->regionDataIsLoaded:Z

    .line 116
    const/4 v0, 0x0

    sput-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    .line 117
    sput-object v0, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    .line 118
    sput-object v0, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    .line 120
    sput-object v0, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    .line 121
    sput-object v0, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    .line 111
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    .line 112
    iput-object v0, p0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    .line 130
    return-void
.end method

.method public static greylist-max-o getAvailable(Landroid/icu/util/Region$RegionType;)Ljava/util/Set;
    .registers 3
    .param p0, "type"    # Landroid/icu/util/Region$RegionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Region$RegionType;",
            ")",
            "Ljava/util/Set<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    .line 454
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 455
    sget-object v0, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/icu/util/Region$RegionType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getInstance(I)Landroid/icu/util/Region;
    .registers 5
    .param p0, "code"    # I

    .line 419
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 421
    sget-object v0, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    .line 423
    .local v0, "r":Landroid/icu/util/Region;
    if-nez v0, :cond_3e

    .line 424
    const-string v1, ""

    .line 425
    .local v1, "pad":Ljava/lang/String;
    const/16 v2, 0xa

    if-ge p0, v2, :cond_1a

    .line 426
    const-string v1, "00"

    goto :goto_20

    .line 427
    :cond_1a
    const/16 v2, 0x64

    if-ge p0, v2, :cond_20

    .line 428
    const-string v1, "0"

    .line 430
    :cond_20
    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 431
    .local v2, "id":Ljava/lang/String;
    sget-object v3, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/icu/util/Region;

    .line 434
    .end local v1    # "pad":Ljava/lang/String;
    .end local v2    # "id":Ljava/lang/String;
    :cond_3e
    if-eqz v0, :cond_5a

    .line 438
    iget-object v1, v0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    sget-object v2, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    if-ne v1, v2, :cond_59

    iget-object v1, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_59

    .line 439
    iget-object v1, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/icu/util/Region;

    .line 442
    :cond_59
    return-object v0

    .line 435
    :cond_5a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown region code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static greylist-max-o getInstance(Ljava/lang/String;)Landroid/icu/util/Region;
    .registers 5
    .param p0, "id"    # Ljava/lang/String;

    .line 387
    if-eqz p0, :cond_4d

    .line 391
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 393
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    .line 395
    .local v0, "r":Landroid/icu/util/Region;
    if-nez v0, :cond_18

    .line 396
    sget-object v1, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/icu/util/Region;

    .line 399
    :cond_18
    if-eqz v0, :cond_34

    .line 403
    iget-object v1, v0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    sget-object v2, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    if-ne v1, v2, :cond_33

    iget-object v1, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_33

    .line 404
    iget-object v1, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/icu/util/Region;

    .line 407
    :cond_33
    return-object v0

    .line 400
    :cond_34
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown region id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 388
    .end local v0    # "r":Landroid/icu/util/Region;
    :cond_4d
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method private static declared-synchronized greylist-max-o loadRegionData()V
    .registers 30

    const-class v1, Landroid/icu/util/Region;

    monitor-enter v1

    .line 143
    :try_start_3
    sget-boolean v0, Landroid/icu/util/Region;->regionDataIsLoaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_49f

    if-eqz v0, :cond_9

    .line 144
    monitor-exit v1

    return-void

    .line 147
    :cond_9
    :try_start_9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    .line 151
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Landroid/icu/util/Region$RegionType;->values()[Landroid/icu/util/Region$RegionType;

    move-result-object v2

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "metadataAlias":Landroid/icu/util/UResourceBundle;
    const/4 v2, 0x0

    .line 156
    .local v2, "territoryAlias":Landroid/icu/util/UResourceBundle;
    const/4 v3, 0x0

    .line 157
    .local v3, "codeMappings":Landroid/icu/util/UResourceBundle;
    const/4 v4, 0x0

    .line 158
    .local v4, "idValidity":Landroid/icu/util/UResourceBundle;
    const/4 v5, 0x0

    .line 159
    .local v5, "regionList":Landroid/icu/util/UResourceBundle;
    const/4 v6, 0x0

    .line 160
    .local v6, "regionRegular":Landroid/icu/util/UResourceBundle;
    const/4 v7, 0x0

    .line 161
    .local v7, "regionMacro":Landroid/icu/util/UResourceBundle;
    const/4 v8, 0x0

    .line 162
    .local v8, "regionUnknown":Landroid/icu/util/UResourceBundle;
    const/4 v9, 0x0

    .line 163
    .local v9, "worldContainment":Landroid/icu/util/UResourceBundle;
    const/4 v10, 0x0

    .line 164
    .local v10, "territoryContainment":Landroid/icu/util/UResourceBundle;
    const/4 v11, 0x0

    .line 166
    .local v11, "groupingContainment":Landroid/icu/util/UResourceBundle;
    const-string v12, "android/icu/impl/data/icudata"

    const-string v13, "metadata"

    sget-object v14, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v12, v13, v14}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v12

    .line 167
    .local v12, "metadata":Landroid/icu/util/UResourceBundle;
    const-string v13, "alias"

    invoke-virtual {v12, v13}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v13

    .line 168
    .end local v0    # "metadataAlias":Landroid/icu/util/UResourceBundle;
    .local v13, "metadataAlias":Landroid/icu/util/UResourceBundle;
    const-string v0, "territory"

    invoke-virtual {v13, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    .line 170
    .end local v2    # "territoryAlias":Landroid/icu/util/UResourceBundle;
    .local v0, "territoryAlias":Landroid/icu/util/UResourceBundle;
    const-string v2, "android/icu/impl/data/icudata"

    const-string v14, "supplementalData"

    sget-object v15, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, v14, v15}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 171
    .local v2, "supplementalData":Landroid/icu/util/UResourceBundle;
    const-string v14, "codeMappings"

    invoke-virtual {v2, v14}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v14

    .line 172
    .end local v3    # "codeMappings":Landroid/icu/util/UResourceBundle;
    .local v14, "codeMappings":Landroid/icu/util/UResourceBundle;
    const-string v3, "idValidity"

    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 173
    .end local v4    # "idValidity":Landroid/icu/util/UResourceBundle;
    .local v3, "idValidity":Landroid/icu/util/UResourceBundle;
    const-string v4, "region"

    invoke-virtual {v3, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    .line 174
    .end local v5    # "regionList":Landroid/icu/util/UResourceBundle;
    .local v4, "regionList":Landroid/icu/util/UResourceBundle;
    const-string v5, "regular"

    invoke-virtual {v4, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    .line 175
    .end local v6    # "regionRegular":Landroid/icu/util/UResourceBundle;
    .local v5, "regionRegular":Landroid/icu/util/UResourceBundle;
    const-string v6, "macroregion"

    invoke-virtual {v4, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v6

    .line 176
    .end local v7    # "regionMacro":Landroid/icu/util/UResourceBundle;
    .local v6, "regionMacro":Landroid/icu/util/UResourceBundle;
    const-string v7, "unknown"

    invoke-virtual {v4, v7}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v7

    .line 178
    .end local v8    # "regionUnknown":Landroid/icu/util/UResourceBundle;
    .local v7, "regionUnknown":Landroid/icu/util/UResourceBundle;
    const-string v8, "territoryContainment"

    invoke-virtual {v2, v8}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v8

    .line 179
    .end local v10    # "territoryContainment":Landroid/icu/util/UResourceBundle;
    .local v8, "territoryContainment":Landroid/icu/util/UResourceBundle;
    const-string v10, "001"

    invoke-virtual {v8, v10}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v10

    .line 180
    .end local v9    # "worldContainment":Landroid/icu/util/UResourceBundle;
    .local v10, "worldContainment":Landroid/icu/util/UResourceBundle;
    const-string v9, "grouping"

    invoke-virtual {v8, v9}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    .line 182
    .end local v11    # "groupingContainment":Landroid/icu/util/UResourceBundle;
    .local v9, "groupingContainment":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v10}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v11

    .line 183
    .local v11, "continentsArr":[Ljava/lang/String;
    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    .line 184
    .local v15, "continents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v16

    .line 185
    .local v16, "groupings":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v18, v17

    .line 187
    .local v18, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v19, v17

    .line 188
    .local v19, "allRegions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v20, v2

    .end local v2    # "supplementalData":Landroid/icu/util/UResourceBundle;
    .local v20, "supplementalData":Landroid/icu/util/UResourceBundle;
    invoke-static/range {v17 .. v17}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    move-object/from16 v17, v3

    move-object/from16 v3, v19

    .end local v19    # "allRegions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v3, "allRegions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v17, "idValidity":Landroid/icu/util/UResourceBundle;
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 189
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 190
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_cc
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_14e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    move-object/from16 v21, v19

    .line 193
    .local v21, "r":Ljava/lang/String;
    move-object/from16 v19, v2

    const-string v2, "~"

    move-object/from16 v22, v3

    move-object/from16 v3, v21

    .end local v21    # "r":Ljava/lang/String;
    .local v3, "r":Ljava/lang/String;
    .local v22, "allRegions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 194
    .local v2, "rangeMarkerLocation":I
    if-lez v2, :cond_133

    .line 195
    move-object/from16 v21, v4

    .end local v4    # "regionList":Landroid/icu/util/UResourceBundle;
    .local v21, "regionList":Landroid/icu/util/UResourceBundle;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    .local v4, "regionName":Ljava/lang/StringBuilder;
    move-object/from16 v23, v5

    .end local v5    # "regionRegular":Landroid/icu/util/UResourceBundle;
    .local v23, "regionRegular":Landroid/icu/util/UResourceBundle;
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    .line 197
    .local v5, "endRange":C
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 198
    move/from16 v24, v2

    .end local v2    # "rangeMarkerLocation":I
    .local v24, "rangeMarkerLocation":I
    add-int/lit8 v2, v24, -0x1

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    .line 199
    .local v2, "lastChar":C
    :goto_102
    if-gt v2, v5, :cond_12a

    .line 200
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v26, v25

    .line 201
    .local v26, "newRegion":Ljava/lang/String;
    move/from16 v25, v2

    move-object/from16 v2, v18

    move/from16 v18, v5

    move-object/from16 v5, v26

    .end local v26    # "newRegion":Ljava/lang/String;
    .local v2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v5, "newRegion":Ljava/lang/String;
    .local v18, "endRange":C
    .local v25, "lastChar":C
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    move-object/from16 v26, v5

    .end local v5    # "newRegion":Ljava/lang/String;
    .restart local v26    # "newRegion":Ljava/lang/String;
    add-int/lit8 v5, v25, 0x1

    int-to-char v5, v5

    .line 203
    .end local v25    # "lastChar":C
    .local v5, "lastChar":C
    move-object/from16 v27, v6

    .end local v6    # "regionMacro":Landroid/icu/util/UResourceBundle;
    .local v27, "regionMacro":Landroid/icu/util/UResourceBundle;
    add-int/lit8 v6, v24, -0x1

    invoke-virtual {v4, v6, v5}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 204
    .end local v26    # "newRegion":Ljava/lang/String;
    move/from16 v6, v18

    move-object/from16 v18, v2

    move v2, v5

    move v5, v6

    move-object/from16 v6, v27

    goto :goto_102

    .line 199
    .end local v27    # "regionMacro":Landroid/icu/util/UResourceBundle;
    .local v2, "lastChar":C
    .local v5, "endRange":C
    .restart local v6    # "regionMacro":Landroid/icu/util/UResourceBundle;
    .local v18, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_12a
    move/from16 v25, v2

    move-object/from16 v27, v6

    move-object/from16 v2, v18

    move/from16 v18, v5

    .line 205
    .end local v4    # "regionName":Ljava/lang/StringBuilder;
    .end local v5    # "endRange":C
    .end local v6    # "regionMacro":Landroid/icu/util/UResourceBundle;
    .end local v18    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v27    # "regionMacro":Landroid/icu/util/UResourceBundle;
    goto :goto_140

    .line 206
    .end local v21    # "regionList":Landroid/icu/util/UResourceBundle;
    .end local v23    # "regionRegular":Landroid/icu/util/UResourceBundle;
    .end local v24    # "rangeMarkerLocation":I
    .end local v27    # "regionMacro":Landroid/icu/util/UResourceBundle;
    .local v2, "rangeMarkerLocation":I
    .local v4, "regionList":Landroid/icu/util/UResourceBundle;
    .local v5, "regionRegular":Landroid/icu/util/UResourceBundle;
    .restart local v6    # "regionMacro":Landroid/icu/util/UResourceBundle;
    .restart local v18    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_133
    move/from16 v24, v2

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    move-object/from16 v27, v6

    move-object/from16 v2, v18

    .end local v4    # "regionList":Landroid/icu/util/UResourceBundle;
    .end local v5    # "regionRegular":Landroid/icu/util/UResourceBundle;
    .end local v6    # "regionMacro":Landroid/icu/util/UResourceBundle;
    .end local v18    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v2, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "regionList":Landroid/icu/util/UResourceBundle;
    .restart local v23    # "regionRegular":Landroid/icu/util/UResourceBundle;
    .restart local v24    # "rangeMarkerLocation":I
    .restart local v27    # "regionMacro":Landroid/icu/util/UResourceBundle;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    .end local v3    # "r":Ljava/lang/String;
    .end local v24    # "rangeMarkerLocation":I
    :goto_140
    move-object/from16 v18, v2

    move-object/from16 v2, v19

    move-object/from16 v4, v21

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v27

    goto/16 :goto_cc

    .line 210
    .end local v2    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "regionList":Landroid/icu/util/UResourceBundle;
    .end local v22    # "allRegions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "regionRegular":Landroid/icu/util/UResourceBundle;
    .end local v27    # "regionMacro":Landroid/icu/util/UResourceBundle;
    .local v3, "allRegions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "regionList":Landroid/icu/util/UResourceBundle;
    .restart local v5    # "regionRegular":Landroid/icu/util/UResourceBundle;
    .restart local v6    # "regionMacro":Landroid/icu/util/UResourceBundle;
    .restart local v18    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14e
    move-object/from16 v22, v3

    move-object/from16 v21, v4

    move-object/from16 v23, v5

    move-object/from16 v27, v6

    move-object/from16 v2, v18

    .end local v3    # "allRegions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "regionList":Landroid/icu/util/UResourceBundle;
    .end local v5    # "regionRegular":Landroid/icu/util/UResourceBundle;
    .end local v6    # "regionMacro":Landroid/icu/util/UResourceBundle;
    .end local v18    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v21    # "regionList":Landroid/icu/util/UResourceBundle;
    .restart local v22    # "allRegions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v23    # "regionRegular":Landroid/icu/util/UResourceBundle;
    .restart local v27    # "regionMacro":Landroid/icu/util/UResourceBundle;
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v3, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    .line 213
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_167
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1b4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 214
    .local v4, "id":Ljava/lang/String;
    new-instance v6, Landroid/icu/util/Region;

    invoke-direct {v6}, Landroid/icu/util/Region;-><init>()V

    .line 215
    .local v6, "r":Landroid/icu/util/Region;
    iput-object v4, v6, Landroid/icu/util/Region;->id:Ljava/lang/String;

    .line 216
    sget-object v5, Landroid/icu/util/Region$RegionType;->TERRITORY:Landroid/icu/util/Region$RegionType;

    iput-object v5, v6, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    .line 217
    sget-object v5, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v5, "[0-9]{3}"

    invoke-virtual {v4, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a7

    .line 219
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v6, Landroid/icu/util/Region;->code:I

    .line 220
    sget-object v5, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    move-object/from16 v19, v2

    .end local v2    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v19, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, v6, Landroid/icu/util/Region;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v5, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    sget-object v2, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    iput-object v2, v6, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    goto :goto_1ac

    .line 223
    .end local v19    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1a7
    move-object/from16 v19, v2

    .end local v2    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, -0x1

    iput v2, v6, Landroid/icu/util/Region;->code:I

    .line 225
    :goto_1ac
    sget-object v2, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    move-object/from16 v2, v19

    .end local v4    # "id":Ljava/lang/String;
    .end local v6    # "r":Landroid/icu/util/Region;
    goto :goto_167

    .line 230
    .end local v19    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1b4
    move-object/from16 v19, v2

    .end local v2    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v19    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1b7
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v3

    if-ge v2, v3, :cond_297

    .line 231
    invoke-virtual {v0, v2}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 232
    .local v3, "res":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 233
    .local v4, "aliasFrom":Ljava/lang/String;
    const-string v5, "replacement"

    invoke-virtual {v3, v5}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    move-result-object v5

    .line 235
    .local v5, "aliasTo":Ljava/lang/String;
    sget-object v6, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f2

    sget-object v6, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1f2

    .line 236
    sget-object v6, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    move-object/from16 v24, v0

    .end local v0    # "territoryAlias":Landroid/icu/util/UResourceBundle;
    .local v24, "territoryAlias":Landroid/icu/util/UResourceBundle;
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move/from16 v25, v2

    goto/16 :goto_291

    .line 235
    .end local v24    # "territoryAlias":Landroid/icu/util/UResourceBundle;
    .restart local v0    # "territoryAlias":Landroid/icu/util/UResourceBundle;
    :cond_1f2
    move-object/from16 v24, v0

    .line 239
    .end local v0    # "territoryAlias":Landroid/icu/util/UResourceBundle;
    .restart local v24    # "territoryAlias":Landroid/icu/util/UResourceBundle;
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_208

    .line 240
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    move/from16 v25, v2

    const/4 v2, -0x1

    .local v0, "r":Landroid/icu/util/Region;
    goto :goto_23f

    .line 242
    .end local v0    # "r":Landroid/icu/util/Region;
    :cond_208
    new-instance v0, Landroid/icu/util/Region;

    invoke-direct {v0}, Landroid/icu/util/Region;-><init>()V

    .line 243
    .restart local v0    # "r":Landroid/icu/util/Region;
    iput-object v4, v0, Landroid/icu/util/Region;->id:Ljava/lang/String;

    .line 244
    sget-object v6, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v6, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v6, "[0-9]{3}"

    invoke-virtual {v4, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_235

    .line 246
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Landroid/icu/util/Region;->code:I

    .line 247
    sget-object v6, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    move/from16 v25, v2

    .end local v2    # "i":I
    .local v25, "i":I
    iget v2, v0, Landroid/icu/util/Region;->code:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, -0x1

    goto :goto_23a

    .line 249
    .end local v25    # "i":I
    .restart local v2    # "i":I
    :cond_235
    move/from16 v25, v2

    .end local v2    # "i":I
    .restart local v25    # "i":I
    const/4 v2, -0x1

    iput v2, v0, Landroid/icu/util/Region;->code:I

    .line 251
    :goto_23a
    sget-object v6, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    :goto_23f
    sget-object v6, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    iput-object v6, v0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    .line 254
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    .line 255
    .local v6, "aliasToRegionStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    .line 256
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_258
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_28d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    move-object/from16 v28, v26

    .line 257
    .local v28, "s":Ljava/lang/String;
    move-object/from16 v26, v2

    sget-object v2, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    move-object/from16 v29, v3

    move-object/from16 v3, v28

    .end local v28    # "s":Ljava/lang/String;
    .local v3, "s":Ljava/lang/String;
    .local v29, "res":Landroid/icu/util/UResourceBundle;
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_284

    .line 258
    iget-object v2, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    move-object/from16 v28, v0

    .end local v0    # "r":Landroid/icu/util/Region;
    .local v28, "r":Landroid/icu/util/Region;
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_286

    .line 257
    .end local v28    # "r":Landroid/icu/util/Region;
    .restart local v0    # "r":Landroid/icu/util/Region;
    :cond_284
    move-object/from16 v28, v0

    .line 260
    .end local v0    # "r":Landroid/icu/util/Region;
    .end local v3    # "s":Ljava/lang/String;
    .restart local v28    # "r":Landroid/icu/util/Region;
    :goto_286
    move-object/from16 v2, v26

    move-object/from16 v0, v28

    move-object/from16 v3, v29

    goto :goto_258

    .line 256
    .end local v28    # "r":Landroid/icu/util/Region;
    .end local v29    # "res":Landroid/icu/util/UResourceBundle;
    .restart local v0    # "r":Landroid/icu/util/Region;
    .local v3, "res":Landroid/icu/util/UResourceBundle;
    :cond_28d
    move-object/from16 v28, v0

    move-object/from16 v29, v3

    .line 230
    .end local v0    # "r":Landroid/icu/util/Region;
    .end local v3    # "res":Landroid/icu/util/UResourceBundle;
    .end local v4    # "aliasFrom":Ljava/lang/String;
    .end local v5    # "aliasTo":Ljava/lang/String;
    .end local v6    # "aliasToRegionStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_291
    add-int/lit8 v2, v25, 0x1

    move-object/from16 v0, v24

    .end local v25    # "i":I
    .restart local v2    # "i":I
    goto/16 :goto_1b7

    .end local v24    # "territoryAlias":Landroid/icu/util/UResourceBundle;
    .local v0, "territoryAlias":Landroid/icu/util/UResourceBundle;
    :cond_297
    move-object/from16 v24, v0

    move/from16 v25, v2

    .line 265
    .end local v0    # "territoryAlias":Landroid/icu/util/UResourceBundle;
    .end local v2    # "i":I
    .restart local v24    # "territoryAlias":Landroid/icu/util/UResourceBundle;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_29c
    invoke-virtual {v14}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v2

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2f8

    .line 266
    invoke-virtual {v14, v0}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 267
    .local v2, "mapping":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2f1

    .line 268
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 269
    .local v4, "codeMappingStrings":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    .line 270
    .local v5, "codeMappingID":Ljava/lang/String;
    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 271
    .local v3, "codeMappingNumber":Ljava/lang/Integer;
    const/4 v6, 0x2

    aget-object v6, v4, v6

    .line 273
    .local v6, "codeMapping3Letter":Ljava/lang/String;
    move/from16 v18, v0

    .end local v0    # "i":I
    .local v18, "i":I
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ec

    .line 274
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    .line 275
    .local v0, "r":Landroid/icu/util/Region;
    move-object/from16 v25, v2

    .end local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    .local v25, "mapping":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Landroid/icu/util/Region;->code:I

    .line 276
    sget-object v2, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    move-object/from16 v26, v3

    .end local v3    # "codeMappingNumber":Ljava/lang/Integer;
    .local v26, "codeMappingNumber":Ljava/lang/Integer;
    iget v3, v0, Landroid/icu/util/Region;->code:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v2, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2f5

    .line 273
    .end local v0    # "r":Landroid/icu/util/Region;
    .end local v25    # "mapping":Landroid/icu/util/UResourceBundle;
    .end local v26    # "codeMappingNumber":Ljava/lang/Integer;
    .restart local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    .restart local v3    # "codeMappingNumber":Ljava/lang/Integer;
    :cond_2ec
    move-object/from16 v25, v2

    move-object/from16 v26, v3

    .end local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    .end local v3    # "codeMappingNumber":Ljava/lang/Integer;
    .restart local v25    # "mapping":Landroid/icu/util/UResourceBundle;
    .restart local v26    # "codeMappingNumber":Ljava/lang/Integer;
    goto :goto_2f5

    .line 267
    .end local v4    # "codeMappingStrings":[Ljava/lang/String;
    .end local v5    # "codeMappingID":Ljava/lang/String;
    .end local v6    # "codeMapping3Letter":Ljava/lang/String;
    .end local v18    # "i":I
    .end local v25    # "mapping":Landroid/icu/util/UResourceBundle;
    .end local v26    # "codeMappingNumber":Ljava/lang/Integer;
    .local v0, "i":I
    .restart local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    :cond_2f1
    move/from16 v18, v0

    move-object/from16 v25, v2

    .line 265
    .end local v0    # "i":I
    .end local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    .restart local v18    # "i":I
    :goto_2f5
    add-int/lit8 v0, v18, 0x1

    .end local v18    # "i":I
    .restart local v0    # "i":I
    goto :goto_29c

    :cond_2f8
    move/from16 v18, v0

    .line 284
    .end local v0    # "i":I
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v2, "001"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_312

    .line 285
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v2, "001"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    .line 286
    .local v0, "r":Landroid/icu/util/Region;
    sget-object v2, Landroid/icu/util/Region$RegionType;->WORLD:Landroid/icu/util/Region$RegionType;

    iput-object v2, v0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    .line 289
    .end local v0    # "r":Landroid/icu/util/Region;
    :cond_312
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v2, "ZZ"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32a

    .line 290
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v2, "ZZ"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    .line 291
    .restart local v0    # "r":Landroid/icu/util/Region;
    sget-object v2, Landroid/icu/util/Region$RegionType;->UNKNOWN:Landroid/icu/util/Region$RegionType;

    iput-object v2, v0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    .line 294
    .end local v0    # "r":Landroid/icu/util/Region;
    :cond_32a
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_32e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 295
    .local v2, "continent":Ljava/lang/String;
    sget-object v4, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34e

    .line 296
    sget-object v4, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/Region;

    .line 297
    .local v4, "r":Landroid/icu/util/Region;
    sget-object v5, Landroid/icu/util/Region$RegionType;->CONTINENT:Landroid/icu/util/Region$RegionType;

    iput-object v5, v4, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    .line 299
    .end local v2    # "continent":Ljava/lang/String;
    .end local v4    # "r":Landroid/icu/util/Region;
    :cond_34e
    goto :goto_32e

    .line 301
    :cond_34f
    :goto_34f
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_370

    .line 302
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 303
    .local v0, "grouping":Ljava/lang/String;
    sget-object v2, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36f

    .line 304
    sget-object v2, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Region;

    .line 305
    .local v2, "r":Landroid/icu/util/Region;
    sget-object v4, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    iput-object v4, v2, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    .line 307
    .end local v0    # "grouping":Ljava/lang/String;
    .end local v2    # "r":Landroid/icu/util/Region;
    :cond_36f
    goto :goto_34f

    .line 312
    :cond_370
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v2, "QO"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_388

    .line 313
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    const-string v2, "QO"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    .line 314
    .local v0, "r":Landroid/icu/util/Region;
    sget-object v2, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    iput-object v2, v0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    .line 318
    .end local v0    # "r":Landroid/icu/util/Region;
    :cond_388
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_389
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_408

    .line 319
    invoke-virtual {v8, v0}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 320
    .local v2, "mapping":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 321
    .local v4, "parent":Ljava/lang/String;
    const-string v5, "containedGroupings"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3fd

    const-string v5, "deprecated"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3fd

    const-string v5, "grouping"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3b4

    .line 322
    move/from16 v25, v0

    move/from16 v18, v3

    goto :goto_403

    .line 326
    :cond_3b4
    sget-object v5, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/icu/util/Region;

    .line 327
    .local v5, "parentRegion":Landroid/icu/util/Region;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_3bd
    move/from16 v18, v3

    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v3

    if-ge v6, v3, :cond_3f8

    .line 328
    invoke-virtual {v2, v6}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 329
    .local v3, "child":Ljava/lang/String;
    move/from16 v25, v0

    .end local v0    # "i":I
    .local v25, "i":I
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    .line 330
    .local v0, "childRegion":Landroid/icu/util/Region;
    if-eqz v5, :cond_3eb

    if-eqz v0, :cond_3eb

    .line 333
    move-object/from16 v26, v2

    .end local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    .local v26, "mapping":Landroid/icu/util/UResourceBundle;
    iget-object v2, v5, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    invoke-virtual {v5}, Landroid/icu/util/Region;->getType()Landroid/icu/util/Region$RegionType;

    move-result-object v2

    move-object/from16 v28, v3

    .end local v3    # "child":Ljava/lang/String;
    .local v28, "child":Ljava/lang/String;
    sget-object v3, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    if-eq v2, v3, :cond_3ef

    .line 339
    iput-object v5, v0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    goto :goto_3ef

    .line 330
    .end local v26    # "mapping":Landroid/icu/util/UResourceBundle;
    .end local v28    # "child":Ljava/lang/String;
    .restart local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    .restart local v3    # "child":Ljava/lang/String;
    :cond_3eb
    move-object/from16 v26, v2

    move-object/from16 v28, v3

    .line 327
    .end local v0    # "childRegion":Landroid/icu/util/Region;
    .end local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    .end local v3    # "child":Ljava/lang/String;
    .restart local v26    # "mapping":Landroid/icu/util/UResourceBundle;
    :cond_3ef
    :goto_3ef
    add-int/lit8 v6, v6, 0x1

    move/from16 v3, v18

    move/from16 v0, v25

    move-object/from16 v2, v26

    goto :goto_3bd

    .end local v25    # "i":I
    .end local v26    # "mapping":Landroid/icu/util/UResourceBundle;
    .local v0, "i":I
    .restart local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    :cond_3f8
    move/from16 v25, v0

    move-object/from16 v26, v2

    .end local v0    # "i":I
    .end local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    .restart local v25    # "i":I
    .restart local v26    # "mapping":Landroid/icu/util/UResourceBundle;
    goto :goto_403

    .line 321
    .end local v5    # "parentRegion":Landroid/icu/util/Region;
    .end local v6    # "j":I
    .end local v25    # "i":I
    .end local v26    # "mapping":Landroid/icu/util/UResourceBundle;
    .restart local v0    # "i":I
    .restart local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    :cond_3fd
    move/from16 v25, v0

    move-object/from16 v26, v2

    move/from16 v18, v3

    .line 318
    .end local v0    # "i":I
    .end local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    .end local v4    # "parent":Ljava/lang/String;
    .restart local v25    # "i":I
    :goto_403
    add-int/lit8 v0, v25, 0x1

    move/from16 v3, v18

    .end local v25    # "i":I
    .restart local v0    # "i":I
    goto :goto_389

    :cond_408
    move/from16 v25, v0

    move/from16 v18, v3

    .line 346
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_40d
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v2

    if-ge v0, v2, :cond_454

    .line 347
    invoke-virtual {v9, v0}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 348
    .restart local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, "parent":Ljava/lang/String;
    sget-object v4, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/icu/util/Region;

    .line 350
    .local v4, "parentRegion":Landroid/icu/util/Region;
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_424
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getSize()I

    move-result v6

    if-ge v5, v6, :cond_44d

    .line 351
    invoke-virtual {v2, v5}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 352
    .local v6, "child":Ljava/lang/String;
    move/from16 v25, v0

    .end local v0    # "i":I
    .restart local v25    # "i":I
    sget-object v0, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Region;

    .line 353
    .local v0, "childRegion":Landroid/icu/util/Region;
    if-eqz v4, :cond_444

    if-eqz v0, :cond_444

    .line 355
    move-object/from16 v26, v2

    .end local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    .restart local v26    # "mapping":Landroid/icu/util/UResourceBundle;
    iget-object v2, v4, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_446

    .line 353
    .end local v26    # "mapping":Landroid/icu/util/UResourceBundle;
    .restart local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    :cond_444
    move-object/from16 v26, v2

    .line 350
    .end local v0    # "childRegion":Landroid/icu/util/Region;
    .end local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    .end local v6    # "child":Ljava/lang/String;
    .restart local v26    # "mapping":Landroid/icu/util/UResourceBundle;
    :goto_446
    add-int/lit8 v5, v5, 0x1

    move/from16 v0, v25

    move-object/from16 v2, v26

    goto :goto_424

    .end local v25    # "i":I
    .end local v26    # "mapping":Landroid/icu/util/UResourceBundle;
    .local v0, "i":I
    .restart local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    :cond_44d
    move/from16 v25, v0

    move-object/from16 v26, v2

    .line 346
    .end local v0    # "i":I
    .end local v2    # "mapping":Landroid/icu/util/UResourceBundle;
    .end local v3    # "parent":Ljava/lang/String;
    .end local v4    # "parentRegion":Landroid/icu/util/Region;
    .end local v5    # "j":I
    .restart local v25    # "i":I
    add-int/lit8 v0, v25, 0x1

    .end local v25    # "i":I
    .restart local v0    # "i":I
    goto :goto_40d

    :cond_454
    move/from16 v25, v0

    .line 364
    .end local v0    # "i":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_457
    invoke-static {}, Landroid/icu/util/Region$RegionType;->values()[Landroid/icu/util/Region$RegionType;

    move-result-object v2

    array-length v2, v2

    if-ge v0, v2, :cond_46b

    .line 365
    sget-object v2, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    add-int/lit8 v0, v0, 0x1

    goto :goto_457

    .line 368
    .end local v0    # "i":I
    :cond_46b
    sget-object v0, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_471
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Region;

    .line 369
    .local v2, "ar":Landroid/icu/util/Region;
    sget-object v3, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    invoke-virtual {v4}, Landroid/icu/util/Region$RegionType;->ordinal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 370
    .local v3, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/Region;>;"
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 371
    sget-object v4, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    iget-object v5, v2, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    invoke-virtual {v5}, Landroid/icu/util/Region$RegionType;->ordinal()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 372
    nop

    .end local v2    # "ar":Landroid/icu/util/Region;
    .end local v3    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/Region;>;"
    goto :goto_471

    .line 374
    :cond_49b
    sput-boolean v18, Landroid/icu/util/Region;->regionDataIsLoaded:Z
    :try_end_49d
    .catchall {:try_start_9 .. :try_end_49d} :catchall_49f

    .line 375
    monitor-exit v1

    return-void

    .line 142
    .end local v7    # "regionUnknown":Landroid/icu/util/UResourceBundle;
    .end local v8    # "territoryContainment":Landroid/icu/util/UResourceBundle;
    .end local v9    # "groupingContainment":Landroid/icu/util/UResourceBundle;
    .end local v10    # "worldContainment":Landroid/icu/util/UResourceBundle;
    .end local v11    # "continentsArr":[Ljava/lang/String;
    .end local v12    # "metadata":Landroid/icu/util/UResourceBundle;
    .end local v13    # "metadataAlias":Landroid/icu/util/UResourceBundle;
    .end local v14    # "codeMappings":Landroid/icu/util/UResourceBundle;
    .end local v15    # "continents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "groupings":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v17    # "idValidity":Landroid/icu/util/UResourceBundle;
    .end local v19    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "supplementalData":Landroid/icu/util/UResourceBundle;
    .end local v21    # "regionList":Landroid/icu/util/UResourceBundle;
    .end local v22    # "allRegions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v23    # "regionRegular":Landroid/icu/util/UResourceBundle;
    .end local v24    # "territoryAlias":Landroid/icu/util/UResourceBundle;
    .end local v27    # "regionMacro":Landroid/icu/util/UResourceBundle;
    :catchall_49f
    move-exception v0

    :try_start_4a0
    monitor-exit v1
    :try_end_4a1
    .catchall {:try_start_4a0 .. :try_end_4a1} :catchall_49f

    throw v0
.end method


# virtual methods
.method public greylist-max-o compareTo(Landroid/icu/util/Region;)I
    .registers 4
    .param p1, "other"    # Landroid/icu/util/Region;

    .line 601
    iget-object v0, p0, Landroid/icu/util/Region;->id:Ljava/lang/String;

    iget-object v1, p1, Landroid/icu/util/Region;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 63
    check-cast p1, Landroid/icu/util/Region;

    invoke-virtual {p0, p1}, Landroid/icu/util/Region;->compareTo(Landroid/icu/util/Region;)I

    move-result p1

    return p1
.end method

.method public greylist-max-o contains(Landroid/icu/util/Region;)Z
    .registers 6
    .param p1, "other"    # Landroid/icu/util/Region;

    .line 553
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 555
    iget-object v0, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 556
    return v1

    .line 558
    :cond_d
    iget-object v0, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Region;

    .line 559
    .local v2, "cr":Landroid/icu/util/Region;
    invoke-virtual {v2, p1}, Landroid/icu/util/Region;->contains(Landroid/icu/util/Region;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 560
    return v1

    .line 562
    .end local v2    # "cr":Landroid/icu/util/Region;
    :cond_26
    goto :goto_13

    .line 565
    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o getContainedRegions()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    .line 502
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 503
    iget-object v0, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getContainedRegions(Landroid/icu/util/Region$RegionType;)Ljava/util/Set;
    .registers 7
    .param p1, "type"    # Landroid/icu/util/Region$RegionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Region$RegionType;",
            ")",
            "Ljava/util/Set<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    .line 517
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 519
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 520
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/Region;>;"
    invoke-virtual {p0}, Landroid/icu/util/Region;->getContainedRegions()Ljava/util/Set;

    move-result-object v1

    .line 522
    .local v1, "cr":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/Region;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/Region;

    .line 523
    .local v3, "r":Landroid/icu/util/Region;
    invoke-virtual {v3}, Landroid/icu/util/Region;->getType()Landroid/icu/util/Region$RegionType;

    move-result-object v4

    if-ne v4, p1, :cond_26

    .line 524
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2d

    .line 526
    :cond_26
    invoke-virtual {v3, p1}, Landroid/icu/util/Region;->getContainedRegions(Landroid/icu/util/Region$RegionType;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 528
    .end local v3    # "r":Landroid/icu/util/Region;
    :goto_2d
    goto :goto_10

    .line 529
    :cond_2e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method public greylist-max-o getContainingRegion()Landroid/icu/util/Region;
    .registers 2

    .line 467
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 468
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    return-object v0
.end method

.method public greylist-max-o getContainingRegion(Landroid/icu/util/Region$RegionType;)Landroid/icu/util/Region;
    .registers 3
    .param p1, "type"    # Landroid/icu/util/Region$RegionType;

    .line 479
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 480
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    if-nez v0, :cond_9

    .line 481
    const/4 v0, 0x0

    return-object v0

    .line 483
    :cond_9
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    iget-object v0, v0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    invoke-virtual {v0, p1}, Landroid/icu/util/Region$RegionType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 484
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    return-object v0

    .line 486
    :cond_16
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    invoke-virtual {v0, p1}, Landroid/icu/util/Region;->getContainingRegion(Landroid/icu/util/Region$RegionType;)Landroid/icu/util/Region;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getNumericCode()I
    .registers 2

    .line 585
    iget v0, p0, Landroid/icu/util/Region;->code:I

    return v0
.end method

.method public greylist-max-o getPreferredValues()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    .line 539
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    .line 541
    iget-object v0, p0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    sget-object v1, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    if-ne v0, v1, :cond_10

    .line 542
    iget-object v0, p0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 544
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getType()Landroid/icu/util/Region$RegionType;
    .registers 2

    .line 594
    iget-object v0, p0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 574
    iget-object v0, p0, Landroid/icu/util/Region;->id:Ljava/lang/String;

    return-object v0
.end method
