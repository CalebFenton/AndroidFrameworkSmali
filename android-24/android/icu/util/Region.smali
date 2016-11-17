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
    .line 108
    const/4 v0, 0x0

    #@2
    sput-boolean v0, Landroid/icu/util/Region;->regionDataIsLoaded:Z

    #@4
    .line 110
    sput-object v1, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@6
    .line 111
    sput-object v1, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    #@8
    .line 112
    sput-object v1, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    #@a
    .line 114
    sput-object v1, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    #@c
    .line 115
    sput-object v1, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    #@e
    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 104
    iput-object v1, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    #@6
    .line 105
    new-instance v0, Ljava/util/TreeSet;

    #@8
    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    #@b
    iput-object v0, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    #@d
    .line 106
    iput-object v1, p0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    #@f
    .line 124
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
    .line 430
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@3
    .line 431
    sget-object v0, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    #@5
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

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
    .line 395
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@3
    .line 397
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
    .line 399
    .local v2, "r":Landroid/icu/util/Region;
    if-nez v2, :cond_1

    #@11
    .line 400
    const-string/jumbo v1, ""

    #@14
    .line 401
    .local v1, "pad":Ljava/lang/String;
    const/16 v3, 0xa

    #@16
    if-ge p0, v3, :cond_2

    #@18
    .line 402
    const-string/jumbo v1, "00"

    #@1b
    .line 406
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
    .line 407
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
    .line 410
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "pad":Ljava/lang/String;
    .restart local v2    # "r":Landroid/icu/util/Region;
    :cond_1
    if-nez v2, :cond_3

    #@3a
    .line 411
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
    .line 403
    .restart local v1    # "pad":Ljava/lang/String;
    :cond_2
    const/16 v3, 0x64

    #@56
    if-ge p0, v3, :cond_0

    #@58
    .line 404
    const-string/jumbo v1, "0"

    #@5b
    goto :goto_0

    #@5c
    .line 414
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
    .line 415
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
    .line 418
    .restart local v2    # "r":Landroid/icu/util/Region;
    :cond_4
    return-object v2
.end method

.method public static getInstance(Ljava/lang/String;)Landroid/icu/util/Region;
    .locals 4
    .param p0, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 363
    if-nez p0, :cond_0

    #@2
    .line 364
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 367
    :cond_0
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@b
    .line 369
    sget-object v1, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@d
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid/icu/util/Region;

    #@13
    .line 371
    .local v0, "r":Landroid/icu/util/Region;
    if-nez v0, :cond_1

    #@15
    .line 372
    sget-object v1, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    #@17
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v0

    #@1b
    .end local v0    # "r":Landroid/icu/util/Region;
    check-cast v0, Landroid/icu/util/Region;

    #@1d
    .line 375
    .restart local v0    # "r":Landroid/icu/util/Region;
    :cond_1
    if-nez v0, :cond_2

    #@1f
    .line 376
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
    .line 379
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
    .line 380
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
    .line 383
    .restart local v0    # "r":Landroid/icu/util/Region;
    :cond_3
    return-object v0
.end method

