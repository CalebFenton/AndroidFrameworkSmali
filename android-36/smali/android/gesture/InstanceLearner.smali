.class Landroid/gesture/InstanceLearner;
.super Landroid/gesture/Learner;
.source "InstanceLearner.java"


# static fields
.field private static final blacklist sComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 29
    new-instance v0, Landroid/gesture/InstanceLearner$1;

    invoke-direct {v0}, Landroid/gesture/InstanceLearner$1;-><init>()V

    sput-object v0, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Landroid/gesture/Learner;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist classify(II[F)Ljava/util/ArrayList;
    .registers 20
    .param p1, "sequenceType"    # I
    .param p2, "orientationType"    # I
    .param p3, "vector"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[F)",
            "Ljava/util/ArrayList<",
            "Landroid/gesture/Prediction;",
            ">;"
        }
    .end annotation

    .line 45
    move-object/from16 v0, p3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .local v1, "predictions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Prediction;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/InstanceLearner;->getInstances()Ljava/util/ArrayList;

    move-result-object v2

    .line 47
    .local v2, "instances":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/gesture/Instance;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 48
    .local v3, "count":I
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 49
    .local v4, "label2score":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Double;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    if-ge v5, v3, :cond_6d

    .line 50
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/gesture/Instance;

    .line 51
    .local v6, "sample":Landroid/gesture/Instance;
    iget-object v7, v6, Landroid/gesture/Instance;->vector:[F

    array-length v7, v7

    array-length v8, v0

    if-eq v7, v8, :cond_28

    .line 52
    move/from16 v8, p1

    move/from16 v9, p2

    goto :goto_6a

    .line 55
    :cond_28
    const/4 v7, 0x2

    move/from16 v8, p1

    if-ne v8, v7, :cond_37

    .line 56
    iget-object v7, v6, Landroid/gesture/Instance;->vector:[F

    move/from16 v9, p2

    invoke-static {v7, v0, v9}, Landroid/gesture/GestureUtils;->minimumCosineDistance([F[FI)F

    move-result v7

    float-to-double v10, v7

    .local v10, "distance":D
    goto :goto_40

    .line 58
    .end local v10    # "distance":D
    :cond_37
    move/from16 v9, p2

    iget-object v7, v6, Landroid/gesture/Instance;->vector:[F

    invoke-static {v7, v0}, Landroid/gesture/GestureUtils;->squaredEuclideanDistance([F[F)F

    move-result v7

    float-to-double v10, v7

    .line 61
    .restart local v10    # "distance":D
    :goto_40
    const-wide/16 v12, 0x0

    cmpl-double v7, v10, v12

    if-nez v7, :cond_4c

    .line 62
    const-wide v12, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .local v12, "weight":D
    goto :goto_4f

    .line 64
    .end local v12    # "weight":D
    :cond_4c
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    div-double/2addr v12, v10

    .line 66
    .restart local v12    # "weight":D
    :goto_4f
    iget-object v7, v6, Landroid/gesture/Instance;->label:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    .line 67
    .local v7, "score":Ljava/lang/Double;
    if-eqz v7, :cond_61

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    cmpl-double v14, v12, v14

    if-lez v14, :cond_6a

    .line 68
    :cond_61
    iget-object v14, v6, Landroid/gesture/Instance;->label:Ljava/lang/String;

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v15

    invoke-virtual {v4, v14, v15}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .end local v6    # "sample":Landroid/gesture/Instance;
    .end local v7    # "score":Ljava/lang/Double;
    .end local v10    # "distance":D
    .end local v12    # "weight":D
    :cond_6a
    :goto_6a
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_6d
    move/from16 v8, p1

    move/from16 v9, p2

    .line 73
    .end local v5    # "i":I
    invoke-virtual {v4}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_79
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_98

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 74
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    .line 76
    .local v10, "score":D
    new-instance v7, Landroid/gesture/Prediction;

    invoke-direct {v7, v6, v10, v11}, Landroid/gesture/Prediction;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .end local v6    # "name":Ljava/lang/String;
    .end local v10    # "score":D
    goto :goto_79

    .line 84
    :cond_98
    sget-object v5, Landroid/gesture/InstanceLearner;->sComparator:Ljava/util/Comparator;

    invoke-static {v1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    return-object v1
.end method
