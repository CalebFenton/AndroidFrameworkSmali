.class Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
.super Landroid/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatPropertyValuesHolder"
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
.field greylist-max-o mFloatAnimatedValue:F

.field greylist-max-o mFloatKeyframes:Landroid/animation/Keyframes$FloatKeyframes;

.field private greylist-max-o mFloatProperty:Landroid/util/FloatProperty;

.field greylist-max-o mJniSetter:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1299
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/util/Property;Landroid/animation/Keyframes$FloatKeyframes;)V
    .registers 4
    .param p1, "property"    # Landroid/util/Property;
    .param p2, "keyframes"    # Landroid/animation/Keyframes$FloatKeyframes;

    .line 1315
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder-IA;)V

    .line 1316
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 1317
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 1318
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroid/animation/Keyframes$FloatKeyframes;

    .line 1319
    instance-of v0, p1, Landroid/util/FloatProperty;

    if-eqz v0, :cond_16

    .line 1320
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/util/FloatProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroid/util/FloatProperty;

    .line 1322
    :cond_16
    return-void
.end method

.method public varargs constructor blacklist <init>(Landroid/util/Property;[F)V
    .registers 4
    .param p1, "property"    # Landroid/util/Property;
    .param p2, "values"    # [F

    .line 1330
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder-IA;)V

    .line 1331
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    .line 1332
    instance-of v0, p1, Landroid/util/FloatProperty;

    if-eqz v0, :cond_11

    .line 1333
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/util/FloatProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroid/util/FloatProperty;

    .line 1335
    :cond_11
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/animation/Keyframes$FloatKeyframes;)V
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "keyframes"    # Landroid/animation/Keyframes$FloatKeyframes;

    .line 1308
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder-IA;)V

    .line 1309
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 1310
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 1311
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroid/animation/Keyframes$FloatKeyframes;

    .line 1312
    return-void
.end method

.method public varargs constructor blacklist <init>(Ljava/lang/String;[F)V
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .line 1325
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder-IA;)V

    .line 1326
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->setFloatValues([F)V

    .line 1327
    return-void
.end method


# virtual methods
.method greylist-max-o calculateValue(F)V
    .registers 3
    .param p1, "fraction"    # F

    .line 1354
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroid/animation/Keyframes$FloatKeyframes;

    invoke-interface {v0, p1}, Landroid/animation/Keyframes$FloatKeyframes;->getFloatValue(F)F

    move-result v0

    iput v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    .line 1355
    return-void
.end method

.method public blacklist clone()Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
    .registers 3

    .line 1364
    invoke-super {p0}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    .line 1365
    .local v0, "newPVH":Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;
    iget-object v1, v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    check-cast v1, Landroid/animation/Keyframes$FloatKeyframes;

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroid/animation/Keyframes$FloatKeyframes;

    .line 1366
    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/animation/PropertyValuesHolder;
    .registers 2

    .line 1296
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1296
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getAnimatedValue()Ljava/lang/Object;
    .registers 2

    .line 1359
    iget v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o setAnimatedValue(Ljava/lang/Object;)V
    .registers 7
    .param p1, "target"    # Ljava/lang/Object;

    .line 1378
    const-string v0, "PropertyValuesHolder"

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroid/util/FloatProperty;

    if-eqz v1, :cond_e

    .line 1379
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroid/util/FloatProperty;

    iget v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-virtual {v0, p1, v1}, Landroid/util/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 1380
    return-void

    .line 1382
    :cond_e
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_1e

    .line 1383
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Landroid/util/Property;

    iget v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1384
    return-void

    .line 1386
    :cond_1e
    iget-wide v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2e

    .line 1387
    iget-wide v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:J

    iget v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {p1, v0, v1, v2}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnCallFloatMethod(Ljava/lang/Object;JF)V

    .line 1388
    return-void

    .line 1390
    :cond_2e
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_57

    .line 1392
    :try_start_32
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatAnimatedValue:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1393
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_44} :catch_4e
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_44} :catch_45

    goto :goto_56

    .line 1396
    :catch_45
    move-exception v1

    .line 1397
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 1394
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4e
    move-exception v1

    .line 1395
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1398
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_56
    nop

    .line 1400
    :cond_57
    :goto_57
    return-void
.end method

.method public varargs whitelist setFloatValues([F)V
    .registers 3
    .param p1, "values"    # [F

    .line 1348
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setFloatValues([F)V

    .line 1349
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    check-cast v0, Landroid/animation/Keyframes$FloatKeyframes;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatKeyframes:Landroid/animation/Keyframes$FloatKeyframes;

    .line 1350
    return-void
.end method

.method public whitelist setProperty(Landroid/util/Property;)V
    .registers 3
    .param p1, "property"    # Landroid/util/Property;

    .line 1339
    instance-of v0, p1, Landroid/util/FloatProperty;

    if-eqz v0, :cond_a

    .line 1340
    move-object v0, p1

    check-cast v0, Landroid/util/FloatProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mFloatProperty:Landroid/util/FloatProperty;

    goto :goto_d

    .line 1342
    :cond_a
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    .line 1344
    :goto_d
    return-void
.end method

.method greylist-max-o setupSetter(Ljava/lang/Class;)V
    .registers 9
    .param p1, "targetClass"    # Ljava/lang/Class;

    .line 1404
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v0, :cond_5

    .line 1405
    return-void

    .line 1408
    :cond_5
    sget-object v0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1409
    :try_start_8
    sget-object v1, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1410
    .local v1, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 1411
    .local v2, "wasInMap":Z
    if-eqz v1, :cond_2c

    .line 1412
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    .line 1413
    if-eqz v2, :cond_2c

    .line 1414
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1415
    .local v3, "jniSetter":Ljava/lang/Long;
    if-eqz v3, :cond_2c

    .line 1416
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:J

    .line 1420
    .end local v3    # "jniSetter":Ljava/lang/Long;
    :cond_2c
    if-nez v2, :cond_57

    .line 1421
    const-string/jumbo v3, "set"

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_64

    .line 1423
    .local v3, "methodName":Ljava/lang/String;
    :try_start_37
    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnGetFloatMethod(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:J
    :try_end_3d
    .catch Ljava/lang/NoSuchMethodError; {:try_start_37 .. :try_end_3d} :catch_3e
    .catchall {:try_start_37 .. :try_end_3d} :catchall_64

    .line 1428
    goto :goto_3f

    .line 1424
    :catch_3e
    move-exception v4

    .line 1429
    :goto_3f
    if-nez v1, :cond_4c

    .line 1430
    :try_start_41
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v1, v4

    .line 1431
    sget-object v4, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    :cond_4c
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-wide v5, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1435
    .end local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2    # "wasInMap":Z
    .end local v3    # "methodName":Ljava/lang/String;
    :cond_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_41 .. :try_end_58} :catchall_64

    .line 1436
    iget-wide v0, p0, Landroid/animation/PropertyValuesHolder$FloatPropertyValuesHolder;->mJniSetter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_63

    .line 1438
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    .line 1440
    :cond_63
    return-void

    .line 1435
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v1
.end method
