.class Landroid/graphics/drawable/VectorDrawable$VGroup;
.super Ljava/lang/Object;
.source "VectorDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/drawable/VectorDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VGroup"
.end annotation


# instance fields
.field private mChangingConfigurations:I

.field final mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupName:Ljava/lang/String;

.field private final mLocalMatrix:Landroid/graphics/Matrix;

.field private mPivotX:F

.field private mPivotY:F

.field private mRotate:F

.field private mScaleX:F

.field private mScaleY:F

.field private final mStackedMatrix:Landroid/graphics/Matrix;

.field private mThemeAttrs:[I

.field private mTranslateX:F

.field private mTranslateY:F


# direct methods
.method static synthetic -get0(Landroid/graphics/drawable/VectorDrawable$VGroup;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    #@2
    return v0
.end method

.method static synthetic -get1(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Landroid/graphics/drawable/VectorDrawable$VGroup;)F
    .locals 1

    #@0
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    #@2
    return v0
.end method

.method static synthetic -get3(Landroid/graphics/drawable/VectorDrawable$VGroup;)Landroid/graphics/Matrix;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 3

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    const/4 v1, 0x0

    #@3
    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 1188
    new-instance v0, Landroid/graphics/Matrix;

    #@8
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@b
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    #@d
    .line 1192
    new-instance v0, Ljava/util/ArrayList;

    #@f
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@12
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@14
    .line 1194
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    #@16
    .line 1195
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    #@18
    .line 1196
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    #@1a
    .line 1197
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    #@1c
    .line 1198
    iput v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    #@1e
    .line 1199
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    #@20
    .line 1200
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    #@22
    .line 1204
    new-instance v0, Landroid/graphics/Matrix;

    #@24
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@27
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    #@29
    .line 1207
    const/4 v0, 0x0

    #@2a
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@2c
    .line 1249
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V
    .locals 9
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
    const/high16 v8, 0x3f800000    # 1.0f

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v6, 0x0

    #@4
    .line 1209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 1188
    new-instance v5, Landroid/graphics/Matrix;

    #@9
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    #@c
    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mStackedMatrix:Landroid/graphics/Matrix;

    #@e
    .line 1192
    new-instance v5, Ljava/util/ArrayList;

    #@10
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@13
    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@15
    .line 1194
    iput v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    #@17
    .line 1195
    iput v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    #@19
    .line 1196
    iput v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    #@1b
    .line 1197
    iput v8, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    #@1d
    .line 1198
    iput v8, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    #@1f
    .line 1199
    iput v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    #@21
    .line 1200
    iput v6, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    #@23
    .line 1204
    new-instance v5, Landroid/graphics/Matrix;

    #@25
    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    #@28
    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    #@2a
    .line 1207
    iput-object v7, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@2c
    .line 1210
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    #@2e
    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    #@30
    .line 1211
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    #@32
    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    #@34
    .line 1212
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    #@36
    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    #@38
    .line 1213
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    #@3a
    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    #@3c
    .line 1214
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    #@3e
    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    #@40
    .line 1215
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    #@42
    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    #@44
    .line 1216
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    #@46
    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    #@48
    .line 1217
    iget-object v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    #@4a
    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    #@4c
    .line 1218
    iget-object v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@4e
    iput-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@50
    .line 1219
    iget v5, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    #@52
    iput v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    #@54
    .line 1220
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@56
    if-eqz v5, :cond_0

    #@58
    .line 1221
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@5a
    invoke-virtual {p2, v5, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5d
    .line 1224
    :cond_0
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    #@5f
    iget-object v6, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    #@61
    invoke-virtual {v5, v6}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@64
    .line 1226
    iget-object v0, p1, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@66
    .line 1227
    .local v0, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v3, 0x0

    #@67
    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@6a
    move-result v5

    #@6b
    if-ge v3, v5, :cond_5

    #@6d
    .line 1228
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@70
    move-result-object v1

    #@71
    .line 1229
    .local v1, "copyChild":Ljava/lang/Object;
    instance-of v5, v1, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@73
    if-eqz v5, :cond_2

    #@75
    move-object v2, v1

    #@76
    .line 1230
    check-cast v2, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@78
    .line 1231
    .local v2, "copyGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@7a
    new-instance v6, Landroid/graphics/drawable/VectorDrawable$VGroup;

    #@7c
    invoke-direct {v6, v2, p2}, Landroid/graphics/drawable/VectorDrawable$VGroup;-><init>(Landroid/graphics/drawable/VectorDrawable$VGroup;Landroid/util/ArrayMap;)V

    #@7f
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@82
    .line 1227
    .end local v1    # "copyChild":Ljava/lang/Object;
    .end local v2    # "copyGroup":Landroid/graphics/drawable/VectorDrawable$VGroup;
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@84
    goto :goto_0

    #@85
    .line 1233
    .restart local v1    # "copyChild":Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    #@86
    .line 1234
    .local v4, "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    instance-of v5, v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@88
    if-eqz v5, :cond_3

    #@8a
    .line 1235
    new-instance v4, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@8c
    .end local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VFullPath;

    #@8e
    .end local v1    # "copyChild":Ljava/lang/Object;
    invoke-direct {v4, v1}, Landroid/graphics/drawable/VectorDrawable$VFullPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VFullPath;)V

    #@91
    .line 1241
    .local v4, "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :goto_2
    iget-object v5, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChildren:Ljava/util/ArrayList;

    #@93
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@96
    .line 1242
    iget-object v5, v4, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    #@98
    if-eqz v5, :cond_1

    #@9a
    .line 1243
    iget-object v5, v4, Landroid/graphics/drawable/VectorDrawable$VPath;->mPathName:Ljava/lang/String;

    #@9c
    invoke-virtual {p2, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9f
    goto :goto_1

    #@a0
    .line 1236
    .restart local v1    # "copyChild":Ljava/lang/Object;
    .local v4, "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_3
    instance-of v5, v1, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    #@a2
    if-eqz v5, :cond_4

    #@a4
    .line 1237
    new-instance v4, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    #@a6
    .end local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    check-cast v1, Landroid/graphics/drawable/VectorDrawable$VClipPath;

    #@a8
    .end local v1    # "copyChild":Ljava/lang/Object;
    invoke-direct {v4, v1}, Landroid/graphics/drawable/VectorDrawable$VClipPath;-><init>(Landroid/graphics/drawable/VectorDrawable$VClipPath;)V

    #@ab
    .local v4, "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    goto :goto_2

    #@ac
    .line 1239
    .restart local v1    # "copyChild":Ljava/lang/Object;
    .local v4, "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_4
    new-instance v5, Ljava/lang/IllegalStateException;

    #@ae
    const-string/jumbo v6, "Unknown object in the tree!"

    #@b1
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@b4
    throw v5

    #@b5
    .line 1209
    .end local v1    # "copyChild":Ljava/lang/Object;
    .end local v4    # "newPath":Landroid/graphics/drawable/VectorDrawable$VPath;
    :cond_5
    return-void
.end method

.method private updateLocalMatrix()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1307
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    #@3
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    #@6
    .line 1308
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    #@8
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    #@a
    neg-float v1, v1

    #@b
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    #@d
    neg-float v2, v2

    #@e
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@11
    .line 1309
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    #@13
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    #@15
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    #@17
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@1a
    .line 1310
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    #@1c
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    #@1e
    invoke-virtual {v0, v1, v3, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    #@21
    .line 1311
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    #@23
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    #@25
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    #@27
    add-float/2addr v1, v2

    #@28
    iget v2, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    #@2a
    iget v3, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    #@2c
    add-float/2addr v2, v3

    #@2d
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@30
    .line 1304
    return-void
.end method

.method private updateStateFromTypedArray(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;

    #@0
    .prologue
    .line 1269
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    #@2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getChangingConfigurations()I

    #@5
    move-result v2

    #@6
    or-int/2addr v1, v2

    #@7
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mChangingConfigurations:I

    #@9
    .line 1272
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->extractThemeAttrs()[I

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    #@f
    .line 1274
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    #@11
    const/4 v2, 0x5

    #@12
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@15
    move-result v1

    #@16
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    #@18
    .line 1275
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    #@1a
    const/4 v2, 0x1

    #@1b
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@1e
    move-result v1

    #@1f
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    #@21
    .line 1276
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    #@23
    const/4 v2, 0x2

    #@24
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@27
    move-result v1

    #@28
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    #@2a
    .line 1277
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    #@2c
    const/4 v2, 0x3

    #@2d
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@30
    move-result v1

    #@31
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    #@33
    .line 1278
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    #@35
    const/4 v2, 0x4

    #@36
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@39
    move-result v1

    #@3a
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    #@3c
    .line 1279
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    #@3e
    const/4 v2, 0x6

    #@3f
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@42
    move-result v1

    #@43
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    #@45
    .line 1280
    iget v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    #@47
    const/4 v2, 0x7

    #@48
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4b
    move-result v1

    #@4c
    iput v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    #@4e
    .line 1282
    const/4 v1, 0x0

    #@4f
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@52
    move-result-object v0

    #@53
    .line 1283
    .local v0, "groupName":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@55
    .line 1284
    iput-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@57
    .line 1287
    :cond_0
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    #@5a
    .line 1267
    return-void
.end method


# virtual methods
.method public applyTheme(Landroid/content/res/Resources$Theme;)V
    .locals 3
    .param p1, "t"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1295
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1296
    return-void

    #@5
    .line 1299
    :cond_0
    iget-object v1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    #@7
    sget-object v2, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    #@9
    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttributes([I[I)Landroid/content/res/TypedArray;

    #@c
    move-result-object v0

    #@d
    .line 1300
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@10
    .line 1301
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@13
    .line 1294
    return-void
.end method

.method public canApplyTheme()Z
    .locals 1

    #@0
    .prologue
    .line 1291
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mThemeAttrs:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public getGroupName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1253
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mGroupName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getLocalMatrix()Landroid/graphics/Matrix;
    .locals 1

    #@0
    .prologue
    .line 1257
    iget-object v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mLocalMatrix:Landroid/graphics/Matrix;

    #@2
    return-object v0
.end method

.method public getPivotX()F
    .locals 1

    #@0
    .prologue
    .line 1330
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    #@2
    return v0
.end method

.method public getPivotY()F
    .locals 1

    #@0
    .prologue
    .line 1343
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    #@2
    return v0
.end method

.method public getRotation()F
    .locals 1

    #@0
    .prologue
    .line 1317
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    #@2
    return v0
.end method

.method public getScaleX()F
    .locals 1

    #@0
    .prologue
    .line 1356
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    #@2
    return v0
.end method

.method public getScaleY()F
    .locals 1

    #@0
    .prologue
    .line 1369
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    #@2
    return v0
.end method

.method public getTranslateX()F
    .locals 1

    #@0
    .prologue
    .line 1382
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    #@2
    return v0
.end method

.method public getTranslateY()F
    .locals 1

    #@0
    .prologue
    .line 1395
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    #@2
    return v0
.end method

.method public inflate(Landroid/content/res/Resources;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1262
    sget-object v1, Lcom/android/internal/R$styleable;->VectorDrawableGroup:[I

    #@2
    .line 1261
    invoke-static {p1, p3, p2, v1}, Landroid/graphics/drawable/VectorDrawable;->obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@5
    move-result-object v0

    #@6
    .line 1263
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-direct {p0, v0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateStateFromTypedArray(Landroid/content/res/TypedArray;)V

    #@9
    .line 1264
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@c
    .line 1260
    return-void
.end method

.method public setPivotX(F)V
    .locals 1
    .param p1, "pivotX"    # F

    #@0
    .prologue
    .line 1335
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1336
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotX:F

    #@8
    .line 1337
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    #@b
    .line 1334
    :cond_0
    return-void
.end method

.method public setPivotY(F)V
    .locals 1
    .param p1, "pivotY"    # F

    #@0
    .prologue
    .line 1348
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1349
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mPivotY:F

    #@8
    .line 1350
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    #@b
    .line 1347
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    #@0
    .prologue
    .line 1322
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1323
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mRotate:F

    #@8
    .line 1324
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    #@b
    .line 1321
    :cond_0
    return-void
.end method

.method public setScaleX(F)V
    .locals 1
    .param p1, "scaleX"    # F

    #@0
    .prologue
    .line 1361
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1362
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleX:F

    #@8
    .line 1363
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    #@b
    .line 1360
    :cond_0
    return-void
.end method

.method public setScaleY(F)V
    .locals 1
    .param p1, "scaleY"    # F

    #@0
    .prologue
    .line 1374
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1375
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mScaleY:F

    #@8
    .line 1376
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    #@b
    .line 1373
    :cond_0
    return-void
.end method

.method public setTranslateX(F)V
    .locals 1
    .param p1, "translateX"    # F

    #@0
    .prologue
    .line 1387
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1388
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateX:F

    #@8
    .line 1389
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    #@b
    .line 1386
    :cond_0
    return-void
.end method

.method public setTranslateY(F)V
    .locals 1
    .param p1, "translateY"    # F

    #@0
    .prologue
    .line 1400
    iget v0, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    #@2
    cmpl-float v0, p1, v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1401
    iput p1, p0, Landroid/graphics/drawable/VectorDrawable$VGroup;->mTranslateY:F

    #@8
    .line 1402
    invoke-direct {p0}, Landroid/graphics/drawable/VectorDrawable$VGroup;->updateLocalMatrix()V

    #@b
    .line 1399
    :cond_0
    return-void
.end method
