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
.field mIntAnimatedValue:I

.field mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

.field private mIntProperty:Landroid/util/IntProperty;

.field mJniSetter:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1080
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 1079
    sput-object v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    #@7
    .line 1076
    return-void
.end method

.method public constructor <init>(Landroid/util/Property;Landroid/animation/Keyframes$IntKeyframes;)V
    .locals 1
    .param p1, "property"    # Landroid/util/Property;
    .param p2, "keyframes"    # Landroid/animation/Keyframes$IntKeyframes;

    #@0
    .prologue
    .line 1095
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder;)V

    #@4
    .line 1096
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@6
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    #@8
    .line 1097
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@a
    .line 1098
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    #@c
    .line 1099
    instance-of v0, p1, Landroid/util/IntProperty;

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 1100
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@12
    check-cast v0, Landroid/util/IntProperty;

    #@14
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    #@16
    .line 1094
    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Landroid/util/Property;[I)V
    .locals 1
    .param p1, "property"    # Landroid/util/Property;
    .param p2, "values"    # [I

    #@0
    .prologue
    .line 1110
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Landroid/util/Property;Landroid/animation/PropertyValuesHolder;)V

    #@4
    .line 1111
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    #@7
    .line 1112
    instance-of v0, p1, Landroid/util/IntProperty;

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 1113
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@d
    check-cast v0, Landroid/util/IntProperty;

    #@f
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    #@11
    .line 1109
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/animation/Keyframes$IntKeyframes;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "keyframes"    # Landroid/animation/Keyframes$IntKeyframes;

    #@0
    .prologue
    .line 1088
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder;)V

    #@4
    .line 1089
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@6
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mValueType:Ljava/lang/Class;

    #@8
    .line 1090
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@a
    .line 1091
    iput-object p2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    #@c
    .line 1087
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    #@0
    .prologue
    .line 1105
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;Landroid/animation/PropertyValuesHolder;)V

    #@4
    .line 1106
    invoke-virtual {p0, p2}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->setIntValues([I)V

    #@7
    .line 1104
    return-void
.end method


# virtual methods
.method calculateValue(F)V
    .locals 1
    .param p1, "fraction"    # F

    #@0
    .prologue
    .line 1125
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    #@2
    invoke-interface {v0, p1}, Landroid/animation/Keyframes$IntKeyframes;->getIntValue(F)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    #@8
    .line 1124
    return-void
.end method

.method public clone()Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    .locals 2

    #@0
    .prologue
    .line 1135
    invoke-super {p0}, Landroid/animation/PropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    #@6
    .line 1136
    .local v0, "newPVH":Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;
    iget-object v1, v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@8
    check-cast v1, Landroid/animation/Keyframes$IntKeyframes;

    #@a
    iput-object v1, v0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    #@c
    .line 1137
    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/PropertyValuesHolder;
    .locals 1

    #@0
    .prologue
    .line 1134
    invoke-virtual {p0}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->clone()Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method getAnimatedValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 1130
    iget v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    #@2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method setAnimatedValue(Ljava/lang/Object;)V
    .locals 6
    .param p1, "target"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1149
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 1150
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntProperty:Landroid/util/IntProperty;

    #@6
    iget v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    #@8
    invoke-virtual {v2, p1, v3}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    #@b
    .line 1151
    return-void

    #@c
    .line 1153
    :cond_0
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@e
    if-eqz v2, :cond_1

    #@10
    .line 1154
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@12
    iget v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    #@14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v2, p1, v3}, Landroid/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    #@1b
    .line 1155
    return-void

    #@1c
    .line 1157
    :cond_1
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    #@1e
    const-wide/16 v4, 0x0

    #@20
    cmp-long v2, v2, v4

    #@22
    if-eqz v2, :cond_2

    #@24
    .line 1158
    iget-wide v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    #@26
    iget v4, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    #@28
    invoke-static {p1, v2, v3, v4}, Landroid/animation/PropertyValuesHolder;->-wrap7(Ljava/lang/Object;JI)V

    #@2b
    .line 1159
    return-void

    #@2c
    .line 1161
    :cond_2
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    #@2e
    if-eqz v2, :cond_3

    #@30
    .line 1163
    :try_start_0
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    #@32
    iget v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntAnimatedValue:I

    #@34
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@37
    move-result-object v3

    #@38
    const/4 v4, 0x0

    #@39
    aput-object v3, v2, v4

    #@3b
    .line 1164
    iget-object v2, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mSetter:Ljava/lang/reflect/Method;

    #@3d
    iget-object v3, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mTmpValueArray:[Ljava/lang/Object;

    #@3f
    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 1148
    :cond_3
    :goto_0
    return-void

    #@43
    .line 1167
    :catch_0
    move-exception v0

    #@44
    .line 1168
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v2, "PropertyValuesHolder"

    #@47
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    #@4a
    move-result-object v3

    #@4b
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@4e
    goto :goto_0

    #@4f
    .line 1165
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    #@50
    .line 1166
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v2, "PropertyValuesHolder"

    #@53
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@5a
    goto :goto_0
.end method

.method public varargs setIntValues([I)V
    .locals 1
    .param p1, "values"    # [I

    #@0
    .prologue
    .line 1119
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    #@3
    .line 1120
    iget-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mKeyframes:Landroid/animation/Keyframes;

    #@5
    check-cast v0, Landroid/animation/Keyframes$IntKeyframes;

    #@7
    iput-object v0, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mIntKeyframes:Landroid/animation/Keyframes$IntKeyframes;

    #@9
    .line 1118
    return-void
.end method

.method setupSetter(Ljava/lang/Class;)V
    .locals 10
    .param p1, "targetClass"    # Ljava/lang/Class;

    #@0
    .prologue
    .line 1175
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mProperty:Landroid/util/Property;

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 1176
    return-void

    #@5
    .line 1179
    :cond_0
    sget-object v6, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    #@7
    monitor-enter v6

    #@8
    .line 1180
    :try_start_0
    sget-object v5, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    #@a
    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v3

    #@e
    check-cast v3, Ljava/util/HashMap;

    #@10
    .line 1181
    .local v3, "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v4, 0x0

    #@11
    .line 1182
    .local v4, "wasInMap":Z
    if-eqz v3, :cond_1

    #@13
    .line 1183
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@15
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@18
    move-result v4

    #@19
    .line 1184
    .local v4, "wasInMap":Z
    if-eqz v4, :cond_1

    #@1b
    .line 1185
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@1d
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Ljava/lang/Long;

    #@23
    .line 1186
    .local v1, "jniSetter":Ljava/lang/Long;
    if-eqz v1, :cond_1

    #@25
    .line 1187
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    #@28
    move-result-wide v8

    #@29
    iput-wide v8, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    #@2b
    .line 1191
    .end local v1    # "jniSetter":Ljava/lang/Long;
    .end local v4    # "wasInMap":Z
    :cond_1
    if-nez v4, :cond_3

    #@2d
    .line 1192
    const-string/jumbo v5, "set"

    #@30
    iget-object v7, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@32
    invoke-static {v5, v7}, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@35
    move-result-object v2

    #@36
    .line 1194
    .local v2, "methodName":Ljava/lang/String;
    :try_start_1
    invoke-static {p1, v2}, Landroid/animation/PropertyValuesHolder;->-wrap1(Ljava/lang/Class;Ljava/lang/String;)J

    #@39
    move-result-wide v8

    #@3a
    iput-wide v8, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .line 1200
    :goto_0
    if-nez v3, :cond_2

    #@3e
    .line 1201
    :try_start_2
    new-instance v3, Ljava/util/HashMap;

    #@40
    .end local v3    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    #@43
    .line 1202
    .restart local v3    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    sget-object v5, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->sJNISetterPropertyMap:Ljava/util/HashMap;

    #@45
    invoke-virtual {v5, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    .line 1204
    :cond_2
    iget-object v5, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mPropertyName:Ljava/lang/String;

    #@4a
    iget-wide v8, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    #@4c
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4f
    move-result-object v7

    #@50
    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@53
    .end local v2    # "methodName":Ljava/lang/String;
    :cond_3
    monitor-exit v6

    #@54
    .line 1207
    iget-wide v6, p0, Landroid/animation/PropertyValuesHolder$IntPropertyValuesHolder;->mJniSetter:J

    #@56
    const-wide/16 v8, 0x0

    #@58
    cmp-long v5, v6, v8

    #@5a
    if-nez v5, :cond_4

    #@5c
    .line 1209
    invoke-super {p0, p1}, Landroid/animation/PropertyValuesHolder;->setupSetter(Ljava/lang/Class;)V

    #@5f
    .line 1174
    :cond_4
    return-void

    #@60
    .line 1179
    .end local v3    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catchall_0
    move-exception v5

    #@61
    monitor-exit v6

    #@62
    throw v5

    #@63
    .line 1195
    .restart local v2    # "methodName":Ljava/lang/String;
    .restart local v3    # "propertyMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    :catch_0
    move-exception v0

    #@64
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    goto :goto_0
.end method
