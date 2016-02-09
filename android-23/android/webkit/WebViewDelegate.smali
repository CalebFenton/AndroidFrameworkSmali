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
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public addWebViewAssetPath(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    #@3
    move-result-object v0

    #@4
    .line 160
    invoke-static {}, Landroid/webkit/WebViewFactory;->getLoadedPackageInfo()Landroid/content/pm/PackageInfo;

    #@7
    move-result-object v1

    #@8
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@a
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    #@c
    .line 159
    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    #@f
    .line 158
    return-void
.end method

.method public callDrawGlFunction(Landroid/graphics/Canvas;J)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "nativeDrawGLFunctor"    # J

    #@0
    .prologue
    .line 104
    instance-of v0, p1, Landroid/view/DisplayListCanvas;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 106
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
    .line 107
    const-string/jumbo v2, " is not a DisplayList canvas"

    #@1a
    .line 106
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
    .line 109
    :cond_0
    check-cast p1, Landroid/view/DisplayListCanvas;

    #@28
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p1, p2, p3}, Landroid/view/DisplayListCanvas;->callDrawGLFunction2(J)V

    #@2b
    .line 103
    return-void
.end method

.method public canInvokeDrawGlFunctor(Landroid/view/View;)Z
    .locals 2
    .param p1, "containerView"    # Landroid/view/View;

    #@0
    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@3
    move-result-object v0

    #@4
    .line 77
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    if-eqz v0, :cond_0

    #@6
    const/4 v1, 0x1

    #@7
    :goto_0
    return v1

    #@8
    :cond_0
    const/4 v1, 0x0

    #@9
    goto :goto_0
.end method

.method public detachDrawGlFunctor(Landroid/view/View;J)V
    .locals 4
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "nativeDrawGLFunctor"    # J

    #@0
    .prologue
    .line 119
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@3
    move-result-object v0

    #@4
    .line 120
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    const-wide/16 v2, 0x0

    #@6
    cmp-long v1, p2, v2

    #@8
    if-eqz v1, :cond_0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 121
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewRootImpl;->detachFunctor(J)V

    #@f
    .line 118
    :cond_0
    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    #@0
    .prologue
    .line 145
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
    .line 152
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
    .line 130
    invoke-virtual {p1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    #@3
    move-result-object v3

    #@4
    invoke-virtual {v3}, Landroid/content/res/AssetManager;->getAssignedPackageIdentifiers()Landroid/util/SparseArray;

    #@7
    move-result-object v2

    #@8
    .line 131
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
    .line 132
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, Ljava/lang/String;

    #@15
    .line 134
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 135
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    #@1e
    move-result v3

    #@1f
    return v3

    #@20
    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@22
    goto :goto_0

    #@23
    .line 138
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
    .locals 2
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "nativeDrawGLFunctor"    # J
    .param p4, "waitForCompletion"    # Z

    #@0
    .prologue
    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    #@3
    move-result-object v0

    #@4
    .line 90
    .local v0, "viewRootImpl":Landroid/view/ViewRootImpl;
    invoke-virtual {v0, p2, p3, p4}, Landroid/view/ViewRootImpl;->invokeFunctor(JZ)V

    #@7
    .line 88
    return-void
.end method

.method public isTraceTagEnabled()Z
    .locals 2

    #@0
    .prologue
    .line 67
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
    .line 55
    new-instance v0, Landroid/webkit/WebViewDelegate$1;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/webkit/WebViewDelegate$1;-><init>(Landroid/webkit/WebViewDelegate;Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V

    #@5
    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    #@8
    .line 54
    return-void
.end method
