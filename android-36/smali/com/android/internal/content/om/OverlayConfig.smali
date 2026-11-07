.class public Lcom/android/internal/content/om/OverlayConfig;
.super Ljava/lang/Object;
.source "OverlayConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/content/om/OverlayConfig$PackageProvider;,
        Lcom/android/internal/content/om/OverlayConfig$Configuration;,
        Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_PRIORITY:I = 0x7fffffff

.field public static final blacklist PARTITION_ORDER_FILE_PATH:Ljava/lang/String; = "/product/overlay/partition_order.xml"

.field static final blacklist TAG:Ljava/lang/String; = "OverlayConfig"

.field private static blacklist sInstance:Lcom/android/internal/content/om/OverlayConfig;

.field private static final blacklist sStaticOverlayComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConfigurations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayConfig$Configuration;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsDefaultPartitionOrder:Z

.field private final blacklist mPartitionOrder:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 116
    new-instance v0, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/android/internal/content/om/OverlayConfig;->sStaticOverlayComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/io/File;Ljava/util/function/Supplier;Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)V
    .registers 28
    .param p1, "rootDirectory"    # Ljava/io/File;
    .param p3, "packageProvider"    # Lcom/android/internal/content/om/OverlayConfig$PackageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/internal/content/om/OverlayScanner;",
            ">;",
            "Lcom/android/internal/content/om/OverlayConfig$PackageProvider;",
            ")V"
        }
    .end annotation

    .line 143
    .local p2, "scannerFactory":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Lcom/android/internal/content/om/OverlayScanner;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 131
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, v0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    .line 144
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_14

    move v4, v3

    goto :goto_15

    :cond_14
    move v4, v2

    :goto_15
    if-nez p3, :cond_19

    move v5, v3

    goto :goto_1a

    :cond_19
    move v5, v2

    :goto_1a
    if-eq v4, v5, :cond_1d

    move v2, v3

    :cond_1d
    const-string/jumbo v4, "scannerFactory and packageProvider cannot be both null or both non-null"

    invoke-static {v2, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 148
    if-nez v1, :cond_34

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda2;-><init>()V

    .line 150
    invoke-static {v4}, Landroid/content/pm/PackagePartitions;->getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v2, "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    goto :goto_42

    .line 153
    .end local v2    # "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    :cond_34
    new-instance v2, Ljava/util/ArrayList;

    new-instance v4, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda3;

    invoke-direct {v4, v1}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda3;-><init>(Ljava/io/File;)V

    invoke-static {v4}, Landroid/content/pm/PackagePartitions;->getOrderedPartitions(Ljava/util/function/Function;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 158
    .restart local v2    # "partitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    :goto_42
    const-string v4, "/product/overlay/partition_order.xml"

    invoke-static {v4, v2}, Lcom/android/internal/content/om/OverlayConfig;->sortPartitions(Ljava/lang/String;Ljava/util/List;)Z

    move-result v4

    xor-int/2addr v4, v3

    iput-boolean v4, v0, Lcom/android/internal/content/om/OverlayConfig;->mIsDefaultPartitionOrder:Z

    .line 159
    invoke-static {v2}, Lcom/android/internal/content/om/OverlayConfig;->generatePartitionOrderString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/android/internal/content/om/OverlayConfig;->mPartitionOrder:Ljava/lang/String;

    .line 161
    invoke-static {v2}, Lcom/android/internal/content/om/OverlayConfig;->getActiveApexes(Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v4

    .line 164
    .local v4, "activeApexesPerPartition":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    if-nez p3, :cond_59

    const/4 v6, 0x0

    goto :goto_5d

    :cond_59
    invoke-static/range {p3 .. p3}, Lcom/android/internal/content/om/OverlayConfig;->getOverlayPackageInfos(Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)Ljava/util/Map;

    move-result-object v6

    .line 166
    .local v6, "packageManagerOverlayInfos":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    :goto_5d
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 167
    .local v7, "overlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    .local v9, "n":I
    :goto_67
    if-ge v8, v9, :cond_10f

    .line 168
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    .line 169
    .local v10, "partition":Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    if-nez p2, :cond_73

    const/4 v11, 0x0

    goto :goto_79

    :cond_73
    invoke-interface/range {p2 .. p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/content/om/OverlayScanner;

    .line 170
    .local v11, "scanner":Lcom/android/internal/content/om/OverlayScanner;
    :goto_79
    iget v12, v10, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->type:I

    .line 173
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 174
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v13

    .line 173
    invoke-virtual {v4, v12, v13}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 171
    invoke-static {v10, v11, v6, v12}, Lcom/android/internal/content/om/OverlayConfigParser;->getConfigurations(Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;Lcom/android/internal/content/om/OverlayScanner;Ljava/util/Map;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v12

    .line 175
    .local v12, "partitionOverlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;>;"
    if-eqz v12, :cond_94

    .line 176
    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 177
    goto/16 :goto_108

    .line 185
    :cond_94
    if-eqz p2, :cond_a0

    .line 186
    new-instance v13, Ljava/util/ArrayList;

    invoke-virtual {v11}, Lcom/android/internal/content/om/OverlayScanner;->getAllParsedInfos()Ljava/util/Collection;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .local v13, "partitionOverlayInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    goto :goto_c6

    .line 189
    .end local v13    # "partitionOverlayInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    :cond_a0
    new-instance v13, Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 190
    .restart local v13    # "partitionOverlayInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v3

    .local v14, "j":I
    :goto_ae
    if-ltz v14, :cond_c6

    .line 191
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    .line 192
    invoke-virtual {v15}, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->getOriginalPartitionPath()Ljava/io/File;

    move-result-object v15

    .line 191
    invoke-virtual {v10, v15}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->containsFile(Ljava/io/File;)Z

    move-result v15

    if-nez v15, :cond_c3

    .line 193
    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 190
    :cond_c3
    add-int/lit8 v14, v14, -0x1

    goto :goto_ae

    .line 199
    .end local v14    # "j":I
    :cond_c6
    :goto_c6
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v14, "partitionConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;>;"
    const/4 v15, 0x0

    .local v15, "j":I
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "m":I
    :goto_d0
    if-ge v15, v3, :cond_100

    .line 201
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v5, v16

    check-cast v5, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    .line 202
    .local v5, "p":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    iget-boolean v1, v5, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->isStatic:Z

    if-eqz v1, :cond_f9

    .line 203
    new-instance v17, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v1, v5, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v1

    iget-object v1, v10, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->policy:Ljava/lang/String;

    const/16 v23, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v21, v1

    move-object/from16 v22, v5

    .end local v5    # "p":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    .local v22, "p":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    invoke-direct/range {v17 .. v23}, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;-><init>(Ljava/lang/String;ZZLjava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfigFile;)V

    move-object/from16 v1, v17

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_fb

    .line 202
    .end local v22    # "p":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    .restart local v5    # "p":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    :cond_f9
    move-object/from16 v22, v5

    .line 200
    .end local v5    # "p":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    :goto_fb
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    goto :goto_d0

    .line 208
    .end local v3    # "m":I
    .end local v15    # "j":I
    :cond_100
    sget-object v1, Lcom/android/internal/content/om/OverlayConfig;->sStaticOverlayComparator:Ljava/util/Comparator;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 209
    invoke-virtual {v7, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 167
    .end local v10    # "partition":Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    .end local v11    # "scanner":Lcom/android/internal/content/om/OverlayScanner;
    .end local v12    # "partitionOverlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;>;"
    .end local v13    # "partitionOverlayInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    .end local v14    # "partitionConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;>;"
    :goto_108
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, p1

    const/4 v3, 0x1

    goto/16 :goto_67

    .line 212
    .end local v8    # "i":I
    .end local v9    # "n":I
    :cond_10f
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_114
    if-ge v1, v3, :cond_12b

    .line 216
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    .line 217
    .local v5, "config":Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
    iget-object v8, v0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    iget-object v9, v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->packageName:Ljava/lang/String;

    new-instance v10, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    invoke-direct {v10, v5, v1}, Lcom/android/internal/content/om/OverlayConfig$Configuration;-><init>(Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;I)V

    invoke-virtual {v8, v9, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .end local v5    # "config":Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
    add-int/lit8 v1, v1, 0x1

    goto :goto_114

    .line 219
    .end local v1    # "i":I
    .end local v3    # "n":I
    :cond_12b
    return-void
.end method

.method private static native blacklist createIdmap(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;
.end method

.method private static blacklist generatePartitionOrderString(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 222
    .local p0, "partitions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    if-eqz p0, :cond_3e

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_3e

    .line 225
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    .local v0, "partitionOrder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    invoke-virtual {v1}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1d
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_39

    .line 228
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    invoke-virtual {v3}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    .line 230
    .end local v1    # "i":I
    :cond_39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 223
    .end local v0    # "partitionOrder":Ljava/lang/StringBuilder;
    :cond_3e
    :goto_3e
    const-string v0, ""

    return-object v0
.end method

.method private static blacklist getActiveApexes(Ljava/util/List;)Landroid/util/ArrayMap;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;",
            ">;)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 441
    .local p0, "partitions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 442
    .local v0, "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    .line 443
    .local v2, "partition":Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    iget v3, v2, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->type:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .end local v2    # "partition":Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    goto :goto_9

    .line 446
    :cond_24
    new-instance v1, Ljava/io/File;

    const-string v2, "/apex/apex-info-list.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    .local v1, "apexInfoList":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_b1

    .line 448
    :try_start_37
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3c} :catch_98

    .line 449
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_3c
    invoke-static {v2}, Lcom/android/apex/XmlParser;->readApexInfoList(Ljava/io/InputStream;)Lcom/android/apex/ApexInfoList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/apex/ApexInfoList;->getApexInfo()Ljava/util/List;

    move-result-object v3

    .line 450
    .local v3, "apexInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/apex/ApexInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_48
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/apex/ApexInfo;

    .line 451
    .local v5, "info":Lcom/android/apex/ApexInfo;
    invoke-virtual {v5}, Lcom/android/apex/ApexInfo;->getIsActive()Z

    move-result v6

    if-eqz v6, :cond_89

    .line 452
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_89

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    .line 453
    .local v7, "partition":Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    invoke-virtual {v5}, Lcom/android/apex/ApexInfo;->getPreinstalledModulePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->containsPath(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_88

    .line 454
    iget v6, v7, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-virtual {v5}, Lcom/android/apex/ApexInfo;->getModuleName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_87
    .catchall {:try_start_3c .. :try_end_87} :catchall_8e

    .line 455
    goto :goto_89

    .line 457
    .end local v7    # "partition":Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    :cond_88
    goto :goto_5e

    .line 459
    .end local v5    # "info":Lcom/android/apex/ApexInfo;
    :cond_89
    :goto_89
    goto :goto_48

    .line 460
    .end local v3    # "apexInfos":Ljava/util/List;, "Ljava/util/List<Lcom/android/apex/ApexInfo;>;"
    :cond_8a
    :try_start_8a
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_8d} :catch_98

    .line 462
    .end local v2    # "stream":Ljava/io/FileInputStream;
    goto :goto_b1

    .line 448
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_8e
    move-exception v3

    :try_start_8f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_93

    goto :goto_97

    :catchall_93
    move-exception v4

    :try_start_94
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v1    # "apexInfoList":Ljava/io/File;
    .end local p0    # "partitions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    :goto_97
    throw v3
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_94 .. :try_end_98} :catch_98

    .line 460
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .restart local v0    # "result":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/util/List<Ljava/lang/String;>;>;"
    .restart local v1    # "apexInfoList":Ljava/io/File;
    .restart local p0    # "partitions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    :catch_98
    move-exception v2

    .line 461
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error reading apex-info-list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OverlayConfig"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_b1
    :goto_b1
    return-object v0
.end method

.method private static blacklist getOverlayPackageInfos(Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)Ljava/util/Map;
    .registers 3
    .param p0, "packageManager"    # Lcom/android/internal/content/om/OverlayConfig$PackageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/content/om/OverlayConfig$PackageProvider;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;",
            ">;"
        }
    .end annotation

    .line 422
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 423
    .local v0, "overlays":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;>;"
    new-instance v1, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda6;-><init>(Ljava/util/HashMap;)V

    invoke-interface {p0, v1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider;->forEachPackage(Lcom/android/internal/util/function/TriConsumer;)V

    .line 432
    return-object v0
.end method

.method private blacklist getSortedOverlays()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/om/OverlayConfig$Configuration;",
            ">;"
        }
    .end annotation

    .line 411
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v0, "sortedOverlays":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfig$Configuration;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "n":I
    :goto_c
    if-ge v1, v2, :cond_1c

    .line 413
    iget-object v3, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 415
    .end local v1    # "i":I
    .end local v2    # "n":I
    :cond_1c
    new-instance v1, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 416
    return-object v0
.end method

.method public static blacklist getSystemInstance()Lcom/android/internal/content/om/OverlayConfig;
    .registers 2

    .line 349
    sget-object v0, Lcom/android/internal/content/om/OverlayConfig;->sInstance:Lcom/android/internal/content/om/OverlayConfig;

    if-eqz v0, :cond_7

    .line 353
    sget-object v0, Lcom/android/internal/content/om/OverlayConfig;->sInstance:Lcom/android/internal/content/om/OverlayConfig;

    return-object v0

    .line 350
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "System instance not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getZygoteInstance()Lcom/android/internal/content/om/OverlayConfig;
    .registers 5

    .line 318
    const-string v0, "OverlayConfig#getZygoteInstance"

    const-wide/32 v1, 0x4000000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 320
    :try_start_8
    new-instance v0, Lcom/android/internal/content/om/OverlayConfig;

    new-instance v3, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda7;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v0, v4, v3, v4}, Lcom/android/internal/content/om/OverlayConfig;-><init>(Ljava/io/File;Ljava/util/function/Supplier;Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)V
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_17

    .line 323
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 320
    return-object v0

    .line 323
    :catchall_17
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 324
    throw v0
.end method

.method public static blacklist initializeSystemInstance(Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)Lcom/android/internal/content/om/OverlayConfig;
    .registers 5
    .param p0, "packageProvider"    # Lcom/android/internal/content/om/OverlayConfig$PackageProvider;

    .line 334
    const-string v0, "OverlayConfig#initializeSystemInstance"

    const-wide/32 v1, 0x4000000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 336
    :try_start_8
    new-instance v0, Lcom/android/internal/content/om/OverlayConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, p0}, Lcom/android/internal/content/om/OverlayConfig;-><init>(Ljava/io/File;Ljava/util/function/Supplier;Lcom/android/internal/content/om/OverlayConfig$PackageProvider;)V

    sput-object v0, Lcom/android/internal/content/om/OverlayConfig;->sInstance:Lcom/android/internal/content/om/OverlayConfig;
    :try_end_10
    .catchall {:try_start_8 .. :try_end_10} :catchall_17

    .line 338
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 339
    nop

    .line 340
    sget-object v0, Lcom/android/internal/content/om/OverlayConfig;->sInstance:Lcom/android/internal/content/om/OverlayConfig;

    return-object v0

    .line 338
    :catchall_17
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 339
    throw v0
.end method

.method static synthetic blacklist lambda$dump$5(Lcom/android/internal/content/om/OverlayConfig$Configuration;)I
    .registers 2
    .param p0, "o"    # Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 569
    iget v0, p0, Lcom/android/internal/content/om/OverlayConfig$Configuration;->configIndex:I

    return v0
.end method

.method static synthetic blacklist lambda$getOverlayPackageInfos$4(Ljava/util/HashMap;Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;Ljava/lang/Boolean;Ljava/io/File;)V
    .registers 13
    .param p0, "overlays"    # Ljava/util/HashMap;
    .param p1, "p"    # Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;
    .param p2, "isSystem"    # Ljava/lang/Boolean;
    .param p3, "preInstalledApexPath"    # Ljava/io/File;

    .line 425
    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getOverlayTarget()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 426
    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getOverlayTarget()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getTargetSdkVersion()I

    move-result v4

    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->isOverlayIsStatic()Z

    move-result v5

    .line 428
    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getOverlayPriority()I

    move-result v6

    new-instance v7, Ljava/io/File;

    invoke-interface {p1}, Lcom/android/internal/content/om/OverlayConfig$PackageProvider$Package;->getBaseApkPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, p3

    .end local p3    # "preInstalledApexPath":Ljava/io/File;
    .local v8, "preInstalledApexPath":Ljava/io/File;
    invoke-direct/range {v1 .. v8}, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;IZILjava/io/File;Ljava/io/File;)V

    .line 426
    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_38

    .line 425
    .end local v8    # "preInstalledApexPath":Ljava/io/File;
    .restart local p3    # "preInstalledApexPath":Ljava/io/File;
    :cond_37
    move-object v8, p3

    .line 431
    .end local p3    # "preInstalledApexPath":Ljava/io/File;
    .restart local v8    # "preInstalledApexPath":Ljava/io/File;
    :goto_38
    return-void
.end method

.method static synthetic blacklist lambda$getSortedOverlays$3(Lcom/android/internal/content/om/OverlayConfig$Configuration;)I
    .registers 2
    .param p0, "o"    # Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 415
    iget v0, p0, Lcom/android/internal/content/om/OverlayConfig$Configuration;->configIndex:I

    return v0
.end method

.method static synthetic blacklist lambda$new$1(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;
    .registers 5
    .param p0, "rootDirectory"    # Ljava/io/File;
    .param p1, "p"    # Landroid/content/pm/PackagePartitions$SystemPartition;

    .line 154
    new-instance v0, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    new-instance v1, Ljava/io/File;

    .line 155
    invoke-virtual {p1}, Landroid/content/pm/PackagePartitions$SystemPartition;->getNonConicalFolder()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1, p1}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;-><init>(Ljava/io/File;Landroid/content/pm/PackagePartitions$SystemPartition;)V

    .line 154
    return-object v0
.end method

.method static synthetic blacklist lambda$sortPartitions$2(Ljava/util/Map;Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;)I
    .registers 3
    .param p0, "orderMap"    # Ljava/util/Map;
    .param p1, "o"    # Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    .line 305
    invoke-virtual {p1}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$static$0(Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;)I
    .registers 7
    .param p0, "c1"    # Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;
    .param p1, "c2"    # Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    .line 117
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    .line 118
    .local v0, "o1":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    iget-object v1, p1, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    .line 119
    .local v1, "o2":Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;
    iget-boolean v2, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->isStatic:Z

    if-eqz v2, :cond_e

    iget-boolean v2, v1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->isStatic:Z

    if-eqz v2, :cond_e

    const/4 v2, 0x1

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    const-string v3, "attempted to sort non-static overlay"

    invoke-static {v2, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 122
    iget-object v2, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    .line 123
    iget-object v2, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2

    .line 126
    :cond_27
    iget v2, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->priority:I

    iget v3, v1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->priority:I

    sub-int/2addr v2, v3

    .line 127
    .local v2, "comparedPriority":I
    if-nez v2, :cond_37

    iget-object v3, v0, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    iget-object v4, v1, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->compareTo(Ljava/io/File;)I

    move-result v3

    goto :goto_38

    :cond_37
    move v3, v2

    :goto_38
    return v3
.end method

.method private static blacklist parseAndValidatePartitionsOrderXml(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Z
    .registers 20
    .param p0, "partitionOrderFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;",
            ">;)Z"
        }
    .end annotation

    .line 236
    .local p1, "orderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p2, "partitions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "OverlayConfig"

    const/4 v4, 0x0

    :try_start_7
    new-instance v0, Ljava/io/File;
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_9} :catch_113
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_9} :catch_113
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_9} :catch_113

    move-object/from16 v5, p0

    :try_start_b
    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1a

    .line 238
    const-string v6, "partition_order.xml does not exist."

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v4

    .line 241
    :cond_1a
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v6

    .line 242
    .local v6, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v6}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v7

    .line 243
    .local v7, "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v7, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v8

    .line 244
    .local v8, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Element;->normalize()V

    .line 246
    invoke-interface {v8}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v9

    .line 247
    .local v9, "root":Lorg/w3c/dom/Element;
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "partition-order"

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_43

    .line 248
    const-string v10, "Invalid partition_order.xml, xml root element is not partition-order"

    invoke-static {v3, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return v4

    .line 253
    :cond_43
    const-string v10, "partition"

    invoke-interface {v8, v10}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 254
    .local v10, "partitionList":Lorg/w3c/dom/NodeList;
    const/4 v11, 0x0

    .local v11, "order":I
    :goto_4a
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    const/4 v13, 0x1

    if-ge v11, v12, :cond_94

    .line 255
    invoke-interface {v10, v11}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    .line 256
    .local v12, "partitionNode":Lorg/w3c/dom/Node;
    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v14

    if-ne v14, v13, :cond_8d

    .line 257
    move-object v13, v12

    check-cast v13, Lorg/w3c/dom/Element;

    .line 258
    .local v13, "partitionElement":Lorg/w3c/dom/Element;
    const-string v14, "name"

    invoke-interface {v13, v14}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 259
    .local v14, "partitionName":Ljava/lang/String;
    invoke-interface {v1, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_83

    .line 260
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_6f
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_b .. :try_end_6f} :catch_111
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_6f} :catch_111
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_6f} :catch_111

    move/from16 v16, v4

    :try_start_71
    const-string v4, "Invalid partition_order.xml, it has duplicate partition: "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return v16

    .line 264
    :cond_83
    move/from16 v16, v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v14, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8f

    .line 256
    .end local v13    # "partitionElement":Lorg/w3c/dom/Element;
    .end local v14    # "partitionName":Ljava/lang/String;
    :cond_8d
    move/from16 v16, v4

    .line 254
    .end local v12    # "partitionNode":Lorg/w3c/dom/Node;
    :goto_8f
    add-int/lit8 v11, v11, 0x1

    move/from16 v4, v16

    goto :goto_4a

    :cond_94
    move/from16 v16, v4

    .line 268
    .end local v11    # "order":I
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-eq v4, v11, :cond_c9

    .line 269
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid partition_order.xml, partition_order.xml has "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 270
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v11

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v11, " partitions, which is different from SYSTEM_PARTITIONS"

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 269
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return v16

    .line 274
    :cond_c9
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_ca
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    if-ge v4, v11, :cond_108

    .line 275
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    invoke-virtual {v12}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_105

    .line 276
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid Parsing partition_order.xml, partition_order.xml does not have partition: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 278
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;

    invoke-virtual {v12}, Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 276
    invoke-static {v3, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_104
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_71 .. :try_end_104} :catch_10f
    .catch Lorg/xml/sax/SAXException; {:try_start_71 .. :try_end_104} :catch_10f
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_104} :catch_10f

    .line 279
    return v16

    .line 274
    :cond_105
    add-int/lit8 v4, v4, 0x1

    goto :goto_ca

    .line 286
    .end local v0    # "file":Ljava/io/File;
    .end local v4    # "i":I
    .end local v6    # "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v7    # "dBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "doc":Lorg/w3c/dom/Document;
    .end local v9    # "root":Lorg/w3c/dom/Element;
    .end local v10    # "partitionList":Lorg/w3c/dom/NodeList;
    :cond_108
    nop

    .line 287
    const-string v0, "Sorting partitions in the specified order from partitions_order.xml"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return v13

    .line 282
    :catch_10f
    move-exception v0

    goto :goto_118

    :catch_111
    move-exception v0

    goto :goto_116

    :catch_113
    move-exception v0

    move-object/from16 v5, p0

    :goto_116
    move/from16 v16, v4

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    :goto_118
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Parsing or validating partition_order.xml failed, exception thrown: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 284
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return v16
.end method

