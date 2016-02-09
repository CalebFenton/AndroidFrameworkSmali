.class final Landroid/app/ApplicationPackageManager;
.super Landroid/content/pm/PackageManager;
.source "ApplicationPackageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ApplicationPackageManager$ResourceName;,
        Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;,
        Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;
    }
.end annotation


# static fields
.field private static final DEBUG_ICONS:Z = false

.field private static final TAG:Ljava/lang/String; = "ApplicationPackageManager"

.field private static final sDefaultFlags:I = 0x400

.field private static sIconCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sStringCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/ApplicationPackageManager$ResourceName;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sSync:Ljava/lang/Object;


# instance fields
.field mCachedSafeMode:I

.field private final mContext:Landroid/app/ContextImpl;

.field private final mDelegates:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mDelegates"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mInstaller:Landroid/content/pm/PackageInstaller;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPM:Landroid/content/pm/IPackageManager;

.field private final mPermissionListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/content/pm/PackageManager$OnPermissionsChangedListener;",
            "Landroid/content/pm/IOnPermissionsChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsControllerPackageName:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 2202
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    #@7
    .line 2204
    new-instance v0, Landroid/util/ArrayMap;

    #@9
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@c
    .line 2203
    sput-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    #@e
    .line 2206
    new-instance v0, Landroid/util/ArrayMap;

    #@10
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@13
    .line 2205
    sput-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    #@15
    .line 96
    return-void
.end method

.method constructor <init>(Landroid/app/ContextImpl;Landroid/content/pm/IPackageManager;)V
    .locals 1
    .param p1, "context"    # Landroid/app/ContextImpl;
    .param p2, "pm"    # Landroid/content/pm/IPackageManager;

    #@0
    .prologue
    .line 1123
    invoke-direct {p0}, Landroid/content/pm/PackageManager;-><init>()V

    #@3
    .line 103
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    #@a
    .line 111
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    #@11
    .line 1072
    const/4 v0, -0x1

    #@12
    iput v0, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    #@14
    .line 2209
    new-instance v0, Landroid/util/ArrayMap;

    #@16
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    #@19
    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    #@1b
    .line 1125
    iput-object p1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@1d
    .line 1126
    iput-object p2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@1f
    .line 1124
    return-void
.end method

.method static configurationChanged()V
    .locals 2

    #@0
    .prologue
    .line 1117
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1118
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    #@5
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    #@8
    .line 1119
    sget-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    #@a
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 1116
    return-void

    #@f
    .line 1117
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method private getBadgeResIdForUser(I)I
    .locals 2
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2131
    invoke-direct {p0, p1}, Landroid/app/ApplicationPackageManager;->getUserIfProfile(I)Landroid/content/pm/UserInfo;

    #@3
    move-result-object v0

    #@4
    .line 2132
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@6
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 2133
    const v1, 0x1080334

    #@f
    return v1

    #@10
    .line 2135
    :cond_0
    const/4 v1, 0x0

    #@11
    return v1
.end method

