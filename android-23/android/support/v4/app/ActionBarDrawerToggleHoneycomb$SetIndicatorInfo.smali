.class Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleHoneycomb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SetIndicatorInfo"
.end annotation


# instance fields
.field public setHomeActionContentDescription:Ljava/lang/reflect/Method;

.field public setHomeAsUpIndicator:Ljava/lang/reflect/Method;

.field public upIndicatorView:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 12
    .param p1, "activity"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 106
    :try_start_0
    const-class v7, Landroid/app/ActionBar;

    #@5
    const-string/jumbo v8, "setHomeAsUpIndicator"

    #@8
    const/4 v9, 0x1

    #@9
    new-array v9, v9, [Ljava/lang/Class;

    #@b
    .line 107
    const-class v10, Landroid/graphics/drawable/Drawable;

    #@d
    const/4 v11, 0x0

    #@e
    aput-object v10, v9, v11

    #@10
    .line 106
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@13
    move-result-object v7

    #@14
    iput-object v7, p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeAsUpIndicator:Ljava/lang/reflect/Method;

    #@16
    .line 108
    const-class v7, Landroid/app/ActionBar;

    #@18
    .line 109
    const-string/jumbo v8, "setHomeActionContentDescription"

    #@1b
    .line 108
    const/4 v9, 0x1

    #@1c
    new-array v9, v9, [Ljava/lang/Class;

    #@1e
    .line 109
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@20
    const/4 v11, 0x0

    #@21
    aput-object v10, v9, v11

    #@23
    .line 108
    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    #@26
    move-result-object v7

    #@27
    iput-object v7, p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->setHomeActionContentDescription:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    .line 112
    return-void

    #@2a
    .line 113
    :catch_0
    move-exception v1

    #@2b
    .line 117
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const v7, 0x102002c

    #@2e
    invoke-virtual {p1, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@31
    move-result-object v3

    #@32
    .line 118
    .local v3, "home":Landroid/view/View;
    if-nez v3, :cond_0

    #@34
    .line 120
    return-void

    #@35
    .line 123
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@38
    move-result-object v4

    #@39
    check-cast v4, Landroid/view/ViewGroup;

    #@3b
    .line 124
    .local v4, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    #@3e
    move-result v0

    #@3f
    .line 125
    .local v0, "childCount":I
    const/4 v7, 0x2

    #@40
    if-eq v0, v7, :cond_1

    #@42
    .line 127
    return-void

    #@43
    .line 130
    :cond_1
    const/4 v7, 0x0

    #@44
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@47
    move-result-object v2

    #@48
    .line 131
    .local v2, "first":Landroid/view/View;
    const/4 v7, 0x1

    #@49
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    #@4c
    move-result-object v5

    #@4d
    .line 132
    .local v5, "second":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    #@50
    move-result v7

    #@51
    const v8, 0x102002c

    #@54
    if-ne v7, v8, :cond_3

    #@56
    move-object v6, v5

    #@57
    .line 134
    .local v6, "up":Landroid/view/View;
    :goto_0
    instance-of v7, v6, Landroid/widget/ImageView;

    #@59
    if-eqz v7, :cond_2

    #@5b
    .line 136
    check-cast v6, Landroid/widget/ImageView;

    #@5d
    .end local v6    # "up":Landroid/view/View;
    iput-object v6, p0, Landroid/support/v4/app/ActionBarDrawerToggleHoneycomb$SetIndicatorInfo;->upIndicatorView:Landroid/widget/ImageView;

    #@5f
    .line 104
    :cond_2
    return-void

    #@60
    .line 132
    :cond_3
    move-object v6, v2

    #@61
    .restart local v6    # "up":Landroid/view/View;
    goto :goto_0
.end method
