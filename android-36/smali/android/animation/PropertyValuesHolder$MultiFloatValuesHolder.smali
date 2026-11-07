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
.field private static final greylist-max-o sJNISetterPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mJniSetter:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1446
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;Landroid/animation/Keyframes;)V
    .registers 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "converter"    # Landroid/animation/TypeConverter;
    .param p3, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p4, "keyframes"    # Landroid/animation/Keyframes;

    .line 1459
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder-IA;)V

    .line 1460
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    .line 1461
    iput-object p4, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 1462
    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1463
    return-void
.end method

.method public varargs constructor blacklist <init>(Ljava/lang/String;Landroid/animation/TypeConverter;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)V
    .registers 6
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "converter"    # Landroid/animation/TypeConverter;
    .param p3, "evaluator"    # Landroid/animation/TypeEvaluator;
    .param p4, "values"    # [Ljava/lang/Object;

    .line 1451
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder-IA;)V

    .line 1452
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setConverter(Landroid/animation/TypeConverter;)V

    .line 1453
    invoke-virtual {p0, p4}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 1454
    invoke-virtual {p0, p3}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 1455
    return-void
.end method


# virtual methods
.method greylist-max-o setAnimatedValue(Ljava/lang/Object;)V
    .registers 13
    .param p1, "target"    # Ljava/lang/Object;

    .line 1475
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 1476
    .local v0, "values":[F
    array-length v1, v0

    .line 1477
    .local v1, "numParameters":I
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_40

    .line 1478
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_42

    .line 1490
    :pswitch_14
    move-object v4, p1

    .end local p1    # "target":Ljava/lang/Object;
    .local v4, "target":Ljava/lang/Object;
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    invoke-static {v4, v2, v3, v0}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnCallMultipleFloatMethod(Ljava/lang/Object;J[F)V

    goto :goto_41

    .line 1486
    .end local v4    # "target":Ljava/lang/Object;
    .restart local p1    # "target":Ljava/lang/Object;
    :pswitch_1b
    iget-wide v5, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    aget v7, v0, v3

    aget v8, v0, v2

    const/4 v2, 0x2

    aget v9, v0, v2

    const/4 v2, 0x3

    aget v10, v0, v2

    move-object v4, p1

    .end local p1    # "target":Ljava/lang/Object;
    .restart local v4    # "target":Ljava/lang/Object;
    invoke-static/range {v4 .. v10}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnCallFourFloatMethod(Ljava/lang/Object;JFFFF)V

    .line 1488
    goto :goto_41

    .line 1483
    .end local v4    # "target":Ljava/lang/Object;
    .restart local p1    # "target":Ljava/lang/Object;
    :pswitch_2c
    move-object v4, p1

    .end local p1    # "target":Ljava/lang/Object;
    .restart local v4    # "target":Ljava/lang/Object;
    iget-wide v5, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    aget p1, v0, v3

    aget v2, v0, v2

    invoke-static {v4, v5, v6, p1, v2}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnCallTwoFloatMethod(Ljava/lang/Object;JFF)V

    .line 1484
    goto :goto_41

    .line 1480
    .end local v4    # "target":Ljava/lang/Object;
    .restart local p1    # "target":Ljava/lang/Object;
    :pswitch_37
    move-object v4, p1

    .end local p1    # "target":Ljava/lang/Object;
    .restart local v4    # "target":Ljava/lang/Object;
    iget-wide v5, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    aget p1, v0, v3

    invoke-static {v4, v5, v6, p1}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnCallFloatMethod(Ljava/lang/Object;JF)V

    .line 1481
    goto :goto_41

    .line 1477
    .end local v4    # "target":Ljava/lang/Object;
    .restart local p1    # "target":Ljava/lang/Object;
    :cond_40
    move-object v4, p1

    .line 1495
    .end local p1    # "target":Ljava/lang/Object;
    .restart local v4    # "target":Ljava/lang/Object;
    :goto_41
    return-void

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_37
        :pswitch_2c
        :pswitch_14
        :pswitch_1b
    .end packed-switch
.end method

.method greylist-max-o setupSetter(Ljava/lang/Class;)V
    .registers 11
    .param p1, "targetClass"    # Ljava/lang/Class;

    .line 1510
    iget-wide v0, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    .line 1511
    return-void

    .line 1513
    :cond_9
    sget-object v0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1514
    :try_start_c
    sget-object v1, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1515
    .local v1, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 1516
    .local v2, "wasInMap":Z
    if-eqz v1, :cond_30

    .line 1517
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    .line 1518
    if-eqz v2, :cond_30

    .line 1519
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1520
    .local v3, "jniSetter":Ljava/lang/Long;
    if-eqz v3, :cond_30

    .line 1521
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    .line 1525
    .end local v3    # "jniSetter":Ljava/lang/Long;
    :cond_30
    if-nez v2, :cond_70

    .line 1526
    const-string/jumbo v3, "set"

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1527
    .local v3, "methodName":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->calculateValue(F)V

    .line 1528
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    .line 1529
    .local v4, "values":[F
    array-length v5, v4
    :try_end_46
    .catchall {:try_start_c .. :try_end_46} :catchall_72

    .line 1531
    .local v5, "numParams":I
    :try_start_46
    invoke-static {p1, v3, v5}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnGetMultipleFloatMethod(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v6

    iput-wide v6, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J
    :try_end_4c
    .catch Ljava/lang/NoSuchMethodError; {:try_start_46 .. :try_end_4c} :catch_4d
    .catchall {:try_start_46 .. :try_end_4c} :catchall_72

    .line 1540
    goto :goto_58

    .line 1532
    :catch_4d
    move-exception v6

    .line 1535
    .local v6, "e":Ljava/lang/NoSuchMethodError;
    :try_start_4e
    iget-object v7, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {p1, v7, v5}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnGetMultipleFloatMethod(Ljava/lang/Class;Ljava/lang/String;I)J

    move-result-wide v7

    iput-wide v7, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J
    :try_end_56
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4e .. :try_end_56} :catch_57
    .catchall {:try_start_4e .. :try_end_56} :catchall_72

    .line 1539
    goto :goto_58

    .line 1537
    :catch_57
    move-exception v7

    .line 1541
    .end local v6    # "e":Ljava/lang/NoSuchMethodError;
    :goto_58
    if-nez v1, :cond_65

    .line 1542
    :try_start_5a
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v1, v6

    .line 1543
    sget-object v6, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v6, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1545
    :cond_65
    iget-object v6, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-wide v7, p0, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->mJniSetter:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1547
    .end local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2    # "wasInMap":Z
    .end local v3    # "methodName":Ljava/lang/String;
    .end local v4    # "values":[F
    .end local v5    # "numParams":I
    :cond_70
    monitor-exit v0

    .line 1548
    return-void

    .line 1547
    :catchall_72
    move-exception v1

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_5a .. :try_end_74} :catchall_72

    throw v1
.end method

.method greylist-max-o setupSetterAndGetter(Ljava/lang/Object;)V
    .registers 3
    .param p1, "target"    # Ljava/lang/Object;

    .line 1505
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/animation/PropertyValuesHolder$MultiFloatValuesHolder;->setupSetter(Ljava/lang/Class;)V

    .line 1506
    return-void
.end method
