.class public Landroid/appwidget/AppWidgetHostView;
.super Landroid/widget/FrameLayout;
.source "AppWidgetHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;,
        Landroid/appwidget/AppWidgetHostView$1;
    }
.end annotation


# static fields
.field static final CROSSFADE:Z = false

.field static final FADE_DURATION:I = 0x3e8

.field static final LOGD:Z = false

.field static final TAG:Ljava/lang/String; = "AppWidgetHostView"

.field static final VIEW_MODE_CONTENT:I = 0x1

.field static final VIEW_MODE_DEFAULT:I = 0x3

.field static final VIEW_MODE_ERROR:I = 0x2

.field static final VIEW_MODE_NOINIT:I

.field static final sInflaterFilter:Landroid/view/LayoutInflater$Filter;


# instance fields
.field mAppWidgetId:I

.field mContext:Landroid/content/Context;

.field mFadeStartTime:J

.field mInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field mLayoutId:I

.field mOld:Landroid/graphics/Bitmap;

.field mOldPaint:Landroid/graphics/Paint;

.field private mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

.field mRemoteContext:Landroid/content/Context;

.field mView:Landroid/view/View;

.field mViewMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 70
    new-instance v0, Landroid/appwidget/AppWidgetHostView$1;

    #@2
    invoke-direct {v0}, Landroid/appwidget/AppWidgetHostView$1;-><init>()V

    #@5
    sput-object v0, Landroid/appwidget/AppWidgetHostView;->sInflaterFilter:Landroid/view/LayoutInflater$Filter;

    #@7
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 93
    const/high16 v0, 0x10a0000

    #@2
    const v1, 0x10a0001

    #@5
    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    #@8
    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "animationIn"    # I
    .param p3, "animationOut"    # I

    #@0
    .prologue
    .line 113
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@3
    .line 82
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@6
    .line 83
    const/4 v0, -0x1

    #@7
    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    #@9
    .line 84
    const-wide/16 v0, -0x1

    #@b
    iput-wide v0, p0, Landroid/appwidget/AppWidgetHostView;->mFadeStartTime:J

    #@d
    .line 86
    new-instance v0, Landroid/graphics/Paint;

    #@f
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    #@12
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mOldPaint:Landroid/graphics/Paint;

    #@14
    .line 114
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@16
    .line 117
    const/4 v0, 0x1

    #@17
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->setIsRootNamespace(Z)V

    #@1a
    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 100
    const/high16 v0, 0x10a0000

    #@2
    const v1, 0x10a0001

    #@5
    invoke-direct {p0, p1, v0, v1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;II)V

    #@8
    .line 101
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@a
    .line 99
    return-void
.end method

.method private generateId()I
    .locals 2

    #@0
    .prologue
    .line 214
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getId()I

    #@3
    move-result v0

    #@4
    .line 215
    .local v0, "id":I
    const/4 v1, -0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    #@9
    .end local v0    # "id":I
    :cond_0
    return v0
.end method

