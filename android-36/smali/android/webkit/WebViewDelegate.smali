.class public final Landroid/webkit/WebViewDelegate;
.super Ljava/lang/Object;
.source "WebViewDelegate.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;
    }
.end annotation


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist addWebViewAssetPath(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 187
    invoke-static {}, Landroid/content/res/Flags;->registerResourcePaths()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 188
    return-void

    .line 192
    :cond_7
    invoke-static {}, Landroid/webkit/WebViewFactory;->getLoadedPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getAllApkPaths()[Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "newAssetPaths":[Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 196
    .local v1, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 197
    .local v2, "newLibAssets":[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_19
    if-ge v4, v3, :cond_29

    aget-object v5, v0, v4

    .line 198
    .local v5, "newAssetPath":Ljava/lang/String;
    const-class v6, Ljava/lang/String;

    invoke-static {v6, v2, v5}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    move-object v2, v6

    check-cast v2, [Ljava/lang/String;

    .line 197
    .end local v5    # "newAssetPath":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 201
    :cond_29
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eq v2, v3, :cond_3a

    .line 207
    iput-object v2, v1, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 210
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    move-result-object v3

    .line 211
    invoke-virtual {v1}, Landroid/content/pm/ApplicationInfo;->getBaseResourcePath()Ljava/lang/String;

    move-result-object v4

    .line 210
    invoke-virtual {v3, v4, v0}, Landroid/app/ResourcesManager;->appendLibAssetsForMainAssetPath(Ljava/lang/String;[Ljava/lang/String;)V

    .line 213
    :cond_3a
    return-void
.end method

.method public whitelist callDrawGlFunction(Landroid/graphics/Canvas;J)V
    .registers 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "nativeDrawGLFunctor"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist callDrawGlFunction(Landroid/graphics/Canvas;JLjava/lang/Runnable;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "nativeDrawGLFunctor"    # J
    .param p4, "releasedRunnable"    # Ljava/lang/Runnable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist canInvokeDrawGlFunctor(Landroid/view/View;)Z
    .registers 3
    .param p1, "containerView"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist detachDrawGlFunctor(Landroid/view/View;J)V
    .registers 7
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "nativeDrawGLFunctor"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    invoke-static {}, Landroid/webkit/Flags;->mainlineApis()Z

    move-result v0

    if-nez v0, :cond_16

    .line 142
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    .line 143
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    .line 144
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewRootImpl;->detachFunctor(J)V

    .line 147
    .end local v0    # "viewRootImpl":Landroid/view/ViewRootImpl;
    :cond_15
    return-void

    .line 140
    :cond_16
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist drawWebViewFunctor(Landroid/graphics/Canvas;I)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "functor"    # I

    .line 122
    instance-of v0, p1, Landroid/graphics/RecordingCanvas;

    if-eqz v0, :cond_b

    .line 127
    move-object v0, p1

    check-cast v0, Landroid/graphics/RecordingCanvas;

    invoke-virtual {v0, p2}, Landroid/graphics/RecordingCanvas;->drawWebViewFunctor(I)V

    .line 128
    return-void

    .line 124
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a RecordingCanvas canvas"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getApplication()Landroid/app/Application;
    .registers 2

    .line 169
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getDataDirectorySuffix()Ljava/lang/String;
    .registers 2

    .line 226
    invoke-static {}, Landroid/webkit/WebViewFactory;->getDataDirectorySuffix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getErrorString(Landroid/content/Context;I)Ljava/lang/String;
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .line 176
    invoke-static {p2, p1}, Landroid/webkit/LegacyErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPackageId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .registers 7
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 153
    nop

    .line 154
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    move-result-object v0

    .line 155
    .local v0, "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 156
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 158
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {p2, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 159
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    return v3

    .line 155
    .end local v2    # "name":Ljava/lang/String;
    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 162
    .end local v1    # "i":I
    :cond_24
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getStartupTimestamps()Landroid/webkit/WebViewFactory$StartupTimestamps;
    .registers 2

    .line 236
    invoke-static {}, Landroid/webkit/WebViewFactory;->getStartupTimestamps()Landroid/webkit/WebViewFactory$StartupTimestamps;

    move-result-object v0

    return-object v0
.end method

.method public whitelist invokeDrawGlFunctor(Landroid/view/View;JZ)V
    .registers 6
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "nativeDrawGLFunctor"    # J
    .param p4, "waitForCompletion"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist isMultiProcessEnabled()Z
    .registers 2

    .line 219
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist isTraceTagEnabled()Z
    .registers 3

    .line 75
    const-wide/16 v0, 0x10

    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    return v0
.end method

.method public whitelist setOnTraceEnabledChangeListener(Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;

    .line 63
    new-instance v0, Landroid/webkit/WebViewDelegate$1;

    invoke-direct {v0, p0, p1}, Landroid/webkit/WebViewDelegate$1;-><init>(Landroid/webkit/WebViewDelegate;Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method
