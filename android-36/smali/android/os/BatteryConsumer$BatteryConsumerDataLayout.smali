.class Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;
.super Ljava/lang/Object;
.source "BatteryConsumer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BatteryConsumer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BatteryConsumerDataLayout"
.end annotation


# static fields
.field private static final blacklist KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;


# instance fields
.field public final blacklist columnCount:I

.field public final blacklist customPowerComponentCount:I

.field public final blacklist customPowerComponentNames:[Ljava/lang/String;

.field public final blacklist indexedKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/BatteryConsumer$Key;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist keys:[Landroid/os/BatteryConsumer$Key;

.field private blacklist mPerComponentKeys:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/os/BatteryConsumer$Key;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist powerComponentIds:[I

.field public final blacklist powerStateDataIncluded:Z

.field public final blacklist processStateDataIncluded:Z

.field public final blacklist screenStateDataIncluded:Z

.field public final blacklist totalConsumedPowerColumnIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 854
    const/4 v0, 0x0

    new-array v0, v0, [Landroid/os/BatteryConsumer$Key;

    sput-object v0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;

    return-void
.end method

.method private constructor blacklist <init>(I[Ljava/lang/String;ZZZ)V
    .registers 20
    .param p1, "firstColumn"    # I
    .param p2, "customPowerComponentNames"    # [Ljava/lang/String;
    .param p3, "includeProcessStateData"    # Z
    .param p4, "includeScreenState"    # Z
    .param p5, "includePowerState"    # Z

    .line 869
    move-object/from16 v0, p2

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    iput-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentNames:[Ljava/lang/String;

    .line 871
    array-length v3, v0

    iput v3, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    .line 872
    move/from16 v6, p3

    iput-boolean v6, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->processStateDataIncluded:Z

    .line 873
    iput-boolean v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->screenStateDataIncluded:Z

    .line 874
    iput-boolean v2, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerStateDataIncluded:Z

    .line 876
    iget v3, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    const/16 v4, 0x13

    add-int/2addr v3, v4

    new-array v3, v3, [I

    iput-object v3, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    .line 877
    const/4 v3, 0x0

    .line 878
    .local v3, "id":I
    const/4 v5, 0x0

    .local v5, "componentId":I
    :goto_21
    if-ge v5, v4, :cond_2d

    .line 879
    iget-object v7, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    add-int/lit8 v8, v3, 0x1

    .end local v3    # "id":I
    .local v8, "id":I
    aput v5, v7, v3

    .line 878
    add-int/lit8 v5, v5, 0x1

    move v3, v8

    goto :goto_21

    .line 881
    .end local v5    # "componentId":I
    .end local v8    # "id":I
    .restart local v3    # "id":I
    :cond_2d
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2e
    iget v5, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    if-ge v4, v5, :cond_3e

    .line 882
    iget-object v5, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    add-int/lit8 v7, v3, 0x1

    .end local v3    # "id":I
    .local v7, "id":I
    add-int/lit16 v8, v4, 0x3e8

    aput v8, v5, v3

    .line 881
    add-int/lit8 v4, v4, 0x1

    move v3, v7

    goto :goto_2e

    .line 885
    .end local v4    # "i":I
    .end local v7    # "id":I
    .restart local v3    # "id":I
    :cond_3e
    move v4, p1

    .line 887
    .local v4, "columnIndex":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "columnIndex":I
    .local v5, "columnIndex":I
    iput v4, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->totalConsumedPowerColumnIndex:I

    .line 889
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 890
    .local v4, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    const/4 v7, 0x0

    move v8, v7

    .local v8, "screenState":I
    :goto_4a
    const/4 v11, 0x3

    if-ge v8, v11, :cond_85

    .line 891
    if-nez v1, :cond_53

    if-eqz v8, :cond_53

    .line 892
    move-object v6, v4

    goto :goto_7f

    .line 894
    :cond_53
    const/4 v7, 0x0

    move v9, v7

    .local v9, "powerState":I
    :goto_55
    if-ge v9, v11, :cond_7e

    .line 895
    if-nez v2, :cond_5d

    if-eqz v9, :cond_5d

    .line 896
    move-object v6, v4

    goto :goto_78

    .line 898
    :cond_5d
    const/4 v7, 0x0

    move v10, v5

    move v12, v7

    .end local v5    # "columnIndex":I
    .local v10, "columnIndex":I
    .local v12, "i":I
    :goto_60
    iget-object v5, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    array-length v5, v5

    if-ge v12, v5, :cond_76

    .line 899
    iget-object v5, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    aget v7, v5, v12

    move-object v5, v4

    move-object v4, p0

    .end local v4    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    .local v5, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    invoke-direct/range {v4 .. v10}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->addKeys(Ljava/util/List;ZIIII)I

    move-result v10

    .line 898
    move-object v6, v5

    .end local v5    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    .local v6, "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    add-int/lit8 v12, v12, 0x1

    move-object v4, v6

    move/from16 v6, p3

    goto :goto_60

    .end local v6    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    .restart local v4    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    :cond_76
    move-object v6, v4

    .end local v4    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    .restart local v6    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    move v5, v10

    .line 894
    .end local v10    # "columnIndex":I
    .end local v12    # "i":I
    .local v5, "columnIndex":I
    :goto_78
    add-int/lit8 v9, v9, 0x1

    move-object v4, v6

    move/from16 v6, p3

    goto :goto_55

    .end local v6    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    .restart local v4    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    :cond_7e
    move-object v6, v4

    .line 890
    .end local v4    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    .end local v9    # "powerState":I
    .restart local v6    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    :goto_7f
    add-int/lit8 v8, v8, 0x1

    move-object v4, v6

    move/from16 v6, p3

    goto :goto_4a

    .end local v6    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    .restart local v4    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    :cond_85
    move-object v6, v4

    .line 905
    .end local v4    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    .end local v8    # "screenState":I
    .restart local v6    # "keyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    iput v5, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->columnCount:I

    .line 907
    sget-object v7, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->KEY_ARRAY:[Landroid/os/BatteryConsumer$Key;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/os/BatteryConsumer$Key;

    iput-object v7, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    .line 908
    new-instance v7, Landroid/util/SparseArray;

    iget-object v8, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v8, v8

    invoke-direct {v7, v8}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v7, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->indexedKeys:Landroid/util/SparseArray;

    .line 909
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_9d
    iget-object v8, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v8, v8

    if-ge v7, v8, :cond_ba

    .line 910
    iget-object v8, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    aget-object v8, v8, v7

    .line 911
    .local v8, "key":Landroid/os/BatteryConsumer$Key;
    iget-object v9, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->indexedKeys:Landroid/util/SparseArray;

    iget v10, v8, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    iget v11, v8, Landroid/os/BatteryConsumer$Key;->processState:I

    iget v12, v8, Landroid/os/BatteryConsumer$Key;->screenState:I

    iget v13, v8, Landroid/os/BatteryConsumer$Key;->powerState:I

    invoke-direct {p0, v10, v11, v12, v13}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keyIndex(IIII)I

    move-result v10

    invoke-virtual {v9, v10, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 909
    .end local v8    # "key":Landroid/os/BatteryConsumer$Key;
    add-int/lit8 v7, v7, 0x1

    goto :goto_9d

    .line 914
    .end local v7    # "i":I
    :cond_ba
    return-void
.end method

.method synthetic constructor blacklist <init>(I[Ljava/lang/String;ZZZLandroid/os/BatteryConsumer-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;-><init>(I[Ljava/lang/String;ZZZ)V

    return-void
.end method

.method private blacklist addKeys(Ljava/util/List;ZIIII)I
    .registers 17
    .param p2, "includeProcessStateData"    # Z
    .param p3, "componentId"    # I
    .param p4, "screenState"    # I
    .param p5, "powerState"    # I
    .param p6, "columnIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/BatteryConsumer$Key;",
            ">;ZIIII)I"
        }
    .end annotation

    .line 932
    .local p1, "keys":Ljava/util/List;, "Ljava/util/List<Landroid/os/BatteryConsumer$Key;>;"
    new-instance v0, Landroid/os/BatteryConsumer$Key;

    add-int/lit8 v6, p6, 0x1

    .end local p6    # "columnIndex":I
    .local v6, "columnIndex":I
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "columnIndex":I
    .local v8, "columnIndex":I
    const/4 v7, 0x0

    const/4 v2, 0x0

    move v1, p3

    move v3, p4

    move v4, p5

    move/from16 v5, p6

    .restart local v6    # "columnIndex":I
    .restart local p6    # "columnIndex":I
    invoke-direct/range {v0 .. v7}, Landroid/os/BatteryConsumer$Key;-><init>(IIIIIILandroid/os/BatteryConsumer-IA;)V

    .end local v6    # "columnIndex":I
    .end local p6    # "columnIndex":I
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    if-nez p2, :cond_19

    const/16 v0, 0x12

    if-ne p3, v0, :cond_4c

    .line 939
    :cond_19
    invoke-static {}, Landroid/os/BatteryConsumer;->-$$Nest$sfgetSUPPORTED_POWER_COMPONENTS_PER_PROCESS_STATE()Landroid/util/IntArray;

    move-result-object v0

    .line 940
    invoke-virtual {v0, p3}, Landroid/util/IntArray;->binarySearch(I)I

    move-result v0

    if-gez v0, :cond_2a

    const/16 v0, 0x3e8

    if-lt p3, v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 v0, 0x0

    goto :goto_2b

    :cond_2a
    :goto_2a
    const/4 v0, 0x1

    :goto_2b
    move v9, v0

    .line 942
    .local v9, "isSupported":Z
    if-eqz v9, :cond_4c

    .line 943
    const/4 v0, 0x0

    move v2, v0

    move v5, v8

    .end local v8    # "columnIndex":I
    .local v2, "processState":I
    .local v5, "columnIndex":I
    :goto_31
    const/4 v0, 0x5

    if-ge v2, v0, :cond_4b

    .line 944
    if-nez v2, :cond_37

    .line 945
    goto :goto_48

    .line 947
    :cond_37
    new-instance v0, Landroid/os/BatteryConsumer$Key;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "columnIndex":I
    .restart local v6    # "columnIndex":I
    add-int/lit8 v8, v6, 0x1

    .end local v6    # "columnIndex":I
    .restart local v8    # "columnIndex":I
    const/4 v7, 0x0

    move v1, p3

    move v3, p4

    move v4, p5

    .restart local v5    # "columnIndex":I
    .restart local v6    # "columnIndex":I
    invoke-direct/range {v0 .. v7}, Landroid/os/BatteryConsumer$Key;-><init>(IIIIIILandroid/os/BatteryConsumer-IA;)V

    .end local v5    # "columnIndex":I
    .end local v6    # "columnIndex":I
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v5, v8

    .line 943
    .end local v8    # "columnIndex":I
    .restart local v5    # "columnIndex":I
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_31

    :cond_4b
    move v8, v5

    .line 954
    .end local v2    # "processState":I
    .end local v5    # "columnIndex":I
    .end local v9    # "isSupported":Z
    .restart local v8    # "columnIndex":I
    :cond_4c
    return v8
.end method

.method private blacklist keyIndex(IIII)I
    .registers 7
    .param p1, "componentId"    # I
    .param p2, "processState"    # I
    .param p3, "screenState"    # I
    .param p4, "powerState"    # I

    .line 1000
    shl-int/lit8 v0, p1, 0x7

    shl-int/lit8 v1, p2, 0x4

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x2

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    return v0
.end method


# virtual methods
.method blacklist getKey(IIII)Landroid/os/BatteryConsumer$Key;
    .registers 7
    .param p1, "componentId"    # I
    .param p2, "processState"    # I
    .param p3, "screenState"    # I
    .param p4, "powerState"    # I

    .line 959
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->indexedKeys:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keyIndex(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryConsumer$Key;

    return-object v0
.end method

.method blacklist getKeyOrThrow(IIII)Landroid/os/BatteryConsumer$Key;
    .registers 9
    .param p1, "componentId"    # I
    .param p2, "processState"    # I
    .param p3, "screenState"    # I
    .param p4, "powerState"    # I

    .line 964
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->getKey(IIII)Landroid/os/BatteryConsumer$Key;

    move-result-object v0

    .line 965
    .local v0, "key":Landroid/os/BatteryConsumer$Key;
    if-eqz v0, :cond_7

    .line 970
    return-object v0

    .line 966
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported power component ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 967
    invoke-static {p1, p2, p3, p4}, Landroid/os/BatteryConsumer$Key;->toString(IIII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getKeys(I)[Landroid/os/BatteryConsumer$Key;
    .registers 9
    .param p1, "componentId"    # I

    .line 974
    monitor-enter p0

    .line 975
    :try_start_1
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:Landroid/util/SparseArray;

    if-nez v0, :cond_f

    .line 976
    new-instance v0, Landroid/util/SparseArray;

    iget-object v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->powerComponentIds:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:Landroid/util/SparseArray;

    .line 978
    :cond_f
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/BatteryConsumer$Key;

    .line 979
    .local v0, "componentKeys":[Landroid/os/BatteryConsumer$Key;
    if-nez v0, :cond_42

    .line 980
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .local v1, "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    iget-object v2, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->keys:[Landroid/os/BatteryConsumer$Key;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v3, :cond_30

    aget-object v5, v2, v4

    .line 982
    .local v5, "key":Landroid/os/BatteryConsumer$Key;
    iget v6, v5, Landroid/os/BatteryConsumer$Key;->powerComponentId:I

    if-ne v6, p1, :cond_2d

    .line 983
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 981
    .end local v5    # "key":Landroid/os/BatteryConsumer$Key;
    :cond_2d
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 986
    :cond_30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/os/BatteryConsumer$Key;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/BatteryConsumer$Key;

    move-object v0, v2

    .line 987
    iget-object v2, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->mPerComponentKeys:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 989
    .end local v1    # "out":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryConsumer$Key;>;"
    :cond_42
    monitor-exit p0

    return-object v0

    .line 990
    .end local v0    # "componentKeys":[Landroid/os/BatteryConsumer$Key;
    :catchall_44
    move-exception v0

    monitor-exit p0
    :try_end_46
    .catchall {:try_start_1 .. :try_end_46} :catchall_44

    throw v0
.end method

.method public blacklist getPowerComponentName(I)Ljava/lang/String;
    .registers 5
    .param p1, "powerComponentId"    # I

    .line 917
    const/16 v0, 0x13

    if-ge p1, v0, :cond_9

    .line 918
    invoke-static {p1}, Landroid/os/BatteryConsumer;->powerComponentIdToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 919
    :cond_9
    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_19

    iget v1, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentCount:I

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_19

    .line 921
    iget-object v0, p0, Landroid/os/BatteryConsumer$BatteryConsumerDataLayout;->customPowerComponentNames:[Ljava/lang/String;

    add-int/lit16 v1, p1, -0x3e8

    aget-object v0, v0, v1

    return-object v0

    .line 924
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported power component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
