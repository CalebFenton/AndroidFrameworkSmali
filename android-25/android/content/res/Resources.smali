.class public Landroid/content/res/Resources;
.super Ljava/lang/Object;
.source "Resources.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/res/Resources$NotFoundException;,
        Landroid/content/res/Resources$Theme;,
        Landroid/content/res/Resources$ThemeKey;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "Resources"

.field static mSystem:Landroid/content/res/Resources;

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field final mClassLoader:Ljava/lang/ClassLoader;

.field private mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

.field private mResourcesImpl:Landroid/content/res/ResourcesImpl;

.field private final mThemeRefs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/res/Resources$Theme;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTmpValue:Landroid/util/TypedValue;

.field private final mTmpValueLock:Ljava/lang/Object;

.field final mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool",
            "<",
            "Landroid/content/res/TypedArray;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 98
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    #@7
    .line 101
    const/4 v0, 0x0

    #@8
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    #@a
    .line 95
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    #@0
    .prologue
    .line 235
    const/4 v2, 0x0

    #@1
    invoke-direct {p0, v2}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    #@4
    .line 237
    new-instance v1, Landroid/util/DisplayMetrics;

    #@6
    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    #@9
    .line 238
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v1}, Landroid/util/DisplayMetrics;->setToDefaults()V

    #@c
    .line 240
    new-instance v0, Landroid/content/res/Configuration;

    #@e
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    #@11
    .line 241
    .local v0, "config":Landroid/content/res/Configuration;
    invoke-virtual {v0}, Landroid/content/res/Configuration;->setToDefaults()V

    #@14
    .line 243
    new-instance v2, Landroid/content/res/ResourcesImpl;

    #@16
    invoke-static {}, Landroid/content/res/AssetManager;->getSystem()Landroid/content/res/AssetManager;

    #@19
    move-result-object v3

    #@1a
    .line 244
    new-instance v4, Landroid/view/DisplayAdjustments;

    #@1c
    invoke-direct {v4}, Landroid/view/DisplayAdjustments;-><init>()V

    #@1f
    .line 243
    invoke-direct {v2, v3, v1, v0, v4}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    #@22
    iput-object v2, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@24
    .line 234
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 215
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0}, Landroid/content/res/Resources;-><init>(Ljava/lang/ClassLoader;)V

    #@4
    .line 216
    new-instance v0, Landroid/content/res/ResourcesImpl;

    #@6
    new-instance v1, Landroid/view/DisplayAdjustments;

    #@8
    invoke-direct {v1}, Landroid/view/DisplayAdjustments;-><init>()V

    #@b
    invoke-direct {v0, p1, p2, p3, v1}, Landroid/content/res/ResourcesImpl;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;Landroid/view/DisplayAdjustments;)V

    #@e
    iput-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@10
    .line 214
    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    #@5
    const/4 v1, 0x5

    #@6
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    #@9
    iput-object v0, p0, Landroid/content/res/Resources;->mTypedArrayPool:Landroid/util/Pools$SynchronizedPool;

    #@b
    .line 112
    new-instance v0, Ljava/lang/Object;

    #@d
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@10
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValueLock:Ljava/lang/Object;

    #@12
    .line 115
    new-instance v0, Landroid/util/TypedValue;

    #@14
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    #@17
    iput-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@19
    .line 124
    new-instance v0, Ljava/util/ArrayList;

    #@1b
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    #@20
    .line 228
    if-nez p1, :cond_0

    #@22
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@25
    move-result-object p1

    #@26
    .end local p1    # "classLoader":Ljava/lang/ClassLoader;
    :cond_0
    iput-object p1, p0, Landroid/content/res/Resources;->mClassLoader:Ljava/lang/ClassLoader;

    #@28
    .line 227
    return-void
.end method

