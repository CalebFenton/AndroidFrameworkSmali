.class Landroid/graphics/drawable/VectorDrawable$VGroup;
.super Landroid/graphics/drawable/VectorDrawable$VObject;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VGroup"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/drawable/VectorDrawable$VGroup$1;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$2;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$3;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$4;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$5;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$6;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$7;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$8;,
        Landroid/graphics/drawable/VectorDrawable$VGroup$9;
    }
.end annotation


# static fields
.field private static final NATIVE_ALLOCATION_SIZE:I = 0x64

.field private static final PIVOT_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PIVOT_X_INDEX:I = 0x1

.field private static final PIVOT_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final PIVOT_Y_INDEX:I = 0x2

.field private static final ROTATION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ROTATION_INDEX:I = 0x0

.field private static final SCALE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCALE_X_INDEX:I = 0x3

.field private static final SCALE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final SCALE_Y_INDEX:I = 0x4

.field private static final TRANSFORM_PROPERTY_COUNT:I = 0x7

.field private static final TRANSLATE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRANSLATE_X_INDEX:I = 0x5

.field private static final TRANSLATE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final TRANSLATE_Y_INDEX:I = 0x6

.field private static final sPropertyIndexMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sPropertyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChangingConfigurations:I

.field private final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/VectorDrawable$VObject;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private mIsStateful:Z

.field private final mNativePtr:J

