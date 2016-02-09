.class Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;
.super Landroid/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiFloatValuesHolder"
.end annotation


# static fields
.field private static final sJNISetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mJniSetter:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1356
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 1355
    sput-object v0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    #@7
    .line 1353
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "converter"    # Landroid/animation/TypeConverter;
    .param p3, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p4, "keyframes"    # Landroid/animation/Keyframes;

    #@0
    .prologue
    .line 1368
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder;)V

    #@4
    .line 1369
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    #@7
    .line 1370
    iput-object p4, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@9
    .line 1371
    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@c
    .line 1367
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "converter"    # Landroid/animation/TypeConverter;
    .param p3, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p4, "values"    # [Ljava/lang/Object;

    #@0
    .prologue
    .line 1360
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder;)V

    #@4
    .line 1361
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    #@7
    .line 1362
    invoke-virtual {p0, p4}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    #@a
    .line 1363
    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    #@d
    .line 1359
    return-void
.end method


# virtual methods
.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 9
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 1384
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    #@5
    move-result-object v8

    #@6
    check-cast v8, [F

    #@8
    .line 1385
    .local v8, "values":[F
    array-length v0, v8

    #@9
    .line 1386
    .local v0, "numParameters":I
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    #@b
    const-wide/16 v4, 0x0

    #@d
    cmp-long v1, v2, v4

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 1387
    packed-switch v0, :pswitch_data_0

    #@14
    .line 1399
    :pswitch_0
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    #@16
    invoke-static {p1, v2, v3, v8}, Landroid/animation/PropertyValuesHolder;->-wrap8(Ljava/lang/Object;J[F)V

    #@19
    .line 1383
    :cond_0
    :goto_0
    return-void

    #@1a
    .line 1389
    :pswitch_1
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    #@1c
    aget v1, v8, v6

    #@1e
    invoke-static {p1, v2, v3, v1}, Landroid/animation/PropertyValuesHolder;->-wrap4(Ljava/lang/Object;JF)V

    #@21
    goto :goto_0

    #@22
    .line 1392
    :pswitch_2
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    #@24
    aget v1, v8, v6

    #@26
    aget v4, v8, v7

    #@28
    invoke-static {p1, v2, v3, v1, v4}, Landroid/animation/PropertyValuesHolder;->-wrap10(Ljava/lang/Object;JFF)V

    #@2b
    goto :goto_0

    #@2c
    .line 1395
    :pswitch_3
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    #@2e
    aget v4, v8, v6

    #@30
    aget v5, v8, v7

    #@32
    .line 1396
    const/4 v1, 0x2

    #@33
    aget v6, v8, v1

    #@35
    const/4 v1, 0x3

    #@36
    aget v7, v8, v1

    #@38
    move-object v1, p1

    #@39
    .line 1395
    invoke-static/range {v1 .. v7}, Landroid/animation/PropertyValuesHolder;->-wrap5(Ljava/lang/Object;JFFFF)V

    #@3c
    goto :goto_0

    #@3d
    .line 1387
    nop

    #@3e
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 12
    .param p1, "targetClass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 1419
    iget-wide v8, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    #@2
    const-wide/16 v10, 0x0

    #@4
    cmp-long v8, v8, v10

    #@6
    if-eqz v8, :cond_0

    #@8
    .line 1420
    return-void

    #@9
    .line 1422
    :cond_0
    sget-object v9, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    #@b
    monitor-enter v9

    #@c
    .line 1423
    :try_start_0
    sget-object v8, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    #@e
    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v5

    #@12
    check-cast v5, Ljava/util/HashMap;

    #@14
    .line 1424
    .local v5, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v7, 0x0

    #@15
    .line 1425
    .local v7, "wasInMap":Z
    if-eqz v5, :cond_1

    #@17
    .line 1426
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    #@19
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@1c
    move-result v7

    #@1d
    .line 1427
    .local v7, "wasInMap":Z
    if-eqz v7, :cond_1

    #@1f
    .line 1428
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    #@21
    invoke-virtual {v5, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Ljava/lang/Long;

    #@27
    .line 1429
    .local v2, "jniSetter":Ljava/lang/Long;
    if-eqz v2, :cond_1

    #@29
    .line 1430
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    #@2c
    move-result-wide v10

    #@2d
    iput-wide v10, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    #@2f
    .line 1434
    .end local v2    # "jniSetter":Ljava/lang/Long;
    .end local v7    # "wasInMap":Z
    :cond_1
    if-nez v7, :cond_3

    #@31
    .line 1435
    const-string/jumbo v8, "set"

    #@34
    iget-object v10, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    #@36
    invoke-static {v8, v10}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 1436
    .local v3, "methodName":Ljava/lang/String;
    const/4 v8, 0x0

    #@3b
    invoke-virtual {p0, v8}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->calculateValue(F)V

    #@3e
    .line 1437
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    #@41
    move-result-object v6

    #@42
    check-cast v6, [F

    #@44
    .line 1438
    .local v6, "values":[F
    array-length v4, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    .line 1440
    .local v4, "numParams":I
    :try_start_1
    invoke-static {p1, v3, v4}, Landroid/animation/PropertyValuesHolder;->-wrap2(Ljava/lang/Class;Ljava/lang/String;I)J

    #@48
    move-result-wide v10

    #@49
    iput-wide v10, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    .line 1450
    :goto_0
    if-nez v5, :cond_2

    #@4d
    .line 1451
    :try_start_2
    new-instance v5, Ljava/util/HashMap;

    #@4f
    .end local v5    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    #@52
    .line 1452
    .restart local v5    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v8, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    #@54
    invoke-virtual {v8, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@57
    .line 1454
    :cond_2
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    #@59
    iget-wide v10, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    #@5b
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@5e
    move-result-object v10

    #@5f
    invoke-virtual {v5, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@62
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v4    # "numParams":I
    .end local v6    # "values":[F
    :cond_3
    monitor-exit v9

    #@63
    .line 1418
    return-void

    #@64
    .line 1441
    .restart local v3    # "methodName":Ljava/lang/String;
    .restart local v4    # "numParams":I
    .restart local v6    # "values":[F
    :catch_0
    move-exception v0

    #@65
    .line 1444
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    :try_start_3
    iget-object v8, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    #@67
    invoke-static {p1, v8, v4}, Landroid/animation/PropertyValuesHolder;->-wrap2(Ljava/lang/Class;Ljava/lang/String;I)J

    #@6a
    move-result-wide v10

    #@6b
    iput-wide v10, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J
    :try_end_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@6d
    goto :goto_0

    #@6e
    .line 1446
    :catch_1
    move-exception v1

    #@6f
    .local v1, "e2":Ljava/lang/NoSuchMethodError;
    goto :goto_0

    #@70
    .line 1422
    .end local v0    # "e":Ljava/lang/NoSuchMethodError;
    .end local v1    # "e2":Ljava/lang/NoSuchMethodError;
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v4    # "numParams":I
    .end local v5    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v6    # "values":[F
    :catchall_0
    move-exception v8

    #@71
    monitor-exit v9

    #@72
    throw v8
.end method

.method setupSetterAndGetter(Ljava/lang/Object;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1414
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setupSetter(Ljava/lang/Class;)V

    #@7
    .line 1413
    return-void
.end method