.method public static blacklist sortPartitions(Ljava/lang/String;Ljava/util/List;)Z
    .registers 5
    .param p0, "partitionOrderFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;",
            ">;)Z"
        }
    .end annotation

    .line 299
    .local p1, "partitions":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 300
    .local v0, "orderMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-static {p0, v0, p1}, Lcom/android/internal/content/om/OverlayConfig;->parseAndValidatePartitionsOrderXml(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 301
    const/4 v1, 0x0

    return v1

    .line 304
    :cond_d
    new-instance v1, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda0;-><init>(Ljava/util/Map;)V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    .line 306
    .local v1, "partitionComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Lcom/android/internal/content/om/OverlayConfigParser$OverlayPartition;>;"
    invoke-static {p1, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 308
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public blacklist createImmutableFrameworkIdmapsInZygote()[Ljava/lang/String;
    .registers 11

    .line 537
    sget-object v0, Landroid/content/res/AssetManager;->FRAMEWORK_APK_PATH:Ljava/lang/String;

    .line 538
    .local v0, "targetPath":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v1, "idmapPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    .line 540
    invoke-virtual {p0}, Lcom/android/internal/content/om/OverlayConfig;->getImmutableFrameworkOverlayIdmapInvocations()Ljava/util/ArrayList;

    move-result-object v2

    .line 542
    .local v2, "idmapInvocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    .local v4, "n":I
    :goto_11
    const/4 v5, 0x0

    if-ge v3, v4, :cond_48

    .line 543
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;

    .line 544
    .local v6, "invocation":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    iget-object v7, v6, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->overlayPaths:Ljava/util/ArrayList;

    new-array v8, v5, [Ljava/lang/String;

    .line 545
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    const-string v8, "public"

    iget-object v9, v6, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->policy:Ljava/lang/String;

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, v6, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->enforceOverlayable:Z

    .line 544
    invoke-static {v0, v7, v8, v9}, Lcom/android/internal/content/om/OverlayConfig;->createIdmap(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v7

    .line 550
    .local v7, "idmaps":[Ljava/lang/String;
    if-nez v7, :cond_3e

    .line 551
    const-string v8, "OverlayConfig"

    const-string v9, "\'idmap2 create-multiple\' failed: no mutable=\"false\" overlays targeting \"android\" will be loaded"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-array v5, v5, [Ljava/lang/String;

    return-object v5

    .line 556
    :cond_3e
    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 542
    .end local v6    # "invocation":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    .end local v7    # "idmaps":[Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 559
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_48
    new-array v3, v5, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 564
    new-instance v0, Landroid/util/IndentingPrintWriter;

    invoke-direct {v0, p1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 565
    .local v0, "ipw":Landroid/util/IndentingPrintWriter;
    const-string v1, "Overlay configurations:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 566
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 568
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 569
    .local v1, "configurations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfig$Configuration;>;"
    new-instance v2, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/internal/content/om/OverlayConfig$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 570
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 571
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 572
    .local v3, "configuration":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    iget v4, v3, Lcom/android/internal/content/om/OverlayConfig$Configuration;->configIndex:I

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 573
    const-string v4, ", "

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 574
    iget-object v4, v3, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    invoke-virtual {v0, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 575
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 570
    .end local v3    # "configuration":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 577
    .end local v2    # "i":I
    :cond_46
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 578
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->println()V

    .line 579
    return-void
.end method

.method public blacklist getConfiguration(Ljava/lang/String;)Lcom/android/internal/content/om/OverlayConfig$Configuration;
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 359
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    return-object v0
.end method

.method public blacklist getImmutableFrameworkOverlayIdmapInvocations()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;",
            ">;"
        }
    .end annotation

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v0, "idmapInvocations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;>;"
    invoke-direct {p0}, Lcom/android/internal/content/om/OverlayConfig;->getSortedOverlays()Ljava/util/ArrayList;

    move-result-object v1

    .line 495
    .local v1, "sortedConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/content/om/OverlayConfig$Configuration;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "n":I
    :goto_e
    if-ge v2, v3, :cond_83

    .line 496
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 497
    .local v4, "overlay":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    iget-object v5, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-boolean v5, v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->mutable:Z

    if-nez v5, :cond_80

    iget-object v5, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-boolean v5, v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->enabled:Z

    if-eqz v5, :cond_80

    iget-object v5, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v5, v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    iget-object v5, v5, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetPackageName:Ljava/lang/String;

    .line 498
    const-string v6, "android"

    invoke-virtual {v6, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_31

    .line 499
    goto :goto_80

    .line 505
    :cond_31
    iget-object v5, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v5, v5, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    iget v5, v5, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->targetSdkVersion:I

    const/16 v6, 0x1d

    const/4 v7, 0x1

    if-lt v5, v6, :cond_3e

    move v5, v7

    goto :goto_3f

    :cond_3e
    const/4 v5, 0x0

    .line 510
    .local v5, "enforceOverlayable":Z
    :goto_3f
    const/4 v6, 0x0

    .line 511
    .local v6, "invocation":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_62

    .line 512
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;

    .line 513
    .local v7, "last":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    iget-boolean v8, v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->enforceOverlayable:Z

    if-ne v8, v5, :cond_62

    iget-object v8, v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->policy:Ljava/lang/String;

    iget-object v9, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v9, v9, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->policy:Ljava/lang/String;

    .line 514
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 515
    move-object v6, v7

    .line 519
    .end local v7    # "last":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    :cond_62
    if-nez v6, :cond_71

    .line 520
    new-instance v7, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;

    iget-object v8, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v8, v8, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->policy:Ljava/lang/String;

    invoke-direct {v7, v5, v8}, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;-><init>(ZLjava/lang/String;)V

    move-object v6, v7

    .line 521
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 524
    :cond_71
    iget-object v7, v6, Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;->overlayPaths:Ljava/util/ArrayList;

    iget-object v8, v4, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-object v8, v8, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->parsedInfo:Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;

    iget-object v8, v8, Lcom/android/internal/content/om/OverlayScanner$ParsedOverlayInfo;->path:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    .end local v4    # "overlay":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    .end local v5    # "enforceOverlayable":Z
    .end local v6    # "invocation":Lcom/android/internal/content/om/OverlayConfig$IdmapInvocation;
    :cond_80
    :goto_80
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 526
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_83
    return-object v0
.end method

.method public blacklist getPartitionOrder()Ljava/lang/String;
    .registers 2

    .line 601
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mPartitionOrder:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPriority(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 405
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 406
    .local v0, "config":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    if-nez v0, :cond_e

    const v1, 0x7fffffff

    goto :goto_10

    :cond_e
    iget v1, v0, Lcom/android/internal/content/om/OverlayConfig$Configuration;->configIndex:I

    :goto_10
    return v1
.end method

.method public blacklist isDefaultPartitionOrder()Z
    .registers 2

    .line 594
    iget-boolean v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mIsDefaultPartitionOrder:Z

    return v0
.end method

.method public blacklist isEnabled(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 383
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 384
    .local v0, "config":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    .line 385
    :cond_c
    iget-object v1, v0, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-boolean v1, v1, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->enabled:Z

    .line 384
    :goto_10
    return v1
.end method

.method public blacklist isMutable(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 393
    iget-object v0, p0, Lcom/android/internal/content/om/OverlayConfig;->mConfigurations:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/content/om/OverlayConfig$Configuration;

    .line 394
    .local v0, "config":Lcom/android/internal/content/om/OverlayConfig$Configuration;
    if-nez v0, :cond_c

    const/4 v1, 0x1

    goto :goto_10

    .line 395
    :cond_c
    iget-object v1, v0, Lcom/android/internal/content/om/OverlayConfig$Configuration;->parsedConfig:Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;

    iget-boolean v1, v1, Lcom/android/internal/content/om/OverlayConfigParser$ParsedConfiguration;->mutable:Z

    .line 394
    :goto_10
    return v1
.end method