.method public static getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "padding"    # Landroid/graphics/Rect;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 168
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@4
    move-result-object v2

    #@5
    .line 171
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    if-nez p2, :cond_1

    #@7
    .line 172
    new-instance p2, Landroid/graphics/Rect;

    #@9
    .end local p2    # "padding":Landroid/graphics/Rect;
    invoke-direct {p2, v4, v4, v4, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    #@c
    .line 178
    .restart local p2    # "padding":Landroid/graphics/Rect;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@f
    move-result-object v4

    #@10
    const/4 v5, 0x0

    #@11
    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result-object v0

    #@15
    .line 184
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget v4, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@17
    const/16 v5, 0xe

    #@19
    if-lt v4, v5, :cond_0

    #@1b
    .line 185
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@1e
    move-result-object v3

    #@1f
    .line 186
    .local v3, "r":Landroid/content/res/Resources;
    const v4, 0x1050053

    #@22
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@25
    move-result v4

    #@26
    iput v4, p2, Landroid/graphics/Rect;->left:I

    #@28
    .line 188
    const v4, 0x1050055

    #@2b
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@2e
    move-result v4

    #@2f
    iput v4, p2, Landroid/graphics/Rect;->right:I

    #@31
    .line 190
    const v4, 0x1050054

    #@34
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@37
    move-result v4

    #@38
    iput v4, p2, Landroid/graphics/Rect;->top:I

    #@3a
    .line 192
    const v4, 0x1050056

    #@3d
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@40
    move-result v4

    #@41
    iput v4, p2, Landroid/graphics/Rect;->bottom:I

    #@43
    .line 195
    .end local v3    # "r":Landroid/content/res/Resources;
    :cond_0
    return-object p2

    #@44
    .line 174
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-virtual {p2, v4, v4, v4, v4}, Landroid/graphics/Rect;->set(IIII)V

    #@47
    goto :goto_0

    #@48
    .line 179
    :catch_0
    move-exception v1

    #@49
    .line 181
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    return-object p2
.end method

.method private getRemoteContext()Landroid/content/Context;
    .locals 4

    #@0
    .prologue
    .line 463
    :try_start_0
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@2
    .line 464
    iget-object v2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@4
    iget-object v2, v2, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@6
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@8
    .line 465
    const/4 v3, 0x4

    #@9
    .line 463
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    move-result-object v1

    #@d
    return-object v1

    #@e
    .line 466
    :catch_0
    move-exception v0

    #@f
    .line 467
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v1, "AppWidgetHostView"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Package name "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@20
    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->providerInfo:Landroid/content/pm/ActivityInfo;

    #@22
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    const-string/jumbo v3, " not found"

    #@2b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@36
    .line 468
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@38
    return-object v1
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v4, 0x0

    #@1
    .line 220
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    #@4
    move-result v3

    #@5
    invoke-virtual {p1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    #@8
    move-result-object v2

    #@9
    check-cast v2, Landroid/os/Parcelable;

    #@b
    .line 222
    .local v2, "parcelable":Landroid/os/Parcelable;
    const/4 v1, 0x0

    #@c
    .line 223
    .local v1, "jail":Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    if-eqz v2, :cond_0

    #@e
    instance-of v3, v2, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    #@10
    if-eqz v3, :cond_0

    #@12
    move-object v1, v2

    #@13
    .line 224
    check-cast v1, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    #@15
    .line 227
    .end local v1    # "jail":Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    :cond_0
    if-nez v1, :cond_1

    #@17
    new-instance v1, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    #@19
    invoke-direct {v1, v4}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;-><init>(Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;)V

    #@1c
    .line 230
    :cond_1
    :try_start_0
    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 219
    :goto_0
    return-void

    #@20
    .line 231
    :catch_0
    move-exception v0

    #@21
    .line 232
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "AppWidgetHostView"

    #@24
    new-instance v3, Ljava/lang/StringBuilder;

    #@26
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@29
    const-string/jumbo v5, "failed to restoreInstanceState for widget id: "

    #@2c
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    #@32
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    const-string/jumbo v5, ", "

    #@39
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v5

    #@3d
    .line 233
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@3f
    if-nez v3, :cond_2

    #@41
    const-string/jumbo v3, "null"

    #@44
    .line 232
    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@47
    move-result-object v3

    #@48
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v4, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4f
    goto :goto_0

    #@50
    .line 233
    :cond_2
    iget-object v3, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@52
    iget-object v3, v3, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@54
    goto :goto_1
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 208
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    new-instance v0, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;-><init>(Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;)V

    #@6
    .line 209
    .local v0, "jail":Landroid/appwidget/AppWidgetHostView$ParcelableSparseArray;
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    #@9
    .line 210
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->generateId()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p1, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    #@10
    .line 207
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    #@0
    .prologue
    .line 507
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 318
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    #@6
    .line 319
    .local v0, "context":Landroid/content/Context;
    :goto_0
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    #@8
    invoke-direct {v1, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@b
    return-object v1

    #@c
    .line 318
    .end local v0    # "context":Landroid/content/Context;
    :cond_0
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@e
    .restart local v0    # "context":Landroid/content/Context;
    goto :goto_0
.end method

.method public getAppWidgetId()I
    .locals 1

    #@0
    .prologue
    .line 199
    iget v0, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    #@2
    return v0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@2
    return-object v0
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 13

    #@0
    .prologue
    .line 534
    const/4 v1, 0x0

    #@1
    .line 535
    .local v1, "defaultView":Landroid/view/View;
    const/4 v3, 0x0

    #@2
    .line 538
    .local v3, "exception":Ljava/lang/Exception;
    :try_start_0
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@4
    if-eqz v10, :cond_4

    #@6
    .line 539
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContext()Landroid/content/Context;

    #@9
    move-result-object v9

    #@a
    .line 540
    .local v9, "theirContext":Landroid/content/Context;
    iput-object v9, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    #@c
    .line 542
    const-string/jumbo v10, "layout_inflater"

    #@f
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v4

    #@13
    .line 541
    check-cast v4, Landroid/view/LayoutInflater;

    #@15
    .line 543
    .local v4, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v4, v9}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@18
    move-result-object v4

    #@19
    .line 544
    sget-object v10, Landroid/appwidget/AppWidgetHostView;->sInflaterFilter:Landroid/view/LayoutInflater$Filter;

    #@1b
    invoke-virtual {v4, v10}, Landroid/view/LayoutInflater;->setFilter(Landroid/view/LayoutInflater$Filter;)V

    #@1e
    .line 545
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@20
    invoke-static {v10}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    #@23
    move-result-object v7

    #@24
    .line 546
    .local v7, "manager":Landroid/appwidget/AppWidgetManager;
    iget v10, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    #@26
    invoke-virtual {v7, v10}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    #@29
    move-result-object v8

    #@2a
    .line 548
    .local v8, "options":Landroid/os/Bundle;
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@2c
    iget v6, v10, Landroid/appwidget/AppWidgetProviderInfo;->initialLayout:I

    #@2e
    .line 549
    .local v6, "layoutId":I
    const-string/jumbo v10, "appWidgetCategory"

    #@31
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    #@34
    move-result v10

    #@35
    if-eqz v10, :cond_0

    #@37
    .line 550
    const-string/jumbo v10, "appWidgetCategory"

    #@3a
    invoke-virtual {v8, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@3d
    move-result v0

    #@3e
    .line 551
    .local v0, "category":I
    const/4 v10, 0x2

    #@3f
    if-ne v0, v10, :cond_0

    #@41
    .line 552
    iget-object v10, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@43
    iget v5, v10, Landroid/appwidget/AppWidgetProviderInfo;->initialKeyguardLayout:I

    #@45
    .line 555
    .local v5, "kgLayoutId":I
    if-nez v5, :cond_3

    #@47
    .line 558
    .end local v0    # "category":I
    .end local v5    # "kgLayoutId":I
    :cond_0
    :goto_0
    const/4 v10, 0x0

    #@48
    invoke-virtual {v4, v6, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@4b
    move-result-object v1

    #@4c
    .line 566
    .end local v1    # "defaultView":Landroid/view/View;
    .end local v3    # "exception":Ljava/lang/Exception;
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v6    # "layoutId":I
    .end local v7    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v8    # "options":Landroid/os/Bundle;
    .end local v9    # "theirContext":Landroid/content/Context;
    :goto_1
    if-eqz v3, :cond_1

    #@4e
    .line 567
    const-string/jumbo v10, "AppWidgetHostView"

    #@51
    new-instance v11, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    const-string/jumbo v12, "Error inflating AppWidget "

    #@59
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5c
    move-result-object v11

    #@5d
    iget-object v12, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@5f
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v11

    #@63
    const-string/jumbo v12, ": "

    #@66
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@69
    move-result-object v11

    #@6a
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@6d
    move-result-object v12

    #@6e
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v11

    #@72
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v11

    #@76
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@79
    .line 570
    :cond_1
    if-nez v1, :cond_2

    #@7b
    .line 572
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    #@7e
    move-result-object v1

    #@7f
    .line 575
    :cond_2
    return-object v1

    #@80
    .line 555
    .restart local v0    # "category":I
    .restart local v1    # "defaultView":Landroid/view/View;
    .restart local v3    # "exception":Ljava/lang/Exception;
    .restart local v4    # "inflater":Landroid/view/LayoutInflater;
    .restart local v5    # "kgLayoutId":I
    .restart local v6    # "layoutId":I
    .restart local v7    # "manager":Landroid/appwidget/AppWidgetManager;
    .restart local v8    # "options":Landroid/os/Bundle;
    .restart local v9    # "theirContext":Landroid/content/Context;
    :cond_3
    move v6, v5

    #@81
    goto :goto_0

    #@82
    .line 560
    .end local v0    # "category":I
    .end local v4    # "inflater":Landroid/view/LayoutInflater;
    .end local v5    # "kgLayoutId":I
    .end local v6    # "layoutId":I
    .end local v7    # "manager":Landroid/appwidget/AppWidgetManager;
    .end local v8    # "options":Landroid/os/Bundle;
    .end local v9    # "theirContext":Landroid/content/Context;
    :cond_4
    :try_start_1
    const-string/jumbo v10, "AppWidgetHostView"

    #@85
    const-string/jumbo v11, "can\'t inflate defaultView because mInfo is missing"

    #@88
    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    #@8b
    goto :goto_1

    #@8c
    .line 562
    :catch_0
    move-exception v2

    #@8d
    .line 563
    .local v2, "e":Ljava/lang/RuntimeException;
    move-object v3, v2

    #@8e
    .local v3, "exception":Ljava/lang/Exception;
    goto :goto_1
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 582
    new-instance v0, Landroid/widget/TextView;

    #@3
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@5
    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    #@8
    .line 583
    .local v0, "tv":Landroid/widget/TextView;
    const v1, 0x1040416

    #@b
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    #@e
    .line 585
    const/16 v1, 0x7f

    #@10
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    #@13
    move-result v1

    #@14
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    #@17
    .line 586
    return-object v0
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    #@0
    .prologue
    .line 592
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    #@3
    .line 593
    const-class v0, Landroid/appwidget/AppWidgetHostView;

    #@5
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    #@c
    .line 591
    return-void
.end method

.method protected prepareView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v1, -0x1

    #@1
    .line 517
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    #@4
    move-result-object v0

    #@5
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    #@7
    .line 518
    .local v0, "requested":Landroid/widget/FrameLayout$LayoutParams;
    if-nez v0, :cond_0

    #@9
    .line 519
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    #@b
    .end local v0    # "requested":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    #@e
    .line 523
    .restart local v0    # "requested":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    const/16 v1, 0x11

    #@10
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    #@12
    .line 524
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    #@15
    .line 515
    return-void
.end method

.method resetAppWidget(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    .line 327
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@2
    .line 328
    const/4 v0, 0x0

    #@3
    iput v0, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@5
    .line 329
    const/4 v0, 0x0

    #@6
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    #@9
    .line 326
    return-void
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 5
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 137
    iput p1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    #@3
    .line 138
    iput-object p2, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@5
    .line 142
    if-eqz p2, :cond_0

    #@7
    .line 144
    iget-object v1, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@9
    iget-object v2, p2, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@b
    invoke-static {v1, v2, v3}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@e
    move-result-object v0

    #@f
    .line 145
    .local v0, "padding":Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    #@11
    iget v2, v0, Landroid/graphics/Rect;->top:I

    #@13
    iget v3, v0, Landroid/graphics/Rect;->right:I

    #@15
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    #@17
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/appwidget/AppWidgetHostView;->setPadding(IIII)V

    #@1a
    .line 146
    iget-object v1, p2, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    #@1c
    invoke-virtual {p0, v1}, Landroid/appwidget/AppWidgetHostView;->setContentDescription(Ljava/lang/CharSequence;)V

    #@1f
    .line 136
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method

.method public setOnClickHandler(Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 0
    .param p1, "handler"    # Landroid/widget/RemoteViews$OnClickHandler;

    #@0
    .prologue
    .line 128
    iput-object p1, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@2
    .line 127
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 9
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v8, 0x2

    #@2
    .line 340
    const/4 v4, 0x0

    #@3
    .line 341
    .local v4, "recycled":Z
    const/4 v0, 0x0

    #@4
    .line 342
    .local v0, "content":Landroid/view/View;
    const/4 v2, 0x0

    #@5
    .line 363
    .local v2, "exception":Ljava/lang/Exception;
    if-nez p1, :cond_1

    #@7
    .line 364
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@9
    if-ne v5, v6, :cond_0

    #@b
    .line 366
    return-void

    #@c
    .line 368
    :cond_0
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getDefaultView()Landroid/view/View;

    #@f
    move-result-object v0

    #@10
    .line 369
    .local v0, "content":Landroid/view/View;
    const/4 v5, -0x1

    #@11
    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    #@13
    .line 370
    iput v6, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@15
    .line 404
    .end local v0    # "content":Landroid/view/View;
    .end local v2    # "exception":Ljava/lang/Exception;
    :goto_0
    if-nez v0, :cond_5

    #@17
    .line 405
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@19
    if-ne v5, v8, :cond_4

    #@1b
    .line 407
    return-void

    #@1c
    .line 374
    .local v0, "content":Landroid/view/View;
    .restart local v2    # "exception":Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Landroid/appwidget/AppWidgetHostView;->getRemoteContext()Landroid/content/Context;

    #@1f
    move-result-object v5

    #@20
    iput-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mRemoteContext:Landroid/content/Context;

    #@22
    .line 375
    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    #@25
    move-result v3

    #@26
    .line 379
    .local v3, "layoutId":I
    iget v5, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    #@28
    if-ne v3, v5, :cond_2

    #@2a
    .line 381
    :try_start_0
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@2c
    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    #@2e
    iget-object v7, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@30
    invoke-virtual {p1, v5, v6, v7}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;Landroid/widget/RemoteViews$OnClickHandler;)V

    #@33
    .line 382
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    .line 383
    .local v0, "content":Landroid/view/View;
    const/4 v4, 0x1

    #@36
    .line 391
    .end local v0    # "content":Landroid/view/View;
    .end local v2    # "exception":Ljava/lang/Exception;
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    #@38
    .line 393
    :try_start_1
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@3a
    iget-object v6, p0, Landroid/appwidget/AppWidgetHostView;->mOnClickHandler:Landroid/widget/RemoteViews$OnClickHandler;

    #@3c
    invoke-virtual {p1, v5, p0, v6}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    #@3f
    move-result-object v0

    #@40
    .line 400
    :cond_3
    :goto_2
    iput v3, p0, Landroid/appwidget/AppWidgetHostView;->mLayoutId:I

    #@42
    .line 401
    const/4 v5, 0x1

    #@43
    iput v5, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@45
    goto :goto_0

    #@46
    .line 385
    .local v0, "content":Landroid/view/View;
    .restart local v2    # "exception":Ljava/lang/Exception;
    :catch_0
    move-exception v1

    #@47
    .line 386
    .local v1, "e":Ljava/lang/RuntimeException;
    move-object v2, v1

    #@48
    .local v2, "exception":Ljava/lang/Exception;
    goto :goto_1

    #@49
    .line 395
    .end local v0    # "content":Landroid/view/View;
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@4a
    .line 396
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    move-object v2, v1

    #@4b
    .restart local v2    # "exception":Ljava/lang/Exception;
    goto :goto_2

    #@4c
    .line 409
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "exception":Ljava/lang/Exception;
    .end local v3    # "layoutId":I
    :cond_4
    const-string/jumbo v5, "AppWidgetHostView"

    #@4f
    const-string/jumbo v6, "updateAppWidget couldn\'t find any view, using error view"

    #@52
    invoke-static {v5, v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@55
    .line 410
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getErrorView()Landroid/view/View;

    #@58
    move-result-object v0

    #@59
    .line 411
    .local v0, "content":Landroid/view/View;
    iput v8, p0, Landroid/appwidget/AppWidgetHostView;->mViewMode:I

    #@5b
    .line 414
    .end local v0    # "content":Landroid/view/View;
    :cond_5
    if-nez v4, :cond_6

    #@5d
    .line 415
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->prepareView(Landroid/view/View;)V

    #@60
    .line 416
    invoke-virtual {p0, v0}, Landroid/appwidget/AppWidgetHostView;->addView(Landroid/view/View;)V

    #@63
    .line 419
    :cond_6
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    #@65
    if-eq v5, v0, :cond_7

    #@67
    .line 420
    iget-object v5, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    #@69
    invoke-virtual {p0, v5}, Landroid/appwidget/AppWidgetHostView;->removeView(Landroid/view/View;)V

    #@6c
    .line 421
    iput-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mView:Landroid/view/View;

    #@6e
    .line 336
    :cond_7
    return-void
.end method

.method public updateAppWidgetOptions(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 309
    iget-object v0, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@2
    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    #@8
    invoke-virtual {v0, v1, p1}, Landroid/appwidget/AppWidgetManager;->updateAppWidgetOptions(ILandroid/os/Bundle;)V

    #@b
    .line 308
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 7
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I

    #@0
    .prologue
    .line 254
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    invoke-virtual/range {v0 .. v6}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V

    #@a
    .line 253
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIIIZ)V
    .locals 13
    .param p1, "newOptions"    # Landroid/os/Bundle;
    .param p2, "minWidth"    # I
    .param p3, "minHeight"    # I
    .param p4, "maxWidth"    # I
    .param p5, "maxHeight"    # I
    .param p6, "ignorePadding"    # Z

    #@0
    .prologue
    .line 262
    if-nez p1, :cond_0

    #@2
    .line 263
    new-instance p1, Landroid/os/Bundle;

    #@4
    .end local p1    # "newOptions":Landroid/os/Bundle;
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    #@7
    .line 266
    .restart local p1    # "newOptions":Landroid/os/Bundle;
    :cond_0
    new-instance v7, Landroid/graphics/Rect;

    #@9
    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    #@c
    .line 267
    .local v7, "padding":Landroid/graphics/Rect;
    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@e
    if-eqz v11, :cond_1

    #@10
    .line 268
    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@12
    iget-object v12, p0, Landroid/appwidget/AppWidgetHostView;->mInfo:Landroid/appwidget/AppWidgetProviderInfo;

    #@14
    iget-object v12, v12, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    #@16
    invoke-static {v11, v12, v7}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    #@19
    move-result-object v7

    #@1a
    .line 270
    :cond_1
    invoke-virtual {p0}, Landroid/appwidget/AppWidgetHostView;->getResources()Landroid/content/res/Resources;

    #@1d
    move-result-object v11

    #@1e
    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@21
    move-result-object v11

    #@22
    iget v0, v11, Landroid/util/DisplayMetrics;->density:F

    #@24
    .line 272
    .local v0, "density":F
    iget v11, v7, Landroid/graphics/Rect;->left:I

    #@26
    iget v12, v7, Landroid/graphics/Rect;->right:I

    #@28
    add-int/2addr v11, v12

    #@29
    int-to-float v11, v11

    #@2a
    div-float/2addr v11, v0

    #@2b
    float-to-int v9, v11

    #@2c
    .line 273
    .local v9, "xPaddingDips":I
    iget v11, v7, Landroid/graphics/Rect;->top:I

    #@2e
    iget v12, v7, Landroid/graphics/Rect;->bottom:I

    #@30
    add-int/2addr v11, v12

    #@31
    int-to-float v11, v11

    #@32
    div-float/2addr v11, v0

    #@33
    float-to-int v10, v11

    #@34
    .line 275
    .local v10, "yPaddingDips":I
    if-eqz p6, :cond_7

    #@36
    const/4 v11, 0x0

    #@37
    :goto_0
    sub-int v5, p2, v11

    #@39
    .line 276
    .local v5, "newMinWidth":I
    if-eqz p6, :cond_8

    #@3b
    const/4 v11, 0x0

    #@3c
    :goto_1
    sub-int v4, p3, v11

    #@3e
    .line 277
    .local v4, "newMinHeight":I
    if-eqz p6, :cond_2

    #@40
    const/4 v9, 0x0

    #@41
    .end local v9    # "xPaddingDips":I
    :cond_2
    sub-int v3, p4, v9

    #@43
    .line 278
    .local v3, "newMaxWidth":I
    if-eqz p6, :cond_3

    #@45
    const/4 v10, 0x0

    #@46
    .end local v10    # "yPaddingDips":I
    :cond_3
    sub-int v2, p5, v10

    #@48
    .line 280
    .local v2, "newMaxHeight":I
    iget-object v11, p0, Landroid/appwidget/AppWidgetHostView;->mContext:Landroid/content/Context;

    #@4a
    invoke-static {v11}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    #@4d
    move-result-object v8

    #@4e
    .line 283
    .local v8, "widgetManager":Landroid/appwidget/AppWidgetManager;
    iget v11, p0, Landroid/appwidget/AppWidgetHostView;->mAppWidgetId:I

    #@50
    invoke-virtual {v8, v11}, Landroid/appwidget/AppWidgetManager;->getAppWidgetOptions(I)Landroid/os/Bundle;

    #@53
    move-result-object v6

    #@54
    .line 284
    .local v6, "oldOptions":Landroid/os/Bundle;
    const/4 v1, 0x0

    #@55
    .line 285
    .local v1, "needsUpdate":Z
    const-string/jumbo v11, "appWidgetMinWidth"

    #@58
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@5b
    move-result v11

    #@5c
    if-ne v5, v11, :cond_4

    #@5e
    .line 286
    const-string/jumbo v11, "appWidgetMinHeight"

    #@61
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@64
    move-result v11

    #@65
    if-eq v4, v11, :cond_9

    #@67
    .line 289
    :cond_4
    :goto_2
    const/4 v1, 0x1

    #@68
    .line 292
    :cond_5
    if-eqz v1, :cond_6

    #@6a
    .line 293
    const-string/jumbo v11, "appWidgetMinWidth"

    #@6d
    invoke-virtual {p1, v11, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@70
    .line 294
    const-string/jumbo v11, "appWidgetMinHeight"

    #@73
    invoke-virtual {p1, v11, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@76
    .line 295
    const-string/jumbo v11, "appWidgetMaxWidth"

    #@79
    invoke-virtual {p1, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@7c
    .line 296
    const-string/jumbo v11, "appWidgetMaxHeight"

    #@7f
    invoke-virtual {p1, v11, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    #@82
    .line 297
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    #@85
    .line 261
    :cond_6
    return-void

    #@86
    .end local v1    # "needsUpdate":Z
    .end local v2    # "newMaxHeight":I
    .end local v3    # "newMaxWidth":I
    .end local v4    # "newMinHeight":I
    .end local v5    # "newMinWidth":I
    .end local v6    # "oldOptions":Landroid/os/Bundle;
    .end local v8    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    .restart local v9    # "xPaddingDips":I
    .restart local v10    # "yPaddingDips":I
    :cond_7
    move v11, v9

    #@87
    .line 275
    goto :goto_0

    #@88
    .restart local v5    # "newMinWidth":I
    :cond_8
    move v11, v10

    #@89
    .line 276
    goto :goto_1

    #@8a
    .line 287
    .end local v9    # "xPaddingDips":I
    .end local v10    # "yPaddingDips":I
    .restart local v1    # "needsUpdate":Z
    .restart local v2    # "newMaxHeight":I
    .restart local v3    # "newMaxWidth":I
    .restart local v4    # "newMinHeight":I
    .restart local v6    # "oldOptions":Landroid/os/Bundle;
    .restart local v8    # "widgetManager":Landroid/appwidget/AppWidgetManager;
    :cond_9
    const-string/jumbo v11, "appWidgetMaxWidth"

    #@8d
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@90
    move-result v11

    #@91
    if-ne v3, v11, :cond_4

    #@93
    .line 288
    const-string/jumbo v11, "appWidgetMaxHeight"

    #@96
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@99
    move-result v11

    #@9a
    if-eq v2, v11, :cond_5

    #@9c
    goto :goto_2
.end method

.method viewDataChanged(I)V
    .locals 5
    .param p1, "viewId"    # I

    #@0
    .prologue
    .line 440
    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetHostView;->findViewById(I)Landroid/view/View;

    #@3
    move-result-object v3

    #@4
    .line 441
    .local v3, "v":Landroid/view/View;
    if-eqz v3, :cond_0

    #@6
    instance-of v4, v3, Landroid/widget/AdapterView;

    #@8
    if-eqz v4, :cond_0

    #@a
    move-object v1, v3

    #@b
    .line 442
    check-cast v1, Landroid/widget/AdapterView;

    #@d
    .line 443
    .local v1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    #@10
    move-result-object v0

    #@11
    .line 444
    .local v0, "adapter":Landroid/widget/Adapter;
    instance-of v4, v0, Landroid/widget/BaseAdapter;

    #@13
    if-eqz v4, :cond_1

    #@15
    move-object v2, v0

    #@16
    .line 445
    check-cast v2, Landroid/widget/BaseAdapter;

    #@18
    .line 446
    .local v2, "baseAdapter":Landroid/widget/BaseAdapter;
    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    #@1b
    .line 439
    .end local v0    # "adapter":Landroid/widget/Adapter;
    .end local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    .end local v2    # "baseAdapter":Landroid/widget/BaseAdapter;
    :cond_0
    :goto_0
    return-void

    #@1c
    .line 447
    .restart local v0    # "adapter":Landroid/widget/Adapter;
    .restart local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :cond_1
    if-nez v0, :cond_0

    #@1e
    instance-of v4, v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    #@20
    if-eqz v4, :cond_0

    #@22
    .line 451
    check-cast v1, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;

    #@24
    .end local v1    # "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-interface {v1}, Landroid/widget/RemoteViewsAdapter$RemoteAdapterConnectionCallback;->deferNotifyDataSetChanged()V

    #@27
    goto :goto_0
.end method
