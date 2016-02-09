.class Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;
.super Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;
.source "SlidingPaneLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/SlidingPaneLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SlidingPanelLayoutImplJB"
.end annotation


# instance fields
.field private mGetDisplayList:Ljava/lang/reflect/Method;

.field private mRecreateDisplayList:Ljava/lang/reflect/Field;


# direct methods
.method constructor <init>()V
    .locals 5

    #@0
    .prologue
    .line 1502
    invoke-direct {p0}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;-><init>()V

    #@3
    .line 1504
    :try_start_0
    const-class v3, Landroid/view/View;

    #@5
    const-string/jumbo v4, "getDisplayList"

    #@8
    const/4 v2, 0x0

    #@9
    check-cast v2, [Ljava/lang/Class;

    #@b
    invoke-virtual {v3, v4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@e
    move-result-object v2

    #@f
    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;->mGetDisplayList:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 1509
    :goto_0
    :try_start_1
    const-class v2, Landroid/view/View;

    #@13
    const-string/jumbo v3, "mRecreateDisplayList"

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@19
    move-result-object v2

    #@1a
    iput-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    #@1c
    .line 1510
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    #@1e
    const/4 v3, 0x1

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    #@22
    .line 1502
    :goto_1
    return-void

    #@23
    .line 1505
    :catch_0
    move-exception v1

    #@24
    .line 1506
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "SlidingPaneLayout"

    #@27
    const-string/jumbo v3, "Couldn\'t fetch getDisplayList method; dimming won\'t work right."

    #@2a
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2d
    goto :goto_0

    #@2e
    .line 1511
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    #@2f
    .line 1512
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v2, "SlidingPaneLayout"

    #@32
    const-string/jumbo v3, "Couldn\'t fetch mRecreateDisplayList field; dimming will be slow."

    #@35
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@38
    goto :goto_1
.end method


# virtual methods
.method public invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V
    .locals 3
    .param p1, "parent"    # Landroid/support/v4/widget/SlidingPaneLayout;
    .param p2, "child"    # Landroid/view/View;

    #@0
    .prologue
    .line 1518
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;->mGetDisplayList:Ljava/lang/reflect/Method;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 1520
    :try_start_0
    iget-object v1, p0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;->mRecreateDisplayList:Ljava/lang/reflect/Field;

    #@a
    const/4 v2, 0x1

    #@b
    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V

    #@e
    .line 1521
    iget-object v2, p0, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplJB;->mGetDisplayList:Ljava/lang/reflect/Method;

    #@10
    const/4 v1, 0x0

    #@11
    check-cast v1, [Ljava/lang/Object;

    #@13
    invoke-virtual {v2, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@16
    .line 1530
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v4/widget/SlidingPaneLayout$SlidingPanelLayoutImplBase;->invalidateChildRegion(Landroid/support/v4/widget/SlidingPaneLayout;Landroid/view/View;)V

    #@19
    .line 1517
    return-void

    #@1a
    .line 1522
    :catch_0
    move-exception v0

    #@1b
    .line 1523
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "SlidingPaneLayout"

    #@1e
    const-string/jumbo v2, "Error refreshing display list state"

    #@21
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@24
    goto :goto_0

    #@25
    .line 1527
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->invalidate()V

    #@28
    .line 1528
    return-void
.end method
