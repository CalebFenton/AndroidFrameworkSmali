.class Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
.super Landroid/animation/PropertyValuesHolder;
.source "PropertyValuesHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/animation/PropertyValuesHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntPropertyValuesHolder"
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
.field greylist-max-o mIntAnimatedValue:I

.field greylist-max-o mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

.field private greylist-max-o mIntProperty:Landroid/util/IntProperty;

.field greylist-max-o mJniSetter:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1152
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/util/Property;Landroid/animation/Keyframes$IntKeyframes;)V
    .registers 4
    .param p1, "property"    # Landroid/util/Property;
    .param p2, "keyframes"    # Landroid/animation/Keyframes$IntKeyframes;

    .line 1168
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder-IA;)V

    .line 1169
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 1170
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 1171
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    .line 1172
    instance-of v0, p1, Landroid/util/IntProperty;

    if-eqz v0, :cond_16

    .line 1173
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/util/IntProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    .line 1175
    :cond_16
    return-void
.end method

.method public varargs constructor blacklist <init>(Landroid/util/Property;[I)V
    .registers 4
    .param p1, "property"    # Landroid/util/Property;
    .param p2, "values"    # [I

    .line 1183
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder-IA;)V

    .line 1184
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    .line 1185
    instance-of v0, p1, Landroid/util/IntProperty;

    if-eqz v0, :cond_11

    .line 1186
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    check-cast v0, Landroid/util/IntProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    .line 1188
    :cond_11
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/String;Landroid/animation/Keyframes$IntKeyframes;)V
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "keyframes"    # Landroid/animation/Keyframes$IntKeyframes;

    .line 1161
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder-IA;)V

    .line 1162
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    .line 1163
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    .line 1164
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    .line 1165
    return-void
.end method

.method public varargs constructor blacklist <init>(Ljava/lang/String;[I)V
    .registers 4
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .line 1178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder-IA;)V

    .line 1179
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    .line 1180
    return-void
.end method


# virtual methods
.method greylist-max-o calculateValue(F)V
    .registers 3
    .param p1, "fraction"    # F

    .line 1207
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    invoke-interface {v0, p1}, Landroid/animation/Keyframes$IntKeyframes;->getIntValue(F)I

    move-result v0

    iput v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    .line 1208
    return-void
.end method

.method public blacklist clone()Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    .registers 3

    .line 1217
    invoke-super {p0}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    check-cast v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    .line 1218
    .local v0, "newPVH":Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    iget-object v1, v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    check-cast v1, Landroid/animation/Keyframes$IntKeyframes;

    iput-object v1, v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    .line 1219
    return-object v0
.end method

.method public bridge synthetic whitelist clone()Landroid/animation/PropertyValuesHolder;
    .registers 2

    .line 1149
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

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

    .line 1149
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o getAnimatedValue()Ljava/lang/Object;
    .registers 2

    .line 1212
    iget v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o setAnimatedValue(Ljava/lang/Object;)V
    .registers 7
    .param p1, "target"    # Ljava/lang/Object;

    .line 1231
    const-string v0, "PropertyValuesHolder"

    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    if-eqz v1, :cond_e

    .line 1232
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    iget v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-virtual {v0, p1, v1}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 1233
    return-void

    .line 1235
    :cond_e
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v1, :cond_1e

    .line 1236
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    iget v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1237
    return-void

    .line 1239
    :cond_1e
    iget-wide v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2e

    .line 1240
    iget-wide v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    iget v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {p1, v0, v1, v2}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnCallIntMethod(Ljava/lang/Object;JI)V

    .line 1241
    return-void

    .line 1243
    :cond_2e
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_57

    .line 1245
    :try_start_32
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 1246
    iget-object v1, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_44} :catch_4e
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_44} :catch_45

    goto :goto_56

    .line 1249
    :catch_45
    move-exception v1

    .line 1250
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_57

    .line 1247
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_4e
    move-exception v1

    .line 1248
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :goto_56
    nop

    .line 1253
    :cond_57
    :goto_57
    return-void
.end method

.method public varargs whitelist setIntValues([I)V
    .registers 3
    .param p1, "values"    # [I

    .line 1201
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 1202
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    check-cast v0, Landroid/animation/Keyframes$IntKeyframes;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    .line 1203
    return-void
.end method

.method public whitelist setProperty(Landroid/util/Property;)V
    .registers 3
    .param p1, "property"    # Landroid/util/Property;

    .line 1192
    instance-of v0, p1, Landroid/util/IntProperty;

    if-eqz v0, :cond_a

    .line 1193
    move-object v0, p1

    check-cast v0, Landroid/util/IntProperty;

    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    goto :goto_d

    .line 1195
    :cond_a
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setProperty(Landroid/util/Property;)V

    .line 1197
    :goto_d
    return-void
.end method

.method greylist-max-o setupSetter(Ljava/lang/Class;)V
    .registers 9
    .param p1, "targetClass"    # Ljava/lang/Class;

    .line 1257
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    if-eqz v0, :cond_5

    .line 1258
    return-void

    .line 1261
    :cond_5
    sget-object v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 1262
    :try_start_8
    sget-object v1, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 1263
    .local v1, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 1264
    .local v2, "wasInMap":Z
    if-eqz v1, :cond_2c

    .line 1265
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    .line 1266
    if-eqz v2, :cond_2c

    .line 1267
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    .line 1268
    .local v3, "jniSetter":Ljava/lang/Long;
    if-eqz v3, :cond_2c

    .line 1269
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    .line 1273
    .end local v3    # "jniSetter":Ljava/lang/Long;
    :cond_2c
    if-nez v2, :cond_57

    .line 1274
    const-string/jumbo v3, "set"

    iget-object v4, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_64

    .line 1276
    .local v3, "methodName":Ljava/lang/String;
    :try_start_37
    invoke-static {p1, v3}, Landroid/animation/PropertyValuesHolder;->-$$Nest$smnGetIntMethod(Ljava/lang/Class;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J
    :try_end_3d
    .catch Ljava/lang/NoSuchMethodError; {:try_start_37 .. :try_end_3d} :catch_3e
    .catchall {:try_start_37 .. :try_end_3d} :catchall_64

    .line 1281
    goto :goto_3f

    .line 1277
    :catch_3e
    move-exception v4

    .line 1282
    :goto_3f
    if-nez v1, :cond_4c

    .line 1283
    :try_start_41
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move-object v1, v4

    .line 1284
    sget-object v4, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    :cond_4c
    iget-object v4, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    iget-wide v5, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    .end local v1    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v2    # "wasInMap":Z
    .end local v3    # "methodName":Ljava/lang/String;
    :cond_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_41 .. :try_end_58} :catchall_64

    .line 1289
    iget-wide v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_63

    .line 1291
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    .line 1293
    :cond_63
    return-void

    .line 1288
    :catchall_64
    move-exception v1

    :try_start_65
    monitor-exit v0
    :try_end_66
    .catchall {:try_start_65 .. :try_end_66} :catchall_64

    throw v1
.end method
