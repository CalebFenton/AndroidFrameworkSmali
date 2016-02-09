.class Landroid/support/v4/widget/PopupWindowCompatGingerbread;
.super Ljava/lang/Object;
.source "PopupWindowCompatGingerbread.java"


# static fields
.field private static sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sGetWindowLayoutTypeMethodAttempted:Z

.field private static sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sSetWindowLayoutTypeMethodAttempted:Z


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 6
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 55
    sget-boolean v1, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethodAttempted:Z

    #@4
    if-nez v1, :cond_0

    #@6
    .line 57
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    #@8
    .line 58
    const-string/jumbo v2, "getWindowLayoutType"

    #@b
    .line 57
    const/4 v3, 0x0

    #@c
    new-array v3, v3, [Ljava/lang/Class;

    #@e
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@11
    move-result-object v1

    #@12
    sput-object v1, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    #@14
    .line 59
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    #@16
    const/4 v2, 0x1

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@1a
    .line 63
    :goto_0
    sput-boolean v5, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethodAttempted:Z

    #@1c
    .line 66
    :cond_0
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    #@1e
    if-eqz v1, :cond_1

    #@20
    .line 68
    :try_start_1
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    #@22
    const/4 v2, 0x0

    #@23
    new-array v2, v2, [Ljava/lang/Object;

    #@25
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v1

    #@29
    check-cast v1, Ljava/lang/Integer;

    #@2b
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@2e
    move-result v1

    #@2f
    return v1

    #@30
    .line 69
    :catch_0
    move-exception v0

    #@31
    .line 73
    :cond_1
    return v4

    #@32
    .line 60
    :catch_1
    move-exception v0

    #@33
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 7
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "layoutType"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 34
    sget-boolean v1, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethodAttempted:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 36
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    #@7
    .line 37
    const-string/jumbo v2, "setWindowLayoutType"

    #@a
    .line 36
    const/4 v3, 0x1

    #@b
    new-array v3, v3, [Ljava/lang/Class;

    #@d
    .line 37
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@f
    const/4 v5, 0x0

    #@10
    aput-object v4, v3, v5

    #@12
    .line 36
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@15
    move-result-object v1

    #@16
    sput-object v1, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    #@18
    .line 38
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    #@1a
    const/4 v2, 0x1

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    #@1e
    .line 42
    :goto_0
    sput-boolean v6, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethodAttempted:Z

    #@20
    .line 45
    :cond_0
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    #@22
    if-eqz v1, :cond_1

    #@24
    .line 47
    :try_start_1
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    #@26
    const/4 v2, 0x1

    #@27
    new-array v2, v2, [Ljava/lang/Object;

    #@29
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2c
    move-result-object v3

    #@2d
    const/4 v4, 0x0

    #@2e
    aput-object v3, v2, v4

    #@30
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@33
    .line 33
    :cond_1
    :goto_1
    return-void

    #@34
    .line 48
    :catch_0
    move-exception v0

    #@35
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_1

    #@36
    .line 39
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    #@37
    .restart local v0    # "e":Ljava/lang/Exception;
    goto :goto_0
.end method
