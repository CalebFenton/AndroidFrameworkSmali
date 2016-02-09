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
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/util/Region;",
        ">;"
    }
.end annotation


# static fields
.field private static final OUTLYING_OCEANIA_REGION_ID:Ljava/lang/String; = "QO"

.field private static final UNKNOWN_REGION_ID:Ljava/lang/String; = "ZZ"

.field private static final WORLD_ID:Ljava/lang/String; = "001"

.field private static availableRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/Region;",
            ">;>;"
        }
    .end annotation
.end field

.field private static numericCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static regionAliases:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static regionDataIsLoaded:Z

.field private static regionIDMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private static regions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private code:I

.field private containedRegions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private containingRegion:Landroid/icu/util/Region;

.field private id:Ljava/lang/String;

.field private preferredValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation
.end field

.field private type:Landroid/icu/util/Region$RegionType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 116
    const/4 v0, 0x0

    #@2
    sput-boolean v0, Landroid/icu/util/Region;->regionDataIsLoaded:Z

    #@4
    .line 118
    sput-object v1, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@6
    .line 119
    sput-object v1, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    #@8
    .line 120
    sput-object v1, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    #@a
    .line 122
    sput-object v1, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    #@c
    .line 123
    sput-object v1, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    #@e
    .line 58
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 112
    iput-object v1, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    #@6
    .line 113
    new-instance v0, Ljava/util/TreeSet;

    #@8
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@b
    iput-object v0, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    #@d
    .line 114
    iput-object v1, p0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    #@f
    .line 132
    return-void
.end method

.method public static getAvailable(Landroid/icu/util/Region$RegionType;)Ljava/util/Set;
    .locals 2
    .param p0, "type"    # Landroid/icu/util/Region$RegionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Region$RegionType;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 410
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@3
    .line 411
    sget-object v0, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {p0}, Landroid/icu/util/Region$RegionType;->ordinal()I

    #@8
    move-result v1

    #@9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v0

    #@d
    check-cast v0, Ljava/util/Set;

    #@f
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public static getInstance(I)Landroid/icu/util/Region;
    .locals 6
    .param p0, "code"    # I

    #@0
    .prologue
    .line 374
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@3
    .line 376
    sget-object v3, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    #@5
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@8
    move-result-object v4

    #@9
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Landroid/icu/util/Region;

    #@f
    .line 378
    .local v2, "r":Landroid/icu/util/Region;
    if-nez v2, :cond_1

    #@11
    .line 379
    const-string/jumbo v1, ""

    #@14
    .line 380
    .local v1, "pad":Ljava/lang/String;
    const/16 v3, 0xa

    #@16
    if-ge p0, v3, :cond_2

    #@18
    .line 381
    const-string/jumbo v1, "00"

    #@1b
    .line 385
    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v0

    #@30
    .line 386
    .local v0, "id":Ljava/lang/String;
    sget-object v3, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    #@32
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v2

    #@36
    .end local v2    # "r":Landroid/icu/util/Region;
    check-cast v2, Landroid/icu/util/Region;

    #@38
    .line 389
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "pad":Ljava/lang/String;
    .restart local v2    # "r":Landroid/icu/util/Region;
    :cond_1
    if-nez v2, :cond_3

    #@3a
    .line 390
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@3c
    new-instance v4, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v5, "Unknown region code: "

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v4

    #@50
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@53
    throw v3

    #@54
    .line 382
    .restart local v1    # "pad":Ljava/lang/String;
    :cond_2
    const/16 v3, 0x64

    #@56
    if-ge p0, v3, :cond_0

    #@58
    .line 383
    const-string/jumbo v1, "0"

    #@5b
    goto :goto_0

    #@5c
    .line 393
    .end local v1    # "pad":Ljava/lang/String;
    :cond_3
    iget-object v3, v2, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@5e
    sget-object v4, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    #@60
    if-ne v3, v4, :cond_4

    #@62
    iget-object v3, v2, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    #@64
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@67
    move-result v3

    #@68
    const/4 v4, 0x1

    #@69
    if-ne v3, v4, :cond_4

    #@6b
    .line 394
    iget-object v3, v2, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    #@6d
    const/4 v4, 0x0

    #@6e
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@71
    move-result-object v2

    #@72
    .end local v2    # "r":Landroid/icu/util/Region;
    check-cast v2, Landroid/icu/util/Region;

    #@74
    .line 397
    .restart local v2    # "r":Landroid/icu/util/Region;
    :cond_4
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/icu/util/Region;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 341
    if-nez p0, :cond_0

    #@2
    .line 342
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 345
    :cond_0
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@b
    .line 347
    sget-object v1, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@d
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/icu/util/Region;

    #@13
    .line 349
    .local v0, "r":Landroid/icu/util/Region;
    if-nez v0, :cond_1

    #@15
    .line 350
    sget-object v1, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    #@17
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    .end local v0    # "r":Landroid/icu/util/Region;
    check-cast v0, Landroid/icu/util/Region;

    #@1d
    .line 353
    .restart local v0    # "r":Landroid/icu/util/Region;
    :cond_1
    if-nez v0, :cond_2

    #@1f
    .line 354
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@21
    new-instance v2, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v3, "Unknown region id: "

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v2

    #@35
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@38
    throw v1

    #@39
    .line 357
    :cond_2
    iget-object v1, v0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@3b
    sget-object v2, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    #@3d
    if-ne v1, v2, :cond_3

    #@3f
    iget-object v1, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    #@41
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@44
    move-result v1

    #@45
    const/4 v2, 0x1

    #@46
    if-ne v1, v2, :cond_3

    #@48
    .line 358
    iget-object v1, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    #@4a
    const/4 v2, 0x0

    #@4b
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@4e
    move-result-object v0

    #@4f
    .end local v0    # "r":Landroid/icu/util/Region;
    check-cast v0, Landroid/icu/util/Region;

    #@51
    .line 361
    .restart local v0    # "r":Landroid/icu/util/Region;
    :cond_3
    return-object v0