.method private getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "badgeDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "badgeLocation"    # Landroid/graphics/Rect;
    .param p4, "tryBadgeInPlace"    # Z

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 2078
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    #@4
    move-result v1

    #@5
    .line 2079
    .local v1, "badgedWidth":I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    #@8
    move-result v0

    #@9
    .line 2080
    .local v0, "badgedHeight":I
    if-eqz p4, :cond_2

    #@b
    .line 2081
    instance-of v7, p1, Landroid/graphics/drawable/BitmapDrawable;

    #@d
    .line 2080
    if-eqz v7, :cond_2

    #@f
    move-object v7, p1

    #@10
    .line 2082
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    #@12
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@15
    move-result-object v7

    #@16
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isMutable()Z

    #@19
    move-result v4

    #@1a
    .line 2085
    :goto_0
    if-eqz v4, :cond_3

    #@1c
    move-object v7, p1

    #@1d
    .line 2086
    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    #@1f
    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@22
    move-result-object v2

    #@23
    .line 2090
    .local v2, "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    new-instance v5, Landroid/graphics/Canvas;

    #@25
    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    #@28
    .line 2092
    .local v5, "canvas":Landroid/graphics/Canvas;
    if-nez v4, :cond_0

    #@2a
    .line 2093
    invoke-virtual {p1, v10, v10, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@2d
    .line 2094
    invoke-virtual {p1, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@30
    .line 2097
    :cond_0
    if-eqz p3, :cond_6

    #@32
    .line 2098
    iget v7, p3, Landroid/graphics/Rect;->left:I

    #@34
    if-ltz v7, :cond_1

    #@36
    iget v7, p3, Landroid/graphics/Rect;->top:I

    #@38
    if-gez v7, :cond_4

    #@3a
    .line 2100
    :cond_1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@3c
    new-instance v8, Ljava/lang/StringBuilder;

    #@3e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@41
    const-string/jumbo v9, "Badge location "

    #@44
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v8

    #@48
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v8

    #@4c
    .line 2101
    const-string/jumbo v9, " not in badged drawable bounds "

    #@4f
    .line 2100
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v8

    #@53
    .line 2102
    new-instance v9, Landroid/graphics/Rect;

    #@55
    invoke-direct {v9, v10, v10, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    #@58
    .line 2100
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v8

    #@5c
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v8

    #@60
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@63
    throw v7

    #@64
    .line 2080
    .end local v2    # "bitmap":Landroid/graphics/Bitmap;
    .end local v5    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    const/4 v4, 0x0

    #@65
    .local v4, "canBadgeInPlace":Z
    goto :goto_0

    #@66
    .line 2088
    .end local v4    # "canBadgeInPlace":Z
    :cond_3
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    #@68
    invoke-static {v1, v0, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    #@6b
    move-result-object v2

    #@6c
    .restart local v2    # "bitmap":Landroid/graphics/Bitmap;
    goto :goto_1

    #@6d
    .line 2099
    .restart local v5    # "canvas":Landroid/graphics/Canvas;
    :cond_4
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    #@70
    move-result v7

    #@71
    if-gt v7, v1, :cond_1

    #@73
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    #@76
    move-result v7

    #@77
    if-gt v7, v0, :cond_1

    #@79
    .line 2104
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    #@7c
    move-result v7

    #@7d
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    #@80
    move-result v8

    #@81
    invoke-virtual {p2, v10, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@84
    .line 2106
    invoke-virtual {v5}, Landroid/graphics/Canvas;->save()I

    #@87
    .line 2107
    iget v7, p3, Landroid/graphics/Rect;->left:I

    #@89
    int-to-float v7, v7

    #@8a
    iget v8, p3, Landroid/graphics/Rect;->top:I

    #@8c
    int-to-float v8, v8

    #@8d
    invoke-virtual {v5, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    #@90
    .line 2108
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@93
    .line 2109
    invoke-virtual {v5}, Landroid/graphics/Canvas;->restore()V

    #@96
    .line 2115
    :goto_2
    if-nez v4, :cond_7

    #@98
    .line 2116
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    #@9a
    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@9c
    invoke-virtual {v7}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    #@9f
    move-result-object v7

    #@a0
    invoke-direct {v6, v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    #@a3
    .line 2118
    .local v6, "mergedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    instance-of v7, p1, Landroid/graphics/drawable/BitmapDrawable;

    #@a5
    if-eqz v7, :cond_5

    #@a7
    move-object v3, p1

    #@a8
    .line 2119
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    #@aa
    .line 2120
    .local v3, "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    #@ad
    move-result-object v7

    #@ae
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getDensity()I

    #@b1
    move-result v7

    #@b2
    invoke-virtual {v6, v7}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    #@b5
    .line 2123
    .end local v3    # "bitmapDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    return-object v6

    #@b6
    .line 2111
    .end local v6    # "mergedDrawable":Landroid/graphics/drawable/BitmapDrawable;
    :cond_6
    invoke-virtual {p2, v10, v10, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    #@b9
    .line 2112
    invoke-virtual {p2, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    #@bc
    goto :goto_2

    #@bd
    .line 2126
    :cond_7
    return-object p1
.end method

.method private getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1131
    sget-object v3, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 1132
    :try_start_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@c
    .line 1135
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    if-eqz v1, :cond_1

    #@e
    .line 1136
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Landroid/graphics/drawable/Drawable$ConstantState;

    #@14
    .line 1137
    .local v0, "state":Landroid/graphics/drawable/Drawable$ConstantState;
    if-eqz v0, :cond_0

    #@16
    .line 1147
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    move-result-object v2

    #@1a
    monitor-exit v3

    #@1b
    return-object v2

    #@1c
    .line 1150
    :cond_0
    :try_start_1
    sget-object v2, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    #@1e
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@21
    .end local v0    # "state":Landroid/graphics/drawable/Drawable$ConstantState;
    :cond_1
    monitor-exit v3

    #@22
    .line 1153
    return-object v4

    #@23
    .line 1131
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/graphics/drawable/Drawable$ConstantState;>;"
    :catchall_0
    move-exception v2

    #@24
    monitor-exit v3

    #@25
    throw v2
.end method

.method private getCachedString(Landroid/app/ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1250
    sget-object v3, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    #@3
    monitor-enter v3

    #@4
    .line 1251
    :try_start_0
    sget-object v2, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    #@6
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/lang/ref/WeakReference;

    #@c
    .line 1252
    .local v1, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    if-eqz v1, :cond_1

    #@e
    .line 1253
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@11
    move-result-object v0

    #@12
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    .line 1254
    .local v0, "cs":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    #@16
    monitor-exit v3

    #@17
    .line 1255
    return-object v0

    #@18
    .line 1258
    :cond_0
    :try_start_1
    sget-object v2, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    #@1a
    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .end local v0    # "cs":Ljava/lang/CharSequence;
    :cond_1
    monitor-exit v3

    #@1e
    .line 1261
    return-object v4

    #@1f
    .line 1250
    .end local v1    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Ljava/lang/CharSequence;>;"
    :catchall_0
    move-exception v2

    #@20
    monitor-exit v3

    #@21
    throw v2
.end method

.method private getUserIfProfile(I)Landroid/content/pm/UserInfo;
    .locals 5
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 2139
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    #@3
    move-result-object v3

    #@4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@7
    move-result v4

    #@8
    invoke-virtual {v3, v4}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    #@b
    move-result-object v2

    #@c
    .line 2140
    .local v2, "userProfiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@f
    move-result-object v1

    #@10
    .local v1, "user$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@13
    move-result v3

    #@14
    if-eqz v3, :cond_1

    #@16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Landroid/content/pm/UserInfo;

    #@1c
    .line 2141
    .local v0, "user":Landroid/content/pm/UserInfo;
    iget v3, v0, Landroid/content/pm/UserInfo;->id:I

    #@1e
    if-ne v3, p1, :cond_0

    #@20
    .line 2142
    return-object v0

    #@21
    .line 2145
    .end local v0    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    const/4 v3, 0x0

    #@22
    return-object v3
.end method

.method static handlePackageBroadcast(I[Ljava/lang/String;Z)V
    .locals 9
    .param p0, "cmd"    # I
    .param p1, "pkgList"    # [Ljava/lang/String;
    .param p2, "hasPkgInfo"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1164
    const/4 v1, 0x0

    #@2
    .line 1165
    .local v1, "immediateGc":Z
    const/4 v6, 0x1

    #@3
    if-ne p0, v6, :cond_0

    #@5
    .line 1166
    const/4 v1, 0x1

    #@6
    .line 1168
    :cond_0
    if-eqz p1, :cond_7

    #@8
    array-length v6, p1

    #@9
    if-lez v6, :cond_7

    #@b
    .line 1169
    const/4 v2, 0x0

    #@c
    .line 1170
    .local v2, "needCleanup":Z
    array-length v6, p1

    #@d
    :goto_0
    if-ge v5, v6, :cond_5

    #@f
    aget-object v4, p1, v5

    #@11
    .line 1171
    .local v4, "ssp":Ljava/lang/String;
    sget-object v7, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    #@13
    monitor-enter v7

    #@14
    .line 1172
    :try_start_0
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    #@16
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@19
    move-result v8

    #@1a
    add-int/lit8 v0, v8, -0x1

    #@1c
    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    #@1e
    .line 1173
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    #@20
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@23
    move-result-object v3

    #@24
    check-cast v3, Landroid/app/ApplicationPackageManager$ResourceName;

    #@26
    .line 1174
    .local v3, "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    iget-object v8, v3, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    #@28
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v8

    #@2c
    if-eqz v8, :cond_1

    #@2e
    .line 1176
    sget-object v8, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    #@30
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    #@33
    .line 1177
    const/4 v2, 0x1

    #@34
    .line 1172
    :cond_1
    add-int/lit8 v0, v0, -0x1

    #@36
    goto :goto_1

    #@37
    .line 1180
    .end local v3    # "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    :cond_2
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    #@39
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    #@3c
    move-result v8

    #@3d
    add-int/lit8 v0, v8, -0x1

    #@3f
    :goto_2
    if-ltz v0, :cond_4

    #@41
    .line 1181
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    #@43
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    #@46
    move-result-object v3

    #@47
    check-cast v3, Landroid/app/ApplicationPackageManager$ResourceName;

    #@49
    .line 1182
    .restart local v3    # "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    iget-object v8, v3, Landroid/app/ApplicationPackageManager$ResourceName;->packageName:Ljava/lang/String;

    #@4b
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4e
    move-result v8

    #@4f
    if-eqz v8, :cond_3

    #@51
    .line 1184
    sget-object v8, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    #@53
    invoke-virtual {v8, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@56
    .line 1185
    const/4 v2, 0x1

    #@57
    .line 1180
    :cond_3
    add-int/lit8 v0, v0, -0x1

    #@59
    goto :goto_2

    #@5a
    .end local v3    # "nm":Landroid/app/ApplicationPackageManager$ResourceName;
    :cond_4
    monitor-exit v7

    #@5b
    .line 1170
    add-int/lit8 v5, v5, 0x1

    #@5d
    goto :goto_0

    #@5e
    .line 1171
    .end local v0    # "i":I
    :catchall_0
    move-exception v5

    #@5f
    monitor-exit v7

    #@60
    throw v5

    #@61
    .line 1190
    .end local v4    # "ssp":Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_6

    #@63
    if-eqz p2, :cond_7

    #@65
    .line 1191
    :cond_6
    if-eqz v1, :cond_8

    #@67
    .line 1193
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@6a
    move-result-object v5

    #@6b
    invoke-virtual {v5}, Ljava/lang/Runtime;->gc()V

    #@6e
    .line 1163
    .end local v2    # "needCleanup":Z
    :cond_7
    :goto_3
    return-void

    #@6f
    .line 1195
    .restart local v2    # "needCleanup":Z
    :cond_8
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    #@72
    move-result-object v5

    #@73
    invoke-virtual {v5}, Landroid/app/ActivityThread;->scheduleGcIdler()V

    #@76
    goto :goto_3
.end method

.method private installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 8
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/app/PackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p6, "encryptionParams"    # Landroid/content/pm/ContainerEncryptionParams;

    #@0
    .prologue
    .line 1391
    const-string/jumbo v0, "file"

    #@3
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@6
    move-result-object v2

    #@7
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v0

    #@b
    if-nez v0, :cond_0

    #@d
    .line 1392
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@f
    const-string/jumbo v2, "Only file:// URIs are supported"

    #@12
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 1394
    :cond_0
    if-eqz p6, :cond_1

    #@18
    .line 1395
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@1a
    const-string/jumbo v2, "ContainerEncryptionParams not supported"

    #@1d
    invoke-direct {v0, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 1398
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@24
    move-result-object v1

    #@25
    .line 1400
    .local v1, "originPath":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@27
    invoke-virtual {p2}, Landroid/app/PackageInstallObserver;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    #@2a
    move-result-object v2

    #@2b
    .line 1401
    const/4 v6, 0x0

    #@2c
    move v3, p3

    #@2d
    move-object v4, p4

    #@2e
    move-object v5, p5

    #@2f
    .line 1400
    invoke-interface/range {v0 .. v6}, Landroid/content/pm/IPackageManager;->installPackage(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@32
    .line 1390
    :goto_0
    return-void

    #@33
    .line 1402
    :catch_0
    move-exception v7

    #@34
    .local v7, "ignored":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private static isPackageCandidateVolume(Landroid/content/pm/ApplicationInfo;Landroid/os/storage/VolumeInfo;)Z
    .locals 4
    .param p0, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 1615
    const-string/jumbo v2, "private"

    #@5
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1616
    return v0

    #@10
    .line 1621
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_1

    #@16
    .line 1622
    iget v2, p0, Landroid/content/pm/ApplicationInfo;->installLocation:I

    #@18
    if-ne v2, v0, :cond_2

    #@1a
    .line 1623
    :cond_1
    return v1

    #@1b
    .line 1627
    :cond_2
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    #@1e
    move-result v2

    #@1f
    if-nez v2, :cond_3

    #@21
    .line 1628
    return v1

    #@22
    .line 1632
    :cond_3
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_4

    #@28
    .line 1633
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isInternal()Z

    #@2b
    move-result v0

    #@2c
    return v0

    #@2d
    .line 1637
    :cond_4
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getType()I

    #@30
    move-result v2

    #@31
    if-ne v2, v0, :cond_5

    #@33
    :goto_0
    return v0

    #@34
    :cond_5
    move v0, v1

    #@35
    goto :goto_0
.end method

.method private static isPrimaryStorageCandidateVolume(Landroid/os/storage/VolumeInfo;)Z
    .locals 4
    .param p0, "vol"    # Landroid/os/storage/VolumeInfo;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x1

    #@2
    .line 1687
    const-string/jumbo v2, "private"

    #@5
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_0

    #@f
    .line 1688
    return v0

    #@10
    .line 1692
    :cond_0
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->isMountedWritable()Z

    #@13
    move-result v2

    #@14
    if-nez v2, :cond_1

    #@16
    .line 1693
    return v1

    #@17
    .line 1697
    :cond_1
    invoke-virtual {p0}, Landroid/os/storage/VolumeInfo;->getType()I

    #@1a
    move-result v2

    #@1b
    if-ne v2, v0, :cond_2

    #@1d
    :goto_0
    return v0

    #@1e
    :cond_2
    move v0, v1

    #@1f
    goto :goto_0
.end method

.method private static maybeAdjustApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 311
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;

    #@2
    if-eqz v3, :cond_0

    #@4
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@6
    if-eqz v3, :cond_0

    #@8
    .line 312
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    #@f
    move-result-object v0

    #@10
    .line 316
    .local v0, "runtimeIsa":Ljava/lang/String;
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->secondaryCpuAbi:Ljava/lang/String;

    #@12
    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    #@15
    move-result-object v2

    #@16
    .line 317
    .local v2, "secondaryIsa":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "ro.dalvik.vm.isa."

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    .line 318
    .local v1, "secondaryDexCodeIsa":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_1

    #@34
    .line 323
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v3

    #@38
    if-eqz v3, :cond_0

    #@3a
    .line 324
    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->secondaryNativeLibraryDir:Ljava/lang/String;

    #@3c
    iput-object v3, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    #@3e
    .line 307
    .end local v0    # "runtimeIsa":Ljava/lang/String;
    .end local v1    # "secondaryDexCodeIsa":Ljava/lang/String;
    .end local v2    # "secondaryIsa":Ljava/lang/String;
    :cond_0
    return-void

    #@3f
    .line 318
    .restart local v0    # "runtimeIsa":Ljava/lang/String;
    .restart local v1    # "secondaryDexCodeIsa":Ljava/lang/String;
    .restart local v2    # "secondaryIsa":Ljava/lang/String;
    :cond_1
    move-object v2, v1

    #@40
    goto :goto_0
.end method

.method private putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;
    .param p2, "dr"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    .line 1157
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1158
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sIconCache:Landroid/util/ArrayMap;

    #@5
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@7
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    #@a
    move-result-object v3

    #@b
    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@e
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    .line 1156
    return-void

    #@13
    .line 1157
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method private putCachedString(Landroid/app/ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "name"    # Landroid/app/ApplicationPackageManager$ResourceName;
    .param p2, "cs"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1265
    sget-object v1, Landroid/app/ApplicationPackageManager;->sSync:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 1266
    :try_start_0
    sget-object v0, Landroid/app/ApplicationPackageManager;->sStringCache:Landroid/util/ArrayMap;

    #@5
    new-instance v2, Ljava/lang/ref/WeakReference;

    #@7
    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@a
    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit v1

    #@e
    .line 1264
    return-void

    #@f
    .line 1265
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method


# virtual methods
.method public addCrossProfileIntentFilter(Landroid/content/IntentFilter;III)V
    .locals 7
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "sourceUserId"    # I
    .param p3, "targetUserId"    # I
    .param p4, "flags"    # I

    #@0
    .prologue
    .line 2025
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    move-object v1, p1

    #@9
    move v3, p2

    #@a
    move v4, p3

    #@b
    move v5, p4

    #@c
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addCrossProfileIntentFilter(Landroid/content/IntentFilter;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 2023
    :goto_0
    return-void

    #@10
    .line 2027
    :catch_0
    move-exception v6

    #@11
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public addOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    #@0
    .prologue
    .line 1086
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    #@2
    monitor-enter v3

    #@3
    .line 1087
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    #@5
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v2

    #@9
    if-eqz v2, :cond_0

    #@b
    monitor-exit v3

    #@c
    .line 1088
    return-void

    #@d
    .line 1091
    :cond_0
    :try_start_1
    new-instance v0, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;

    #@f
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    #@12
    move-result-object v2

    #@13
    invoke-direct {v0, p0, p1, v2}, Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;-><init>(Landroid/app/ApplicationPackageManager;Landroid/content/pm/PackageManager$OnPermissionsChangedListener;Landroid/os/Looper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@16
    .line 1093
    .local v0, "delegate":Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;
    :try_start_2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@18
    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->addOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    #@1b
    .line 1094
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    #@1d
    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@20
    monitor-exit v3

    #@21
    .line 1085
    return-void

    #@22
    .line 1095
    :catch_0
    move-exception v1

    #@23
    .line 1096
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    #@25
    const-string/jumbo v4, "Package manager has died"

    #@28
    invoke-direct {v2, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@2b
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2c
    .line 1086
    .end local v0    # "delegate":Landroid/app/ApplicationPackageManager$OnPermissionsChangeListenerDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit v3

    #@2e
    throw v2
.end method

.method public addPackageToPreferred(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1759
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPackageToPreferred(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1757
    :goto_0
    return-void

    #@6
    .line 1760
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public addPermission(Landroid/content/pm/PermissionInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;

    #@0
    .prologue
    .line 455
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPermission(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 456
    :catch_0
    move-exception v0

    #@8
    .line 457
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Package manager has died"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    .locals 3
    .param p1, "info"    # Landroid/content/pm/PermissionInfo;

    #@0
    .prologue
    .line 464
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->addPermissionAsync(Landroid/content/pm/PermissionInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 465
    :catch_0
    move-exception v0

    #@8
    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Package manager has died"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1788
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v5

    #@8
    move-object v1, p1

    #@9
    move v2, p2

    #@a
    move-object v3, p3

    #@b
    move-object v4, p4

    #@c
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 1786
    :goto_0
    return-void

    #@10
    .line 1789
    :catch_0
    move-exception v6

    #@11
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 7
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 1798
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1796
    :goto_0
    return-void

    #@b
    .line 1799
    :catch_0
    move-exception v6

    #@c
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "names"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 152
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 153
    :catch_0
    move-exception v0

    #@8
    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Package manager has died"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 420
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v2

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 421
    :catch_0
    move-exception v0

    #@e
    .line 422
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v2, "Package manager has died"

    #@13
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public checkSignatures(II)I
    .locals 3
    .param p1, "uid1"    # I
    .param p2, "uid2"    # I

    #@0
    .prologue
    .line 541
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkUidSignatures(II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 542
    :catch_0
    move-exception v0

    #@8
    .line 543
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Package manager has died"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "pkg1"    # Ljava/lang/String;
    .param p2, "pkg2"    # Ljava/lang/String;

    #@0
    .prologue
    .line 532
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 533
    :catch_0
    move-exception v0

    #@8
    .line 534
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Package manager has died"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    #@0
    .prologue
    .line 1713
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v2

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1711
    :goto_0
    return-void

    #@c
    .line 1714
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearCrossProfileIntentFilters(I)V
    .locals 3
    .param p1, "sourceUserId"    # I

    #@0
    .prologue
    .line 2038
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->clearCrossProfileIntentFilters(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 2036
    :goto_0
    return-void

    #@c
    .line 2039
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1828
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1826
    :goto_0
    return-void

    #@6
    .line 1829
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "names"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 143
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->currentToCanonicalPackageNames([Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 144
    :catch_0
    move-exception v0

    #@8
    .line 145
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Package manager has died"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDataObserver;

    #@0
    .prologue
    .line 1722
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1720
    :goto_0
    return-void

    #@6
    .line 1723
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "observer"    # Landroid/content/pm/IPackageDeleteObserver;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1703
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, p1, p2, v2, p3}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 1701
    :goto_0
    return-void

    #@a
    .line 1704
    :catch_0
    move-exception v0

    #@b
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public extendVerificationTimeout(IIJ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "verificationCodeAtTimeout"    # I
    .param p3, "millisecondsToDelay"    # J

    #@0
    .prologue
    .line 1434
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->extendVerificationTimeout(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1432
    :goto_0
    return-void

    #@6
    .line 1435
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "freeStorageSize"    # J
    .param p4, "pi"    # Landroid/content/IntentSender;

    #@0
    .prologue
    .line 1741
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->freeStorage(Ljava/lang/String;JLandroid/content/IntentSender;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1739
    :goto_0
    return-void

    #@6
    .line 1742
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    .locals 2
    .param p1, "volumeUuid"    # Ljava/lang/String;
    .param p2, "idealStorageSize"    # J
    .param p4, "observer"    # Landroid/content/pm/IPackageDataObserver;

    #@0
    .prologue
    .line 1732
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(Ljava/lang/String;JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1730
    :goto_0
    return-void

    #@6
    .line 1733
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 912
    const/16 v0, 0x400

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getActivityBanner(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 918
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3
    move-result-object v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 919
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityBanner(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 923
    :cond_0
    const/high16 v1, 0x10000

    #@11
    .line 922
    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@14
    move-result-object v0

    #@15
    .line 924
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    #@17
    .line 925
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@19
    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 928
    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method

.method public getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 877
    const/16 v0, 0x400

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getActivityIcon(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 882
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3
    move-result-object v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 883
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 887
    :cond_0
    const/high16 v1, 0x10000

    #@11
    .line 886
    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@14
    move-result-object v0

    #@15
    .line 888
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    #@17
    .line 889
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@19
    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 892
    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method

.method public getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v3

    #@8
    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v0

    #@c
    .line 335
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    #@e
    .line 336
    return-object v0

    #@f
    .line 338
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    #@10
    .line 339
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v3, "Package manager has died"

    #@15
    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@18
    throw v2

    #@19
    .line 342
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@1b
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2
.end method

.method public getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 945
    const/16 v0, 0x400

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p0}, Landroid/content/pm/ActivityInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getActivityLogo(Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 951
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@3
    move-result-object v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 952
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {p0, v1}, Landroid/app/ApplicationPackageManager;->getActivityLogo(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    #@d
    move-result-object v1

    #@e
    return-object v1

    #@f
    .line 956
    :cond_0
    const/high16 v1, 0x10000

    #@11
    .line 955
    invoke-virtual {p0, p1, v1}, Landroid/app/ApplicationPackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    #@14
    move-result-object v0

    #@15
    .line 957
    .local v0, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    #@17
    .line 958
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@19
    invoke-virtual {v1, p0}, Landroid/content/pm/ActivityInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@1c
    move-result-object v1

    #@1d
    return-object v1

    #@1e
    .line 961
    :cond_1
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@20
    const/4 v2, 0x0

    #@21
    invoke-virtual {p1, v2}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1
.end method

.method public getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1482
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1483
    :catch_0
    move-exception v0

    #@8
    .line 1485
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getAllPermissionGroups(I)Ljava/util/List;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionGroupInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 282
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getAllPermissionGroups(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 283
    :catch_0
    move-exception v0

    #@8
    .line 284
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Package manager has died"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 933
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getApplicationBanner(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 939
    const/16 v0, 0x400

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationBanner(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getApplicationEnabledSetting(Ljava/lang/String;)I
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1889
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v2

    #@8
    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1890
    :catch_0
    move-exception v0

    #@e
    .line 1893
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@f
    return v1
.end method

.method public getApplicationHiddenSettingAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1911
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getApplicationHiddenSettingAsUser(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1912
    :catch_0
    move-exception v0

    #@c
    .line 1915
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 901
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 906
    const/16 v0, 0x400

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 292
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v3

    #@8
    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@b
    move-result-object v0

    #@c
    .line 293
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_0

    #@e
    .line 297
    invoke-static {v0}, Landroid/app/ApplicationPackageManager;->maybeAdjustApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 298
    return-object v0

    #@12
    .line 300
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@13
    .line 301
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@15
    const-string/jumbo v3, "Package manager has died"

    #@18
    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1b
    throw v2

    #@1c
    .line 304
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@1e
    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@21
    throw v2
.end method

.method public getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 1331
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 966
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLogo(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getApplicationLogo(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 972
    const/16 v0, 0x400

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getApplicationLogo(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getComponentEnabledSetting(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1868
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v2

    #@8
    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1869
    :catch_0
    move-exception v0

    #@e
    .line 1872
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@f
    return v1
.end method

.method public getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    #@0
    .prologue
    .line 896
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v0

    #@4
    .line 897
    const v1, 0x1080093

    #@7
    .line 896
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method public getDefaultBrowserPackageName(I)Ljava/lang/String;
    .locals 2
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 1492
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getDefaultBrowserPackageName(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1493
    :catch_0
    move-exception v0

    #@8
    .line 1495
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resId"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 819
    new-instance v5, Landroid/app/ApplicationPackageManager$ResourceName;

    #@3
    invoke-direct {v5, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    #@6
    .line 820
    .local v5, "name":Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v5}, Landroid/app/ApplicationPackageManager;->getCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;)Landroid/graphics/drawable/Drawable;

    #@9
    move-result-object v0

    #@a
    .line 821
    .local v0, "cachedIcon":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    #@c
    .line 822
    return-object v0

    #@d
    .line 825
    :cond_0
    if-nez p3, :cond_1

    #@f
    .line 827
    const/16 v7, 0x400

    #@11
    :try_start_0
    invoke-virtual {p0, p1, v7}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object p3

    #@15
    .line 833
    :cond_1
    if-eqz p2, :cond_3

    #@17
    .line 835
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@1a
    move-result-object v6

    #@1b
    .line 836
    .local v6, "r":Landroid/content/res/Resources;
    const/4 v7, 0x0

    #@1c
    invoke-virtual {v6, p2, v7}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    #@1f
    move-result-object v1

    #@20
    .line 837
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_2

    #@22
    .line 838
    invoke-direct {p0, v5, v1}, Landroid/app/ApplicationPackageManager;->putCachedIcon(Landroid/app/ApplicationPackageManager$ResourceName;Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@25
    .line 856
    :cond_2
    return-object v1

    #@26
    .line 828
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v6    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v2

    #@27
    .line 829
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v10

    #@28
    .line 863
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    #@29
    .line 866
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "PackageManager"

    #@2c
    new-instance v8, Ljava/lang/StringBuilder;

    #@2e
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@31
    const-string/jumbo v9, "Failure retrieving icon 0x"

    #@34
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v8

    #@38
    .line 867
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@3b
    move-result-object v9

    #@3c
    .line 866
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v8

    #@40
    .line 867
    const-string/jumbo v9, " in package "

    #@43
    .line 866
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v8

    #@47
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v8

    #@4b
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4e
    move-result-object v8

    #@4f
    invoke-static {v7, v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@52
    .line 872
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_0
    return-object v10

    #@53
    .line 860
    :catch_2
    move-exception v3

    #@54
    .line 861
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v7, "PackageManager"

    #@57
    new-instance v8, Ljava/lang/StringBuilder;

    #@59
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@5c
    const-string/jumbo v9, "Failure retrieving resources for "

    #@5f
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v8

    #@63
    .line 862
    iget-object v9, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@65
    .line 861
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v8

    #@69
    .line 862
    const-string/jumbo v9, ": "

    #@6c
    .line 861
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v8

    #@70
    .line 862
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    #@73
    move-result-object v9

    #@74
    .line 861
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v8

    #@78
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7b
    move-result-object v8

    #@7c
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@7f
    goto :goto_0

    #@80
    .line 857
    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    :catch_3
    move-exception v2

    #@81
    .line 858
    .restart local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v7, "PackageManager"

    #@84
    new-instance v8, Ljava/lang/StringBuilder;

    #@86
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@89
    const-string/jumbo v9, "Failure retrieving resources for "

    #@8c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v8

    #@90
    .line 859
    iget-object v9, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@92
    .line 858
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v8

    #@96
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@99
    move-result-object v8

    #@9a
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@9d
    goto :goto_0
.end method

.method public getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    #@0
    .prologue
    .line 1848
    .local p1, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1849
    :catch_0
    move-exception v0

    #@8
    .line 1852
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getInstalledApplications(I)Ljava/util/List;
    .locals 5
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 613
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@2
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    #@5
    move-result v2

    #@6
    .line 615
    .local v2, "userId":I
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@8
    invoke-interface {v3, p1, v2}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    #@b
    move-result-object v1

    #@c
    .line 616
    .local v1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v3

    #@10
    return-object v3

    #@11
    .line 617
    .end local v1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ApplicationInfo;>;"
    :catch_0
    move-exception v0

    #@12
    .line 618
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@14
    const-string/jumbo v4, "Package manager has died"

    #@17
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v3
.end method

.method public getInstalledPackages(I)Ljava/util/List;
    .locals 1
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 582
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@2
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getInstalledPackages(II)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getInstalledPackages(II)Ljava/util/List;
    .locals 4
    .param p1, "flags"    # I
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 589
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getInstalledPackages(II)Landroid/content/pm/ParceledListSlice;

    #@5
    move-result-object v1

    #@6
    .line 590
    .local v1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result-object v2

    #@a
    return-object v2

    #@b
    .line 591
    .end local v1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    #@c
    .line 592
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v3, "Package manager has died"

    #@11
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@14
    throw v2
.end method

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1522
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1523
    :catch_0
    move-exception v0

    #@8
    .line 1526
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 793
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getInstrumentationInfo(Landroid/content/ComponentName;I)Landroid/content/pm/InstrumentationInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    .line 795
    .local v1, "ii":Landroid/content/pm/InstrumentationInfo;
    if-eqz v1, :cond_0

    #@8
    .line 796
    return-object v1

    #@9
    .line 798
    .end local v1    # "ii":Landroid/content/pm/InstrumentationInfo;
    :catch_0
    move-exception v0

    #@a
    .line 799
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v3, "Package manager has died"

    #@f
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v2

    #@13
    .line 802
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "ii":Landroid/content/pm/InstrumentationInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@15
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@1c
    throw v2
.end method

.method public getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1472
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1473
    :catch_0
    move-exception v0

    #@8
    .line 1475
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getIntentVerificationStatus(Ljava/lang/String;I)I
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1452
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->getIntentVerificationStatus(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1453
    :catch_0
    move-exception v0

    #@8
    .line 1455
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "alias"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1921
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1922
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1925
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@8
    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getKeySetByAlias(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/KeySet;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    .line 1929
    .local v1, "ks":Landroid/content/pm/KeySet;
    return-object v1

    #@d
    .line 1926
    .end local v1    # "ks":Landroid/content/pm/KeySet;
    :catch_0
    move-exception v0

    #@e
    .line 1927
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@f
    return-object v2
.end method

.method public getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 163
    new-instance v1, Landroid/content/Intent;

    #@4
    const-string/jumbo v3, "android.intent.action.MAIN"

    #@7
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a
    .line 164
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.INFO"

    #@d
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@10
    .line 165
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@13
    .line 166
    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@16
    move-result-object v2

    #@17
    .line 169
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    #@19
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1c
    move-result v3

    #@1d
    if-gtz v3, :cond_1

    #@1f
    .line 171
    :cond_0
    const-string/jumbo v3, "android.intent.category.INFO"

    #@22
    invoke-virtual {v1, v3}, Landroid/content/Intent;->removeCategory(Ljava/lang/String;)V

    #@25
    .line 172
    const-string/jumbo v3, "android.intent.category.LAUNCHER"

    #@28
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@2b
    .line 173
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@2e
    .line 174
    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@31
    move-result-object v2

    #@32
    .line 176
    :cond_1
    if-eqz v2, :cond_2

    #@34
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@37
    move-result v3

    #@38
    if-gtz v3, :cond_3

    #@3a
    .line 177
    :cond_2
    return-object v4

    #@3b
    .line 179
    :cond_3
    new-instance v0, Landroid/content/Intent;

    #@3d
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@40
    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    #@42
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@45
    .line 181
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v3

    #@49
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@4b
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@4d
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@4f
    .line 182
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@52
    move-result-object v3

    #@53
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@55
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@57
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@59
    .line 181
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@5c
    .line 183
    return-object v0
.end method

.method public getLeanbackLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 189
    new-instance v1, Landroid/content/Intent;

    #@4
    const-string/jumbo v3, "android.intent.action.MAIN"

    #@7
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a
    .line 190
    .local v1, "intentToResolve":Landroid/content/Intent;
    const-string/jumbo v3, "android.intent.category.LEANBACK_LAUNCHER"

    #@d
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    #@10
    .line 191
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    #@13
    .line 192
    invoke-virtual {p0, v1, v5}, Landroid/app/ApplicationPackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    #@16
    move-result-object v2

    #@17
    .line 194
    .local v2, "ris":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v2, :cond_0

    #@19
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@1c
    move-result v3

    #@1d
    if-gtz v3, :cond_1

    #@1f
    .line 195
    :cond_0
    return-object v4

    #@20
    .line 197
    :cond_1
    new-instance v0, Landroid/content/Intent;

    #@22
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@25
    .line 198
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    #@27
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    #@2a
    .line 199
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v3

    #@2e
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@30
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@32
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@34
    .line 200
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@37
    move-result-object v3

    #@38
    check-cast v3, Landroid/content/pm/ResolveInfo;

    #@3a
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3c
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@3e
    .line 199
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@41
    .line 201
    return-object v0
.end method

.method public getMoveStatus(I)I
    .locals 2
    .param p1, "moveId"    # I

    #@0
    .prologue
    .line 1532
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getMoveStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1533
    :catch_0
    move-exception v0

    #@8
    .line 1534
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@b
    move-result-object v1

    #@c
    throw v1
.end method

.method public getNameForUid(I)Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 559
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getNameForUid(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 560
    :catch_0
    move-exception v0

    #@8
    .line 561
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Package manager has died"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public getPackageCandidateVolumes(Landroid/content/pm/ApplicationInfo;)Ljava/util/List;
    .locals 8
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ApplicationInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1601
    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@2
    const-class v7, Landroid/os/storage/StorageManager;

    #@4
    invoke-virtual {v6, v7}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Landroid/os/storage/StorageManager;

    #@a
    .line 1602
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p0, p1}, Landroid/app/ApplicationPackageManager;->getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;

    #@d
    move-result-object v1

    #@e
    .line 1603
    .local v1, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    #@11
    move-result-object v5

    #@12
    .line 1604
    .local v5, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@17
    .line 1605
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v4

    #@1b
    .local v4, "vol$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v6

    #@1f
    if-eqz v6, :cond_2

    #@21
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v3

    #@25
    check-cast v3, Landroid/os/storage/VolumeInfo;

    #@27
    .line 1606
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@2a
    move-result v6

    #@2b
    if-nez v6, :cond_1

    #@2d
    invoke-static {p1, v3}, Landroid/app/ApplicationPackageManager;->isPackageCandidateVolume(Landroid/content/pm/ApplicationInfo;Landroid/os/storage/VolumeInfo;)Z

    #@30
    move-result v6

    #@31
    if-eqz v6, :cond_0

    #@33
    .line 1607
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@36
    goto :goto_0

    #@37
    .line 1610
    .end local v3    # "vol":Landroid/os/storage/VolumeInfo;
    :cond_2
    return-object v0
.end method

.method public getPackageCurrentVolume(Landroid/content/pm/ApplicationInfo;)Landroid/os/storage/VolumeInfo;
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 1589
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@2
    const-class v2, Landroid/os/storage/StorageManager;

    #@4
    invoke-virtual {v1, v2}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/os/storage/StorageManager;

    #@a
    .line 1590
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isInternal()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1591
    const-string/jumbo v1, "private"

    #@13
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeById(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@16
    move-result-object v1

    #@17
    return-object v1

    #@18
    .line 1592
    :cond_0
    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isExternalAsec()Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 1593
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryPhysicalVolume()Landroid/os/storage/VolumeInfo;

    #@21
    move-result-object v1

    #@22
    return-object v1

    #@23
    .line 1595
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    #@25
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@28
    move-result-object v1

    #@29
    return-object v1
.end method

.method public getPackageGids(Ljava/lang/String;)[I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 208
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v3

    #@8
    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    .line 209
    .local v1, "gids":[I
    if-eqz v1, :cond_0

    #@e
    .line 210
    return-object v1

    #@f
    .line 212
    .end local v1    # "gids":[I
    :catch_0
    move-exception v0

    #@10
    .line 213
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v3, "Package manager has died"

    #@15
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@18
    throw v2

    #@19
    .line 216
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "gids":[I
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@1b
    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2
.end method

.method public getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 129
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v3

    #@8
    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    .line 130
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    #@e
    .line 131
    return-object v1

    #@f
    .line 133
    .end local v1    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v0

    #@10
    .line 134
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v3, "Package manager has died"

    #@15
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@18
    throw v2

    #@19
    .line 137
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "pi":Landroid/content/pm/PackageInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@1b
    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2
.end method

.method public getPackageInstaller()Landroid/content/pm/PackageInstaller;
    .locals 8

    #@0
    .prologue
    .line 1996
    iget-object v7, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 1997
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mInstaller:Landroid/content/pm/PackageInstaller;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v0, :cond_0

    #@7
    .line 1999
    :try_start_1
    new-instance v0, Landroid/content/pm/PackageInstaller;

    #@9
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@b
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@d
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->getPackageInstaller()Landroid/content/pm/IPackageInstaller;

    #@10
    move-result-object v3

    #@11
    .line 2000
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@13
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@16
    move-result-object v4

    #@17
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@19
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    #@1c
    move-result v5

    #@1d
    move-object v2, p0

    #@1e
    .line 1999
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/PackageInstaller;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/pm/IPackageInstaller;Ljava/lang/String;I)V

    #@21
    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mInstaller:Landroid/content/pm/PackageInstaller;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    .line 2005
    :cond_0
    :try_start_2
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mInstaller:Landroid/content/pm/PackageInstaller;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    monitor-exit v7

    #@26
    return-object v0

    #@27
    .line 2001
    :catch_0
    move-exception v6

    #@28
    .line 2002
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@2b
    move-result-object v0

    #@2c
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2d
    .line 1996
    .end local v6    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    #@2e
    monitor-exit v7

    #@2f
    throw v0
.end method

.method public getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "observer"    # Landroid/content/pm/IPackageStatsObserver;

    #@0
    .prologue
    .line 1751
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPackageSizeInfo(Ljava/lang/String;ILandroid/content/pm/IPackageStatsObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1749
    :goto_0
    return-void

    #@6
    .line 1752
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getPackageUid(Ljava/lang/String;I)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 223
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    .line 224
    .local v1, "uid":I
    if-ltz v1, :cond_0

    #@8
    .line 225
    return v1

    #@9
    .line 227
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    #@a
    .line 228
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v3, "Package manager has died"

    #@f
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v2

    #@13
    .line 231
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "uid":I
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@15
    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2
.end method

.method public getPackagesForUid(I)[Ljava/lang/String;
    .locals 3
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 550
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 551
    :catch_0
    move-exception v0

    #@8
    .line 552
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Package manager has died"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 600
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@2
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    #@5
    move-result v2

    #@6
    .line 602
    .local v2, "userId":I
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@8
    invoke-interface {v3, p1, p2, v2}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@b
    move-result-object v1

    #@c
    .line 604
    .local v1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v3

    #@10
    return-object v3

    #@11
    .line 605
    .end local v1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v0

    #@12
    .line 606
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    #@14
    const-string/jumbo v4, "Package manager has died"

    #@17
    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v3
.end method

.method public getPermissionControllerPackageName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 440
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 441
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPermissionsControllerPackageName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5
    if-nez v1, :cond_0

    #@7
    .line 443
    :try_start_1
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@9
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Landroid/app/ApplicationPackageManager;->mPermissionsControllerPackageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    .line 448
    :cond_0
    :try_start_2
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPermissionsControllerPackageName:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@11
    monitor-exit v2

    #@12
    return-object v1

    #@13
    .line 444
    :catch_0
    move-exception v0

    #@14
    .line 445
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_3
    new-instance v1, Ljava/lang/RuntimeException;

    #@16
    const-string/jumbo v3, "Package manager has died"

    #@19
    invoke-direct {v1, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1c
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1d
    .line 440
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    #@1e
    monitor-exit v2

    #@1f
    throw v1
.end method

.method public getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 3
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 502
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 503
    :catch_0
    move-exception v0

    #@c
    .line 504
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@e
    const-string/jumbo v2, "Package manager has died"

    #@11
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@14
    throw v1
.end method

.method public getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 268
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    .line 269
    .local v1, "pgi":Landroid/content/pm/PermissionGroupInfo;
    if-eqz v1, :cond_0

    #@8
    .line 270
    return-object v1

    #@9
    .line 272
    .end local v1    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :catch_0
    move-exception v0

    #@a
    .line 273
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v3, "Package manager has died"

    #@f
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v2

    #@13
    .line 276
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "pgi":Landroid/content/pm/PermissionGroupInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@15
    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2
.end method

.method public getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    .line 239
    .local v1, "pi":Landroid/content/pm/PermissionInfo;
    if-eqz v1, :cond_0

    #@8
    .line 240
    return-object v1

    #@9
    .line 242
    .end local v1    # "pi":Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v0

    #@a
    .line 243
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v3, "Package manager has died"

    #@f
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v2

    #@13
    .line 246
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "pi":Landroid/content/pm/PermissionInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@15
    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2
.end method

.method public getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/IntentFilter;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .line 1838
    .local p1, "outFilters":Ljava/util/List;, "Ljava/util/List<Landroid/content/IntentFilter;>;"
    .local p2, "outActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/ComponentName;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1839
    :catch_0
    move-exception v0

    #@8
    .line 1842
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public getPreferredPackages(I)Ljava/util/List;
    .locals 2
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1777
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->getPreferredPackages(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1778
    :catch_0
    move-exception v0

    #@8
    .line 1781
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/util/ArrayList;

    #@a
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@d
    return-object v1
.end method

.method public getPrimaryStorageCandidateVolumes()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/os/storage/VolumeInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1667
    iget-object v6, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@2
    const-class v7, Landroid/os/storage/StorageManager;

    #@4
    invoke-virtual {v6, v7}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v2

    #@8
    check-cast v2, Landroid/os/storage/StorageManager;

    #@a
    .line 1668
    .local v2, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;

    #@d
    move-result-object v1

    #@e
    .line 1669
    .local v1, "currentVol":Landroid/os/storage/VolumeInfo;
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    #@11
    move-result-object v5

    #@12
    .line 1670
    .local v5, "vols":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    #@14
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@17
    .line 1671
    .local v0, "candidates":Ljava/util/List;, "Ljava/util/List<Landroid/os/storage/VolumeInfo;>;"
    const-string/jumbo v6, "primary_physical"

    #@1a
    .line 1672
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    #@1d
    move-result-object v7

    #@1e
    .line 1671
    invoke-static {v6, v7}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@21
    move-result v6

    #@22
    if-eqz v6, :cond_1

    #@24
    .line 1672
    if-eqz v1, :cond_1

    #@26
    .line 1674
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@29
    .line 1682
    :cond_0
    return-object v0

    #@2a
    .line 1676
    :cond_1
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2d
    move-result-object v4

    #@2e
    .local v4, "vol$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@31
    move-result v6

    #@32
    if-eqz v6, :cond_0

    #@34
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@37
    move-result-object v3

    #@38
    check-cast v3, Landroid/os/storage/VolumeInfo;

    #@3a
    .line 1677
    .local v3, "vol":Landroid/os/storage/VolumeInfo;
    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3d
    move-result v6

    #@3e
    if-nez v6, :cond_3

    #@40
    invoke-static {v3}, Landroid/app/ApplicationPackageManager;->isPrimaryStorageCandidateVolume(Landroid/os/storage/VolumeInfo;)Z

    #@43
    move-result v6

    #@44
    if-eqz v6, :cond_2

    #@46
    .line 1678
    :cond_3
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@49
    goto :goto_0
.end method

.method public getPrimaryStorageCurrentVolume()Landroid/os/storage/VolumeInfo;
    .locals 4

    #@0
    .prologue
    .line 1660
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@2
    const-class v3, Landroid/os/storage/StorageManager;

    #@4
    invoke-virtual {v2, v3}, Landroid/app/ContextImpl;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid/os/storage/StorageManager;

    #@a
    .line 1661
    .local v0, "storage":Landroid/os/storage/StorageManager;
    invoke-virtual {v0}, Landroid/os/storage/StorageManager;->getPrimaryStorageUuid()Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 1662
    .local v1, "volumeUuid":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->findVolumeByQualifiedUuid(Ljava/lang/String;)Landroid/os/storage/VolumeInfo;

    #@11
    move-result-object v2

    #@12
    return-object v2
.end method

.method public getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 379
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v3

    #@8
    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getProviderInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    .line 380
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-eqz v1, :cond_0

    #@e
    .line 381
    return-object v1

    #@f
    .line 383
    .end local v1    # "pi":Landroid/content/pm/ProviderInfo;
    :catch_0
    move-exception v0

    #@10
    .line 384
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v3, "Package manager has died"

    #@15
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@18
    throw v2

    #@19
    .line 387
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "pi":Landroid/content/pm/ProviderInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@1b
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2
.end method

.method public getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 349
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v3

    #@8
    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v0

    #@c
    .line 350
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    if-eqz v0, :cond_0

    #@e
    .line 351
    return-object v0

    #@f
    .line 353
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :catch_0
    move-exception v1

    #@10
    .line 354
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v3, "Package manager has died"

    #@15
    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@18
    throw v2

    #@19
    .line 357
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@1b
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2
.end method

.method public getResourcesForActivity(Landroid/content/ComponentName;)Landroid/content/res/Resources;
    .locals 1
    .param p1, "activityName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1022
    const/16 v0, 0x400

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    #@5
    move-result-object v0

    #@6
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8
    .line 1021
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    .locals 10
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1028
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3
    const-string/jumbo v1, "system"

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 1029
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@e
    iget-object v0, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@10
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    .line 1031
    :cond_0
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    #@1b
    invoke-static {}, Landroid/os/Process;->myUid()I

    #@1e
    move-result v1

    #@1f
    if-ne v0, v1, :cond_1

    #@21
    const/4 v9, 0x1

    #@22
    .line 1032
    .local v9, "sameUid":Z
    :goto_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@24
    iget-object v0, v0, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@26
    .line 1033
    if-eqz v9, :cond_2

    #@28
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@2a
    .line 1034
    :goto_1
    if-eqz v9, :cond_3

    #@2c
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    #@2e
    .line 1035
    :goto_2
    iget-object v3, p1, Landroid/content/pm/ApplicationInfo;->resourceDirs:[Ljava/lang/String;

    #@30
    iget-object v4, p1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@32
    .line 1036
    iget-object v5, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@34
    iget-object v7, v5, Landroid/app/ContextImpl;->mPackageInfo:Landroid/app/LoadedApk;

    #@36
    .line 1035
    const/4 v5, 0x0

    #@37
    .line 1032
    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityThread;->getTopLevelResources(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;ILandroid/content/res/Configuration;Landroid/app/LoadedApk;)Landroid/content/res/Resources;

    #@3a
    move-result-object v8

    #@3b
    .line 1037
    .local v8, "r":Landroid/content/res/Resources;
    if-eqz v8, :cond_4

    #@3d
    .line 1038
    return-object v8

    #@3e
    .line 1031
    .end local v8    # "r":Landroid/content/res/Resources;
    .end local v9    # "sameUid":Z
    :cond_1
    const/4 v9, 0x0

    #@3f
    .restart local v9    # "sameUid":Z
    goto :goto_0

    #@40
    .line 1033
    :cond_2
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@42
    goto :goto_1

    #@43
    .line 1034
    :cond_3
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->splitPublicSourceDirs:[Ljava/lang/String;

    #@45
    goto :goto_2

    #@46
    .line 1040
    .restart local v8    # "r":Landroid/content/res/Resources;
    :cond_4
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@48
    new-instance v1, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v2, "Unable to open "

    #@50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v1

    #@54
    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    #@56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v1

    #@5a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@61
    throw v0
.end method

.method public getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 1
    .param p1, "appPackageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1047
    const/16 v0, 0x400

    #@2
    invoke-virtual {p0, p1, v0}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v0

    #@6
    .line 1046
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 5
    .param p1, "appPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1054
    if-gez p2, :cond_0

    #@2
    .line 1055
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    .line 1056
    new-instance v3, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v4, "Call does not support special user #"

    #@c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v3

    #@14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v3

    #@18
    .line 1055
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v2

    #@1c
    .line 1058
    :cond_0
    const-string/jumbo v2, "system"

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 1059
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@27
    iget-object v2, v2, Landroid/app/ContextImpl;->mMainThread:Landroid/app/ActivityThread;

    #@29
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    #@30
    move-result-object v2

    #@31
    return-object v2

    #@32
    .line 1062
    :cond_1
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@34
    const/16 v3, 0x400

    #@36
    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    #@39
    move-result-object v0

    #@3a
    .line 1063
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    #@3c
    .line 1064
    invoke-virtual {p0, v0}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3f
    move-result-object v2

    #@40
    return-object v2

    #@41
    .line 1066
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    #@42
    .line 1067
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@44
    const-string/jumbo v3, "Package manager has died"

    #@47
    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4a
    throw v2

    #@4b
    .line 1069
    .end local v1    # "e":Landroid/os/RemoteException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_2
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@4d
    new-instance v3, Ljava/lang/StringBuilder;

    #@4f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@52
    const-string/jumbo v4, "Package "

    #@55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v3

    #@59
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v3

    #@5d
    const-string/jumbo v4, " doesn\'t exist"

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@6b
    throw v2
.end method

.method public getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    .locals 4
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 364
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v3

    #@8
    invoke-interface {v2, p1, p2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result-object v1

    #@c
    .line 365
    .local v1, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v1, :cond_0

    #@e
    .line 366
    return-object v1

    #@f
    .line 368
    .end local v1    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    #@10
    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@12
    const-string/jumbo v3, "Package manager has died"

    #@15
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@18
    throw v2

    #@19
    .line 372
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "si":Landroid/content/pm/ServiceInfo;
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@1b
    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    #@1e
    move-result-object v3

    #@1f
    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2
.end method

.method public getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1935
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1938
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@5
    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getSigningKeySet(Ljava/lang/String;)Landroid/content/pm/KeySet;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object v1

    #@9
    .line 1942
    .local v1, "ks":Landroid/content/pm/KeySet;
    return-object v1

    #@a
    .line 1939
    .end local v1    # "ks":Landroid/content/pm/KeySet;
    :catch_0
    move-exception v0

    #@b
    .line 1940
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    #@c
    return-object v2
.end method

.method public getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    .locals 3

    #@0
    .prologue
    .line 402
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemAvailableFeatures()[Landroid/content/pm/FeatureInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 403
    :catch_0
    move-exception v0

    #@8
    .line 404
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Package manager has died"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public getSystemSharedLibraryNames()[Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 393
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getSystemSharedLibraryNames()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 394
    :catch_0
    move-exception v0

    #@8
    .line 395
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Package manager has died"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1273
    new-instance v2, Landroid/app/ApplicationPackageManager$ResourceName;

    #@3
    invoke-direct {v2, p1, p2}, Landroid/app/ApplicationPackageManager$ResourceName;-><init>(Ljava/lang/String;I)V

    #@6
    .line 1274
    .local v2, "name":Landroid/app/ApplicationPackageManager$ResourceName;
    invoke-direct {p0, v2}, Landroid/app/ApplicationPackageManager;->getCachedString(Landroid/app/ApplicationPackageManager$ResourceName;)Ljava/lang/CharSequence;

    #@9
    move-result-object v4

    #@a
    .line 1275
    .local v4, "text":Ljava/lang/CharSequence;
    if-eqz v4, :cond_0

    #@c
    .line 1276
    return-object v4

    #@d
    .line 1278
    :cond_0
    if-nez p3, :cond_1

    #@f
    .line 1280
    const/16 v5, 0x400

    #@11
    :try_start_0
    invoke-virtual {p0, p1, v5}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object p3

    #@15
    .line 1286
    :cond_1
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@18
    move-result-object v3

    #@19
    .line 1287
    .local v3, "r":Landroid/content/res/Resources;
    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@1c
    move-result-object v4

    #@1d
    .line 1288
    invoke-direct {p0, v2, v4}, Landroid/app/ApplicationPackageManager;->putCachedString(Landroid/app/ApplicationPackageManager$ResourceName;Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    .line 1289
    return-object v4

    #@21
    .line 1281
    .end local v3    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    #@22
    .line 1282
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v8

    #@23
    .line 1293
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v1

    #@24
    .line 1296
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v5, "PackageManager"

    #@27
    new-instance v6, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v7, "Failure retrieving text 0x"

    #@2f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v6

    #@33
    .line 1297
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    .line 1296
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v6

    #@3b
    .line 1297
    const-string/jumbo v7, " in package "

    #@3e
    .line 1296
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v6

    #@42
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    move-result-object v6

    #@46
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@49
    move-result-object v6

    #@4a
    invoke-static {v5, v6, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d
    .line 1300
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-object v8

    #@4e
    .line 1290
    :catch_2
    move-exception v0

    #@4f
    .line 1291
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v5, "PackageManager"

    #@52
    new-instance v6, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v7, "Failure retrieving resources for "

    #@5a
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v6

    #@5e
    .line 1292
    iget-object v7, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@60
    .line 1291
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v6

    #@64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v6

    #@68
    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    goto :goto_0
.end method

.method public getUidForSharedUser(Ljava/lang/String;)I
    .locals 5
    .param p1, "sharedUserName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 569
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getUidForSharedUser(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    .line 570
    .local v1, "uid":I
    const/4 v2, -0x1

    #@7
    if-eq v1, v2, :cond_0

    #@9
    .line 571
    return v1

    #@a
    .line 573
    .end local v1    # "uid":I
    :catch_0
    move-exception v0

    #@b
    .line 574
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v3, "Package manager has died"

    #@10
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    throw v2

    #@14
    .line 576
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "uid":I
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@16
    new-instance v3, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v4, "No shared userid for user:"

    #@1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2
.end method

.method public getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "density"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 997
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    #@4
    move-result v1

    #@5
    invoke-direct {p0, v1}, Landroid/app/ApplicationPackageManager;->getUserIfProfile(I)Landroid/content/pm/UserInfo;

    #@8
    move-result-object v0

    #@9
    .line 998
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_1

    #@b
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 999
    if-gtz p2, :cond_0

    #@13
    .line 1000
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@15
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getResources()Landroid/content/res/Resources;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@1c
    move-result-object v1

    #@1d
    iget p2, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    #@1f
    .line 1002
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@22
    move-result-object v1

    #@23
    .line 1003
    const v2, 0x1080332

    #@26
    .line 1002
    invoke-virtual {v1, v2, p2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    #@29
    move-result-object v1

    #@2a
    return-object v1

    #@2b
    .line 1005
    :cond_1
    return-object v2
.end method

.method public getUserBadgedDrawableForDensity(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;Landroid/graphics/Rect;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;
    .param p3, "badgeLocation"    # Landroid/graphics/Rect;
    .param p4, "badgeDensity"    # I

    #@0
    .prologue
    .line 988
    invoke-virtual {p0, p2, p4}, Landroid/app/ApplicationPackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 989
    .local v0, "badgeDrawable":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    #@6
    .line 990
    return-object p1

    #@7
    .line 992
    :cond_0
    const/4 v1, 0x1

    #@8
    invoke-direct {p0, p1, v0, p3, v1}, Landroid/app/ApplicationPackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    #@b
    move-result-object v1

    #@c
    return-object v1
.end method

.method public getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 977
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@4
    move-result v2

    #@5
    invoke-direct {p0, v2}, Landroid/app/ApplicationPackageManager;->getBadgeResIdForUser(I)I

    #@8
    move-result v1

    #@9
    .line 978
    .local v1, "badgeResId":I
    if-nez v1, :cond_0

    #@b
    .line 979
    return-object p1

    #@c
    .line 981
    :cond_0
    const-string/jumbo v2, "system"

    #@f
    invoke-virtual {p0, v2, v1, v3}, Landroid/app/ApplicationPackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@12
    move-result-object v0

    #@13
    .line 982
    .local v0, "badgeIcon":Landroid/graphics/drawable/Drawable;
    const/4 v2, 0x1

    #@14
    invoke-direct {p0, p1, v0, v3, v2}, Landroid/app/ApplicationPackageManager;->getBadgedDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;Z)Landroid/graphics/drawable/Drawable;

    #@17
    move-result-object v2

    #@18
    return-object v2
.end method

.method public getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "label"    # Ljava/lang/CharSequence;
    .param p2, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1010
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    #@3
    move-result v1

    #@4
    invoke-direct {p0, v1}, Landroid/app/ApplicationPackageManager;->getUserIfProfile(I)Landroid/content/pm/UserInfo;

    #@7
    move-result-object v0

    #@8
    .line 1011
    .local v0, "userInfo":Landroid/content/pm/UserInfo;
    if-eqz v0, :cond_0

    #@a
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_0

    #@10
    .line 1012
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x1

    #@15
    new-array v2, v2, [Ljava/lang/Object;

    #@17
    .line 1013
    const/4 v3, 0x0

    #@18
    aput-object p1, v2, v3

    #@1a
    const v3, 0x104055e

    #@1d
    .line 1012
    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    return-object v1

    #@22
    .line 1015
    :cond_0
    return-object p1
.end method

.method getUserManager()Landroid/os/UserManager;
    .locals 2

    #@0
    .prologue
    .line 117
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 118
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mUserManager:Landroid/os/UserManager;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 119
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@9
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/app/ApplicationPackageManager;->mUserManager:Landroid/os/UserManager;

    #@f
    .line 121
    :cond_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mUserManager:Landroid/os/UserManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    monitor-exit v1

    #@12
    return-object v0

    #@13
    .line 117
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method

.method public getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 2

    #@0
    .prologue
    .line 1975
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->getVerifierDeviceIdentity()Landroid/content/pm/VerifierDeviceIdentity;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 1976
    :catch_0
    move-exception v0

    #@8
    .line 1979
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return-object v1
.end method

.method public getXml(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/content/res/XmlResourceParser;
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resid"    # I
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1306
    if-nez p3, :cond_0

    #@3
    .line 1308
    const/16 v3, 0x400

    #@5
    :try_start_0
    invoke-virtual {p0, p1, v3}, Landroid/app/ApplicationPackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@8
    move-result-object p3

    #@9
    .line 1314
    :cond_0
    :try_start_1
    invoke-virtual {p0, p3}, Landroid/app/ApplicationPackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    #@c
    move-result-object v2

    #@d
    .line 1315
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    #@10
    move-result-object v3

    #@11
    return-object v3

    #@12
    .line 1309
    .end local v2    # "r":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    #@13
    .line 1310
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object v6

    #@14
    .line 1322
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v0

    #@15
    .line 1323
    .restart local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "PackageManager"

    #@18
    new-instance v4, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v5, "Failure retrieving resources for "

    #@20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v4

    #@24
    .line 1324
    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@26
    .line 1323
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v4

    #@2e
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@31
    .line 1326
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    return-object v6

    #@32
    .line 1316
    :catch_2
    move-exception v1

    #@33
    .line 1319
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v3, "PackageManager"

    #@36
    new-instance v4, Ljava/lang/StringBuilder;

    #@38
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@3b
    const-string/jumbo v5, "Failure retrieving xml 0x"

    #@3e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v4

    #@42
    .line 1320
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@45
    move-result-object v5

    #@46
    .line 1319
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    .line 1320
    const-string/jumbo v5, " in package "

    #@4d
    .line 1319
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v4

    #@51
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@58
    move-result-object v4

    #@59
    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@5c
    goto :goto_0
.end method

.method public grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 483
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->grantRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 481
    return-void

    #@a
    .line 484
    :catch_0
    move-exception v0

    #@b
    .line 485
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v2, "Package manager has died"

    #@10
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method public hasSystemFeature(Ljava/lang/String;)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 411
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 412
    :catch_0
    move-exception v0

    #@8
    .line 413
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Package manager has died"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public installExistingPackage(Ljava/lang/String;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1410
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v3

    #@6
    invoke-interface {v2, p1, v3}, Landroid/content/pm/IPackageManager;->installExistingPackageAsUser(Ljava/lang/String;I)I

    #@9
    move-result v1

    #@a
    .line 1411
    .local v1, "res":I
    const/4 v2, -0x3

    #@b
    if-ne v1, v2, :cond_0

    #@d
    .line 1412
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@f
    new-instance v3, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v4, "Package "

    #@17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v3

    #@1f
    const-string/jumbo v4, " doesn\'t exist"

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v3

    #@2a
    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    .line 1415
    .end local v1    # "res":I
    :catch_0
    move-exception v0

    #@2f
    .line 1417
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@31
    new-instance v3, Ljava/lang/StringBuilder;

    #@33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@36
    const-string/jumbo v4, "Package "

    #@39
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v3

    #@41
    const-string/jumbo v4, " doesn\'t exist"

    #@44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-direct {v2, v3}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@4f
    throw v2

    #@50
    .line 1414
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "res":I
    :cond_0
    return v1
.end method

.method public installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V
    .locals 9
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/app/PackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1364
    new-instance v0, Landroid/content/pm/VerificationParams;

    #@3
    .line 1365
    const/4 v4, -0x1

    #@4
    move-object v2, v1

    #@5
    move-object v3, v1

    #@6
    move-object v5, v1

    #@7
    .line 1364
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    #@a
    .local v0, "verificationParams":Landroid/content/pm/VerificationParams;
    move-object v2, p0

    #@b
    move-object v3, p1

    #@c
    move-object v4, p2

    #@d
    move v5, p3

    #@e
    move-object v6, p4

    #@f
    move-object v7, v0

    #@10
    move-object v8, v1

    #@11
    .line 1366
    invoke-direct/range {v2 .. v8}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    #@14
    .line 1363
    return-void
.end method

.method public installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V
    .locals 9
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1337
    new-instance v0, Landroid/content/pm/VerificationParams;

    #@3
    .line 1338
    const/4 v4, -0x1

    #@4
    move-object v2, v1

    #@5
    move-object v3, v1

    #@6
    move-object v5, v1

    #@7
    .line 1337
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    #@a
    .line 1339
    .local v0, "verificationParams":Landroid/content/pm/VerificationParams;
    new-instance v4, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;

    #@c
    invoke-direct {v4, p2}, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;-><init>(Landroid/content/pm/IPackageInstallObserver;)V

    #@f
    move-object v2, p0

    #@10
    move-object v3, p1

    #@11
    move v5, p3

    #@12
    move-object v6, p4

    #@13
    move-object v7, v0

    #@14
    move-object v8, v1

    #@15
    invoke-direct/range {v2 .. v8}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    #@18
    .line 1336
    return-void
.end method

.method public installPackageWithVerification(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 8
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/app/PackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "verificationURI"    # Landroid/net/Uri;
    .param p6, "manifestDigest"    # Landroid/content/pm/ManifestDigest;
    .param p7, "encryptionParams"    # Landroid/content/pm/ContainerEncryptionParams;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1374
    new-instance v0, Landroid/content/pm/VerificationParams;

    #@3
    .line 1375
    const/4 v4, -0x1

    #@4
    move-object v1, p5

    #@5
    move-object v3, v2

    #@6
    move-object v5, p6

    #@7
    .line 1374
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    #@a
    .local v0, "verificationParams":Landroid/content/pm/VerificationParams;
    move-object v1, p0

    #@b
    move-object v2, p1

    #@c
    move-object v3, p2

    #@d
    move v4, p3

    #@e
    move-object v5, p4

    #@f
    move-object v6, v0

    #@10
    move-object v7, p7

    #@11
    .line 1376
    invoke-direct/range {v1 .. v7}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    #@14
    .line 1373
    return-void
.end method

.method public installPackageWithVerification(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/net/Uri;Landroid/content/pm/ManifestDigest;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 8
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "verificationURI"    # Landroid/net/Uri;
    .param p6, "manifestDigest"    # Landroid/content/pm/ManifestDigest;
    .param p7, "encryptionParams"    # Landroid/content/pm/ContainerEncryptionParams;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1347
    new-instance v0, Landroid/content/pm/VerificationParams;

    #@3
    .line 1348
    const/4 v4, -0x1

    #@4
    move-object v1, p5

    #@5
    move-object v3, v2

    #@6
    move-object v5, p6

    #@7
    .line 1347
    invoke-direct/range {v0 .. v5}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    #@a
    .line 1349
    .local v0, "verificationParams":Landroid/content/pm/VerificationParams;
    new-instance v3, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;

    #@c
    invoke-direct {v3, p2}, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;-><init>(Landroid/content/pm/IPackageInstallObserver;)V

    #@f
    move-object v1, p0

    #@10
    move-object v2, p1

    #@11
    move v4, p3

    #@12
    move-object v5, p4

    #@13
    move-object v6, v0

    #@14
    move-object v7, p7

    #@15
    invoke-direct/range {v1 .. v7}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    #@18
    .line 1346
    return-void
.end method

.method public installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 0
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/app/PackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p6, "encryptionParams"    # Landroid/content/pm/ContainerEncryptionParams;

    #@0
    .prologue
    .line 1384
    invoke-direct/range {p0 .. p6}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    #@3
    .line 1383
    return-void
.end method

.method public installPackageWithVerificationAndEncryption(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V
    .locals 7
    .param p1, "packageURI"    # Landroid/net/Uri;
    .param p2, "observer"    # Landroid/content/pm/IPackageInstallObserver;
    .param p3, "flags"    # I
    .param p4, "installerPackageName"    # Ljava/lang/String;
    .param p5, "verificationParams"    # Landroid/content/pm/VerificationParams;
    .param p6, "encryptionParams"    # Landroid/content/pm/ContainerEncryptionParams;

    #@0
    .prologue
    .line 1357
    new-instance v2, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;

    #@2
    invoke-direct {v2, p2}, Landroid/content/pm/PackageManager$LegacyPackageInstallObserver;-><init>(Landroid/content/pm/IPackageInstallObserver;)V

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move v3, p3

    #@8
    move-object v4, p4

    #@9
    move-object v5, p5

    #@a
    move-object v6, p6

    #@b
    invoke-direct/range {v0 .. v6}, Landroid/app/ApplicationPackageManager;->installCommon(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;Landroid/content/pm/VerificationParams;Landroid/content/pm/ContainerEncryptionParams;)V

    #@e
    .line 1356
    return-void
.end method

.method public isPackageAvailable(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2012
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v2

    #@8
    invoke-interface {v1, p1, v2}, Landroid/content/pm/IPackageManager;->isPackageAvailable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 2013
    :catch_0
    move-exception v0

    #@e
    .line 2014
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@11
    move-result-object v1

    #@12
    throw v1
.end method

.method public isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "permName"    # Ljava/lang/String;
    .param p2, "pkgName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 429
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v2

    #@8
    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->isPermissionRevokedByPolicy(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 430
    :catch_0
    move-exception v0

    #@e
    .line 431
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@10
    const-string/jumbo v2, "Package manager has died"

    #@13
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@16
    throw v1
.end method

.method public isSafeMode()Z
    .locals 4

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 1075
    :try_start_0
    iget v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    #@4
    if-gez v3, :cond_0

    #@6
    .line 1076
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@8
    invoke-interface {v3}, Landroid/content/pm/IPackageManager;->isSafeMode()Z

    #@b
    move-result v3

    #@c
    if-eqz v3, :cond_1

    #@e
    move v3, v1

    #@f
    :goto_0
    iput v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I

    #@11
    .line 1078
    :cond_0
    iget v3, p0, Landroid/app/ApplicationPackageManager;->mCachedSafeMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    if-eqz v3, :cond_2

    #@15
    :goto_1
    return v1

    #@16
    :cond_1
    move v3, v2

    #@17
    .line 1076
    goto :goto_0

    #@18
    :cond_2
    move v1, v2

    #@19
    .line 1078
    goto :goto_1

    #@1a
    .line 1079
    :catch_0
    move-exception v0

    #@1b
    .line 1080
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@1d
    const-string/jumbo v2, "Package manager has died"

    #@20
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@23
    throw v1
.end method

.method public isSignedBy(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;

    #@0
    .prologue
    .line 1948
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1949
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1951
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@8
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSignedByKeySet(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1952
    :catch_0
    move-exception v0

    #@e
    .line 1953
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@f
    return v1
.end method

.method public isSignedByExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ks"    # Landroid/content/pm/KeySet;

    #@0
    .prologue
    .line 1960
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 1961
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    .line 1963
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@8
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->isPackageSignedByKeySetExactly(Ljava/lang/String;Landroid/content/pm/KeySet;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    move-result v1

    #@c
    return v1

    #@d
    .line 1964
    :catch_0
    move-exception v0

    #@e
    .line 1965
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@f
    return v1
.end method

.method public isUpgrade()Z
    .locals 2

    #@0
    .prologue
    .line 1988
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isUpgrade()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1989
    :catch_0
    move-exception v0

    #@8
    .line 1990
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public loadItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 2048
    invoke-virtual {p0, p1, p2}, Landroid/app/ApplicationPackageManager;->loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@3
    move-result-object v0

    #@4
    .line 2049
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    iget v1, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    #@6
    const/16 v2, -0x2710

    #@8
    if-eq v1, v2, :cond_0

    #@a
    .line 2050
    return-object v0

    #@b
    .line 2052
    :cond_0
    new-instance v1, Landroid/os/UserHandle;

    #@d
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@f
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    #@12
    move-result v2

    #@13
    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    #@16
    invoke-virtual {p0, v0, v1}, Landroid/app/ApplicationPackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method public loadUnbadgedItemIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "itemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    #@0
    .prologue
    .line 2059
    iget v2, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    #@2
    const/16 v3, -0x2710

    #@4
    if-eq v2, v3, :cond_1

    #@6
    .line 2060
    invoke-virtual {p0}, Landroid/app/ApplicationPackageManager;->getUserManager()Landroid/os/UserManager;

    #@9
    move-result-object v2

    #@a
    iget v3, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    #@c
    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    #@f
    move-result-object v0

    #@10
    .line 2061
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    #@12
    .line 2062
    iget v2, p1, Landroid/content/pm/PackageItemInfo;->showUserIcon:I

    #@14
    const/4 v3, 0x0

    #@15
    invoke-static {v2, v3}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(IZ)Landroid/graphics/drawable/Drawable;

    #@18
    move-result-object v2

    #@19
    return-object v2

    #@1a
    .line 2064
    :cond_0
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    #@1c
    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    #@1f
    return-object v2

    #@20
    .line 2066
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v1, 0x0

    #@21
    .line 2067
    .local v1, "dr":Landroid/graphics/drawable/Drawable;
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@23
    if-eqz v2, :cond_2

    #@25
    .line 2068
    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    #@27
    iget v3, p1, Landroid/content/pm/PackageItemInfo;->icon:I

    #@29
    invoke-virtual {p0, v2, v3, p2}, Landroid/app/ApplicationPackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    #@2c
    move-result-object v1

    #@2d
    .line 2070
    .end local v1    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_2
    if-nez v1, :cond_3

    #@2f
    .line 2071
    invoke-virtual {p1, p0}, Landroid/content/pm/PackageItemInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@32
    move-result-object v1

    #@33
    .line 2073
    :cond_3
    return-object v1
.end method

.method public movePackage(Ljava/lang/String;Landroid/os/storage/VolumeInfo;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "vol"    # Landroid/os/storage/VolumeInfo;

    #@0
    .prologue
    .line 1573
    :try_start_0
    const-string/jumbo v2, "private"

    #@3
    iget-object v3, p2, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1574
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@d
    .line 1581
    .local v1, "volumeUuid":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@f
    invoke-interface {v2, p1, v1}, Landroid/content/pm/IPackageManager;->movePackage(Ljava/lang/String;Ljava/lang/String;)I

    #@12
    move-result v2

    #@13
    return v2

    #@14
    .line 1575
    .end local v1    # "volumeUuid":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 1576
    const-string/jumbo v1, "primary_physical"

    #@1d
    .restart local v1    # "volumeUuid":Ljava/lang/String;
    goto :goto_0

    #@1e
    .line 1578
    .end local v1    # "volumeUuid":Ljava/lang/String;
    :cond_1
    iget-object v2, p2, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@20
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .restart local v1    # "volumeUuid":Ljava/lang/String;
    goto :goto_0

    #@27
    .line 1582
    .end local v1    # "volumeUuid":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@28
    .line 1583
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@2b
    move-result-object v2

    #@2c
    throw v2
.end method

.method public movePrimaryStorage(Landroid/os/storage/VolumeInfo;)I
    .locals 4
    .param p1, "vol"    # Landroid/os/storage/VolumeInfo;

    #@0
    .prologue
    .line 1644
    :try_start_0
    const-string/jumbo v2, "private"

    #@3
    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    #@5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_0

    #@b
    .line 1645
    sget-object v1, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    #@d
    .line 1652
    .local v1, "volumeUuid":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@f
    invoke-interface {v2, v1}, Landroid/content/pm/IPackageManager;->movePrimaryStorage(Ljava/lang/String;)I

    #@12
    move-result v2

    #@13
    return v2

    #@14
    .line 1646
    .end local v1    # "volumeUuid":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->isPrimaryPhysical()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_1

    #@1a
    .line 1647
    const-string/jumbo v1, "primary_physical"

    #@1d
    .restart local v1    # "volumeUuid":Ljava/lang/String;
    goto :goto_0

    #@1e
    .line 1649
    .end local v1    # "volumeUuid":Ljava/lang/String;
    :cond_1
    iget-object v2, p1, Landroid/os/storage/VolumeInfo;->fsUuid:Ljava/lang/String;

    #@20
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@26
    .restart local v1    # "volumeUuid":Ljava/lang/String;
    goto :goto_0

    #@27
    .line 1653
    .end local v1    # "volumeUuid":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@28
    .line 1654
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@2b
    move-result-object v2

    #@2c
    throw v2
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 711
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@2
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public queryBroadcastReceivers(Landroid/content/Intent;II)Ljava/util/List;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 699
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    .line 701
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 699
    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentReceivers(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 704
    :catch_0
    move-exception v0

    #@12
    .line 705
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@14
    const-string/jumbo v2, "Package manager has died"

    #@17
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v1
.end method

.method public queryContentProviders(Ljava/lang/String;II)Ljava/util/List;
    .locals 4
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 781
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@3
    invoke-interface {v3, p1, p2, p3}, Landroid/content/pm/IPackageManager;->queryContentProviders(Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    #@6
    move-result-object v1

    #@7
    .line 782
    .local v1, "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ProviderInfo;>;"
    if-eqz v1, :cond_0

    #@9
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v2

    #@d
    :cond_0
    return-object v2

    #@e
    .line 783
    .end local v1    # "slice":Landroid/content/pm/ParceledListSlice;, "Landroid/content/pm/ParceledListSlice<Landroid/content/pm/ProviderInfo;>;"
    :catch_0
    move-exception v0

    #@f
    .line 784
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@11
    const-string/jumbo v3, "Package manager has died"

    #@14
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@17
    throw v2
.end method

.method public queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/InstrumentationInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 809
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->queryInstrumentation(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 810
    :catch_0
    move-exception v0

    #@8
    .line 811
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Package manager has died"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 643
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@2
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 651
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    .line 653
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 651
    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 656
    :catch_0
    move-exception v0

    #@12
    .line 657
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@14
    const-string/jumbo v2, "Package manager has died"

    #@17
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v1
.end method

.method public queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;
    .locals 15
    .param p1, "caller"    # Landroid/content/ComponentName;
    .param p2, "specifics"    # [Landroid/content/Intent;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "[",
            "Landroid/content/Intent;",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 665
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@2
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v12

    #@6
    .line 667
    .local v12, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    #@7
    .line 668
    .local v4, "specificTypes":[Ljava/lang/String;
    if-eqz p2, :cond_2

    #@9
    .line 669
    move-object/from16 v0, p2

    #@b
    array-length v9, v0

    #@c
    .line 670
    .local v9, "N":I
    const/4 v11, 0x0

    #@d
    .end local v4    # "specificTypes":[Ljava/lang/String;
    .local v11, "i":I
    :goto_0
    if-ge v11, v9, :cond_2

    #@f
    .line 671
    aget-object v13, p2, v11

    #@11
    .line 672
    .local v13, "sp":Landroid/content/Intent;
    if-eqz v13, :cond_1

    #@13
    .line 673
    invoke-virtual {v13, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@16
    move-result-object v14

    #@17
    .line 674
    .local v14, "t":Ljava/lang/String;
    if-eqz v14, :cond_1

    #@19
    .line 675
    if-nez v4, :cond_0

    #@1b
    .line 676
    new-array v4, v9, [Ljava/lang/String;

    #@1d
    .line 678
    :cond_0
    aput-object v14, v4, v11

    #@1f
    .line 670
    .end local v14    # "t":Ljava/lang/String;
    :cond_1
    add-int/lit8 v11, v11, 0x1

    #@21
    goto :goto_0

    #@22
    .line 685
    .end local v9    # "N":I
    .end local v11    # "i":I
    .end local v13    # "sp":Landroid/content/Intent;
    :cond_2
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@24
    .line 686
    move-object/from16 v0, p3

    #@26
    invoke-virtual {v0, v12}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@29
    move-result-object v6

    #@2a
    .line 687
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@2c
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    #@2f
    move-result v8

    #@30
    move-object/from16 v2, p1

    #@32
    move-object/from16 v3, p2

    #@34
    move-object/from16 v5, p3

    #@36
    move/from16 v7, p4

    #@38
    .line 685
    invoke-interface/range {v1 .. v8}, Landroid/content/pm/IPackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;[Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@3b
    move-result-object v1

    #@3c
    return-object v1

    #@3d
    .line 688
    :catch_0
    move-exception v10

    #@3e
    .line 689
    .local v10, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@40
    const-string/jumbo v2, "Package manager has died"

    #@43
    invoke-direct {v1, v2, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@46
    throw v1
.end method

.method public queryIntentContentProviders(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 758
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@2
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public queryIntentContentProvidersAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 749
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    .line 750
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 749
    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentContentProviders(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 751
    :catch_0
    move-exception v0

    #@12
    .line 752
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@14
    const-string/jumbo v2, "Package manager has died"

    #@17
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v1
.end method

.method public queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 742
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@2
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 730
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    .line 732
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 730
    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 735
    :catch_0
    move-exception v0

    #@12
    .line 736
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@14
    const-string/jumbo v2, "Package manager has died"

    #@17
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v1
.end method

.method public queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    .locals 4
    .param p1, "group"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v2, p1, p2}, Landroid/content/pm/IPackageManager;->queryPermissionsByGroup(Ljava/lang/String;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    .line 254
    .local v1, "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    if-eqz v1, :cond_0

    #@8
    .line 255
    return-object v1

    #@9
    .line 257
    .end local v1    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :catch_0
    move-exception v0

    #@a
    .line 258
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@c
    const-string/jumbo v3, "Package manager has died"

    #@f
    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@12
    throw v2

    #@13
    .line 261
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "pi":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PermissionInfo;>;"
    :cond_0
    new-instance v2, Landroid/content/pm/PackageManager$NameNotFoundException;

    #@15
    invoke-direct {v2, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    #@18
    throw v2
.end method

.method public registerMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Handler;)V
    .locals 4
    .param p1, "callback"    # Landroid/content/pm/PackageManager$MoveCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 1540
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    #@2
    monitor-enter v3

    #@3
    .line 1541
    :try_start_0
    new-instance v0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;

    #@5
    .line 1542
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@8
    move-result-object v2

    #@9
    .line 1541
    invoke-direct {v0, p1, v2}, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;-><init>(Landroid/content/pm/PackageManager$MoveCallback;Landroid/os/Looper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 1544
    .local v0, "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    :try_start_1
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@e
    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->registerMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@11
    .line 1548
    :try_start_2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    #@13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@16
    monitor-exit v3

    #@17
    .line 1539
    return-void

    #@18
    .line 1545
    :catch_0
    move-exception v1

    #@19
    .line 1546
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@1c
    move-result-object v2

    #@1d
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@1e
    .line 1540
    .end local v0    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@1f
    monitor-exit v3

    #@20
    throw v2
.end method

.method public removeOnPermissionsChangeListener(Landroid/content/pm/PackageManager$OnPermissionsChangedListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/content/pm/PackageManager$OnPermissionsChangedListener;

    #@0
    .prologue
    .line 1103
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    #@2
    monitor-enter v3

    #@3
    .line 1104
    :try_start_0
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    #@5
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/content/pm/IOnPermissionsChangeListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 1105
    .local v0, "delegate":Landroid/content/pm/IOnPermissionsChangeListener;
    if-eqz v0, :cond_0

    #@d
    .line 1107
    :try_start_1
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@f
    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->removeOnPermissionsChangeListener(Landroid/content/pm/IOnPermissionsChangeListener;)V

    #@12
    .line 1108
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mPermissionListeners:Ljava/util/Map;

    #@14
    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@17
    :cond_0
    monitor-exit v3

    #@18
    .line 1102
    return-void

    #@19
    .line 1109
    :catch_0
    move-exception v1

    #@1a
    .line 1110
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    #@1c
    const-string/jumbo v4, "Package manager has died"

    #@1f
    invoke-direct {v2, v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@22
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@23
    .line 1103
    .end local v0    # "delegate":Landroid/content/pm/IOnPermissionsChangeListener;
    .end local v1    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    #@24
    monitor-exit v3

    #@25
    throw v2
.end method

.method public removePackageFromPreferred(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1768
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->removePackageFromPreferred(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1766
    :goto_0
    return-void

    #@6
    .line 1769
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public removePermission(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 473
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1}, Landroid/content/pm/IPackageManager;->removePermission(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 471
    return-void

    #@6
    .line 474
    :catch_0
    move-exception v0

    #@7
    .line 475
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@9
    const-string/jumbo v2, "Package manager has died"

    #@c
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method public replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 1808
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    #@5
    move-result v5

    #@6
    move-object v1, p1

    #@7
    move v2, p2

    #@8
    move-object v3, p3

    #@9
    move-object v4, p4

    #@a
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 1806
    :goto_0
    return-void

    #@e
    .line 1809
    :catch_0
    move-exception v6

    #@f
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public replacePreferredActivityAsUser(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    .locals 7
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "set"    # [Landroid/content/ComponentName;
    .param p4, "activity"    # Landroid/content/ComponentName;
    .param p5, "userId"    # I

    #@0
    .prologue
    .line 1819
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move v5, p5

    #@7
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@a
    .line 1817
    :goto_0
    return-void

    #@b
    .line 1820
    :catch_0
    move-exception v6

    #@c
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 624
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@2
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 630
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    .line 632
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 630
    invoke-interface {v1, p1, v2, p2, p3}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 635
    :catch_0
    move-exception v0

    #@12
    .line 636
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@14
    const-string/jumbo v2, "Package manager has died"

    #@17
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    throw v1
.end method

.method public resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 763
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@2
    invoke-virtual {v0}, Landroid/app/ContextImpl;->getUserId()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1, p2, v0}, Landroid/app/ApplicationPackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "flags"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 770
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->resolveContentProvider(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v1

    #@6
    return-object v1

    #@7
    .line 771
    :catch_0
    move-exception v0

    #@8
    .line 772
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@a
    const-string/jumbo v2, "Package manager has died"

    #@d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@10
    throw v1
.end method

.method public resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 717
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    .line 719
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 721
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@e
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    #@11
    move-result v3

    #@12
    .line 717
    invoke-interface {v1, p1, v2, p2, v3}, Landroid/content/pm/IPackageManager;->resolveService(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@15
    move-result-object v1

    #@16
    return-object v1

    #@17
    .line 722
    :catch_0
    move-exception v0

    #@18
    .line 723
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@1a
    const-string/jumbo v2, "Package manager has died"

    #@1d
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@20
    throw v1
.end method

.method public revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 493
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->revokeRuntimePermission(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    .line 491
    return-void

    #@a
    .line 494
    :catch_0
    move-exception v0

    #@b
    .line 495
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@d
    const-string/jumbo v2, "Package manager has died"

    #@10
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@13
    throw v1
.end method

.method public setApplicationEnabledSetting(Ljava/lang/String;II)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1879
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    .line 1880
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v4

    #@8
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@a
    invoke-virtual {v1}, Landroid/app/ContextImpl;->getOpPackageName()Ljava/lang/String;

    #@d
    move-result-object v5

    #@e
    move-object v1, p1

    #@f
    move v2, p2

    #@10
    move v3, p3

    #@11
    .line 1879
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    .line 1877
    :goto_0
    return-void

    #@15
    .line 1881
    :catch_0
    move-exception v6

    #@16
    .local v6, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "hidden"    # Z
    .param p3, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1900
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    .line 1901
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v2

    #@6
    .line 1900
    invoke-interface {v1, p1, p2, v2}, Landroid/content/pm/IPackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@9
    move-result v1

    #@a
    return v1

    #@b
    .line 1902
    :catch_0
    move-exception v0

    #@c
    .line 1905
    .local v0, "re":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@d
    return v1
.end method

.method public setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    .locals 3
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "newState"    # I
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 1859
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getUserId()I

    #@7
    move-result v2

    #@8
    invoke-interface {v1, p1, p2, p3, v2}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 1857
    :goto_0
    return-void

    #@c
    .line 1860
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setDefaultBrowserPackageName(Ljava/lang/String;I)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 1502
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->setDefaultBrowserPackageName(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1503
    :catch_0
    move-exception v0

    #@8
    .line 1505
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "installerPackageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1513
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->setInstallerPackageName(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1511
    :goto_0
    return-void

    #@6
    .line 1514
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 4
    .param p1, "permission"    # Ljava/lang/String;

    #@0
    .prologue
    .line 522
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    .line 523
    iget-object v2, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@4
    invoke-virtual {v2}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    #@7
    move-result-object v2

    #@8
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mContext:Landroid/app/ContextImpl;

    #@a
    invoke-virtual {v3}, Landroid/app/ContextImpl;->getUserId()I

    #@d
    move-result v3

    #@e
    .line 522
    invoke-interface {v1, p1, v2, v3}, Landroid/content/pm/IPackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result v1

    #@12
    return v1

    #@13
    .line 524
    :catch_0
    move-exception v0

    #@14
    .line 525
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@16
    const-string/jumbo v2, "Package manager has died"

    #@19
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1c
    throw v1
.end method

.method public unregisterMoveCallback(Landroid/content/pm/PackageManager$MoveCallback;)V
    .locals 5
    .param p1, "callback"    # Landroid/content/pm/PackageManager$MoveCallback;

    #@0
    .prologue
    .line 1554
    iget-object v4, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    #@2
    monitor-enter v4

    #@3
    .line 1555
    :try_start_0
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mDelegates:Ljava/util/ArrayList;

    #@5
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v2

    #@9
    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v3

    #@d
    if-eqz v3, :cond_1

    #@f
    .line 1556
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;

    #@15
    .line 1557
    .local v0, "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    iget-object v3, v0, Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;->mCallback:Landroid/content/pm/PackageManager$MoveCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    if-ne v3, p1, :cond_0

    #@19
    .line 1559
    :try_start_1
    iget-object v3, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@1b
    invoke-interface {v3, v0}, Landroid/content/pm/IPackageManager;->unregisterMoveCallback(Landroid/content/pm/IPackageMoveObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1e
    .line 1563
    :try_start_2
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@21
    goto :goto_0

    #@22
    .line 1554
    .end local v0    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;>;"
    :catchall_0
    move-exception v3

    #@23
    monitor-exit v4

    #@24
    throw v3

    #@25
    .line 1560
    .restart local v0    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;>;"
    :catch_0
    move-exception v1

    #@26
    .line 1561
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    #@29
    move-result-object v3

    #@2a
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2b
    .end local v0    # "delegate":Landroid/app/ApplicationPackageManager$MoveCallbackDelegate;
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1
    monitor-exit v4

    #@2c
    .line 1553
    return-void
.end method

.method public updateIntentVerificationStatus(Ljava/lang/String;II)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 1462
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->updateIntentVerificationStatus(Ljava/lang/String;II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    return v1

    #@7
    .line 1463
    :catch_0
    move-exception v0

    #@8
    .line 1465
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    #@9
    return v1
.end method

.method public updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;IILandroid/os/UserHandle;)V
    .locals 7
    .param p1, "permissionName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I
    .param p5, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 512
    :try_start_0
    iget-object v0, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    .line 513
    invoke-virtual {p5}, Landroid/os/UserHandle;->getIdentifier()I

    #@5
    move-result v5

    #@6
    move-object v1, p1

    #@7
    move-object v2, p2

    #@8
    move v3, p3

    #@9
    move v4, p4

    #@a
    .line 512
    invoke-interface/range {v0 .. v5}, Landroid/content/pm/IPackageManager;->updatePermissionFlags(Ljava/lang/String;Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 510
    return-void

    #@e
    .line 514
    :catch_0
    move-exception v6

    #@f
    .line 515
    .local v6, "e":Landroid/os/RemoteException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@11
    const-string/jumbo v1, "Package manager has died"

    #@14
    invoke-direct {v0, v1, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@17
    throw v0
.end method

.method public verifyIntentFilter(IILjava/util/List;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "verificationCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1443
    .local p3, "outFailedDomains":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2, p3}, Landroid/content/pm/IPackageManager;->verifyIntentFilter(IILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1441
    :goto_0
    return-void

    #@6
    .line 1444
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public verifyPendingInstall(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "response"    # I

    #@0
    .prologue
    .line 1424
    :try_start_0
    iget-object v1, p0, Landroid/app/ApplicationPackageManager;->mPM:Landroid/content/pm/IPackageManager;

    #@2
    invoke-interface {v1, p1, p2}, Landroid/content/pm/IPackageManager;->verifyPendingInstall(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    .line 1422
    :goto_0
    return-void

    #@6
    .line 1425
    :catch_0
    move-exception v0

    #@7
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