.field private mThemeAttrs:[I

.field private mTransform:[F


# direct methods
.method static synthetic -get0()Landroid/util/Property;
    .locals 1

    #@0
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_X:Landroid/util/Property;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Landroid/util/Property;
    .locals 1

    #@0
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_Y:Landroid/util/Property;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Landroid/util/Property;
    .locals 1

    #@0
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->ROTATION:Landroid/util/Property;

    #@2
    return-object v0
.end method

.method static synthetic -get3()Landroid/util/Property;
    .locals 1

    #@0
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_X:Landroid/util/Property;

    #@2
    return-object v0
.end method

.method static synthetic -get4()Landroid/util/Property;
    .locals 1

    #@0
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_Y:Landroid/util/Property;

    #@2
    return-object v0
.end method

.method static synthetic -get5()Landroid/util/Property;
    .locals 1

    #@0
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_X:Landroid/util/Property;

    #@2
    return-object v0
.end method

.method static synthetic -get6()Landroid/util/Property;
    .locals 1

    #@0
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_Y:Landroid/util/Property;

    #@2
    return-object v0
.end method

.method static synthetic -get7(Landroid/graphics/drawable/VectorDrawable$VGroup;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    #@2
    return v0
.end method

.method static synthetic -get8(Landroid/graphics/drawable/VectorDrawable$VGroup;)J
    .locals 2

    #@0
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@2
    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 1079
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$1;

    #@2
    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup$1;-><init>()V

    #@5
    .line 1078
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/HashMap;

    #@7
    .line 1102
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$2;

    #@9
    const-string/jumbo v1, "translateX"

    #@c
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$2;-><init>(Ljava/lang/String;)V

    #@f
    .line 1101
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_X:Landroid/util/Property;

    #@11
    .line 1115
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$3;

    #@13
    const-string/jumbo v1, "translateY"

    #@16
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$3;-><init>(Ljava/lang/String;)V

    #@19
    .line 1114
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_Y:Landroid/util/Property;

    #@1b
    .line 1128
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$4;

    #@1d
    const-string/jumbo v1, "scaleX"

    #@20
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$4;-><init>(Ljava/lang/String;)V

    #@23
    .line 1127
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_X:Landroid/util/Property;

    #@25
    .line 1141
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$5;

    #@27
    const-string/jumbo v1, "scaleY"

    #@2a
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$5;-><init>(Ljava/lang/String;)V

    #@2d
    .line 1140
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_Y:Landroid/util/Property;

    #@2f
    .line 1154
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$6;

    #@31
    const-string/jumbo v1, "pivotX"

    #@34
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$6;-><init>(Ljava/lang/String;)V

    #@37
    .line 1153
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_X:Landroid/util/Property;

    #@39
    .line 1167
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$7;

    #@3b
    const-string/jumbo v1, "pivotY"

    #@3e
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$7;-><init>(Ljava/lang/String;)V

    #@41
    .line 1166
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_Y:Landroid/util/Property;

    #@43
    .line 1180
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$8;

    #@45
    const-string/jumbo v1, "rotation"

    #@48
    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$8;-><init>(Ljava/lang/String;)V

    #@4b
    .line 1179
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->ROTATION:Landroid/util/Property;

    #@4d
    .line 1193
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$9;

    #@4f
    invoke-direct {v0}, Landroid/graphics/drawable/VectorDrawable$VGroup$9;-><init>()V

    #@52
    .line 1192
    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/HashMap;

    #@54
    .line 1066
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 1255
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    #@3
    .line 1208
    new-instance v0, Ljava/util/ArrayList;

    #@5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@a
    .line 1215
    const/4 v0, 0x0

    #@b
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@d
    .line 1256
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->-wrap23()J

    #@10
    move-result-wide v0

    #@11
    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@13
    .line 1255
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V
    .locals 8
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "targetsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    #@1
    .line 1221
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    #@4
    .line 1208
    new-instance v5, Ljava/util/ArrayList;

    #@6
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@9
    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@b
    .line 1215
    iput-object v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@d
    .line 1223
    iget-boolean v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    #@f
    iput-boolean v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    #@11
    .line 1224
    iget-object v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    #@13
    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    #@15
    .line 1225
    iget-object v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@17
    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@19
    .line 1226
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    #@1b
    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    #@1d
    .line 1227
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@1f
    if-eqz v5, :cond_0

    #@21
    .line 1228
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@23
    invoke-virtual {p2, v5, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    .line 1230
    :cond_0
    iget-wide v6, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@28
    invoke-static {v6, v7}, Landroid/graphics/drawable/VectorDrawable;->-wrap24(J)J

    #@2b
    move-result-wide v6

    #@2c
    iput-wide v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@2e
    .line 1232
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@30
    .line 1233
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v3, 0x0

    #@31
    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@34
    move-result v5

    #@35
    if-ge v3, v5, :cond_5

    #@37
    .line 1234
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VObject;

    #@3d
    .line 1235
    .local v1, "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    instance-of v5, v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@3f
    if-eqz v5, :cond_2

    #@41
    move-object v2, v1

    #@42
    .line 1236
    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@44
    .line 1237
    .local v2, "copyGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    new-instance v5, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@46
    invoke-direct {v5, v2, p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    #@49
    invoke-virtual {p0, v5}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    #@4c
    .line 1233
    .end local v1    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    .end local v2    # "copyGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@4e
    goto :goto_0

    #@4f
    .line 1240
    .restart local v1    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_2
    instance-of v5, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@51
    if-eqz v5, :cond_3

    #@53
    .line 1241
    new-instance v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@55
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@57
    .end local v1    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-direct {v4, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V

    #@5a
    .line 1247
    .local v4, "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :goto_2
    invoke-virtual {p0, v4}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    #@5d
    .line 1248
    iget-object v5, v4, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    #@5f
    if-eqz v5, :cond_1

    #@61
    .line 1249
    iget-object v5, v4, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    #@63
    invoke-virtual {p2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@66
    goto :goto_1

    #@67
    .line 1242
    .end local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    .restart local v1    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_3
    instance-of v5, v1, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    #@69
    if-eqz v5, :cond_4

    #@6b
    .line 1243
    new-instance v4, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    #@6d
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    #@6f
    .end local v1    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-direct {v4, v1}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VClipPath;)V

    #@72
    .restart local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    goto :goto_2

    #@73
    .line 1245
    .end local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    .restart local v1    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    #@75
    const-string/jumbo v6, "Unknown object in the tree!"

    #@78
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v5

    #@7c
    .line 1221
    .end local v1    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_5
    return-void
.end method

.method static getPropertyIndex(Ljava/lang/String;)I
    .locals 1
    .param p0, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1092
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1093
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/lang/Integer;

    #@10
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    #@13
    move-result v0

    #@14
    return v0

    #@15
    .line 1096
    :cond_0
    const/4 v0, -0x1

    #@16
    return v0
.end method


# virtual methods
.method public addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V
    .locals 4
    .param p1, "child"    # Landroid/graphics/drawable/VectorDrawable$VObject;

    #@0
    .prologue
    .line 1273
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@2
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->getNativePtr()J

    #@5
    move-result-wide v2

    #@6
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-wrap27(JJ)V

    #@9
    .line 1274
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@e
    .line 1275
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    #@10
    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    #@13
    move-result v1

    #@14
    or-int/2addr v0, v1

    #@15
    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    #@17
    .line 1272
    return-void
.end method

.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 7
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1387
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    #@2
    if-eqz v5, :cond_0

    #@4
    .line 1388
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    #@6
    .line 1389
    sget-object v6, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    #@8
    .line 1388
    invoke-virtual {p1, v5, v6}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    .line 1390
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@f
    .line 1391
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@12
    .line 1394
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@14
    .line 1395
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v4, 0x0

    #@15
    .local v4, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@18
    move-result v3

    #@19
    .local v3, "count":I
    :goto_0
    if-ge v4, v3, :cond_2

    #@1b
    .line 1396
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VObject;

    #@21
    .line 1397
    .local v1, "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VObject;->canApplyTheme()Z

    #@24
    move-result v5

    #@25
    if-eqz v5, :cond_1

    #@27
    .line 1398
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->applyTheme(Landroid/content/res/Resources$Theme;)V

    #@2a
    .line 1401
    iget-boolean v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    #@2c
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    #@2f
    move-result v6

    #@30
    or-int/2addr v5, v6

    #@31
    iput-boolean v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    #@33
    .line 1395
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@35
    goto :goto_0

    #@36
    .line 1386
    .end local v1    # "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_2
    return-void
.end method

.method public canApplyTheme()Z
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1370
    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 1371
    return v5

    #@6
    .line 1374
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@8
    .line 1375
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v3, 0x0

    #@9
    .local v3, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@c
    move-result v2

    #@d
    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_2

    #@f
    .line 1376
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/graphics/drawable/VectorDrawable$VObject;

    #@15
    .line 1377
    .local v0, "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-virtual {v0}, Landroid/graphics/drawable/VectorDrawable$VObject;->canApplyTheme()Z

    #@18
    move-result v4

    #@19
    if-eqz v4, :cond_1

    #@1b
    .line 1378
    return v5

    #@1c
    .line 1375
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1382
    .end local v0    # "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_2
    const/4 v4, 0x0

    #@20
    return v4
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1269
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getNativePtr()J
    .locals 2

    #@0
    .prologue
    .line 1288
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@2
    return-wide v0
.end method

.method getNativeSize()I
    .locals 3

    #@0
    .prologue
    .line 1361
    const/16 v1, 0x64

    #@2
    .line 1362
    .local v1, "size":I
    const/4 v0, 0x0

    #@3
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@8
    move-result v2

    #@9
    if-ge v0, v2, :cond_0

    #@b
    .line 1363
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@d
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VObject;

    #@13
    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VObject;->getNativeSize()I

    #@16
    move-result v2

    #@17
    add-int/2addr v1, v2

    #@18
    .line 1362
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 1365
    :cond_0
    return v1
.end method

.method public getPivotX()F
    .locals 2

    #@0
    .prologue
    .line 1421
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap4(J)F

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public getPivotY()F
    .locals 2

    #@0
    .prologue
    .line 1433
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap5(J)F

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method getProperty(Ljava/lang/String;)Landroid/util/Property;
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1260
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/HashMap;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 1261
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/HashMap;

    #@a
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/util/Property;

    #@10
    return-object v0

    #@11
    .line 1264
    :cond_0
    const/4 v0, 0x0

    #@12
    return-object v0
.end method

.method public getRotation()F
    .locals 2

    #@0
    .prologue
    .line 1409
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap7(J)F

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public getScaleX()F
    .locals 2

    #@0
    .prologue
    .line 1445
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap8(J)F

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public getScaleY()F
    .locals 2

    #@0
    .prologue
    .line 1457
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap9(J)F

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public getTranslateX()F
    .locals 2

    #@0
    .prologue
    .line 1469
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap12(J)F

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public getTranslateY()F
    .locals 2

    #@0
    .prologue
    .line 1481
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@8
    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-wrap13(J)F

    #@b
    move-result v0

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1294
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    #@2
    .line 1293
    invoke-static {p1, p3, p2, v1}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 1295
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@9
    .line 1296
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@c
    .line 1292
    return-void
.end method

.method public isStateful()Z
    .locals 1

    #@0
    .prologue
    .line 1355
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    #@2
    return v0
.end method

.method public onStateChange([I)Z
    .locals 6
    .param p1, "stateSet"    # [I

    #@0
    .prologue
    .line 1340
    const/4 v0, 0x0

    #@1
    .line 1342
    .local v0, "changed":Z
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@3
    .line 1343
    .local v2, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v4, 0x0

    #@4
    .local v4, "i":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v3

    #@8
    .end local v0    # "changed":Z
    .local v3, "count":I
    :goto_0
    if-ge v4, v3, :cond_1

    #@a
    .line 1344
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VObject;

    #@10
    .line 1345
    .local v1, "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-virtual {v1}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    #@13
    move-result v5

    #@14
    if-eqz v5, :cond_0

    #@16
    .line 1346
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->onStateChange([I)Z

    #@19
    move-result v5

    #@1a
    or-int/2addr v0, v5

    #@1b
    .line 1343
    :cond_0
    add-int/lit8 v4, v4, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1350
    .end local v1    # "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_1
    return v0
.end method

.method public setPivotX(F)V
    .locals 2
    .param p1, "pivotX"    # F

    #@0
    .prologue
    .line 1426
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1427
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap33(JF)V

    #@b
    .line 1425
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 2
    .param p1, "pivotY"    # F

    #@0
    .prologue
    .line 1438
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1439
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap34(JF)V

    #@b
    .line 1437
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 2
    .param p1, "rotation"    # F

    #@0
    .prologue
    .line 1414
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1415
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap36(JF)V

    #@b
    .line 1413
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 2
    .param p1, "scaleX"    # F

    #@0
    .prologue
    .line 1450
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1451
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap37(JF)V

    #@b
    .line 1449
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 2
    .param p1, "scaleY"    # F

    #@0
    .prologue
    .line 1462
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1463
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap38(JF)V

    #@b
    .line 1461
    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 2
    .param p1, "translateX"    # F

    #@0
    .prologue
    .line 1474
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1475
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap42(JF)V

    #@b
    .line 1473
    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 2
    .param p1, "translateY"    # F

    #@0
    .prologue
    .line 1486
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1487
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@8
    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-wrap43(JF)V

    #@b
    .line 1485
    :cond_0
    return-void
.end method

.method public setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V
    .locals 2
    .param p1, "treeRoot"    # Lcom/android/internal/util/VirtualRefBasePtr;

    #@0
    .prologue
    .line 1280
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    #@3
    .line 1281
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@9
    move-result v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 1282
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@e
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VObject;

    #@14
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    #@17
    .line 1281
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 1279
    :cond_0
    return-void
.end method

.method updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 13
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 1301
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    #@2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@5
    move-result v1

    #@6
    or-int/2addr v0, v1

    #@7
    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    #@9
    .line 1304
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    #@f
    .line 1305
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    #@11
    if-nez v0, :cond_0

    #@13
    .line 1308
    const/4 v0, 0x7

    #@14
    new-array v0, v0, [F

    #@16
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    #@18
    .line 1310
    :cond_0
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@1a
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    #@1c
    const/4 v12, 0x7

    #@1d
    invoke-static {v0, v1, v11, v12}, Landroid/graphics/drawable/VectorDrawable;->-wrap1(J[FI)Z

    #@20
    move-result v10

    #@21
    .line 1311
    .local v10, "success":Z
    if-nez v10, :cond_1

    #@23
    .line 1312
    new-instance v0, Ljava/lang/RuntimeException;

    #@25
    const-string/jumbo v1, "Error: inconsistent property count"

    #@28
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v0

    #@2c
    .line 1315
    :cond_1
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    #@2e
    const/4 v1, 0x0

    #@2f
    aget v0, v0, v1

    #@31
    .line 1314
    const/4 v1, 0x5

    #@32
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@35
    move-result v2

    #@36
    .line 1317
    .local v2, "rotate":F
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    #@38
    const/4 v1, 0x1

    #@39
    aget v0, v0, v1

    #@3b
    .line 1316
    const/4 v1, 0x1

    #@3c
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@3f
    move-result v3

    #@40
    .line 1319
    .local v3, "pivotX":F
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    #@42
    const/4 v1, 0x2

    #@43
    aget v0, v0, v1

    #@45
    .line 1318
    const/4 v1, 0x2

    #@46
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@49
    move-result v4

    #@4a
    .line 1321
    .local v4, "pivotY":F
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    #@4c
    const/4 v1, 0x3

    #@4d
    aget v0, v0, v1

    #@4f
    .line 1320
    const/4 v1, 0x3

    #@50
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@53
    move-result v5

    #@54
    .line 1323
    .local v5, "scaleX":F
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    #@56
    const/4 v1, 0x4

    #@57
    aget v0, v0, v1

    #@59
    .line 1322
    const/4 v1, 0x4

    #@5a
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@5d
    move-result v6

    #@5e
    .line 1325
    .local v6, "scaleY":F
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    #@60
    const/4 v1, 0x5

    #@61
    aget v0, v0, v1

    #@63
    .line 1324
    const/4 v1, 0x6

    #@64
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@67
    move-result v7

    #@68
    .line 1327
    .local v7, "translateX":F
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    #@6a
    const/4 v1, 0x6

    #@6b
    aget v0, v0, v1

    #@6d
    .line 1326
    const/4 v1, 0x7

    #@6e
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@71
    move-result v8

    #@72
    .line 1329
    .local v8, "translateY":F
    const/4 v0, 0x0

    #@73
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@76
    move-result-object v9

    #@77
    .line 1330
    .local v9, "groupName":Ljava/lang/String;
    if-eqz v9, :cond_2

    #@79
    .line 1331
    iput-object v9, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@7b
    .line 1332
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@7d
    iget-object v11, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@7f
    invoke-static {v0, v1, v11}, Landroid/graphics/drawable/VectorDrawable;->-wrap30(JLjava/lang/String;)V

    #@82
    .line 1334
    :cond_2
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    #@84
    invoke-static/range {v0 .. v8}, Landroid/graphics/drawable/VectorDrawable;->-wrap50(JFFFFFFF)V

    #@87
    .line 1299
    return-void
.end method