.end method

.method private static declared-synchronized loadRegionData()V
    .locals 47

    #@0
    .prologue
    const-class v44, Landroid/icu/util/Region;

    #@2
    monitor-enter v44

    #@3
    .line 145
    :try_start_0
    sget-boolean v43, Landroid/icu/util/Region;->regionDataIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v43, :cond_0

    #@7
    monitor-exit v44

    #@8
    .line 146
    return-void

    #@9
    .line 149
    :cond_0
    :try_start_1
    new-instance v43, Ljava/util/HashMap;

    #@b
    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    #@e
    sput-object v43, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    #@10
    .line 150
    new-instance v43, Ljava/util/HashMap;

    #@12
    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    #@15
    sput-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@17
    .line 151
    new-instance v43, Ljava/util/HashMap;

    #@19
    invoke-direct/range {v43 .. v43}, Ljava/util/HashMap;-><init>()V

    #@1c
    sput-object v43, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    #@1e
    .line 153
    new-instance v43, Ljava/util/ArrayList;

    #@20
    invoke-static {}, Landroid/icu/util/Region$RegionType;->values()[Landroid/icu/util/Region$RegionType;

    #@23
    move-result-object v45

    #@24
    move-object/from16 v0, v45

    #@26
    array-length v0, v0

    #@27
    move/from16 v45, v0

    #@29
    move-object/from16 v0, v43

    #@2b
    move/from16 v1, v45

    #@2d
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@30
    sput-object v43, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    #@32
    .line 156
    const/16 v35, 0x0

    #@34
    .line 157
    .local v35, "regionCodes":Landroid/icu/util/UResourceBundle;
    const/16 v30, 0x0

    #@36
    .line 158
    .local v30, "metadataAlias":Landroid/icu/util/UResourceBundle;
    const/16 v40, 0x0

    #@38
    .line 159
    .local v40, "territoryAlias":Landroid/icu/util/UResourceBundle;
    const/4 v14, 0x0

    #@39
    .line 160
    .local v14, "codeMappings":Landroid/icu/util/UResourceBundle;
    const/16 v42, 0x0

    #@3b
    .line 161
    .local v42, "worldContainment":Landroid/icu/util/UResourceBundle;
    const/16 v41, 0x0

    #@3d
    .line 162
    .local v41, "territoryContainment":Landroid/icu/util/UResourceBundle;
    const/16 v23, 0x0

    #@3f
    .line 164
    .local v23, "groupingContainment":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v43, "android/icu/impl/data/icudt55b"

    #@42
    const-string/jumbo v45, "metadata"

    #@45
    sget-object v46, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@47
    move-object/from16 v0, v43

    #@49
    move-object/from16 v1, v45

    #@4b
    move-object/from16 v2, v46

    #@4d
    invoke-static {v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@50
    move-result-object v29

    #@51
    .line 165
    .local v29, "metadata":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v43, "regionCodes"

    #@54
    move-object/from16 v0, v29

    #@56
    move-object/from16 v1, v43

    #@58
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@5b
    move-result-object v35

    #@5c
    .line 166
    .local v35, "regionCodes":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v43, "alias"

    #@5f
    move-object/from16 v0, v29

    #@61
    move-object/from16 v1, v43

    #@63
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@66
    move-result-object v30

    #@67
    .line 167
    .local v30, "metadataAlias":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v43, "territory"

    #@6a
    move-object/from16 v0, v30

    #@6c
    move-object/from16 v1, v43

    #@6e
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@71
    move-result-object v40

    #@72
    .line 169
    .local v40, "territoryAlias":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v43, "android/icu/impl/data/icudt55b"

    #@75
    const-string/jumbo v45, "supplementalData"

    #@78
    sget-object v46, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@7a
    move-object/from16 v0, v43

    #@7c
    move-object/from16 v1, v45

    #@7e
    move-object/from16 v2, v46

    #@80
    invoke-static {v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@83
    move-result-object v39

    #@84
    .line 170
    .local v39, "supplementalData":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v43, "codeMappings"

    #@87
    move-object/from16 v0, v39

    #@89
    move-object/from16 v1, v43

    #@8b
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@8e
    move-result-object v14

    #@8f
    .line 172
    .local v14, "codeMappings":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v43, "territoryContainment"

    #@92
    move-object/from16 v0, v39

    #@94
    move-object/from16 v1, v43

    #@96
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@99
    move-result-object v41

    #@9a
    .line 173
    .local v41, "territoryContainment":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v43, "001"

    #@9d
    move-object/from16 v0, v41

    #@9f
    move-object/from16 v1, v43

    #@a1
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@a4
    move-result-object v42

    #@a5
    .line 174
    .local v42, "worldContainment":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v43, "grouping"

    #@a8
    move-object/from16 v0, v41

    #@aa
    move-object/from16 v1, v43

    #@ac
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@af
    move-result-object v23

    #@b0
    .line 176
    .local v23, "groupingContainment":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v42 .. v42}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    #@b3
    move-result-object v18

    #@b4
    .line 177
    .local v18, "continentsArr":[Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@b7
    move-result-object v17

    #@b8
    .line 178
    .local v17, "continents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    #@bb
    move-result-object v22

    #@bc
    .line 179
    .local v22, "groupingArr":[Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@bf
    move-result-object v24

    #@c0
    .line 182
    .local v24, "groupings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v35 .. v35}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@c3
    move-result v34

    #@c4
    .line 183
    .local v34, "regionCodeSize":I
    new-instance v43, Ljava/util/ArrayList;

    #@c6
    move-object/from16 v0, v43

    #@c8
    move/from16 v1, v34

    #@ca
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@cd
    sput-object v43, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    #@cf
    .line 184
    const/16 v25, 0x0

    #@d1
    .local v25, "i":I
    :goto_0
    move/from16 v0, v25

    #@d3
    move/from16 v1, v34

    #@d5
    if-ge v0, v1, :cond_2

    #@d7
    .line 185
    new-instance v33, Landroid/icu/util/Region;

    #@d9
    invoke-direct/range {v33 .. v33}, Landroid/icu/util/Region;-><init>()V

    #@dc
    .line 186
    .local v33, "r":Landroid/icu/util/Region;
    move-object/from16 v0, v35

    #@de
    move/from16 v1, v25

    #@e0
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    #@e3
    move-result-object v26

    #@e4
    .line 187
    .local v26, "id":Ljava/lang/String;
    move-object/from16 v0, v26

    #@e6
    move-object/from16 v1, v33

    #@e8
    iput-object v0, v1, Landroid/icu/util/Region;->id:Ljava/lang/String;

    #@ea
    .line 188
    sget-object v43, Landroid/icu/util/Region$RegionType;->TERRITORY:Landroid/icu/util/Region$RegionType;

    #@ec
    move-object/from16 v0, v43

    #@ee
    move-object/from16 v1, v33

    #@f0
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@f2
    .line 189
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@f4
    move-object/from16 v0, v43

    #@f6
    move-object/from16 v1, v26

    #@f8
    move-object/from16 v2, v33

    #@fa
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fd
    .line 190
    const-string/jumbo v43, "[0-9]{3}"

    #@100
    move-object/from16 v0, v26

    #@102
    move-object/from16 v1, v43

    #@104
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@107
    move-result v43

    #@108
    if-eqz v43, :cond_1

    #@10a
    .line 191
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@10d
    move-result-object v43

    #@10e
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    #@111
    move-result v43

    #@112
    move/from16 v0, v43

    #@114
    move-object/from16 v1, v33

    #@116
    iput v0, v1, Landroid/icu/util/Region;->code:I

    #@118
    .line 192
    sget-object v43, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    #@11a
    move-object/from16 v0, v33

    #@11c
    iget v0, v0, Landroid/icu/util/Region;->code:I

    #@11e
    move/from16 v45, v0

    #@120
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@123
    move-result-object v45

    #@124
    move-object/from16 v0, v43

    #@126
    move-object/from16 v1, v45

    #@128
    move-object/from16 v2, v33

    #@12a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12d
    .line 193
    sget-object v43, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    #@12f
    move-object/from16 v0, v43

    #@131
    move-object/from16 v1, v33

    #@133
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@135
    .line 197
    :goto_1
    sget-object v43, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    #@137
    move-object/from16 v0, v43

    #@139
    move-object/from16 v1, v33

    #@13b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@13e
    .line 184
    add-int/lit8 v25, v25, 0x1

    #@140
    goto :goto_0

    #@141
    .line 195
    :cond_1
    const/16 v43, -0x1

    #@143
    move/from16 v0, v43

    #@145
    move-object/from16 v1, v33

    #@147
    iput v0, v1, Landroid/icu/util/Region;->code:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@149
    goto :goto_1

    #@14a
    .end local v17    # "continents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v22    # "groupingArr":[Ljava/lang/String;
    .end local v24    # "groupings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v25    # "i":I
    .end local v26    # "id":Ljava/lang/String;
    .end local v33    # "r":Landroid/icu/util/Region;
    .end local v34    # "regionCodeSize":I
    :catchall_0
    move-exception v43

    #@14b
    monitor-exit v44

    #@14c
    throw v43

    #@14d
    .line 202
    .restart local v17    # "continents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v22    # "groupingArr":[Ljava/lang/String;
    .restart local v24    # "groupings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v25    # "i":I
    .restart local v34    # "regionCodeSize":I
    :cond_2
    const/16 v25, 0x0

    #@14f
    :goto_2
    :try_start_2
    invoke-virtual/range {v40 .. v40}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@152
    move-result v43

    #@153
    move/from16 v0, v25

    #@155
    move/from16 v1, v43

    #@157
    if-ge v0, v1, :cond_9

    #@159
    .line 203
    move-object/from16 v0, v40

    #@15b
    move/from16 v1, v25

    #@15d
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@160
    move-result-object v36

    #@161
    .line 204
    .local v36, "res":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v36 .. v36}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@164
    move-result-object v3

    #@165
    .line 205
    .local v3, "aliasFrom":Ljava/lang/String;
    const-string/jumbo v43, "replacement"

    #@168
    move-object/from16 v0, v36

    #@16a
    move-object/from16 v1, v43

    #@16c
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@16f
    move-result-object v43

    #@170
    invoke-virtual/range {v43 .. v43}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@173
    move-result-object v4

    #@174
    .line 207
    .local v4, "aliasTo":Ljava/lang/String;
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@176
    move-object/from16 v0, v43

    #@178
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@17b
    move-result v43

    #@17c
    if-eqz v43, :cond_3

    #@17e
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@180
    move-object/from16 v0, v43

    #@182
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@185
    move-result v43

    #@186
    if-eqz v43, :cond_5

    #@188
    .line 211
    :cond_3
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@18a
    move-object/from16 v0, v43

    #@18c
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@18f
    move-result v43

    #@190
    if-eqz v43, :cond_7

    #@192
    .line 212
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@194
    move-object/from16 v0, v43

    #@196
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@199
    move-result-object v33

    #@19a
    check-cast v33, Landroid/icu/util/Region;

    #@19c
    .line 225
    .restart local v33    # "r":Landroid/icu/util/Region;
    :goto_3
    sget-object v43, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    #@19e
    move-object/from16 v0, v43

    #@1a0
    move-object/from16 v1, v33

    #@1a2
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@1a4
    .line 226
    const-string/jumbo v43, " "

    #@1a7
    move-object/from16 v0, v43

    #@1a9
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@1ac
    move-result-object v43

    #@1ad
    invoke-static/range {v43 .. v43}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1b0
    move-result-object v5

    #@1b1
    .line 227
    .local v5, "aliasToRegionStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v43, Ljava/util/ArrayList;

    #@1b3
    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    #@1b6
    move-object/from16 v0, v43

    #@1b8
    move-object/from16 v1, v33

    #@1ba
    iput-object v0, v1, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    #@1bc
    .line 228
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1bf
    move-result-object v38

    #@1c0
    .local v38, "s$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->hasNext()Z

    #@1c3
    move-result v43

    #@1c4
    if-eqz v43, :cond_6

    #@1c6
    invoke-interface/range {v38 .. v38}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c9
    move-result-object v37

    #@1ca
    check-cast v37, Ljava/lang/String;

    #@1cc
    .line 229
    .local v37, "s":Ljava/lang/String;
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@1ce
    move-object/from16 v0, v43

    #@1d0
    move-object/from16 v1, v37

    #@1d2
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@1d5
    move-result v43

    #@1d6
    if-eqz v43, :cond_4

    #@1d8
    .line 230
    move-object/from16 v0, v33

    #@1da
    iget-object v0, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    #@1dc
    move-object/from16 v45, v0

    #@1de
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@1e0
    move-object/from16 v0, v43

    #@1e2
    move-object/from16 v1, v37

    #@1e4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e7
    move-result-object v43

    #@1e8
    check-cast v43, Landroid/icu/util/Region;

    #@1ea
    move-object/from16 v0, v45

    #@1ec
    move-object/from16 v1, v43

    #@1ee
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@1f1
    goto :goto_4

    #@1f2
    .line 208
    .end local v5    # "aliasToRegionStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v33    # "r":Landroid/icu/util/Region;
    .end local v37    # "s":Ljava/lang/String;
    .end local v38    # "s$iterator":Ljava/util/Iterator;
    :cond_5
    sget-object v45, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    #@1f4
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@1f6
    move-object/from16 v0, v43

    #@1f8
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1fb
    move-result-object v43

    #@1fc
    check-cast v43, Landroid/icu/util/Region;

    #@1fe
    move-object/from16 v0, v45

    #@200
    move-object/from16 v1, v43

    #@202
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@205
    .line 202
    :cond_6
    add-int/lit8 v25, v25, 0x1

    #@207
    goto/16 :goto_2

    #@209
    .line 214
    :cond_7
    new-instance v33, Landroid/icu/util/Region;

    #@20b
    invoke-direct/range {v33 .. v33}, Landroid/icu/util/Region;-><init>()V

    #@20e
    .line 215
    .restart local v33    # "r":Landroid/icu/util/Region;
    move-object/from16 v0, v33

    #@210
    iput-object v3, v0, Landroid/icu/util/Region;->id:Ljava/lang/String;

    #@212
    .line 216
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@214
    move-object/from16 v0, v43

    #@216
    move-object/from16 v1, v33

    #@218
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21b
    .line 217
    const-string/jumbo v43, "[0-9]{3}"

    #@21e
    move-object/from16 v0, v43

    #@220
    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@223
    move-result v43

    #@224
    if-eqz v43, :cond_8

    #@226
    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@229
    move-result-object v43

    #@22a
    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    #@22d
    move-result v43

    #@22e
    move/from16 v0, v43

    #@230
    move-object/from16 v1, v33

    #@232
    iput v0, v1, Landroid/icu/util/Region;->code:I

    #@234
    .line 219
    sget-object v43, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    #@236
    move-object/from16 v0, v33

    #@238
    iget v0, v0, Landroid/icu/util/Region;->code:I

    #@23a
    move/from16 v45, v0

    #@23c
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@23f
    move-result-object v45

    #@240
    move-object/from16 v0, v43

    #@242
    move-object/from16 v1, v45

    #@244
    move-object/from16 v2, v33

    #@246
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@249
    .line 223
    :goto_5
    sget-object v43, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    #@24b
    move-object/from16 v0, v43

    #@24d
    move-object/from16 v1, v33

    #@24f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@252
    goto/16 :goto_3

    #@254
    .line 221
    :cond_8
    const/16 v43, -0x1

    #@256
    move/from16 v0, v43

    #@258
    move-object/from16 v1, v33

    #@25a
    iput v0, v1, Landroid/icu/util/Region;->code:I

    #@25c
    goto :goto_5

    #@25d
    .line 237
    .end local v3    # "aliasFrom":Ljava/lang/String;
    .end local v4    # "aliasTo":Ljava/lang/String;
    .end local v33    # "r":Landroid/icu/util/Region;
    .end local v36    # "res":Landroid/icu/util/UResourceBundle;
    :cond_9
    const/16 v25, 0x0

    #@25f
    :goto_6
    invoke-virtual {v14}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@262
    move-result v43

    #@263
    move/from16 v0, v25

    #@265
    move/from16 v1, v43

    #@267
    if-ge v0, v1, :cond_b

    #@269
    .line 238
    move/from16 v0, v25

    #@26b
    invoke-virtual {v14, v0}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@26e
    move-result-object v28

    #@26f
    .line 239
    .local v28, "mapping":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v28 .. v28}, Landroid/icu/util/UResourceBundle;->getType()I

    #@272
    move-result v43

    #@273
    const/16 v45, 0x8

    #@275
    move/from16 v0, v43

    #@277
    move/from16 v1, v45

    #@279
    if-ne v0, v1, :cond_a

    #@27b
    .line 240
    invoke-virtual/range {v28 .. v28}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    #@27e
    move-result-object v13

    #@27f
    .line 241
    .local v13, "codeMappingStrings":[Ljava/lang/String;
    const/16 v43, 0x0

    #@281
    aget-object v11, v13, v43

    #@283
    .line 242
    .local v11, "codeMappingID":Ljava/lang/String;
    const/16 v43, 0x1

    #@285
    aget-object v43, v13, v43

    #@287
    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@28a
    move-result-object v12

    #@28b
    .line 243
    .local v12, "codeMappingNumber":Ljava/lang/Integer;
    const/16 v43, 0x2

    #@28d
    aget-object v10, v13, v43

    #@28f
    .line 245
    .local v10, "codeMapping3Letter":Ljava/lang/String;
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@291
    move-object/from16 v0, v43

    #@293
    invoke-interface {v0, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@296
    move-result v43

    #@297
    if-eqz v43, :cond_a

    #@299
    .line 246
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@29b
    move-object/from16 v0, v43

    #@29d
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2a0
    move-result-object v33

    #@2a1
    check-cast v33, Landroid/icu/util/Region;

    #@2a3
    .line 247
    .restart local v33    # "r":Landroid/icu/util/Region;
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    #@2a6
    move-result v43

    #@2a7
    move/from16 v0, v43

    #@2a9
    move-object/from16 v1, v33

    #@2ab
    iput v0, v1, Landroid/icu/util/Region;->code:I

    #@2ad
    .line 248
    sget-object v43, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    #@2af
    move-object/from16 v0, v33

    #@2b1
    iget v0, v0, Landroid/icu/util/Region;->code:I

    #@2b3
    move/from16 v45, v0

    #@2b5
    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b8
    move-result-object v45

    #@2b9
    move-object/from16 v0, v43

    #@2bb
    move-object/from16 v1, v45

    #@2bd
    move-object/from16 v2, v33

    #@2bf
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2c2
    .line 249
    sget-object v43, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    #@2c4
    move-object/from16 v0, v43

    #@2c6
    move-object/from16 v1, v33

    #@2c8
    invoke-interface {v0, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2cb
    .line 237
    .end local v10    # "codeMapping3Letter":Ljava/lang/String;
    .end local v11    # "codeMappingID":Ljava/lang/String;
    .end local v12    # "codeMappingNumber":Ljava/lang/Integer;
    .end local v13    # "codeMappingStrings":[Ljava/lang/String;
    .end local v33    # "r":Landroid/icu/util/Region;
    :cond_a
    add-int/lit8 v25, v25, 0x1

    #@2cd
    goto :goto_6

    #@2ce
    .line 256
    .end local v28    # "mapping":Landroid/icu/util/UResourceBundle;
    :cond_b
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@2d0
    const-string/jumbo v45, "001"

    #@2d3
    move-object/from16 v0, v43

    #@2d5
    move-object/from16 v1, v45

    #@2d7
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@2da
    move-result v43

    #@2db
    if-eqz v43, :cond_c

    #@2dd
    .line 257
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@2df
    const-string/jumbo v45, "001"

    #@2e2
    move-object/from16 v0, v43

    #@2e4
    move-object/from16 v1, v45

    #@2e6
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e9
    move-result-object v33

    #@2ea
    check-cast v33, Landroid/icu/util/Region;

    #@2ec
    .line 258
    .restart local v33    # "r":Landroid/icu/util/Region;
    sget-object v43, Landroid/icu/util/Region$RegionType;->WORLD:Landroid/icu/util/Region$RegionType;

    #@2ee
    move-object/from16 v0, v43

    #@2f0
    move-object/from16 v1, v33

    #@2f2
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@2f4
    .line 261
    .end local v33    # "r":Landroid/icu/util/Region;
    :cond_c
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@2f6
    const-string/jumbo v45, "ZZ"

    #@2f9
    move-object/from16 v0, v43

    #@2fb
    move-object/from16 v1, v45

    #@2fd
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@300
    move-result v43

    #@301
    if-eqz v43, :cond_d

    #@303
    .line 262
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@305
    const-string/jumbo v45, "ZZ"

    #@308
    move-object/from16 v0, v43

    #@30a
    move-object/from16 v1, v45

    #@30c
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@30f
    move-result-object v33

    #@310
    check-cast v33, Landroid/icu/util/Region;

    #@312
    .line 263
    .restart local v33    # "r":Landroid/icu/util/Region;
    sget-object v43, Landroid/icu/util/Region$RegionType;->UNKNOWN:Landroid/icu/util/Region$RegionType;

    #@314
    move-object/from16 v0, v43

    #@316
    move-object/from16 v1, v33

    #@318
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@31a
    .line 266
    .end local v33    # "r":Landroid/icu/util/Region;
    :cond_d
    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@31d
    move-result-object v16

    #@31e
    .local v16, "continent$iterator":Ljava/util/Iterator;
    :cond_e
    :goto_7
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    #@321
    move-result v43

    #@322
    if-eqz v43, :cond_f

    #@324
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@327
    move-result-object v15

    #@328
    check-cast v15, Ljava/lang/String;

    #@32a
    .line 267
    .local v15, "continent":Ljava/lang/String;
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@32c
    move-object/from16 v0, v43

    #@32e
    invoke-interface {v0, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@331
    move-result v43

    #@332
    if-eqz v43, :cond_e

    #@334
    .line 268
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@336
    move-object/from16 v0, v43

    #@338
    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@33b
    move-result-object v33

    #@33c
    check-cast v33, Landroid/icu/util/Region;

    #@33e
    .line 269
    .restart local v33    # "r":Landroid/icu/util/Region;
    sget-object v43, Landroid/icu/util/Region$RegionType;->CONTINENT:Landroid/icu/util/Region$RegionType;

    #@340
    move-object/from16 v0, v43

    #@342
    move-object/from16 v1, v33

    #@344
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@346
    goto :goto_7

    #@347
    .line 273
    .end local v15    # "continent":Ljava/lang/String;
    .end local v33    # "r":Landroid/icu/util/Region;
    :cond_f
    invoke-interface/range {v24 .. v24}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34a
    move-result-object v21

    #@34b
    .local v21, "grouping$iterator":Ljava/util/Iterator;
    :cond_10
    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    #@34e
    move-result v43

    #@34f
    if-eqz v43, :cond_11

    #@351
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@354
    move-result-object v20

    #@355
    check-cast v20, Ljava/lang/String;

    #@357
    .line 274
    .local v20, "grouping":Ljava/lang/String;
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@359
    move-object/from16 v0, v43

    #@35b
    move-object/from16 v1, v20

    #@35d
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@360
    move-result v43

    #@361
    if-eqz v43, :cond_10

    #@363
    .line 275
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@365
    move-object/from16 v0, v43

    #@367
    move-object/from16 v1, v20

    #@369
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36c
    move-result-object v33

    #@36d
    check-cast v33, Landroid/icu/util/Region;

    #@36f
    .line 276
    .restart local v33    # "r":Landroid/icu/util/Region;
    sget-object v43, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    #@371
    move-object/from16 v0, v43

    #@373
    move-object/from16 v1, v33

    #@375
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@377
    goto :goto_8

    #@378
    .line 283
    .end local v20    # "grouping":Ljava/lang/String;
    .end local v33    # "r":Landroid/icu/util/Region;
    :cond_11
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@37a
    const-string/jumbo v45, "QO"

    #@37d
    move-object/from16 v0, v43

    #@37f
    move-object/from16 v1, v45

    #@381
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@384
    move-result v43

    #@385
    if-eqz v43, :cond_12

    #@387
    .line 284
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@389
    const-string/jumbo v45, "QO"

    #@38c
    move-object/from16 v0, v43

    #@38e
    move-object/from16 v1, v45

    #@390
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@393
    move-result-object v33

    #@394
    check-cast v33, Landroid/icu/util/Region;

    #@396
    .line 285
    .restart local v33    # "r":Landroid/icu/util/Region;
    sget-object v43, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    #@398
    move-object/from16 v0, v43

    #@39a
    move-object/from16 v1, v33

    #@39c
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@39e
    .line 289
    .end local v33    # "r":Landroid/icu/util/Region;
    :cond_12
    const/16 v25, 0x0

    #@3a0
    :goto_9
    invoke-virtual/range {v41 .. v41}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@3a3
    move-result v43

    #@3a4
    move/from16 v0, v25

    #@3a6
    move/from16 v1, v43

    #@3a8
    if-ge v0, v1, :cond_16

    #@3aa
    .line 290
    move-object/from16 v0, v41

    #@3ac
    move/from16 v1, v25

    #@3ae
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@3b1
    move-result-object v28

    #@3b2
    .line 291
    .restart local v28    # "mapping":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v28 .. v28}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@3b5
    move-result-object v31

    #@3b6
    .line 292
    .local v31, "parent":Ljava/lang/String;
    const-string/jumbo v43, "containedGroupings"

    #@3b9
    move-object/from16 v0, v31

    #@3bb
    move-object/from16 v1, v43

    #@3bd
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3c0
    move-result v43

    #@3c1
    if-nez v43, :cond_13

    #@3c3
    const-string/jumbo v43, "deprecated"

    #@3c6
    move-object/from16 v0, v31

    #@3c8
    move-object/from16 v1, v43

    #@3ca
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3cd
    move-result v43

    #@3ce
    if-eqz v43, :cond_14

    #@3d0
    .line 289
    :cond_13
    add-int/lit8 v25, v25, 0x1

    #@3d2
    goto :goto_9

    #@3d3
    .line 296
    :cond_14
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@3d5
    move-object/from16 v0, v43

    #@3d7
    move-object/from16 v1, v31

    #@3d9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3dc
    move-result-object v32

    #@3dd
    check-cast v32, Landroid/icu/util/Region;

    #@3df
    .line 297
    .local v32, "parentRegion":Landroid/icu/util/Region;
    const/16 v27, 0x0

    #@3e1
    .local v27, "j":I
    :goto_a
    invoke-virtual/range {v28 .. v28}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@3e4
    move-result v43

    #@3e5
    move/from16 v0, v27

    #@3e7
    move/from16 v1, v43

    #@3e9
    if-ge v0, v1, :cond_13

    #@3eb
    .line 298
    move-object/from16 v0, v28

    #@3ed
    move/from16 v1, v27

    #@3ef
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    #@3f2
    move-result-object v8

    #@3f3
    .line 299
    .local v8, "child":Ljava/lang/String;
    sget-object v43, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@3f5
    move-object/from16 v0, v43

    #@3f7
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3fa
    move-result-object v9

    #@3fb
    check-cast v9, Landroid/icu/util/Region;

    #@3fd
    .line 300
    .local v9, "childRegion":Landroid/icu/util/Region;
    if-eqz v32, :cond_15

    #@3ff
    if-eqz v9, :cond_15

    #@401
    .line 303
    move-object/from16 v0, v32

    #@403
    iget-object v0, v0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    #@405
    move-object/from16 v43, v0

    #@407
    move-object/from16 v0, v43

    #@409
    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@40c
    .line 308
    invoke-virtual/range {v32 .. v32}, Landroid/icu/util/Region;->getType()Landroid/icu/util/Region$RegionType;

    #@40f
    move-result-object v43

    #@410
    sget-object v45, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    #@412
    move-object/from16 v0, v43

    #@414
    move-object/from16 v1, v45

    #@416
    if-eq v0, v1, :cond_15

    #@418
    .line 309
    move-object/from16 v0, v32

    #@41a
    iput-object v0, v9, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    #@41c
    .line 297
    :cond_15
    add-int/lit8 v27, v27, 0x1

    #@41e
    goto :goto_a

    #@41f
    .line 317
    .end local v8    # "child":Ljava/lang/String;
    .end local v9    # "childRegion":Landroid/icu/util/Region;
    .end local v27    # "j":I
    .end local v28    # "mapping":Landroid/icu/util/UResourceBundle;
    .end local v31    # "parent":Ljava/lang/String;
    .end local v32    # "parentRegion":Landroid/icu/util/Region;
    :cond_16
    const/16 v25, 0x0

    #@421
    :goto_b
    invoke-static {}, Landroid/icu/util/Region$RegionType;->values()[Landroid/icu/util/Region$RegionType;

    #@424
    move-result-object v43

    #@425
    move-object/from16 v0, v43

    #@427
    array-length v0, v0

    #@428
    move/from16 v43, v0

    #@42a
    move/from16 v0, v25

    #@42c
    move/from16 v1, v43

    #@42e
    if-ge v0, v1, :cond_17

    #@430
    .line 318
    sget-object v43, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    #@432
    new-instance v45, Ljava/util/TreeSet;

    #@434
    invoke-direct/range {v45 .. v45}, Ljava/util/TreeSet;-><init>()V

    #@437
    move-object/from16 v0, v43

    #@439
    move-object/from16 v1, v45

    #@43b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@43e
    .line 317
    add-int/lit8 v25, v25, 0x1

    #@440
    goto :goto_b

    #@441
    .line 321
    :cond_17
    sget-object v43, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    #@443
    invoke-interface/range {v43 .. v43}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@446
    move-result-object v7

    #@447
    .local v7, "ar$iterator":Ljava/util/Iterator;
    :goto_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@44a
    move-result v43

    #@44b
    if-eqz v43, :cond_18

    #@44d
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@450
    move-result-object v6

    #@451
    check-cast v6, Landroid/icu/util/Region;

    #@453
    .line 322
    .local v6, "ar":Landroid/icu/util/Region;
    sget-object v43, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    #@455
    iget-object v0, v6, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@457
    move-object/from16 v45, v0

    #@459
    invoke-virtual/range {v45 .. v45}, Landroid/icu/util/Region$RegionType;->ordinal()I

    #@45c
    move-result v45

    #@45d
    move-object/from16 v0, v43

    #@45f
    move/from16 v1, v45

    #@461
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@464
    move-result-object v19

    #@465
    check-cast v19, Ljava/util/Set;

    #@467
    .line 323
    .local v19, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/Region;>;"
    move-object/from16 v0, v19

    #@469
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@46c
    .line 324
    sget-object v43, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    #@46e
    iget-object v0, v6, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@470
    move-object/from16 v45, v0

    #@472
    invoke-virtual/range {v45 .. v45}, Landroid/icu/util/Region$RegionType;->ordinal()I

    #@475
    move-result v45

    #@476
    move-object/from16 v0, v43

    #@478
    move/from16 v1, v45

    #@47a
    move-object/from16 v2, v19

    #@47c
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@47f
    goto :goto_c

    #@480
    .line 327
    .end local v6    # "ar":Landroid/icu/util/Region;
    .end local v19    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/Region;>;"
    :cond_18
    const/16 v43, 0x1

    #@482
    sput-boolean v43, Landroid/icu/util/Region;->regionDataIsLoaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@484
    monitor-exit v44

    #@485
    .line 143
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/util/Region;)I
    .locals 2
    .param p1, "other"    # Landroid/icu/util/Region;

    #@0
    .prologue
    .line 573
    iget-object v0, p0, Landroid/icu/util/Region;->id:Ljava/lang/String;

    #@2
    iget-object v1, p1, Landroid/icu/util/Region;->id:Ljava/lang/String;

    #@4
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 572
    check-cast p1, Landroid/icu/util/Region;

    #@2
    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/util/Region;->compareTo(Landroid/icu/util/Region;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public contains(Landroid/icu/util/Region;)Z
    .locals 4
    .param p1, "other"    # Landroid/icu/util/Region;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 518
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@4
    .line 520
    iget-object v2, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    #@6
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 521
    return v3

    #@d
    .line 523
    :cond_0
    iget-object v2, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    #@f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@12
    move-result-object v1

    #@13
    .local v1, "cr$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_2

    #@19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Landroid/icu/util/Region;

    #@1f
    .line 524
    .local v0, "cr":Landroid/icu/util/Region;
    invoke-virtual {v0, p1}, Landroid/icu/util/Region;->contains(Landroid/icu/util/Region;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 525
    return v3

    #@26
    .line 530
    .end local v0    # "cr":Landroid/icu/util/Region;
    :cond_2
    const/4 v2, 0x0

    #@27
    return v2
.end method

.method public getContainedRegions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 462
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@3
    .line 463
    iget-object v0, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    #@5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public getContainedRegions(Landroid/icu/util/Region$RegionType;)Ljava/util/Set;
    .locals 5
    .param p1, "type"    # Landroid/icu/util/Region$RegionType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/Region$RegionType;",
            ")",
            "Ljava/util/Set",
            "<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 478
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@3
    .line 480
    new-instance v3, Ljava/util/TreeSet;

    #@5
    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    #@8
    .line 481
    .local v3, "result":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/Region;>;"
    invoke-virtual {p0}, Landroid/icu/util/Region;->getContainedRegions()Ljava/util/Set;

    #@b
    move-result-object v0

    #@c
    .line 483
    .local v0, "cr":Ljava/util/Set;, "Ljava/util/Set<Lcom/ibm/icu/util/Region;>;"
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v2

    #@10
    .local v2, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v4

    #@14
    if-eqz v4, :cond_1

    #@16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Landroid/icu/util/Region;

    #@1c
    .line 484
    .local v1, "r":Landroid/icu/util/Region;
    invoke-virtual {v1}, Landroid/icu/util/Region;->getType()Landroid/icu/util/Region$RegionType;

    #@1f
    move-result-object v4

    #@20
    if-ne v4, p1, :cond_0

    #@22
    .line 485
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_0

    #@26
    .line 487
    :cond_0
    invoke-virtual {v1, p1}, Landroid/icu/util/Region;->getContainedRegions(Landroid/icu/util/Region$RegionType;)Ljava/util/Set;

    #@29
    move-result-object v4

    #@2a
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@2d
    goto :goto_0

    #@2e
    .line 490
    .end local v1    # "r":Landroid/icu/util/Region;
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    #@31
    move-result-object v4

    #@32
    return-object v4
.end method

.method public getContainingRegion()Landroid/icu/util/Region;
    .locals 1

    #@0
    .prologue
    .line 424
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@3
    .line 425
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    #@5
    return-object v0
.end method

.method public getContainingRegion(Landroid/icu/util/Region$RegionType;)Landroid/icu/util/Region;
    .locals 2
    .param p1, "type"    # Landroid/icu/util/Region$RegionType;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 437
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@4
    .line 438
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 439
    return-object v1

    #@9
    .line 441
    :cond_0
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    #@b
    iget-object v0, v0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@d
    invoke-virtual {v0, p1}, Landroid/icu/util/Region$RegionType;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 442
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    #@15
    return-object v0

    #@16
    .line 444
    :cond_1
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    #@18
    invoke-virtual {v0, p1}, Landroid/icu/util/Region;->getContainingRegion(Landroid/icu/util/Region$RegionType;)Landroid/icu/util/Region;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public getNumericCode()I
    .locals 1

    #@0
    .prologue
    .line 554
    iget v0, p0, Landroid/icu/util/Region;->code:I

    #@2
    return v0
.end method

.method public getPreferredValues()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/icu/util/Region;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 502
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@3
    .line 504
    iget-object v0, p0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@5
    sget-object v1, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 505
    iget-object v0, p0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    #@b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 507
    :cond_0
    const/4 v0, 0x0

    #@11
    return-object v0
.end method

.method public getType()Landroid/icu/util/Region$RegionType;
    .locals 1

    #@0
    .prologue
    .line 565
    iget-object v0, p0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Landroid/icu/util/Region;->id:Ljava/lang/String;

    #@2
    return-object v0
.end method
