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


# static fields
.field private static final greylist-max-o NATIVE_ALLOCATION_SIZE:I = 0x64

.field private static final greylist-max-o PIVOT_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PIVOT_X_INDEX:I = 0x1

.field private static final greylist-max-o PIVOT_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PIVOT_Y_INDEX:I = 0x2

.field private static final greylist-max-o ROTATION:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o ROTATION_INDEX:I = 0x0

.field private static final greylist-max-o SCALE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o SCALE_X_INDEX:I = 0x3

.field private static final greylist-max-o SCALE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o SCALE_Y_INDEX:I = 0x4

.field private static final greylist-max-o TRANSFORM_PROPERTY_COUNT:I = 0x7

.field private static final greylist-max-o TRANSLATE_X:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TRANSLATE_X_INDEX:I = 0x5

.field private static final greylist-max-o TRANSLATE_Y:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o TRANSLATE_Y_INDEX:I = 0x6

.field private static final blacklist sPropertyIndexMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist sPropertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mChangingConfigurations:I

.field private final greylist-max-o mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/drawable/VectorDrawable$VObject;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mGroupName:Ljava/lang/String;

.field private greylist-max-o mIsStateful:Z

.field private final greylist-max-o mNativePtr:J

.field private greylist-max-o mThemeAttrs:[I

.field private greylist-max-o mTransform:[F


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmChangingConfigurations(Landroid/graphics/drawable/VectorDrawable$VGroup;)I
    .registers 1

    iget p0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNativePtr(Landroid/graphics/drawable/VectorDrawable$VGroup;)J
    .registers 3

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    return-wide v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 16

    .line 1174
    nop

    .line 1175
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1176
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1177
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 1178
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 1179
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 1180
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    .line 1181
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1174
    const-string/jumbo v1, "translateX"

    const-string/jumbo v3, "translateY"

    const-string/jumbo v5, "scaleX"

    const-string/jumbo v7, "scaleY"

    const-string/jumbo v9, "pivotX"

    const-string/jumbo v11, "pivotY"

    const-string/jumbo v13, "rotation"

    invoke-static/range {v1 .. v14}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/Map;

    .line 1193
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$1;

    const-string/jumbo v1, "translateX"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_X:Landroid/util/Property;

    .line 1206
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$2;

    const-string/jumbo v1, "translateY"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_Y:Landroid/util/Property;

    .line 1219
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$3;

    const-string/jumbo v1, "scaleX"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$3;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_X:Landroid/util/Property;

    .line 1232
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$4;

    const-string/jumbo v1, "scaleY"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$4;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_Y:Landroid/util/Property;

    .line 1245
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$5;

    const-string/jumbo v1, "pivotX"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$5;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_X:Landroid/util/Property;

    .line 1258
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$6;

    const-string/jumbo v1, "pivotY"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$6;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_Y:Landroid/util/Property;

    .line 1271
    new-instance v0, Landroid/graphics/drawable/VectorDrawable$VGroup$7;

    const-string/jumbo v1, "rotation"

    invoke-direct {v0, v1}, Landroid/graphics/drawable/VectorDrawable$VGroup$7;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->ROTATION:Landroid/util/Property;

    .line 1284
    sget-object v3, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_X:Landroid/util/Property;

    sget-object v5, Landroid/graphics/drawable/VectorDrawable$VGroup;->TRANSLATE_Y:Landroid/util/Property;

    sget-object v7, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_X:Landroid/util/Property;

    sget-object v9, Landroid/graphics/drawable/VectorDrawable$VGroup;->SCALE_Y:Landroid/util/Property;

    sget-object v11, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_X:Landroid/util/Property;

    sget-object v13, Landroid/graphics/drawable/VectorDrawable$VGroup;->PIVOT_Y:Landroid/util/Property;

    const-string/jumbo v14, "rotation"

    sget-object v15, Landroid/graphics/drawable/VectorDrawable$VGroup;->ROTATION:Landroid/util/Property;

    const-string/jumbo v2, "translateX"

    const-string/jumbo v4, "translateY"

    const-string/jumbo v6, "scaleX"

    const-string/jumbo v8, "scaleY"

    const-string/jumbo v10, "pivotX"

    const-string/jumbo v12, "pivotY"

    invoke-static/range {v2 .. v15}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/Map;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 1344
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    .line 1297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1304
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1345
    invoke-static {}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateGroup()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    .line 1346
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V
    .registers 8
    .param p1, "copy"    # Landroid/graphics/drawable/VectorDrawable$VGroup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/VectorDrawable$VGroup;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1310
    .local p2, "targetsMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VObject;-><init>()V

    .line 1297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1304
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1312
    iget-boolean v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    .line 1313
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    .line 1314
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1315
    iget v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    .line 1316
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 1317
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1319
    :cond_26
    iget-wide v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnCreateGroup(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    .line 1321
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1322
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_31
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_7d

    .line 1323
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1324
    .local v2, "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable$VGroup;

    if-eqz v3, :cond_4d

    .line 1325
    move-object v3, v2

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VGroup;

    .line 1326
    .local v3, "copyGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    new-instance v4, Landroid/graphics/drawable/VectorDrawable$VGroup;

    invoke-direct {v4, v3, p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 1327
    .end local v3    # "copyGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    goto :goto_72

    .line 1329
    :cond_4d
    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    if-eqz v3, :cond_5a

    .line 1330
    new-instance v3, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    move-object v4, v2

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V

    .local v3, "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    goto :goto_66

    .line 1331
    .end local v3    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_5a
    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    if-eqz v3, :cond_75

    .line 1332
    new-instance v3, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    move-object v4, v2

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VClipPath;)V

    .line 1336
    .restart local v3    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :goto_66
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/VectorDrawable$VGroup;->addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V

    .line 1337
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    if-eqz v4, :cond_72

    .line 1338
    iget-object v4, v3, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    invoke-virtual {p2, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    .end local v2    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    .end local v3    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_72
    :goto_72
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    .line 1334
    .restart local v2    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_75
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unknown object in the tree!"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1342
    .end local v1    # "i":I
    .end local v2    # "copyChild":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_7d
    return-void
.end method

.method static greylist-max-o getPropertyIndex(Ljava/lang/String;)I
    .registers 2
    .param p0, "propertyName"    # Ljava/lang/String;

    .line 1184
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1185
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyIndexMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 1188
    :cond_15
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public greylist-max-o addChild(Landroid/graphics/drawable/VectorDrawable$VObject;)V
    .registers 6
    .param p1, "child"    # Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1362
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->getNativePtr()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnAddChild(JJ)V

    .line 1363
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    invoke-virtual {p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    .line 1365
    return-void
.end method

.method public greylist-max-o applyTheme(Landroid/content/res/Resources$Theme;)V
    .registers 8
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    .line 1491
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    if-eqz v0, :cond_12

    .line 1492
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1494
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1495
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1498
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_12
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1499
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "count":I
    :goto_19
    if-ge v1, v2, :cond_36

    .line 1500
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1501
    .local v3, "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-virtual {v3}, Landroid/graphics/drawable/VectorDrawable$VObject;->canApplyTheme()Z

    move-result v4

    if-eqz v4, :cond_33

    .line 1502
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->applyTheme(Landroid/content/res/Resources$Theme;)V

    .line 1505
    iget-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    invoke-virtual {v3}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v5

    or-int/2addr v4, v5

    iput-boolean v4, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    .line 1499
    .end local v3    # "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 1508
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_36
    return-void
.end method

.method public greylist-max-o canApplyTheme()Z
    .registers 7

    .line 1474
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1475
    return v1

    .line 1478
    :cond_6
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1479
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "count":I
    :goto_d
    if-ge v2, v3, :cond_1f

    .line 1480
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1481
    .local v4, "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VObject;->canApplyTheme()Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 1482
    return v1

    .line 1479
    .end local v4    # "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1486
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public greylist-max-o getGroupName()Ljava/lang/String;
    .registers 2

    .line 1358
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getNativePtr()J
    .registers 3

    .line 1377
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    return-wide v0
.end method

.method greylist-max-o getNativeSize()I
    .registers 4

    .line 1465
    const/16 v0, 0x64

    .line 1466
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1b

    .line 1467
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v2}, Landroid/graphics/drawable/VectorDrawable$VObject;->getNativeSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1466
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1469
    .end local v1    # "i":I
    :cond_1b
    return v0
.end method

.method public greylist-max-o getPivotX()F
    .registers 3

    .line 1526
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetPivotX(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o getPivotY()F
    .registers 3

    .line 1539
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetPivotY(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method greylist-max-o getProperty(Ljava/lang/String;)Landroid/util/Property;
    .registers 3
    .param p1, "propertyName"    # Ljava/lang/String;

    .line 1349
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1350
    sget-object v0, Landroid/graphics/drawable/VectorDrawable$VGroup;->sPropertyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Property;

    return-object v0

    .line 1353
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getRotation()F
    .registers 3

    .line 1513
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetRotation(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o getScaleX()F
    .registers 3

    .line 1552
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetScaleX(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o getScaleY()F
    .registers 3

    .line 1564
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetScaleY(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o getTranslateX()F
    .registers 3

    .line 1576
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetTranslateX(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o getTranslateY()F
    .registers 3

    .line 1589
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetTranslateY(J)F

    move-result v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public greylist-max-o hasFocusStateSpecified()Z
    .registers 7

    .line 1449
    const/4 v0, 0x0

    .line 1451
    .local v0, "result":Z
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1452
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "count":I
    :goto_8
    if-ge v2, v3, :cond_1e

    .line 1453
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1454
    .local v4, "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1455
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VObject;->hasFocusStateSpecified()Z

    move-result v5

    or-int/2addr v0, v5

    .line 1452
    .end local v4    # "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1459
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1e
    return v0
.end method

.method public greylist-max-o inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .registers 5
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    .line 1382
    sget-object v0, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    invoke-static {p1, p3, p2, v0}, Landroid/graphics/drawable/Drawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1384
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    .line 1385
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 1386
    return-void
.end method

.method public greylist-max-o isStateful()Z
    .registers 2

    .line 1444
    iget-boolean v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mIsStateful:Z

    return v0
.end method

.method public greylist-max-o onStateChange([I)Z
    .registers 8
    .param p1, "stateSet"    # [I

    .line 1429
    const/4 v0, 0x0

    .line 1431
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    .line 1432
    .local v1, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/drawable/VectorDrawable$VObject;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "count":I
    :goto_8
    if-ge v2, v3, :cond_1e

    .line 1433
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/VectorDrawable$VObject;

    .line 1434
    .local v4, "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    invoke-virtual {v4}, Landroid/graphics/drawable/VectorDrawable$VObject;->isStateful()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 1435
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->onStateChange([I)Z

    move-result v5

    or-int/2addr v0, v5

    .line 1432
    .end local v4    # "child":Landroid/graphics/drawable/VectorDrawable$VObject;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1439
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_1e
    return v0
.end method

.method public greylist setPivotX(F)V
    .registers 4
    .param p1, "pivotX"    # F

    .line 1532
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1533
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetPivotX(JF)V

    .line 1535
    :cond_b
    return-void
.end method

.method public greylist setPivotY(F)V
    .registers 4
    .param p1, "pivotY"    # F

    .line 1545
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1546
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetPivotY(JF)V

    .line 1548
    :cond_b
    return-void
.end method

.method public greylist setRotation(F)V
    .registers 4
    .param p1, "rotation"    # F

    .line 1519
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1520
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetRotation(JF)V

    .line 1522
    :cond_b
    return-void
.end method

.method public greylist-max-o setScaleX(F)V
    .registers 4
    .param p1, "scaleX"    # F

    .line 1557
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1558
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetScaleX(JF)V

    .line 1560
    :cond_b
    return-void
.end method

.method public greylist-max-o setScaleY(F)V
    .registers 4
    .param p1, "scaleY"    # F

    .line 1569
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1570
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetScaleY(JF)V

    .line 1572
    :cond_b
    return-void
.end method

.method public greylist setTranslateX(F)V
    .registers 4
    .param p1, "translateX"    # F

    .line 1582
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1583
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTranslateX(JF)V

    .line 1585
    :cond_b
    return-void
.end method

.method public greylist setTranslateY(F)V
    .registers 4
    .param p1, "translateY"    # F

    .line 1595
    invoke-virtual {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->isTreeValid()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1596
    iget-wide v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static {v0, v1, p1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetTranslateY(JF)V

    .line 1598
    :cond_b
    return-void
.end method

.method public greylist-max-o setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V
    .registers 4
    .param p1, "treeRoot"    # Lcom/android/internal/util/VirtualRefBasePtr;

    .line 1369
    invoke-super {p0, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    .line 1370
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 1371
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VObject;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/VectorDrawable$VObject;->setTree(Lcom/android/internal/util/VirtualRefBasePtr;)V

    .line 1370
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1373
    .end local v0    # "i":I
    :cond_1a
    return-void
.end method

.method greylist-max-o updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .registers 16
    .param p1, "a"    # Landroid/content/res/TypedArray;

    .line 1390
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    .line 1393
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    .line 1394
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v1, 0x7

    if-nez v0, :cond_18

    .line 1397
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    .line 1399
    :cond_18
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    invoke-static {v2, v3, v0, v1}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnGetGroupProperties(J[FI)Z

    move-result v0

    .line 1400
    .local v0, "success":Z
    if-eqz v0, :cond_76

    .line 1403
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    const/4 v4, 0x5

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    .line 1405
    .local v7, "rotate":F
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v5, 0x1

    aget v2, v2, v5

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    .line 1407
    .local v8, "pivotX":F
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v5, 0x2

    aget v2, v2, v5

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 1409
    .local v9, "pivotY":F
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v5, 0x3

    aget v2, v2, v5

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 1411
    .local v10, "scaleX":F
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    const/4 v5, 0x4

    aget v2, v2, v5

    invoke-virtual {p1, v5, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    .line 1413
    .local v11, "scaleY":F
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    aget v2, v2, v4

    const/4 v4, 0x6

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    .line 1415
    .local v12, "translateX":F
    iget-object v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTransform:[F

    aget v2, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 1418
    .local v13, "translateY":F
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1419
    .local v1, "groupName":Ljava/lang/String;
    if-eqz v1, :cond_70

    .line 1420
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    .line 1421
    iget-wide v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    iget-object v4, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnSetName(JLjava/lang/String;)V

    .line 1423
    :cond_70
    iget-wide v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mNativePtr:J

    invoke-static/range {v5 .. v13}, Landroid/graphics/drawable/VectorDrawable;->-$$Nest$smnUpdateGroupProperties(JFFFFFFF)V

    .line 1425
    return-void

    .line 1401
    .end local v1    # "groupName":Ljava/lang/String;
    .end local v7    # "rotate":F
    .end local v8    # "pivotX":F
    .end local v9    # "pivotY":F
    .end local v10    # "scaleX":F
    .end local v11    # "scaleY":F
    .end local v12    # "translateX":F
    .end local v13    # "translateY":F
    :cond_76
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Error: inconsistent property count"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