.method public static getSystem()Landroid/content/res/Resources;
    .locals 3

    #@0
    .prologue
    .line 173
    sget-object v2, Landroid/content/res/Resources;->sSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 174
    :try_start_0
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    #@5
    .line 175
    .local v0, "ret":Landroid/content/res/Resources;
    if-nez v0, :cond_0

    #@7
    .line 176
    new-instance v0, Landroid/content/res/Resources;

    #@9
    .end local v0    # "ret":Landroid/content/res/Resources;
    invoke-direct {v0}, Landroid/content/res/Resources;-><init>()V

    #@c
    .line 177
    .restart local v0    # "ret":Landroid/content/res/Resources;
    sput-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    :cond_0
    monitor-exit v2

    #@f
    .line 179
    return-object v0

    #@10
    .line 173
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method public static obtainAttributes(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "set"    # Landroid/util/AttributeSet;
    .param p3, "attrs"    # [I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2146
    if-nez p1, :cond_0

    #@3
    .line 2147
    invoke-virtual {p0, p2, p3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 2149
    :cond_0
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method private obtainTempTypedValue()Landroid/util/TypedValue;
    .locals 3

    #@0
    .prologue
    .line 1197
    const/4 v0, 0x0

    #@1
    .line 1198
    .local v0, "tmpValue":Landroid/util/TypedValue;
    iget-object v2, p0, Landroid/content/res/Resources;->mTmpValueLock:Ljava/lang/Object;

    #@3
    monitor-enter v2

    #@4
    .line 1199
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1200
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@a
    .line 1201
    .local v0, "tmpValue":Landroid/util/TypedValue;
    const/4 v1, 0x0

    #@b
    iput-object v1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .end local v0    # "tmpValue":Landroid/util/TypedValue;
    :cond_0
    monitor-exit v2

    #@e
    .line 1204
    if-nez v0, :cond_1

    #@10
    .line 1205
    new-instance v1, Landroid/util/TypedValue;

    #@12
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    #@15
    return-object v1

    #@16
    .line 1198
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1

    #@19
    .line 1207
    :cond_1
    return-object v0
.end method

.method private releaseTempTypedValue(Landroid/util/TypedValue;)V
    .locals 2
    .param p1, "value"    # Landroid/util/TypedValue;

    #@0
    .prologue
    .line 1217
    iget-object v1, p0, Landroid/content/res/Resources;->mTmpValueLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1218
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1219
    iput-object p1, p0, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    :cond_0
    monitor-exit v1

    #@a
    .line 1216
    return-void

    #@b
    .line 1217
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public static resourceHasPackage(I)Z
    .locals 2
    .param p0, "resid"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1882
    ushr-int/lit8 v1, p0, 0x18

    #@3
    if-eqz v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method public static selectDefaultTheme(II)I
    .locals 6
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I

    #@0
    .prologue
    .line 142
    const v2, 0x1030005

    #@3
    .line 143
    const v3, 0x103006b

    #@6
    .line 144
    const v4, 0x1030128

    #@9
    .line 145
    const v5, 0x103013f

    #@c
    move v0, p0

    #@d
    move v1, p1

    #@e
    .line 141
    invoke-static/range {v0 .. v5}, Landroid/content/res/Resources;->selectSystemTheme(IIIIII)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public static selectSystemTheme(IIIIII)I
    .locals 1
    .param p0, "curTheme"    # I
    .param p1, "targetSdkVersion"    # I
    .param p2, "orig"    # I
    .param p3, "holo"    # I
    .param p4, "dark"    # I
    .param p5, "deviceDefault"    # I

    #@0
    .prologue
    .line 151
    if-eqz p0, :cond_0

    #@2
    .line 152
    return p0

    #@3
    .line 154
    :cond_0
    const/16 v0, 0xb

    #@5
    if-ge p1, v0, :cond_1

    #@7
    .line 155
    return p2

    #@8
    .line 157
    :cond_1
    const/16 v0, 0xe

    #@a
    if-ge p1, v0, :cond_2

    #@c
    .line 158
    return p3

    #@d
    .line 160
    :cond_2
    const/16 v0, 0x18

    #@f
    if-ge p1, v0, :cond_3

    #@11
    .line 161
    return p4

    #@12
    .line 163
    :cond_3
    return p5
.end method

.method public static updateSystemConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p0, "config"    # Landroid/content/res/Configuration;
    .param p1, "metrics"    # Landroid/util/DisplayMetrics;
    .param p2, "compat"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 1793
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1794
    sget-object v0, Landroid/content/res/Resources;->mSystem:Landroid/content/res/Resources;

    #@6
    invoke-virtual {v0, p0, p1, p2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    #@9
    .line 1792
    :cond_0
    return-void
.end method


# virtual methods
.method public calcConfigChanges(Landroid/content/res/Configuration;)I
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;

    #@0
    .prologue
    .line 2135
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->calcConfigChanges(Landroid/content/res/Configuration;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public final finishPreloading()V
    .locals 1

    #@0
    .prologue
    .line 2077
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->finishPreloading()V

    #@5
    .line 2076
    return-void
.end method

.method public final flushLayoutCache()V
    .locals 1

    #@0
    .prologue
    .line 2060
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->flushLayoutCache()V

    #@5
    .line 2059
    return-void
.end method

.method public getAnimation(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1139
    const-string/jumbo v0, "anim"

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final getAssets()Landroid/content/res/AssetManager;
    .locals 1

    #@0
    .prologue
    .line 2051
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getBoolean(I)Z
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1027
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    #@5
    move-result-object v0

    #@6
    .line 1029
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v3, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@8
    const/4 v4, 0x1

    #@9
    invoke-virtual {v3, p1, v0, v4}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    #@c
    .line 1030
    iget v3, v0, Landroid/util/TypedValue;->type:I

    #@e
    const/16 v4, 0x10

    #@10
    if-lt v3, v4, :cond_1

    #@12
    .line 1031
    iget v3, v0, Landroid/util/TypedValue;->type:I

    #@14
    const/16 v4, 0x1f

    #@16
    if-gt v3, v4, :cond_1

    #@18
    .line 1032
    iget v3, v0, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    if-eqz v3, :cond_0

    #@1c
    .line 1037
    :goto_0
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@1f
    .line 1032
    return v1

    #@20
    :cond_0
    move v1, v2

    #@21
    goto :goto_0

    #@22
    .line 1034
    :cond_1
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@24
    new-instance v2, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v3, "Resource ID #0x"

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v2

    #@30
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 1035
    const-string/jumbo v3, " type #0x"

    #@3b
    .line 1034
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    .line 1035
    iget v3, v0, Landroid/util/TypedValue;->type:I

    #@41
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    .line 1034
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    .line 1035
    const-string/jumbo v3, " is not valid"

    #@4c
    .line 1034
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@53
    move-result-object v2

    #@54
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@57
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@58
    .line 1036
    :catchall_0
    move-exception v1

    #@59
    .line 1037
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@5c
    .line 1036
    throw v1
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    #@0
    .prologue
    .line 283
    iget-object v0, p0, Landroid/content/res/Resources;->mClassLoader:Ljava/lang/ClassLoader;

    #@2
    return-object v0
.end method

.method public getColor(I)I
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 898
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getColor(ILandroid/content/res/Resources$Theme;)I
    .locals 6
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 919
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    #@3
    move-result-object v2

    #@4
    .line 921
    .local v2, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@6
    .line 922
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v3, 0x1

    #@7
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    #@a
    .line 923
    iget v3, v2, Landroid/util/TypedValue;->type:I

    #@c
    const/16 v4, 0x10

    #@e
    if-lt v3, v4, :cond_0

    #@10
    .line 924
    iget v3, v2, Landroid/util/TypedValue;->type:I

    #@12
    const/16 v4, 0x1f

    #@14
    if-gt v3, v4, :cond_0

    #@16
    .line 925
    iget v3, v2, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 934
    invoke-direct {p0, v2}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@1b
    .line 925
    return v3

    #@1c
    .line 926
    :cond_0
    :try_start_1
    iget v3, v2, Landroid/util/TypedValue;->type:I

    #@1e
    const/4 v4, 0x3

    #@1f
    if-eq v3, v4, :cond_1

    #@21
    .line 927
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    #@23
    new-instance v4, Ljava/lang/StringBuilder;

    #@25
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@28
    const-string/jumbo v5, "Resource ID #0x"

    #@2b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@32
    move-result-object v5

    #@33
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v4

    #@37
    .line 928
    const-string/jumbo v5, " type #0x"

    #@3a
    .line 927
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v4

    #@3e
    .line 928
    iget v5, v2, Landroid/util/TypedValue;->type:I

    #@40
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@43
    move-result-object v5

    #@44
    .line 927
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v4

    #@48
    .line 928
    const-string/jumbo v5, " is not valid"

    #@4b
    .line 927
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v4

    #@4f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v4

    #@53
    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@56
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    .line 933
    .end local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v3

    #@58
    .line 934
    invoke-direct {p0, v2}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@5b
    .line 933
    throw v3

    #@5c
    .line 931
    .restart local v1    # "impl":Landroid/content/res/ResourcesImpl;
    :cond_1
    :try_start_2
    invoke-virtual {v1, p0, v2, p1, p2}, Landroid/content/res/ResourcesImpl;->loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@5f
    move-result-object v0

    #@60
    .line 932
    .local v0, "csl":Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@63
    move-result v3

    #@64
    .line 934
    invoke-direct {p0, v2}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@67
    .line 932
    return v3
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 958
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@4
    move-result-object v0

    #@5
    .line 959
    .local v0, "csl":Landroid/content/res/ColorStateList;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->canApplyTheme()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 960
    const-string/jumbo v1, "Resources"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "ColorStateList "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, " has "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 961
    const-string/jumbo v3, "unresolved theme attributes! Consider using "

    #@2e
    .line 960
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 962
    const-string/jumbo v3, "Resources.getColorStateList(int, Theme) or "

    #@35
    .line 960
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    .line 963
    const-string/jumbo v3, "Context.getColorStateList(int)."

    #@3c
    .line 960
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    .line 963
    new-instance v3, Ljava/lang/RuntimeException;

    #@46
    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    #@49
    .line 960
    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4c
    .line 965
    :cond_0
    return-object v0
.end method

.method public getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 3
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 989
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    #@3
    move-result-object v1

    #@4
    .line 991
    .local v1, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@6
    .line 992
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    #@7
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    #@a
    .line 993
    invoke-virtual {v0, p0, v1, p1, p2}, Landroid/content/res/ResourcesImpl;->loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    move-result-object v2

    #@e
    .line 995
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@11
    .line 993
    return-object v2

    #@12
    .line 994
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v2

    #@13
    .line 995
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@16
    .line 994
    throw v2
.end method

.method public getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;
    .locals 1

    #@0
    .prologue
    .line 1838
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 1

    #@0
    .prologue
    .line 1822
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDimension(I)F
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 594
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    #@3
    move-result-object v1

    #@4
    .line 596
    .local v1, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@6
    .line 597
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    #@7
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    #@a
    .line 598
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@c
    const/4 v3, 0x5

    #@d
    if-ne v2, v3, :cond_0

    #@f
    .line 599
    iget v2, v1, Landroid/util/TypedValue;->data:I

    #@11
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@14
    move-result-object v3

    #@15
    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v2

    #@19
    .line 604
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@1c
    .line 599
    return v2

    #@1d
    .line 601
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    #@1f
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "Resource ID #0x"

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 602
    const-string/jumbo v4, " type #0x"

    #@36
    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 602
    iget v4, v1, Landroid/util/TypedValue;->type:I

    #@3c
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    .line 602
    const-string/jumbo v4, " is not valid"

    #@47
    .line 601
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@52
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    .line 603
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v2

    #@54
    .line 604
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@57
    .line 603
    throw v2
.end method

.method public getDimensionPixelOffset(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 628
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    #@3
    move-result-object v1

    #@4
    .line 630
    .local v1, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@6
    .line 631
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    #@7
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    #@a
    .line 632
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@c
    const/4 v3, 0x5

    #@d
    if-ne v2, v3, :cond_0

    #@f
    .line 633
    iget v2, v1, Landroid/util/TypedValue;->data:I

    #@11
    .line 634
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@14
    move-result-object v3

    #@15
    .line 633
    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v2

    #@19
    .line 639
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@1c
    .line 633
    return v2

    #@1d
    .line 636
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    #@1f
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "Resource ID #0x"

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 637
    const-string/jumbo v4, " type #0x"

    #@36
    .line 636
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 637
    iget v4, v1, Landroid/util/TypedValue;->type:I

    #@3c
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    .line 636
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    .line 637
    const-string/jumbo v4, " is not valid"

    #@47
    .line 636
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@52
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    .line 638
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v2

    #@54
    .line 639
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@57
    .line 638
    throw v2
.end method

.method public getDimensionPixelSize(I)I
    .locals 5
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 664
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    #@3
    move-result-object v1

    #@4
    .line 666
    .local v1, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@6
    .line 667
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    #@7
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    #@a
    .line 668
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@c
    const/4 v3, 0x5

    #@d
    if-ne v2, v3, :cond_0

    #@f
    .line 669
    iget v2, v1, Landroid/util/TypedValue;->data:I

    #@11
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@14
    move-result-object v3

    #@15
    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v2

    #@19
    .line 674
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@1c
    .line 669
    return v2

    #@1d
    .line 671
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    #@1f
    new-instance v3, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v4, "Resource ID #0x"

    #@27
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v3

    #@2b
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    .line 672
    const-string/jumbo v4, " type #0x"

    #@36
    .line 671
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v3

    #@3a
    .line 672
    iget v4, v1, Landroid/util/TypedValue;->type:I

    #@3c
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3f
    move-result-object v4

    #@40
    .line 671
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    .line 672
    const-string/jumbo v4, " is not valid"

    #@47
    .line 671
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v3

    #@4b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@52
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@53
    .line 673
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v2

    #@54
    .line 674
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@57
    .line 673
    throw v2
.end method

.method public getDisplayAdjustments()Landroid/view/DisplayAdjustments;
    .locals 1

    #@0
    .prologue
    .line 1812
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayAdjustments()Landroid/view/DisplayAdjustments;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    #@0
    .prologue
    .line 1807
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 742
    invoke-virtual {p0, p1, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    .line 743
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->canApplyTheme()Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 744
    const-string/jumbo v1, "Resources"

    #@10
    new-instance v2, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v3, "Drawable "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, " has unresolved theme "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    .line 745
    const-string/jumbo v3, "attributes! Consider using Resources.getDrawable(int, Theme) or "

    #@2e
    .line 744
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 746
    const-string/jumbo v3, "Context.getDrawable(int)."

    #@35
    .line 744
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3c
    move-result-object v2

    #@3d
    .line 746
    new-instance v3, Ljava/lang/RuntimeException;

    #@3f
    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    #@42
    .line 744
    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    .line 748
    :cond_0
    return-object v0
.end method

.method public getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "id"    # I
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 767
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    #@3
    move-result-object v2

    #@4
    .line 769
    .local v2, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@6
    .line 770
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    #@a
    .line 771
    const/4 v5, 0x1

    #@b
    move-object v1, p0

    #@c
    move v3, p1

    #@d
    move-object v4, p2

    #@e
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    move-result-object v1

    #@12
    .line 773
    invoke-direct {p0, v2}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@15
    .line 771
    return-object v1

    #@16
    .line 772
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v1

    #@17
    .line 773
    invoke-direct {p0, v2}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@1a
    .line 772
    throw v1
.end method

.method public getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "id"    # I
    .param p2, "density"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 806
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getDrawableForDensity(IILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 824
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    #@3
    move-result-object v2

    #@4
    .line 826
    .local v2, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@6
    .line 827
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v1, 0x1

    #@7
    invoke-virtual {v0, p1, p2, v2, v1}, Landroid/content/res/ResourcesImpl;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    #@a
    .line 832
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@d
    move-result-object v6

    #@e
    .line 833
    .local v6, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v2, Landroid/util/TypedValue;->density:I

    #@10
    iget v3, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    #@12
    if-ne v1, v3, :cond_1

    #@14
    const/4 v5, 0x1

    #@15
    .line 842
    .local v5, "useCache":Z
    :goto_0
    iget v1, v2, Landroid/util/TypedValue;->density:I

    #@17
    if-lez v1, :cond_0

    #@19
    iget v1, v2, Landroid/util/TypedValue;->density:I

    #@1b
    const v3, 0xffff

    #@1e
    if-eq v1, v3, :cond_0

    #@20
    .line 843
    iget v1, v2, Landroid/util/TypedValue;->density:I

    #@22
    if-ne v1, p2, :cond_2

    #@24
    .line 844
    iget v1, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    #@26
    iput v1, v2, Landroid/util/TypedValue;->density:I

    #@28
    :cond_0
    :goto_1
    move-object v1, p0

    #@29
    move v3, p1

    #@2a
    move-object v4, p3

    #@2b
    .line 849
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    move-result-object v1

    #@2f
    .line 851
    invoke-direct {p0, v2}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@32
    .line 849
    return-object v1

    #@33
    .line 833
    .end local v5    # "useCache":Z
    :cond_1
    const/4 v5, 0x0

    #@34
    .restart local v5    # "useCache":Z
    goto :goto_0

    #@35
    .line 846
    :cond_2
    :try_start_1
    iget v1, v2, Landroid/util/TypedValue;->density:I

    #@37
    iget v3, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    #@39
    mul-int/2addr v1, v3

    #@3a
    div-int/2addr v1, p2

    #@3b
    iput v1, v2, Landroid/util/TypedValue;->density:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3d
    goto :goto_1

    #@3e
    .line 850
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    .end local v5    # "useCache":Z
    .end local v6    # "metrics":Landroid/util/DisplayMetrics;
    :catchall_0
    move-exception v1

    #@3f
    .line 851
    invoke-direct {p0, v2}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@42
    .line 850
    throw v1
.end method

.method public final getDrawableInflater()Landroid/graphics/drawable/DrawableInflater;
    .locals 2

    #@0
    .prologue
    .line 291
    iget-object v0, p0, Landroid/content/res/Resources;->mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 292
    new-instance v0, Landroid/graphics/drawable/DrawableInflater;

    #@6
    iget-object v1, p0, Landroid/content/res/Resources;->mClassLoader:Ljava/lang/ClassLoader;

    #@8
    invoke-direct {v0, p0, v1}, Landroid/graphics/drawable/DrawableInflater;-><init>(Landroid/content/res/Resources;Ljava/lang/ClassLoader;)V

    #@b
    iput-object v0, p0, Landroid/content/res/Resources;->mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

    #@d
    .line 294
    :cond_0
    iget-object v0, p0, Landroid/content/res/Resources;->mDrawableInflater:Landroid/graphics/drawable/DrawableInflater;

    #@f
    return-object v0
.end method

.method public getFloat(I)F
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    .line 1081
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    #@3
    move-result-object v0

    #@4
    .line 1083
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@6
    const/4 v2, 0x1

    #@7
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    #@a
    .line 1084
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@c
    const/4 v2, 0x4

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 1085
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result v1

    #@13
    .line 1090
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@16
    .line 1085
    return v1

    #@17
    .line 1087
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@19
    new-instance v2, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v3, "Resource ID #0x"

    #@21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v2

    #@25
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    .line 1088
    const-string/jumbo v3, " type #0x"

    #@30
    .line 1087
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v2

    #@34
    .line 1088
    iget v3, v0, Landroid/util/TypedValue;->type:I

    #@36
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@39
    move-result-object v3

    #@3a
    .line 1087
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3d
    move-result-object v2

    #@3e
    .line 1088
    const-string/jumbo v3, " is not valid"

    #@41
    .line 1087
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    .line 1089
    :catchall_0
    move-exception v1

    #@4e
    .line 1090
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@51
    .line 1089
    throw v1
.end method

.method public getFraction(III)F
    .locals 4
    .param p1, "id"    # I
    .param p2, "base"    # I
    .param p3, "pbase"    # I

    #@0
    .prologue
    .line 696
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    #@3
    move-result-object v0

    #@4
    .line 698
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@6
    const/4 v2, 0x1

    #@7
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    #@a
    .line 699
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@c
    const/4 v2, 0x6

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 700
    iget v1, v0, Landroid/util/TypedValue;->data:I

    #@11
    int-to-float v2, p2

    #@12
    int-to-float v3, p3

    #@13
    invoke-static {v1, v2, v3}, Landroid/util/TypedValue;->complexToFraction(IFF)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    move-result v1

    #@17
    .line 705
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@1a
    .line 700
    return v1

    #@1b
    .line 702
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@1d
    new-instance v2, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v3, "Resource ID #0x"

    #@25
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v2

    #@29
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    .line 703
    const-string/jumbo v3, " type #0x"

    #@34
    .line 702
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    .line 703
    iget v3, v0, Landroid/util/TypedValue;->type:I

    #@3a
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3d
    move-result-object v3

    #@3e
    .line 702
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 703
    const-string/jumbo v3, " is not valid"

    #@45
    .line 702
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@50
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@51
    .line 704
    :catchall_0
    move-exception v1

    #@52
    .line 705
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@55
    .line 704
    throw v1
.end method

.method public getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "defType"    # Ljava/lang/String;
    .param p3, "defPackage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1873
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getImpl()Landroid/content/res/ResourcesImpl;
    .locals 1

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    return-object v0
.end method

.method public getIntArray(I)[I
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 541
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getArrayIntResource(I)[I

    #@9
    move-result-object v0

    #@a
    .line 542
    .local v0, "res":[I
    if-eqz v0, :cond_0

    #@c
    .line 543
    return-object v0

    #@d
    .line 545
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Int array resource ID #0x"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1
.end method

.method public getInteger(I)I
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1053
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    #@3
    move-result-object v0

    #@4
    .line 1055
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@6
    const/4 v2, 0x1

    #@7
    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    #@a
    .line 1056
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@c
    const/16 v2, 0x10

    #@e
    if-lt v1, v2, :cond_0

    #@10
    .line 1057
    iget v1, v0, Landroid/util/TypedValue;->type:I

    #@12
    const/16 v2, 0x1f

    #@14
    if-gt v1, v2, :cond_0

    #@16
    .line 1058
    iget v1, v0, Landroid/util/TypedValue;->data:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    .line 1063
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@1b
    .line 1058
    return v1

    #@1c
    .line 1060
    :cond_0
    :try_start_1
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@1e
    new-instance v2, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v3, "Resource ID #0x"

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@2d
    move-result-object v3

    #@2e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v2

    #@32
    .line 1061
    const-string/jumbo v3, " type #0x"

    #@35
    .line 1060
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    .line 1061
    iget v3, v0, Landroid/util/TypedValue;->type:I

    #@3b
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3e
    move-result-object v3

    #@3f
    .line 1060
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    .line 1061
    const-string/jumbo v3, " is not valid"

    #@46
    .line 1060
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v2

    #@4a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v2

    #@4e
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@51
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@52
    .line 1062
    :catchall_0
    move-exception v1

    #@53
    .line 1063
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@56
    .line 1062
    throw v1
.end method

.method public getLayout(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1115
    const-string/jumbo v0, "layout"

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public getMovie(I)Landroid/graphics/Movie;
    .locals 3
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 870
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    #@3
    move-result-object v1

    #@4
    .line 871
    .local v1, "is":Ljava/io/InputStream;
    invoke-static {v1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    #@7
    move-result-object v2

    #@8
    .line 873
    .local v2, "movie":Landroid/graphics/Movie;
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 877
    :goto_0
    return-object v2

    #@c
    .line 874
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public getPreloadedDrawables()Landroid/util/LongSparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 2084
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getPreloadedDrawables()Landroid/util/LongSparseArray;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getQuantityString(II)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 465
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public varargs getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .param p3, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 438
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    #@3
    move-result-object v1

    #@4
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 439
    .local v0, "raw":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@a
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x0

    #@13
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@16
    move-result-object v1

    #@17
    invoke-static {v1, v0, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    return-object v1
.end method

.method public getQuantityText(II)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "id"    # I
    .param p2, "quantity"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 362
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/ResourcesImpl;->getQuantityText(II)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1948
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourceEntryName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1900
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourceName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getResourcePackageName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1916
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourcePackageName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getResourceTypeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "resid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1932
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0, p1}, Landroid/content/res/ResourcesImpl;->getResourceTypeName(I)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSizeConfigurations()[Landroid/content/res/Configuration;
    .locals 1

    #@0
    .prologue
    .line 1827
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getSizeConfigurations()[Landroid/content/res/Configuration;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/content/res/ConfigurationBoundResourceCache",
            "<",
            "Landroid/animation/StateListAnimator;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 312
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->getStateListAnimatorCache()Landroid/content/res/ConfigurationBoundResourceCache;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 381
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .param p1, "id"    # I
    .param p2, "formatArgs"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 405
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 406
    .local v0, "raw":Ljava/lang/String;
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@6
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getConfiguration()Landroid/content/res/Configuration;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    #@d
    move-result-object v1

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    #@12
    move-result-object v1

    #@13
    invoke-static {v1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public getStringArray(I)[Ljava/lang/String;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceStringArray(I)[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .line 522
    .local v0, "res":[Ljava/lang/String;
    if-eqz v0, :cond_0

    #@c
    .line 523
    return-object v0

    #@d
    .line 525
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "String array resource ID #0x"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 331
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    .line 332
    .local v0, "res":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@c
    .line 333
    return-object v0

    #@d
    .line 335
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "String resource ID #0x"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    .line 336
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    .line 335
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1
.end method

.method public getText(ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "id"    # I
    .param p2, "def"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 483
    if-eqz p1, :cond_0

    #@3
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@5
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceText(I)Ljava/lang/CharSequence;

    #@c
    move-result-object v0

    #@d
    .line 484
    .local v0, "res":Ljava/lang/CharSequence;
    :cond_0
    if-eqz v0, :cond_1

    #@f
    .end local v0    # "res":Ljava/lang/CharSequence;
    :goto_0
    return-object v0

    #@10
    .restart local v0    # "res":Ljava/lang/CharSequence;
    :cond_1
    move-object v0, p2

    #@11
    goto :goto_0
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .locals 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 500
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->getResourceTextArray(I)[Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    .line 501
    .local v0, "res":[Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@c
    .line 502
    return-object v0

    #@d
    .line 504
    :cond_0
    new-instance v1, Landroid/content/res/Resources$NotFoundException;

    #@f
    new-instance v2, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v3, "Text array resource ID #0x"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1
.end method

.method public getValue(ILandroid/util/TypedValue;Z)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1290
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    #@5
    .line 1289
    return-void
.end method

.method public getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "outValue"    # Landroid/util/TypedValue;
    .param p3, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1333
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->getValue(Ljava/lang/String;Landroid/util/TypedValue;Z)V

    #@5
    .line 1332
    return-void
.end method

.method public getValueForDensity(IILandroid/util/TypedValue;Z)V
    .locals 1
    .param p1, "id"    # I
    .param p2, "density"    # I
    .param p3, "outValue"    # Landroid/util/TypedValue;
    .param p4, "resolveRefs"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1308
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/ResourcesImpl;->getValueForDensity(IILandroid/util/TypedValue;Z)V

    #@5
    .line 1307
    return-void
.end method

.method public getXml(I)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1164
    const-string/jumbo v0, "xml"

    #@3
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method loadColorStateList(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1002
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->loadColorStateList(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public loadComplexColor(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;

    #@0
    .prologue
    .line 1010
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->loadComplexColor(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ComplexColor;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method loadDrawable(Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "id"    # I
    .param p3, "theme"    # Landroid/content/res/Resources$Theme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 858
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    const/4 v5, 0x1

    #@3
    move-object v1, p0

    #@4
    move-object v2, p1

    #@5
    move v3, p2

    #@6
    move-object v4, p3

    #@7
    invoke-virtual/range {v0 .. v5}, Landroid/content/res/ResourcesImpl;->loadDrawable(Landroid/content/res/Resources;Landroid/util/TypedValue;ILandroid/content/res/Resources$Theme;Z)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method loadXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 5
    .param p1, "id"    # I
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2098
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    #@3
    move-result-object v1

    #@4
    .line 2100
    .local v1, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@6
    .line 2101
    .local v0, "impl":Landroid/content/res/ResourcesImpl;
    const/4 v2, 0x1

    #@7
    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/ResourcesImpl;->getValue(ILandroid/util/TypedValue;Z)V

    #@a
    .line 2102
    iget v2, v1, Landroid/util/TypedValue;->type:I

    #@c
    const/4 v3, 0x3

    #@d
    if-ne v2, v3, :cond_0

    #@f
    .line 2103
    iget-object v2, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    #@11
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 2104
    iget v3, v1, Landroid/util/TypedValue;->assetCookie:I

    #@17
    .line 2103
    invoke-virtual {v0, v2, p1, v3, p2}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    move-result-object v2

    #@1b
    .line 2109
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@1e
    .line 2103
    return-object v2

    #@1f
    .line 2106
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    #@21
    new-instance v3, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    const-string/jumbo v4, "Resource ID #0x"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v3

    #@35
    .line 2107
    const-string/jumbo v4, " type #0x"

    #@38
    .line 2106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    .line 2107
    iget v4, v1, Landroid/util/TypedValue;->type:I

    #@3e
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@41
    move-result-object v4

    #@42
    .line 2106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v3

    #@46
    .line 2107
    const-string/jumbo v4, " is not valid"

    #@49
    .line 2106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@50
    move-result-object v3

    #@51
    invoke-direct {v2, v3}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@54
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@55
    .line 2108
    .end local v0    # "impl":Landroid/content/res/ResourcesImpl;
    :catchall_0
    move-exception v2

    #@56
    .line 2109
    invoke-direct {p0, v1}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@59
    .line 2108
    throw v2
.end method

.method loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "assetCookie"    # I
    .param p4, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2126
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/content/res/ResourcesImpl;->loadXmlResourceParser(Ljava/lang/String;IILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public final newTheme()Landroid/content/res/Resources$Theme;
    .locals 3

    #@0
    .prologue
    .line 1732
    new-instance v0, Landroid/content/res/Resources$Theme;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/content/res/Resources$Theme;-><init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)V

    #@6
    .line 1733
    .local v0, "theme":Landroid/content/res/Resources$Theme;
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@8
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->newThemeImpl()Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid/content/res/Resources$Theme;->setImpl(Landroid/content/res/ResourcesImpl$ThemeImpl;)V

    #@f
    .line 1734
    iget-object v1, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    #@11
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@13
    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@19
    .line 1735
    return-object v0
.end method

.method public obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 9
    .param p1, "set"    # Landroid/util/AttributeSet;
    .param p2, "attrs"    # [I

    #@0
    .prologue
    .line 1751
    array-length v7, p2

    #@1
    .line 1752
    .local v7, "len":I
    invoke-static {p0, v7}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    #@4
    move-result-object v0

    #@5
    .local v0, "array":Landroid/content/res/TypedArray;
    move-object v8, p1

    #@6
    .line 1758
    check-cast v8, Landroid/content/res/XmlBlock$Parser;

    #@8
    .line 1759
    .local v8, "parser":Landroid/content/res/XmlBlock$Parser;
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@a
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    #@d
    move-result-object v1

    #@e
    iget-wide v2, v8, Landroid/content/res/XmlBlock$Parser;->mParseState:J

    #@10
    .line 1760
    iget-object v5, v0, Landroid/content/res/TypedArray;->mData:[I

    #@12
    iget-object v6, v0, Landroid/content/res/TypedArray;->mIndices:[I

    #@14
    move-object v4, p2

    #@15
    .line 1759
    invoke-virtual/range {v1 .. v6}, Landroid/content/res/AssetManager;->retrieveAttributes(J[I[I[I)Z

    #@18
    .line 1762
    iput-object v8, v0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    #@1a
    .line 1764
    return-object v0
.end method

.method public obtainTypedArray(I)Landroid/content/res/TypedArray;
    .locals 6
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 563
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@3
    .line 564
    .local v1, "impl":Landroid/content/res/ResourcesImpl;
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    #@6
    move-result-object v3

    #@7
    invoke-virtual {v3, p1}, Landroid/content/res/AssetManager;->getArraySize(I)I

    #@a
    move-result v2

    #@b
    .line 565
    .local v2, "len":I
    if-gez v2, :cond_0

    #@d
    .line 566
    new-instance v3, Landroid/content/res/Resources$NotFoundException;

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "Array resource ID #0x"

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-direct {v3, v4}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v3

    #@2b
    .line 569
    :cond_0
    invoke-static {p0, v2}, Landroid/content/res/TypedArray;->obtain(Landroid/content/res/Resources;I)Landroid/content/res/TypedArray;

    #@2e
    move-result-object v0

    #@2f
    .line 570
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/ResourcesImpl;->getAssets()Landroid/content/res/AssetManager;

    #@32
    move-result-object v3

    #@33
    iget-object v4, v0, Landroid/content/res/TypedArray;->mData:[I

    #@35
    invoke-virtual {v3, p1, v4}, Landroid/content/res/AssetManager;->retrieveArray(I[I)I

    #@38
    move-result v3

    #@39
    iput v3, v0, Landroid/content/res/TypedArray;->mLength:I

    #@3b
    .line 571
    iget-object v3, v0, Landroid/content/res/TypedArray;->mIndices:[I

    #@3d
    aput v5, v3, v5

    #@3f
    .line 573
    return-object v0
.end method

.method public openRawResource(I)Ljava/io/InputStream;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1182
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    #@3
    move-result-object v0

    #@4
    .line 1184
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7
    move-result-object v1

    #@8
    .line 1186
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@b
    .line 1184
    return-object v1

    #@c
    .line 1185
    :catchall_0
    move-exception v1

    #@d
    .line 1186
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@10
    .line 1185
    throw v1
.end method

.method public openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;
    .locals 1
    .param p1, "id"    # I
    .param p2, "value"    # Landroid/util/TypedValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1239
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/content/res/ResourcesImpl;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1265
    invoke-direct {p0}, Landroid/content/res/Resources;->obtainTempTypedValue()Landroid/util/TypedValue;

    #@3
    move-result-object v0

    #@4
    .line 1267
    .local v0, "value":Landroid/util/TypedValue;
    :try_start_0
    iget-object v1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@6
    invoke-virtual {v1, p1, v0}, Landroid/content/res/ResourcesImpl;->openRawResourceFd(ILandroid/util/TypedValue;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    move-result-object v1

    #@a
    .line 1269
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@d
    .line 1267
    return-object v1

    #@e
    .line 1268
    :catchall_0
    move-exception v1

    #@f
    .line 1269
    invoke-direct {p0, v0}, Landroid/content/res/Resources;->releaseTempTypedValue(Landroid/util/TypedValue;)V

    #@12
    .line 1268
    throw v1
.end method

.method public parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "tagName"    # Ljava/lang/String;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 2007
    sget-object v6, Lcom/android/internal/R$styleable;->Extra:[I

    #@4
    .line 2006
    invoke-virtual {p0, p2, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@7
    move-result-object v2

    #@8
    .line 2009
    .local v2, "sa":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    .line 2011
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    #@e
    .line 2012
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@11
    .line 2013
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@13
    new-instance v5, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v6, "<"

    #@1b
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v5

    #@1f
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v5

    #@23
    .line 2014
    const-string/jumbo v6, "> requires an android:name attribute at "

    #@26
    .line 2013
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v5

    #@2a
    .line 2015
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    .line 2013
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v5

    #@32
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v5

    #@36
    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@39
    throw v4

    #@3a
    .line 2018
    :cond_0
    invoke-virtual {v2, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@3d
    move-result-object v3

    #@3e
    .line 2020
    .local v3, "v":Landroid/util/TypedValue;
    if-eqz v3, :cond_6

    #@40
    .line 2021
    iget v6, v3, Landroid/util/TypedValue;->type:I

    #@42
    const/4 v7, 0x3

    #@43
    if-ne v6, v7, :cond_1

    #@45
    .line 2022
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    #@48
    move-result-object v0

    #@49
    .line 2023
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    #@4c
    .line 2044
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@4f
    .line 2005
    return-void

    #@50
    .line 2024
    :cond_1
    iget v6, v3, Landroid/util/TypedValue;->type:I

    #@52
    const/16 v7, 0x12

    #@54
    if-ne v6, v7, :cond_3

    #@56
    .line 2025
    iget v6, v3, Landroid/util/TypedValue;->data:I

    #@58
    if-eqz v6, :cond_2

    #@5a
    :goto_1
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    #@5d
    goto :goto_0

    #@5e
    :cond_2
    move v4, v5

    #@5f
    goto :goto_1

    #@60
    .line 2026
    :cond_3
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@62
    const/16 v5, 0x10

    #@64
    if-lt v4, v5, :cond_4

    #@66
    .line 2027
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@68
    const/16 v5, 0x1f

    #@6a
    if-gt v4, v5, :cond_4

    #@6c
    .line 2028
    iget v4, v3, Landroid/util/TypedValue;->data:I

    #@6e
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@71
    goto :goto_0

    #@72
    .line 2029
    :cond_4
    iget v4, v3, Landroid/util/TypedValue;->type:I

    #@74
    const/4 v5, 0x4

    #@75
    if-ne v4, v5, :cond_5

    #@77
    .line 2030
    invoke-virtual {v3}, Landroid/util/TypedValue;->getFloat()F

    #@7a
    move-result v4

    #@7b
    invoke-virtual {p3, v1, v4}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    #@7e
    goto :goto_0

    #@7f
    .line 2032
    :cond_5
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@82
    .line 2033
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@84
    new-instance v5, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v6, "<"

    #@8c
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v5

    #@90
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@93
    move-result-object v5

    #@94
    .line 2034
    const-string/jumbo v6, "> only supports string, integer, float, color, and boolean at "

    #@97
    .line 2033
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v5

    #@9b
    .line 2035
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@9e
    move-result-object v6

    #@9f
    .line 2033
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v5

    #@a3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a6
    move-result-object v5

    #@a7
    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v4

    #@ab
    .line 2038
    :cond_6
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    #@ae
    .line 2039
    new-instance v4, Lorg/xmlpull/v1/XmlPullParserException;

    #@b0
    new-instance v5, Ljava/lang/StringBuilder;

    #@b2
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@b5
    const-string/jumbo v6, "<"

    #@b8
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v5

    #@bc
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v5

    #@c0
    .line 2040
    const-string/jumbo v6, "> requires an android:value or android:resource attribute at "

    #@c3
    .line 2039
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c6
    move-result-object v5

    #@c7
    .line 2041
    invoke-interface {p2}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    #@ca
    move-result-object v6

    #@cb
    .line 2039
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v5

    #@cf
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v5

    #@d3
    invoke-direct {v4, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    #@d6
    throw v4
.end method

.method public parseBundleExtras(Landroid/content/res/XmlResourceParser;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "parser"    # Landroid/content/res/XmlResourceParser;
    .param p2, "outBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    .line 1964
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@4
    move-result v1

    #@5
    .line 1966
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    #@8
    move-result v2

    #@9
    .local v2, "type":I
    const/4 v3, 0x1

    #@a
    if-eq v2, v3, :cond_3

    #@c
    .line 1967
    if-ne v2, v4, :cond_1

    #@e
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    #@11
    move-result v3

    #@12
    if-le v3, v1, :cond_3

    #@14
    .line 1968
    :cond_1
    if-eq v2, v4, :cond_0

    #@16
    const/4 v3, 0x4

    #@17
    if-eq v2, v3, :cond_0

    #@19
    .line 1972
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 1973
    .local v0, "nodeName":Ljava/lang/String;
    const-string/jumbo v3, "extra"

    #@20
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v3

    #@24
    if-eqz v3, :cond_2

    #@26
    .line 1974
    const-string/jumbo v3, "extra"

    #@29
    invoke-virtual {p0, v3, p1, p2}, Landroid/content/res/Resources;->parseBundleExtra(Ljava/lang/String;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    #@2c
    .line 1975
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@2f
    goto :goto_0

    #@30
    .line 1978
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    #@33
    goto :goto_0

    #@34
    .line 1963
    .end local v0    # "nodeName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setCompatibilityInfo(Landroid/content/res/CompatibilityInfo;)V
    .locals 2
    .param p1, "ci"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1847
    if-eqz p1, :cond_0

    #@3
    .line 1848
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@5
    invoke-virtual {v0, v1, v1, p1}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    #@8
    .line 1846
    :cond_0
    return-void
.end method

.method public setImpl(Landroid/content/res/ResourcesImpl;)V
    .locals 7
    .param p1, "impl"    # Landroid/content/res/ResourcesImpl;

    #@0
    .prologue
    .line 253
    iget-object v4, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    if-ne p1, v4, :cond_0

    #@4
    .line 254
    return-void

    #@5
    .line 257
    :cond_0
    iput-object p1, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@7
    .line 260
    iget-object v5, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    #@9
    monitor-enter v5

    #@a
    .line 261
    :try_start_0
    iget-object v4, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    #@f
    move-result v0

    #@10
    .line 262
    .local v0, "count":I
    const/4 v1, 0x0

    #@11
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_3

    #@13
    .line 263
    iget-object v4, p0, Landroid/content/res/Resources;->mThemeRefs:Ljava/util/ArrayList;

    #@15
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    check-cast v3, Ljava/lang/ref/WeakReference;

    #@1b
    .line 264
    .local v3, "weakThemeRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources$Theme;>;"
    if-eqz v3, :cond_2

    #@1d
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@20
    move-result-object v2

    #@21
    check-cast v2, Landroid/content/res/Resources$Theme;

    #@23
    .line 265
    :goto_1
    if-eqz v2, :cond_1

    #@25
    .line 266
    iget-object v4, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@27
    invoke-virtual {v2}, Landroid/content/res/Resources$Theme;->getKey()Landroid/content/res/Resources$ThemeKey;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v4, v6}, Landroid/content/res/ResourcesImpl;->newThemeImpl(Landroid/content/res/Resources$ThemeKey;)Landroid/content/res/ResourcesImpl$ThemeImpl;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v2, v4}, Landroid/content/res/Resources$Theme;->setImpl(Landroid/content/res/ResourcesImpl$ThemeImpl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@32
    .line 262
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@34
    goto :goto_0

    #@35
    .line 264
    :cond_2
    const/4 v2, 0x0

    #@36
    .local v2, "theme":Landroid/content/res/Resources$Theme;
    goto :goto_1

    #@37
    .end local v2    # "theme":Landroid/content/res/Resources$Theme;
    .end local v3    # "weakThemeRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/res/Resources$Theme;>;"
    :cond_3
    monitor-exit v5

    #@38
    .line 252
    return-void

    #@39
    .line 260
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v4

    #@3a
    monitor-exit v5

    #@3b
    throw v4
.end method

.method public final startPreloading()V
    .locals 1

    #@0
    .prologue
    .line 2069
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0}, Landroid/content/res/ResourcesImpl;->startPreloading()V

    #@5
    .line 2068
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1774
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    #@4
    .line 1773
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V
    .locals 1
    .param p1, "config"    # Landroid/content/res/Configuration;
    .param p2, "metrics"    # Landroid/util/DisplayMetrics;
    .param p3, "compat"    # Landroid/content/res/CompatibilityInfo;

    #@0
    .prologue
    .line 1782
    iget-object v0, p0, Landroid/content/res/Resources;->mResourcesImpl:Landroid/content/res/ResourcesImpl;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/content/res/ResourcesImpl;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;Landroid/content/res/CompatibilityInfo;)V

    #@5
    .line 1781
    return-void
.end method
