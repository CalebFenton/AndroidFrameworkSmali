.class public final Landroid/webkit/WebViewDelegate;
.super Ljava/lang/Object;
.source "WebViewDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public addWebViewAssetPath(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 184
    invoke-static {}, Landroid/webkit/WebViewFactory;->getLoadedPackageInfo()Landroid/content/pm/PackageInfo;

    #@4
    move-result-object v5

    #@5
    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@7
    iget-object v2, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@9
    .line 186
    .local v2, "newAssetPath":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@c
    move-result-object v0

    #@d
    .line 187
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@f
    .line 188
    .local v1, "libs":[Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@12
    move-result v5

    #@13
    if-nez v5, :cond_1

    #@15
    .line 190
    if-eqz v1, :cond_2

    #@17
    array-length v5, v1

    #@18
    :goto_0
    add-int/lit8 v4, v5, 0x1

    #@1a
    .line 191
    .local v4, "newLibAssetsCount":I
    new-array v3, v4, [Ljava/lang/String;

    #@1c
    .line 192
    .local v3, "newLibAssets":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@1e
    .line 193
    array-length v5, v1

    #@1f
    invoke-static {v1, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@22
    .line 195
    :cond_0
    add-int/lit8 v5, v4, -0x1

    #@24
    aput-object v2, v3, v5

    #@26
    .line 202
    iput-object v3, v0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    #@28
    .line 205
    invoke-static {}, Landroid/app/ResourcesManager;->getInstance()Landroid/app/ResourcesManager;

    #@2b
    move-result-object v5

    #@2c
    .line 206
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getBaseResourcePath()Ljava/lang/String;

    #@2f
    move-result-object v6

    #@30
    .line 205
    invoke-virtual {v5, v6, v2}, Landroid/app/ResourcesManager;->appendLibAssetForMainAssetPath(Ljava/lang/String;Ljava/lang/String;)V

    #@33
    .line 183
    .end local v3    # "newLibAssets":[Ljava/lang/String;
    .end local v4    # "newLibAssetsCount":I
    :cond_1
    return-void

    #@34
    :cond_2
    move v5, v6

    #@35
    .line 190
    goto :goto_0
.end method

.method public callDrawGlFunction(Landroid/graphics/Canvas;J)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "nativeDrawGLFunctor"    # J

    #@0
    .prologue
    .line 107
    instance-of v0, p1, Landroid/view/DisplayListCanvas;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 109
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 110
    const-string/jumbo v2, " is not a DisplayList canvas"

    #@1a
    .line 109
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 112
    :cond_0
    check-cast p1, Landroid/view/DisplayListCanvas;

    #@28
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    const/4 v0, 0x0

    #@29
    invoke-virtual {p1, p2, p3, v0}, Landroid/view/DisplayListCanvas;->drawGLFunctor2(JLjava/lang/Runnable;)V

    #@2c
    .line 106
    return-void
.end method

.method public callDrawGlFunction(Landroid/graphics/Canvas;JLjava/lang/Runnable;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "nativeDrawGLFunctor"    # J
    .param p4, "releasedRunnable"    # Ljava/lang/Runnable;

    #@0
    .prologue
    .line 129
    instance-of v0, p1, Landroid/view/DisplayListCanvas;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 132
    const-string/jumbo v2, " is not a DisplayList canvas"

    #@1a
    .line 131
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 134
    :cond_0
    check-cast p1, Landroid/view/DisplayListCanvas;

    #@28
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, p2, p3, p4}, Landroid/view/DisplayListCanvas;->drawGLFunctor2(JLjava/lang/Runnable;)V

    #@2b
    .line 128
    return-void
.end method

.method public canInvokeDrawGlFunctor(Landroid/view/View;)Z
    .locals 1
    .param p1, "containerView"    # Landroid/view/View;

    #@0
    .prologue
    .line 81
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public detachDrawGlFunctor(Landroid/view/View;J)V
    .locals 4
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "nativeDrawGLFunctor"    # J

    #@0
    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@3
    move-result-object v0

    #@4
    .line 145
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    const-wide/16 v2, 0x0

    #@6
    cmp-long v1, p2, v2

    #@8
    if-eqz v1, :cond_0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 146
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewRootImpl;->detachFunctor(J)V

    #@f
    .line 143
    :cond_0
    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    #@0
    .prologue
    .line 170
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getErrorString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    #@0
    .prologue
    .line 177
    invoke-static {p2, p1}, Landroid/webkit/LegacyErrorStrings;->getString(ILandroid/content/Context;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getPackageId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 155
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    #@7
    move-result-object v2

    #@8
    .line 156
    .local v2, "packageIdentifiers":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    #@c
    move-result v3

    #@d
    if-ge v0, v3, :cond_1

    #@f
    .line 157
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/lang/String;

    #@15
    .line 159
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 160
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@1e
    move-result v3

    #@1f
    return v3

    #@20
    .line 156
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 163
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    #@25
    new-instance v4, Ljava/lang/StringBuilder;

    #@27
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@2a
    const-string/jumbo v5, "Package not found: "

    #@2d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v4

    #@39
    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3c
    throw v3
.end method

.method public invokeDrawGlFunctor(Landroid/view/View;JZ)V
    .locals 0
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "nativeDrawGLFunctor"    # J
    .param p4, "waitForCompletion"    # Z

    #@0
    .prologue
    .line 93
    invoke-static {p2, p3, p4}, Landroid/view/ViewRootImpl;->invokeFunctor(JZ)V

    #@3
    .line 92
    return-void
.end method

.method public isTraceTagEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 73
    const-wide/16 v0, 0x10

    #@2
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public setOnTraceEnabledChangeListener(Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;

    #@0
    .prologue
    .line 61
    new-instance v0, Landroid/webkit/WebViewDelegate$1;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/webkit/WebViewDelegate$1;-><init>(Landroid/webkit/WebViewDelegate;Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V

    #@5
    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    #@8
    .line 60
    return-void
.end method
