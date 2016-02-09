.class Landroid/support/v4/view/ViewCompatEclairMr1;
.super Ljava/lang/Object;
.source "ViewCompatEclairMr1.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ViewCompat"

.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static isOpaque(Landroid/view/View;)Z
    .locals 1
    .param p0, "view"    # Landroid/view/View;

    #@0
    .prologue
    .line 33
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public static setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .locals 10
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "enabled"    # Z

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    .line 37
    sget-object v4, Landroid/support/v4/view/ViewCompatEclairMr1;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 39
    :try_start_0
    const-class v4, Landroid/view/ViewGroup;

    #@7
    .line 40
    const-string/jumbo v5, "setChildrenDrawingOrderEnabled"

    #@a
    .line 39
    const/4 v6, 0x1

    #@b
    new-array v6, v6, [Ljava/lang/Class;

    #@d
    .line 40
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@f
    const/4 v8, 0x0

    #@10
    aput-object v7, v6, v8

    #@12
    .line 39
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@15
    move-result-object v4

    #@16
    sput-object v4, Landroid/support/v4/view/ViewCompatEclairMr1;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    .line 44
    :goto_0
    sget-object v4, Landroid/support/v4/view/ViewCompatEclairMr1;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    #@1a
    invoke-virtual {v4, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    #@1d
    .line 47
    :cond_0
    :try_start_1
    sget-object v4, Landroid/support/v4/view/ViewCompatEclairMr1;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    #@1f
    const/4 v5, 0x1

    #@20
    new-array v5, v5, [Ljava/lang/Object;

    #@22
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@25
    move-result-object v6

    #@26
    const/4 v7, 0x0

    #@27
    aput-object v6, v5, v7

    #@29
    invoke-virtual {v4, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    #@2c
    .line 36
    :goto_1
    return-void

    #@2d
    .line 41
    :catch_0
    move-exception v2

    #@2e
    .line 42
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v4, "ViewCompat"

    #@31
    const-string/jumbo v5, "Unable to find childrenDrawingOrderEnabled"

    #@34
    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@37
    goto :goto_0

    #@38
    .line 52
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v3

    #@39
    .line 53
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string/jumbo v4, "ViewCompat"

    #@3c
    const-string/jumbo v5, "Unable to invoke childrenDrawingOrderEnabled"

    #@3f
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@42
    goto :goto_1

    #@43
    .line 50
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    #@44
    .line 51
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v4, "ViewCompat"

    #@47
    const-string/jumbo v5, "Unable to invoke childrenDrawingOrderEnabled"

    #@4a
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4d
    goto :goto_1

    #@4e
    .line 48
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    #@4f
    .line 49
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v4, "ViewCompat"

    #@52
    const-string/jumbo v5, "Unable to invoke childrenDrawingOrderEnabled"

    #@55
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@58
    goto :goto_1
.end method
