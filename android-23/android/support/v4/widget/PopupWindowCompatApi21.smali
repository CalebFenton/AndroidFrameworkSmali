.class Landroid/support/v4/widget/PopupWindowCompatApi21;
.super Ljava/lang/Object;
.source "PopupWindowCompatApi21.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupWindowCompatApi21"

.field private static sOverlapAnchorField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 32
    :try_start_0
    const-class v1, Landroid/widget/PopupWindow;

    #@2
    const-string/jumbo v2, "mOverlapAnchor"

    #@5
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@8
    move-result-object v1

    #@9
    sput-object v1, Landroid/support/v4/widget/PopupWindowCompatApi21;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    #@b
    .line 33
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompatApi21;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    #@d
    const/4 v2, 0x1

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    .line 24
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :goto_0
    return-void

    #@12
    .line 34
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_0
    move-exception v0

    #@13
    .line 35
    .restart local v0    # "e":Ljava/lang/NoSuchFieldException;
    const-string/jumbo v1, "PopupWindowCompatApi21"

    #@16
    const-string/jumbo v2, "Could not fetch mOverlapAnchor field from PopupWindow"

    #@19
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1c
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static getOverlapAnchor(Landroid/widget/PopupWindow;)Z
    .locals 3
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;

    #@0
    .prologue
    .line 50
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompatApi21;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 52
    :try_start_0
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompatApi21;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    #@6
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Ljava/lang/Boolean;

    #@c
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    move-result v1

    #@10
    return v1

    #@11
    .line 53
    :catch_0
    move-exception v0

    #@12
    .line 54
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v1, "PopupWindowCompatApi21"

    #@15
    const-string/jumbo v2, "Could not get overlap anchor field in PopupWindow"

    #@18
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@1b
    .line 57
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :cond_0
    const/4 v1, 0x0

    #@1c
    return v1
.end method

.method static setOverlapAnchor(Landroid/widget/PopupWindow;Z)V
    .locals 3
    .param p0, "popupWindow"    # Landroid/widget/PopupWindow;
    .param p1, "overlapAnchor"    # Z

    #@0
    .prologue
    .line 40
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompatApi21;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 42
    :try_start_0
    sget-object v1, Landroid/support/v4/widget/PopupWindowCompatApi21;->sOverlapAnchorField:Ljava/lang/reflect/Field;

    #@6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 39
    :cond_0
    :goto_0
    return-void

    #@e
    .line 43
    :catch_0
    move-exception v0

    #@f
    .line 44
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string/jumbo v1, "PopupWindowCompatApi21"

    #@12
    const-string/jumbo v2, "Could not set overlap anchor field in PopupWindow"

    #@15
    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@18
    goto :goto_0
.end method
