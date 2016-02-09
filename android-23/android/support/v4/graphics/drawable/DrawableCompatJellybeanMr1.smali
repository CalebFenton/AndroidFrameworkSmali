.class Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;
.super Ljava/lang/Object;
.source "DrawableCompatJellybeanMr1.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawableCompatJellybeanMr1"

.field private static sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sGetLayoutDirectionMethodFetched:Z

.field private static sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

.field private static sSetLayoutDirectionMethodFetched:Z


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getLayoutDirection(Landroid/graphics/drawable/Drawable;)I
    .locals 7
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 63
    sget-boolean v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethodFetched:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 65
    :try_start_0
    const-class v2, Landroid/graphics/drawable/Drawable;

    #@8
    const-string/jumbo v3, "getLayoutDirection"

    #@b
    const/4 v4, 0x0

    #@c
    new-array v4, v4, [Ljava/lang/Class;

    #@e
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@11
    move-result-object v2

    #@12
    sput-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    #@14
    .line 66
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    #@16
    const/4 v3, 0x1

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    .line 70
    :goto_0
    sput-boolean v5, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethodFetched:Z

    #@1c
    .line 73
    :cond_0
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    #@1e
    if-eqz v2, :cond_1

    #@20
    .line 75
    :try_start_1
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    #@22
    const/4 v3, 0x0

    #@23
    new-array v3, v3, [Ljava/lang/Object;

    #@25
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v2

    #@29
    check-cast v2, Ljava/lang/Integer;

    #@2b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@2e
    move-result v2

    #@2f
    return v2

    #@30
    .line 67
    :catch_0
    move-exception v1

    #@31
    .line 68
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "DrawableCompatJellybeanMr1"

    #@34
    const-string/jumbo v3, "Failed to retrieve getLayoutDirection() method"

    #@37
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3a
    goto :goto_0

    #@3b
    .line 76
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    #@3c
    .line 77
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DrawableCompatJellybeanMr1"

    #@3f
    const-string/jumbo v3, "Failed to invoke getLayoutDirection() via reflection"

    #@42
    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@45
    .line 78
    sput-object v6, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sGetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    #@47
    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v2, -0x1

    #@48
    return v2
.end method

.method public static setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V
    .locals 9
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "layoutDirection"    # I

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 41
    sget-boolean v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethodFetched:Z

    #@4
    if-nez v2, :cond_0

    #@6
    .line 44
    :try_start_0
    const-class v2, Landroid/graphics/drawable/Drawable;

    #@8
    const-string/jumbo v3, "setLayoutDirection"

    #@b
    const/4 v4, 0x1

    #@c
    new-array v4, v4, [Ljava/lang/Class;

    #@e
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@10
    const/4 v6, 0x0

    #@11
    aput-object v5, v4, v6

    #@13
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@16
    move-result-object v2

    #@17
    .line 43
    sput-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    #@19
    .line 45
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    #@1b
    const/4 v3, 0x1

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    .line 49
    :goto_0
    sput-boolean v7, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethodFetched:Z

    #@21
    .line 52
    :cond_0
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    #@23
    if-eqz v2, :cond_1

    #@25
    .line 54
    :try_start_1
    sget-object v2, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    #@27
    const/4 v3, 0x1

    #@28
    new-array v3, v3, [Ljava/lang/Object;

    #@2a
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2d
    move-result-object v4

    #@2e
    const/4 v5, 0x0

    #@2f
    aput-object v4, v3, v5

    #@31
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@34
    .line 40
    :cond_1
    :goto_1
    return-void

    #@35
    .line 46
    :catch_0
    move-exception v1

    #@36
    .line 47
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v2, "DrawableCompatJellybeanMr1"

    #@39
    const-string/jumbo v3, "Failed to retrieve setLayoutDirection(int) method"

    #@3c
    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@3f
    goto :goto_0

    #@40
    .line 55
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v0

    #@41
    .line 56
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DrawableCompatJellybeanMr1"

    #@44
    const-string/jumbo v3, "Failed to invoke setLayoutDirection(int) via reflection"

    #@47
    invoke-static {v2, v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@4a
    .line 57
    sput-object v8, Landroid/support/v4/graphics/drawable/DrawableCompatJellybeanMr1;->sSetLayoutDirectionMethod:Ljava/lang/reflect/Method;

    #@4c
    goto :goto_1
.end method