.method private static declared-synchronized loadRegionData()V
    .locals 60

    #@0
    .prologue
    const-class v57, Landroid/icu/util/Region;

    #@2
    monitor-enter v57

    #@3
    .line 137
    :try_start_0
    sget-boolean v56, Landroid/icu/util/Region;->regionDataIsLoaded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-eqz v56, :cond_0

    #@7
    monitor-exit v57

    #@8
    .line 138
    return-void

    #@9
    .line 141
    :cond_0
    :try_start_1
    new-instance v56, Ljava/util/HashMap;

    #@b
    invoke-direct/range {v56 .. v56}, Ljava/util/HashMap;-><init>()V

    #@e
    sput-object v56, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    #@10
    .line 142
    new-instance v56, Ljava/util/HashMap;

    #@12
    invoke-direct/range {v56 .. v56}, Ljava/util/HashMap;-><init>()V

    #@15
    sput-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@17
    .line 143
    new-instance v56, Ljava/util/HashMap;

    #@19
    invoke-direct/range {v56 .. v56}, Ljava/util/HashMap;-><init>()V

    #@1c
    sput-object v56, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    #@1e
    .line 145
    new-instance v56, Ljava/util/ArrayList;

    #@20
    invoke-static {}, Landroid/icu/util/Region$RegionType;->values()[Landroid/icu/util/Region$RegionType;

    #@23
    move-result-object v58

    #@24
    move-object/from16 v0, v58

    #@26
    array-length v0, v0

    #@27
    move/from16 v58, v0

    #@29
    move-object/from16 v0, v56

    #@2b
    move/from16 v1, v58

    #@2d
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@30
    sput-object v56, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    #@32
    .line 148
    const/16 v35, 0x0

    #@34
    .line 149
    .local v35, "metadataAlias":Landroid/icu/util/UResourceBundle;
    const/16 v53, 0x0

    #@36
    .line 150
    .local v53, "territoryAlias":Landroid/icu/util/UResourceBundle;
    const/4 v15, 0x0

    #@37
    .line 151
    .local v15, "codeMappings":Landroid/icu/util/UResourceBundle;
    const/16 v30, 0x0

    #@39
    .line 152
    .local v30, "idValidity":Landroid/icu/util/UResourceBundle;
    const/16 v44, 0x0

    #@3b
    .line 153
    .local v44, "regionList":Landroid/icu/util/UResourceBundle;
    const/16 v47, 0x0

    #@3d
    .line 154
    .local v47, "regionRegular":Landroid/icu/util/UResourceBundle;
    const/16 v45, 0x0

    #@3f
    .line 155
    .local v45, "regionMacro":Landroid/icu/util/UResourceBundle;
    const/16 v48, 0x0

    #@41
    .line 156
    .local v48, "regionUnknown":Landroid/icu/util/UResourceBundle;
    const/16 v55, 0x0

    #@43
    .line 157
    .local v55, "worldContainment":Landroid/icu/util/UResourceBundle;
    const/16 v54, 0x0

    #@45
    .line 158
    .local v54, "territoryContainment":Landroid/icu/util/UResourceBundle;
    const/16 v25, 0x0

    #@47
    .line 160
    .local v25, "groupingContainment":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v56, "android/icu/impl/data/icudt56b"

    #@4a
    const-string/jumbo v58, "metadata"

    #@4d
    sget-object v59, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@4f
    move-object/from16 v0, v56

    #@51
    move-object/from16 v1, v58

    #@53
    move-object/from16 v2, v59

    #@55
    invoke-static {v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@58
    move-result-object v34

    #@59
    .line 161
    .local v34, "metadata":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v56, "alias"

    #@5c
    move-object/from16 v0, v34

    #@5e
    move-object/from16 v1, v56

    #@60
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@63
    move-result-object v35

    #@64
    .line 162
    .local v35, "metadataAlias":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v56, "territory"

    #@67
    move-object/from16 v0, v35

    #@69
    move-object/from16 v1, v56

    #@6b
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@6e
    move-result-object v53

    #@6f
    .line 164
    .local v53, "territoryAlias":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v56, "android/icu/impl/data/icudt56b"

    #@72
    const-string/jumbo v58, "supplementalData"

    #@75
    sget-object v59, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@77
    move-object/from16 v0, v56

    #@79
    move-object/from16 v1, v58

    #@7b
    move-object/from16 v2, v59

    #@7d
    invoke-static {v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@80
    move-result-object v52

    #@81
    .line 165
    .local v52, "supplementalData":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v56, "codeMappings"

    #@84
    move-object/from16 v0, v52

    #@86
    move-object/from16 v1, v56

    #@88
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@8b
    move-result-object v15

    #@8c
    .line 166
    .local v15, "codeMappings":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v56, "idValidity"

    #@8f
    move-object/from16 v0, v52

    #@91
    move-object/from16 v1, v56

    #@93
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@96
    move-result-object v30

    #@97
    .line 167
    .local v30, "idValidity":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v56, "region"

    #@9a
    move-object/from16 v0, v30

    #@9c
    move-object/from16 v1, v56

    #@9e
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@a1
    move-result-object v44

    #@a2
    .line 168
    .local v44, "regionList":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v56, "regular"

    #@a5
    move-object/from16 v0, v44

    #@a7
    move-object/from16 v1, v56

    #@a9
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@ac
    move-result-object v47

    #@ad
    .line 169
    .local v47, "regionRegular":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v56, "macroregion"

    #@b0
    move-object/from16 v0, v44

    #@b2
    move-object/from16 v1, v56

    #@b4
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@b7
    move-result-object v45

    #@b8
    .line 170
    .local v45, "regionMacro":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v56, "unknown"

    #@bb
    move-object/from16 v0, v44

    #@bd
    move-object/from16 v1, v56

    #@bf
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@c2
    move-result-object v48

    #@c3
    .line 172
    .local v48, "regionUnknown":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v56, "territoryContainment"

    #@c6
    move-object/from16 v0, v52

    #@c8
    move-object/from16 v1, v56

    #@ca
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@cd
    move-result-object v54

    #@ce
    .line 173
    .local v54, "territoryContainment":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v56, "001"

    #@d1
    move-object/from16 v0, v54

    #@d3
    move-object/from16 v1, v56

    #@d5
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@d8
    move-result-object v55

    #@d9
    .line 174
    .local v55, "worldContainment":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v56, "grouping"

    #@dc
    move-object/from16 v0, v54

    #@de
    move-object/from16 v1, v56

    #@e0
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@e3
    move-result-object v25

    #@e4
    .line 176
    .local v25, "groupingContainment":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v55 .. v55}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    #@e7
    move-result-object v19

    #@e8
    .line 177
    .local v19, "continentsArr":[Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@eb
    move-result-object v18

    #@ec
    .line 178
    .local v18, "continents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v25 .. v25}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    #@ef
    move-result-object v24

    #@f0
    .line 179
    .local v24, "groupingArr":[Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@f3
    move-result-object v26

    #@f4
    .line 180
    .local v26, "groupings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v43, Ljava/util/ArrayList;

    #@f6
    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    #@f9
    .line 182
    .local v43, "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    #@fb
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@fe
    .line 183
    .local v6, "allRegions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {v47 .. v47}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    #@101
    move-result-object v56

    #@102
    invoke-static/range {v56 .. v56}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@105
    move-result-object v56

    #@106
    move-object/from16 v0, v56

    #@108
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@10b
    .line 184
    invoke-virtual/range {v45 .. v45}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    #@10e
    move-result-object v56

    #@10f
    invoke-static/range {v56 .. v56}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@112
    move-result-object v56

    #@113
    move-object/from16 v0, v56

    #@115
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    #@118
    .line 185
    invoke-virtual/range {v48 .. v48}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@11b
    move-result-object v56

    #@11c
    move-object/from16 v0, v56

    #@11e
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@121
    .line 187
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@124
    move-result-object v41

    #@125
    .local v41, "r$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    #@128
    move-result v56

    #@129
    if-eqz v56, :cond_3

    #@12b
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12e
    move-result-object v40

    #@12f
    check-cast v40, Ljava/lang/String;

    #@131
    .line 188
    .local v40, "r":Ljava/lang/String;
    const-string/jumbo v56, "~"

    #@134
    move-object/from16 v0, v40

    #@136
    move-object/from16 v1, v56

    #@138
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@13b
    move-result v42

    #@13c
    .line 189
    .local v42, "rangeMarkerLocation":I
    if-lez v42, :cond_2

    #@13e
    .line 190
    new-instance v46, Ljava/lang/StringBuilder;

    #@140
    move-object/from16 v0, v46

    #@142
    move-object/from16 v1, v40

    #@144
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@147
    .line 191
    .local v46, "regionName":Ljava/lang/StringBuilder;
    add-int/lit8 v56, v42, 0x1

    #@149
    move-object/from16 v0, v46

    #@14b
    move/from16 v1, v56

    #@14d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@150
    move-result v21

    #@151
    .line 192
    .local v21, "endRange":C
    move-object/from16 v0, v46

    #@153
    move/from16 v1, v42

    #@155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@158
    .line 193
    add-int/lit8 v56, v42, -0x1

    #@15a
    move-object/from16 v0, v46

    #@15c
    move/from16 v1, v56

    #@15e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    #@161
    move-result v32

    #@162
    .line 194
    .local v32, "lastChar":C
    :goto_1
    move/from16 v0, v32

    #@164
    move/from16 v1, v21

    #@166
    if-gt v0, v1, :cond_1

    #@168
    .line 195
    invoke-virtual/range {v46 .. v46}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16b
    move-result-object v36

    #@16c
    .line 196
    .local v36, "newRegion":Ljava/lang/String;
    move-object/from16 v0, v43

    #@16e
    move-object/from16 v1, v36

    #@170
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@173
    .line 197
    add-int/lit8 v56, v32, 0x1

    #@175
    move/from16 v0, v56

    #@177
    int-to-char v0, v0

    #@178
    move/from16 v32, v0

    #@17a
    .line 198
    add-int/lit8 v56, v42, -0x1

    #@17c
    move-object/from16 v0, v46

    #@17e
    move/from16 v1, v56

    #@180
    move/from16 v2, v32

    #@182
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@185
    goto :goto_1

    #@186
    .end local v6    # "allRegions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v18    # "continents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v21    # "endRange":C
    .end local v24    # "groupingArr":[Ljava/lang/String;
    .end local v26    # "groupings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v32    # "lastChar":C
    .end local v36    # "newRegion":Ljava/lang/String;
    .end local v40    # "r":Ljava/lang/String;
    .end local v41    # "r$iterator":Ljava/util/Iterator;
    .end local v42    # "rangeMarkerLocation":I
    .end local v43    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v46    # "regionName":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v56

    #@187
    monitor-exit v57

    #@188
    throw v56

    #@189
    .line 201
    .restart local v6    # "allRegions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v18    # "continents":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v24    # "groupingArr":[Ljava/lang/String;
    .restart local v26    # "groupings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v40    # "r":Ljava/lang/String;
    .restart local v41    # "r$iterator":Ljava/util/Iterator;
    .restart local v42    # "rangeMarkerLocation":I
    .restart local v43    # "regionCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :try_start_2
    move-object/from16 v0, v43

    #@18b
    move-object/from16 v1, v40

    #@18d
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@190
    goto :goto_0

    #@191
    .line 205
    .end local v40    # "r":Ljava/lang/String;
    .end local v42    # "rangeMarkerLocation":I
    :cond_3
    new-instance v56, Ljava/util/ArrayList;

    #@193
    invoke-interface/range {v43 .. v43}, Ljava/util/List;->size()I

    #@196
    move-result v58

    #@197
    move-object/from16 v0, v56

    #@199
    move/from16 v1, v58

    #@19b
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@19e
    sput-object v56, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    #@1a0
    .line 208
    invoke-interface/range {v43 .. v43}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a3
    move-result-object v29

    #@1a4
    .local v29, "id$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    #@1a7
    move-result v56

    #@1a8
    if-eqz v56, :cond_5

    #@1aa
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1ad
    move-result-object v28

    #@1ae
    check-cast v28, Ljava/lang/String;

    #@1b0
    .line 209
    .local v28, "id":Ljava/lang/String;
    new-instance v39, Landroid/icu/util/Region;

    #@1b2
    invoke-direct/range {v39 .. v39}, Landroid/icu/util/Region;-><init>()V

    #@1b5
    .line 210
    .local v39, "r":Landroid/icu/util/Region;
    move-object/from16 v0, v28

    #@1b7
    move-object/from16 v1, v39

    #@1b9
    iput-object v0, v1, Landroid/icu/util/Region;->id:Ljava/lang/String;

    #@1bb
    .line 211
    sget-object v56, Landroid/icu/util/Region$RegionType;->TERRITORY:Landroid/icu/util/Region$RegionType;

    #@1bd
    move-object/from16 v0, v56

    #@1bf
    move-object/from16 v1, v39

    #@1c1
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@1c3
    .line 212
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@1c5
    move-object/from16 v0, v56

    #@1c7
    move-object/from16 v1, v28

    #@1c9
    move-object/from16 v2, v39

    #@1cb
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1ce
    .line 213
    const-string/jumbo v56, "[0-9]{3}"

    #@1d1
    move-object/from16 v0, v28

    #@1d3
    move-object/from16 v1, v56

    #@1d5
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@1d8
    move-result v56

    #@1d9
    if-eqz v56, :cond_4

    #@1db
    .line 214
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@1de
    move-result-object v56

    #@1df
    invoke-virtual/range {v56 .. v56}, Ljava/lang/Integer;->intValue()I

    #@1e2
    move-result v56

    #@1e3
    move/from16 v0, v56

    #@1e5
    move-object/from16 v1, v39

    #@1e7
    iput v0, v1, Landroid/icu/util/Region;->code:I

    #@1e9
    .line 215
    sget-object v56, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    #@1eb
    move-object/from16 v0, v39

    #@1ed
    iget v0, v0, Landroid/icu/util/Region;->code:I

    #@1ef
    move/from16 v58, v0

    #@1f1
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1f4
    move-result-object v58

    #@1f5
    move-object/from16 v0, v56

    #@1f7
    move-object/from16 v1, v58

    #@1f9
    move-object/from16 v2, v39

    #@1fb
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1fe
    .line 216
    sget-object v56, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    #@200
    move-object/from16 v0, v56

    #@202
    move-object/from16 v1, v39

    #@204
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@206
    .line 220
    :goto_3
    sget-object v56, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    #@208
    move-object/from16 v0, v56

    #@20a
    move-object/from16 v1, v39

    #@20c
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@20f
    goto :goto_2

    #@210
    .line 218
    :cond_4
    const/16 v56, -0x1

    #@212
    move/from16 v0, v56

    #@214
    move-object/from16 v1, v39

    #@216
    iput v0, v1, Landroid/icu/util/Region;->code:I

    #@218
    goto :goto_3

    #@219
    .line 225
    .end local v28    # "id":Ljava/lang/String;
    .end local v39    # "r":Landroid/icu/util/Region;
    :cond_5
    const/16 v27, 0x0

    #@21b
    .local v27, "i":I
    :goto_4
    invoke-virtual/range {v53 .. v53}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@21e
    move-result v56

    #@21f
    move/from16 v0, v27

    #@221
    move/from16 v1, v56

    #@223
    if-ge v0, v1, :cond_c

    #@225
    .line 226
    move-object/from16 v0, v53

    #@227
    move/from16 v1, v27

    #@229
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@22c
    move-result-object v49

    #@22d
    .line 227
    .local v49, "res":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v49 .. v49}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@230
    move-result-object v3

    #@231
    .line 228
    .local v3, "aliasFrom":Ljava/lang/String;
    const-string/jumbo v56, "replacement"

    #@234
    move-object/from16 v0, v49

    #@236
    move-object/from16 v1, v56

    #@238
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@23b
    move-result-object v56

    #@23c
    invoke-virtual/range {v56 .. v56}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@23f
    move-result-object v4

    #@240
    .line 230
    .local v4, "aliasTo":Ljava/lang/String;
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@242
    move-object/from16 v0, v56

    #@244
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@247
    move-result v56

    #@248
    if-eqz v56, :cond_6

    #@24a
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@24c
    move-object/from16 v0, v56

    #@24e
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@251
    move-result v56

    #@252
    if-eqz v56, :cond_8

    #@254
    .line 234
    :cond_6
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@256
    move-object/from16 v0, v56

    #@258
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@25b
    move-result v56

    #@25c
    if-eqz v56, :cond_a

    #@25e
    .line 235
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@260
    move-object/from16 v0, v56

    #@262
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@265
    move-result-object v39

    #@266
    check-cast v39, Landroid/icu/util/Region;

    #@268
    .line 248
    .restart local v39    # "r":Landroid/icu/util/Region;
    :goto_5
    sget-object v56, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    #@26a
    move-object/from16 v0, v56

    #@26c
    move-object/from16 v1, v39

    #@26e
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@270
    .line 249
    const-string/jumbo v56, " "

    #@273
    move-object/from16 v0, v56

    #@275
    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@278
    move-result-object v56

    #@279
    invoke-static/range {v56 .. v56}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@27c
    move-result-object v5

    #@27d
    .line 250
    .local v5, "aliasToRegionStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v56, Ljava/util/ArrayList;

    #@27f
    invoke-direct/range {v56 .. v56}, Ljava/util/ArrayList;-><init>()V

    #@282
    move-object/from16 v0, v56

    #@284
    move-object/from16 v1, v39

    #@286
    iput-object v0, v1, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    #@288
    .line 251
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28b
    move-result-object v51

    #@28c
    .local v51, "s$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_6
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    #@28f
    move-result v56

    #@290
    if-eqz v56, :cond_9

    #@292
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@295
    move-result-object v50

    #@296
    check-cast v50, Ljava/lang/String;

    #@298
    .line 252
    .local v50, "s":Ljava/lang/String;
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@29a
    move-object/from16 v0, v56

    #@29c
    move-object/from16 v1, v50

    #@29e
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@2a1
    move-result v56

    #@2a2
    if-eqz v56, :cond_7

    #@2a4
    .line 253
    move-object/from16 v0, v39

    #@2a6
    iget-object v0, v0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    #@2a8
    move-object/from16 v58, v0

    #@2aa
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@2ac
    move-object/from16 v0, v56

    #@2ae
    move-object/from16 v1, v50

    #@2b0
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b3
    move-result-object v56

    #@2b4
    check-cast v56, Landroid/icu/util/Region;

    #@2b6
    move-object/from16 v0, v58

    #@2b8
    move-object/from16 v1, v56

    #@2ba
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@2bd
    goto :goto_6

    #@2be
    .line 231
    .end local v5    # "aliasToRegionStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v39    # "r":Landroid/icu/util/Region;
    .end local v50    # "s":Ljava/lang/String;
    .end local v51    # "s$iterator":Ljava/util/Iterator;
    :cond_8
    sget-object v58, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    #@2c0
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@2c2
    move-object/from16 v0, v56

    #@2c4
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c7
    move-result-object v56

    #@2c8
    check-cast v56, Landroid/icu/util/Region;

    #@2ca
    move-object/from16 v0, v58

    #@2cc
    move-object/from16 v1, v56

    #@2ce
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d1
    .line 225
    :cond_9
    add-int/lit8 v27, v27, 0x1

    #@2d3
    goto/16 :goto_4

    #@2d5
    .line 237
    :cond_a
    new-instance v39, Landroid/icu/util/Region;

    #@2d7
    invoke-direct/range {v39 .. v39}, Landroid/icu/util/Region;-><init>()V

    #@2da
    .line 238
    .restart local v39    # "r":Landroid/icu/util/Region;
    move-object/from16 v0, v39

    #@2dc
    iput-object v3, v0, Landroid/icu/util/Region;->id:Ljava/lang/String;

    #@2de
    .line 239
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@2e0
    move-object/from16 v0, v56

    #@2e2
    move-object/from16 v1, v39

    #@2e4
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e7
    .line 240
    const-string/jumbo v56, "[0-9]{3}"

    #@2ea
    move-object/from16 v0, v56

    #@2ec
    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    #@2ef
    move-result v56

    #@2f0
    if-eqz v56, :cond_b

    #@2f2
    .line 241
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@2f5
    move-result-object v56

    #@2f6
    invoke-virtual/range {v56 .. v56}, Ljava/lang/Integer;->intValue()I

    #@2f9
    move-result v56

    #@2fa
    move/from16 v0, v56

    #@2fc
    move-object/from16 v1, v39

    #@2fe
    iput v0, v1, Landroid/icu/util/Region;->code:I

    #@300
    .line 242
    sget-object v56, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    #@302
    move-object/from16 v0, v39

    #@304
    iget v0, v0, Landroid/icu/util/Region;->code:I

    #@306
    move/from16 v58, v0

    #@308
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@30b
    move-result-object v58

    #@30c
    move-object/from16 v0, v56

    #@30e
    move-object/from16 v1, v58

    #@310
    move-object/from16 v2, v39

    #@312
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@315
    .line 246
    :goto_7
    sget-object v56, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    #@317
    move-object/from16 v0, v56

    #@319
    move-object/from16 v1, v39

    #@31b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@31e
    goto/16 :goto_5

    #@320
    .line 244
    :cond_b
    const/16 v56, -0x1

    #@322
    move/from16 v0, v56

    #@324
    move-object/from16 v1, v39

    #@326
    iput v0, v1, Landroid/icu/util/Region;->code:I

    #@328
    goto :goto_7

    #@329
    .line 260
    .end local v3    # "aliasFrom":Ljava/lang/String;
    .end local v4    # "aliasTo":Ljava/lang/String;
    .end local v39    # "r":Landroid/icu/util/Region;
    .end local v49    # "res":Landroid/icu/util/UResourceBundle;
    :cond_c
    const/16 v27, 0x0

    #@32b
    :goto_8
    invoke-virtual {v15}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@32e
    move-result v56

    #@32f
    move/from16 v0, v27

    #@331
    move/from16 v1, v56

    #@333
    if-ge v0, v1, :cond_e

    #@335
    .line 261
    move/from16 v0, v27

    #@337
    invoke-virtual {v15, v0}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@33a
    move-result-object v33

    #@33b
    .line 262
    .local v33, "mapping":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/UResourceBundle;->getType()I

    #@33e
    move-result v56

    #@33f
    const/16 v58, 0x8

    #@341
    move/from16 v0, v56

    #@343
    move/from16 v1, v58

    #@345
    if-ne v0, v1, :cond_d

    #@347
    .line 263
    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    #@34a
    move-result-object v14

    #@34b
    .line 264
    .local v14, "codeMappingStrings":[Ljava/lang/String;
    const/16 v56, 0x0

    #@34d
    aget-object v12, v14, v56

    #@34f
    .line 265
    .local v12, "codeMappingID":Ljava/lang/String;
    const/16 v56, 0x1

    #@351
    aget-object v56, v14, v56

    #@353
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    #@356
    move-result-object v13

    #@357
    .line 266
    .local v13, "codeMappingNumber":Ljava/lang/Integer;
    const/16 v56, 0x2

    #@359
    aget-object v11, v14, v56

    #@35b
    .line 268
    .local v11, "codeMapping3Letter":Ljava/lang/String;
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@35d
    move-object/from16 v0, v56

    #@35f
    invoke-interface {v0, v12}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@362
    move-result v56

    #@363
    if-eqz v56, :cond_d

    #@365
    .line 269
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@367
    move-object/from16 v0, v56

    #@369
    invoke-interface {v0, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36c
    move-result-object v39

    #@36d
    check-cast v39, Landroid/icu/util/Region;

    #@36f
    .line 270
    .restart local v39    # "r":Landroid/icu/util/Region;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    #@372
    move-result v56

    #@373
    move/from16 v0, v56

    #@375
    move-object/from16 v1, v39

    #@377
    iput v0, v1, Landroid/icu/util/Region;->code:I

    #@379
    .line 271
    sget-object v56, Landroid/icu/util/Region;->numericCodeMap:Ljava/util/Map;

    #@37b
    move-object/from16 v0, v39

    #@37d
    iget v0, v0, Landroid/icu/util/Region;->code:I

    #@37f
    move/from16 v58, v0

    #@381
    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@384
    move-result-object v58

    #@385
    move-object/from16 v0, v56

    #@387
    move-object/from16 v1, v58

    #@389
    move-object/from16 v2, v39

    #@38b
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38e
    .line 272
    sget-object v56, Landroid/icu/util/Region;->regionAliases:Ljava/util/Map;

    #@390
    move-object/from16 v0, v56

    #@392
    move-object/from16 v1, v39

    #@394
    invoke-interface {v0, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@397
    .line 260
    .end local v11    # "codeMapping3Letter":Ljava/lang/String;
    .end local v12    # "codeMappingID":Ljava/lang/String;
    .end local v13    # "codeMappingNumber":Ljava/lang/Integer;
    .end local v14    # "codeMappingStrings":[Ljava/lang/String;
    .end local v39    # "r":Landroid/icu/util/Region;
    :cond_d
    add-int/lit8 v27, v27, 0x1

    #@399
    goto :goto_8

    #@39a
    .line 279
    .end local v33    # "mapping":Landroid/icu/util/UResourceBundle;
    :cond_e
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@39c
    const-string/jumbo v58, "001"

    #@39f
    move-object/from16 v0, v56

    #@3a1
    move-object/from16 v1, v58

    #@3a3
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3a6
    move-result v56

    #@3a7
    if-eqz v56, :cond_f

    #@3a9
    .line 280
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@3ab
    const-string/jumbo v58, "001"

    #@3ae
    move-object/from16 v0, v56

    #@3b0
    move-object/from16 v1, v58

    #@3b2
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3b5
    move-result-object v39

    #@3b6
    check-cast v39, Landroid/icu/util/Region;

    #@3b8
    .line 281
    .restart local v39    # "r":Landroid/icu/util/Region;
    sget-object v56, Landroid/icu/util/Region$RegionType;->WORLD:Landroid/icu/util/Region$RegionType;

    #@3ba
    move-object/from16 v0, v56

    #@3bc
    move-object/from16 v1, v39

    #@3be
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@3c0
    .line 284
    .end local v39    # "r":Landroid/icu/util/Region;
    :cond_f
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@3c2
    const-string/jumbo v58, "ZZ"

    #@3c5
    move-object/from16 v0, v56

    #@3c7
    move-object/from16 v1, v58

    #@3c9
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3cc
    move-result v56

    #@3cd
    if-eqz v56, :cond_10

    #@3cf
    .line 285
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@3d1
    const-string/jumbo v58, "ZZ"

    #@3d4
    move-object/from16 v0, v56

    #@3d6
    move-object/from16 v1, v58

    #@3d8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@3db
    move-result-object v39

    #@3dc
    check-cast v39, Landroid/icu/util/Region;

    #@3de
    .line 286
    .restart local v39    # "r":Landroid/icu/util/Region;
    sget-object v56, Landroid/icu/util/Region$RegionType;->UNKNOWN:Landroid/icu/util/Region$RegionType;

    #@3e0
    move-object/from16 v0, v56

    #@3e2
    move-object/from16 v1, v39

    #@3e4
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@3e6
    .line 289
    .end local v39    # "r":Landroid/icu/util/Region;
    :cond_10
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3e9
    move-result-object v17

    #@3ea
    .local v17, "continent$iterator":Ljava/util/Iterator;
    :cond_11
    :goto_9
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@3ed
    move-result v56

    #@3ee
    if-eqz v56, :cond_12

    #@3f0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3f3
    move-result-object v16

    #@3f4
    check-cast v16, Ljava/lang/String;

    #@3f6
    .line 290
    .local v16, "continent":Ljava/lang/String;
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@3f8
    move-object/from16 v0, v56

    #@3fa
    move-object/from16 v1, v16

    #@3fc
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@3ff
    move-result v56

    #@400
    if-eqz v56, :cond_11

    #@402
    .line 291
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@404
    move-object/from16 v0, v56

    #@406
    move-object/from16 v1, v16

    #@408
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@40b
    move-result-object v39

    #@40c
    check-cast v39, Landroid/icu/util/Region;

    #@40e
    .line 292
    .restart local v39    # "r":Landroid/icu/util/Region;
    sget-object v56, Landroid/icu/util/Region$RegionType;->CONTINENT:Landroid/icu/util/Region$RegionType;

    #@410
    move-object/from16 v0, v56

    #@412
    move-object/from16 v1, v39

    #@414
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@416
    goto :goto_9

    #@417
    .line 296
    .end local v16    # "continent":Ljava/lang/String;
    .end local v39    # "r":Landroid/icu/util/Region;
    :cond_12
    invoke-interface/range {v26 .. v26}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@41a
    move-result-object v23

    #@41b
    .local v23, "grouping$iterator":Ljava/util/Iterator;
    :cond_13
    :goto_a
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    #@41e
    move-result v56

    #@41f
    if-eqz v56, :cond_14

    #@421
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@424
    move-result-object v22

    #@425
    check-cast v22, Ljava/lang/String;

    #@427
    .line 297
    .local v22, "grouping":Ljava/lang/String;
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@429
    move-object/from16 v0, v56

    #@42b
    move-object/from16 v1, v22

    #@42d
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@430
    move-result v56

    #@431
    if-eqz v56, :cond_13

    #@433
    .line 298
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@435
    move-object/from16 v0, v56

    #@437
    move-object/from16 v1, v22

    #@439
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@43c
    move-result-object v39

    #@43d
    check-cast v39, Landroid/icu/util/Region;

    #@43f
    .line 299
    .restart local v39    # "r":Landroid/icu/util/Region;
    sget-object v56, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    #@441
    move-object/from16 v0, v56

    #@443
    move-object/from16 v1, v39

    #@445
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@447
    goto :goto_a

    #@448
    .line 306
    .end local v22    # "grouping":Ljava/lang/String;
    .end local v39    # "r":Landroid/icu/util/Region;
    :cond_14
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@44a
    const-string/jumbo v58, "QO"

    #@44d
    move-object/from16 v0, v56

    #@44f
    move-object/from16 v1, v58

    #@451
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@454
    move-result v56

    #@455
    if-eqz v56, :cond_15

    #@457
    .line 307
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@459
    const-string/jumbo v58, "QO"

    #@45c
    move-object/from16 v0, v56

    #@45e
    move-object/from16 v1, v58

    #@460
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@463
    move-result-object v39

    #@464
    check-cast v39, Landroid/icu/util/Region;

    #@466
    .line 308
    .restart local v39    # "r":Landroid/icu/util/Region;
    sget-object v56, Landroid/icu/util/Region$RegionType;->SUBCONTINENT:Landroid/icu/util/Region$RegionType;

    #@468
    move-object/from16 v0, v56

    #@46a
    move-object/from16 v1, v39

    #@46c
    iput-object v0, v1, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@46e
    .line 312
    .end local v39    # "r":Landroid/icu/util/Region;
    :cond_15
    const/16 v27, 0x0

    #@470
    :goto_b
    invoke-virtual/range {v54 .. v54}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@473
    move-result v56

    #@474
    move/from16 v0, v27

    #@476
    move/from16 v1, v56

    #@478
    if-ge v0, v1, :cond_19

    #@47a
    .line 313
    move-object/from16 v0, v54

    #@47c
    move/from16 v1, v27

    #@47e
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    #@481
    move-result-object v33

    #@482
    .line 314
    .restart local v33    # "mapping":Landroid/icu/util/UResourceBundle;
    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@485
    move-result-object v37

    #@486
    .line 315
    .local v37, "parent":Ljava/lang/String;
    const-string/jumbo v56, "containedGroupings"

    #@489
    move-object/from16 v0, v37

    #@48b
    move-object/from16 v1, v56

    #@48d
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@490
    move-result v56

    #@491
    if-nez v56, :cond_16

    #@493
    const-string/jumbo v56, "deprecated"

    #@496
    move-object/from16 v0, v37

    #@498
    move-object/from16 v1, v56

    #@49a
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@49d
    move-result v56

    #@49e
    if-eqz v56, :cond_17

    #@4a0
    .line 312
    :cond_16
    add-int/lit8 v27, v27, 0x1

    #@4a2
    goto :goto_b

    #@4a3
    .line 319
    :cond_17
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@4a5
    move-object/from16 v0, v56

    #@4a7
    move-object/from16 v1, v37

    #@4a9
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4ac
    move-result-object v38

    #@4ad
    check-cast v38, Landroid/icu/util/Region;

    #@4af
    .line 320
    .local v38, "parentRegion":Landroid/icu/util/Region;
    const/16 v31, 0x0

    #@4b1
    .local v31, "j":I
    :goto_c
    invoke-virtual/range {v33 .. v33}, Landroid/icu/util/UResourceBundle;->getSize()I

    #@4b4
    move-result v56

    #@4b5
    move/from16 v0, v31

    #@4b7
    move/from16 v1, v56

    #@4b9
    if-ge v0, v1, :cond_16

    #@4bb
    .line 321
    move-object/from16 v0, v33

    #@4bd
    move/from16 v1, v31

    #@4bf
    invoke-virtual {v0, v1}, Landroid/icu/util/UResourceBundle;->getString(I)Ljava/lang/String;

    #@4c2
    move-result-object v9

    #@4c3
    .line 322
    .local v9, "child":Ljava/lang/String;
    sget-object v56, Landroid/icu/util/Region;->regionIDMap:Ljava/util/Map;

    #@4c5
    move-object/from16 v0, v56

    #@4c7
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@4ca
    move-result-object v10

    #@4cb
    check-cast v10, Landroid/icu/util/Region;

    #@4cd
    .line 323
    .local v10, "childRegion":Landroid/icu/util/Region;
    if-eqz v38, :cond_18

    #@4cf
    if-eqz v10, :cond_18

    #@4d1
    .line 326
    move-object/from16 v0, v38

    #@4d3
    iget-object v0, v0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    #@4d5
    move-object/from16 v56, v0

    #@4d7
    move-object/from16 v0, v56

    #@4d9
    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@4dc
    .line 331
    invoke-virtual/range {v38 .. v38}, Landroid/icu/util/Region;->getType()Landroid/icu/util/Region$RegionType;

    #@4df
    move-result-object v56

    #@4e0
    sget-object v58, Landroid/icu/util/Region$RegionType;->GROUPING:Landroid/icu/util/Region$RegionType;

    #@4e2
    move-object/from16 v0, v56

    #@4e4
    move-object/from16 v1, v58

    #@4e6
    if-eq v0, v1, :cond_18

    #@4e8
    .line 332
    move-object/from16 v0, v38

    #@4ea
    iput-object v0, v10, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    #@4ec
    .line 320
    :cond_18
    add-int/lit8 v31, v31, 0x1

    #@4ee
    goto :goto_c

    #@4ef
    .line 340
    .end local v9    # "child":Ljava/lang/String;
    .end local v10    # "childRegion":Landroid/icu/util/Region;
    .end local v31    # "j":I
    .end local v33    # "mapping":Landroid/icu/util/UResourceBundle;
    .end local v37    # "parent":Ljava/lang/String;
    .end local v38    # "parentRegion":Landroid/icu/util/Region;
    :cond_19
    const/16 v27, 0x0

    #@4f1
    :goto_d
    invoke-static {}, Landroid/icu/util/Region$RegionType;->values()[Landroid/icu/util/Region$RegionType;

    #@4f4
    move-result-object v56

    #@4f5
    move-object/from16 v0, v56

    #@4f7
    array-length v0, v0

    #@4f8
    move/from16 v56, v0

    #@4fa
    move/from16 v0, v27

    #@4fc
    move/from16 v1, v56

    #@4fe
    if-ge v0, v1, :cond_1a

    #@500
    .line 341
    sget-object v56, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    #@502
    new-instance v58, Ljava/util/TreeSet;

    #@504
    invoke-direct/range {v58 .. v58}, Ljava/util/TreeSet;-><init>()V

    #@507
    move-object/from16 v0, v56

    #@509
    move-object/from16 v1, v58

    #@50b
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@50e
    .line 340
    add-int/lit8 v27, v27, 0x1

    #@510
    goto :goto_d

    #@511
    .line 344
    :cond_1a
    sget-object v56, Landroid/icu/util/Region;->regions:Ljava/util/ArrayList;

    #@513
    invoke-interface/range {v56 .. v56}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@516
    move-result-object v8

    #@517
    .local v8, "ar$iterator":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@51a
    move-result v56

    #@51b
    if-eqz v56, :cond_1b

    #@51d
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@520
    move-result-object v7

    #@521
    check-cast v7, Landroid/icu/util/Region;

    #@523
    .line 345
    .local v7, "ar":Landroid/icu/util/Region;
    sget-object v56, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    #@525
    iget-object v0, v7, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@527
    move-object/from16 v58, v0

    #@529
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Enum;->ordinal()I

    #@52c
    move-result v58

    #@52d
    move-object/from16 v0, v56

    #@52f
    move/from16 v1, v58

    #@531
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@534
    move-result-object v20

    #@535
    check-cast v20, Ljava/util/Set;

    #@537
    .line 346
    .local v20, "currentSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/Region;>;"
    move-object/from16 v0, v20

    #@539
    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@53c
    .line 347
    sget-object v56, Landroid/icu/util/Region;->availableRegions:Ljava/util/ArrayList;

    #@53e
    iget-object v0, v7, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@540
    move-object/from16 v58, v0

    #@542
    invoke-virtual/range {v58 .. v58}, Ljava/lang/Enum;->ordinal()I

    #@545
    move-result v58

    #@546
    move-object/from16 v0, v56

    #@548
    move/from16 v1, v58

    #@54a
    move-object/from16 v2, v20

    #@54c
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    #@54f
    goto :goto_e

    #@550
    .line 350
    .end local v7    # "ar":Landroid/icu/util/Region;
    .end local v20    # "currentSet":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/Region;>;"
    :cond_1b
    const/16 v56, 0x1

    #@552
    sput-boolean v56, Landroid/icu/util/Region;->regionDataIsLoaded:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@554
    monitor-exit v57

    #@555
    .line 135
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/icu/util/Region;)I
    .locals 2
    .param p1, "other"    # Landroid/icu/util/Region;

    #@0
    .prologue
    .line 577
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
    .line 576
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
    .line 529
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@4
    .line 531
    iget-object v2, p0, Landroid/icu/util/Region;->containedRegions:Ljava/util/Set;

    #@6
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 532
    return v3

    #@d
    .line 534
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
    .line 535
    .local v0, "cr":Landroid/icu/util/Region;
    invoke-virtual {v0, p1}, Landroid/icu/util/Region;->contains(Landroid/icu/util/Region;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 536
    return v3

    #@26
    .line 541
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
    .line 478
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@3
    .line 479
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
    .line 493
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@3
    .line 495
    new-instance v3, Ljava/util/TreeSet;

    #@5
    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    #@8
    .line 496
    .local v3, "result":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/Region;>;"
    invoke-virtual {p0}, Landroid/icu/util/Region;->getContainedRegions()Ljava/util/Set;

    #@b
    move-result-object v0

    #@c
    .line 498
    .local v0, "cr":Ljava/util/Set;, "Ljava/util/Set<Landroid/icu/util/Region;>;"
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
    .line 499
    .local v1, "r":Landroid/icu/util/Region;
    invoke-virtual {v1}, Landroid/icu/util/Region;->getType()Landroid/icu/util/Region$RegionType;

    #@1f
    move-result-object v4

    #@20
    if-ne v4, p1, :cond_0

    #@22
    .line 500
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@25
    goto :goto_0

    #@26
    .line 502
    :cond_0
    invoke-virtual {v1, p1}, Landroid/icu/util/Region;->getContainedRegions(Landroid/icu/util/Region$RegionType;)Ljava/util/Set;

    #@29
    move-result-object v4

    #@2a
    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@2d
    goto :goto_0

    #@2e
    .line 505
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
    .line 443
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@3
    .line 444
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
    .line 455
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@4
    .line 456
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    #@6
    if-nez v0, :cond_0

    #@8
    .line 457
    return-object v1

    #@9
    .line 459
    :cond_0
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    #@b
    iget-object v0, v0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@d
    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 460
    iget-object v0, p0, Landroid/icu/util/Region;->containingRegion:Landroid/icu/util/Region;

    #@15
    return-object v0

    #@16
    .line 462
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
    .line 561
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
    .line 515
    invoke-static {}, Landroid/icu/util/Region;->loadRegionData()V

    #@3
    .line 517
    iget-object v0, p0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@5
    sget-object v1, Landroid/icu/util/Region$RegionType;->DEPRECATED:Landroid/icu/util/Region$RegionType;

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 518
    iget-object v0, p0, Landroid/icu/util/Region;->preferredValues:Ljava/util/List;

    #@b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    #@e
    move-result-object v0

    #@f
    return-object v0

    #@10
    .line 520
    :cond_0
    const/4 v0, 0x0

    #@11
    return-object v0
.end method

.method public getType()Landroid/icu/util/Region$RegionType;
    .locals 1

    #@0
    .prologue
    .line 570
    iget-object v0, p0, Landroid/icu/util/Region;->type:Landroid/icu/util/Region$RegionType;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 550
    iget-object v0, p0, Landroid/icu/util/Region;->id:Ljava/lang/String;

    #@2
    return-object v0
.end method
