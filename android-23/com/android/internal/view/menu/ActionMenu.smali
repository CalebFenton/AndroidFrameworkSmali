.class public Lcom/android/internal/view/menu/ActionMenu;
.super Ljava/lang/Object;
.source "ActionMenu.java"

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsQwerty:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/view/menu/ActionMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    #@5
    .line 44
    new-instance v0, Ljava/util/ArrayList;

    #@7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    #@c
    .line 42
    return-void
.end method

.method private findItemIndex(I)I
    .locals 4
    .param p1, "id"    # I

    #@0
    .prologue
    .line 129
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    #@2
    .line 130
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 131
    .local v1, "itemCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 132
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    #@f
    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getItemId()I

    #@12
    move-result v3

    #@13
    if-ne v3, p1, :cond_0

    #@15
    .line 133
    return v0

    #@16
    .line 131
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 137
    :cond_1
    const/4 v3, -0x1

    #@1a
    return v3
.end method

.method private findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 7
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 163
    iget-boolean v4, p0, Lcom/android/internal/view/menu/ActionMenu;->mIsQwerty:Z

    #@2
    .line 164
    .local v4, "qwerty":Z
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    #@4
    .line 165
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@7
    move-result v2

    #@8
    .line 167
    .local v2, "itemCount":I
    const/4 v0, 0x0

    #@9
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@b
    .line 168
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    #@11
    .line 169
    .local v1, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    if-eqz v4, :cond_0

    #@13
    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->getAlphabeticShortcut()C

    #@16
    move-result v5

    #@17
    .line 171
    .local v5, "shortcut":C
    :goto_1
    if-ne p1, v5, :cond_1

    #@19
    .line 172
    return-object v1

    #@1a
    .line 170
    .end local v5    # "shortcut":C
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->getNumericShortcut()C

    #@1d
    move-result v5

    #@1e
    .restart local v5    # "shortcut":C
    goto :goto_1

    #@1f
    .line 167
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0

    #@22
    .line 175
    .end local v1    # "item":Lcom/android/internal/view/menu/ActionMenuItem;
    .end local v5    # "shortcut":C
    :cond_2
    const/4 v6, 0x0

    #@23
    return-object v6
.end method


# virtual methods
.method public add(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "titleRes"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 56
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/ActionMenu;->add(IIII)Landroid/view/MenuItem;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public add(IIII)Landroid/view/MenuItem;
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "titleRes"    # I

    #@0
    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 7
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 64
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    #@2
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenu;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    .line 65
    const/4 v4, 0x0

    #@7
    move v2, p1

    #@8
    move v3, p2

    #@9
    move v5, p3

    #@a
    move-object v6, p4

    #@b
    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    #@e
    .line 66
    .local v0, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    #@10
    invoke-virtual {v1, p3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    #@13
    .line 67
    return-object v0
.end method

.method public add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 52
    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .locals 13
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    #@0
    .prologue
    .line 73
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    #@2
    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@5
    move-result-object v7

    #@6
    .line 75
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const/4 v10, 0x0

    #@7
    move-object/from16 v0, p4

    #@9
    move-object/from16 v1, p5

    #@b
    move-object/from16 v2, p6

    #@d
    invoke-virtual {v7, v0, v1, v2, v10}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    #@10
    move-result-object v6

    #@11
    .line 76
    .local v6, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_2

    #@13
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@16
    move-result v3

    #@17
    .line 78
    .local v3, "N":I
    :goto_0
    and-int/lit8 v10, p7, 0x1

    #@19
    if-nez v10, :cond_0

    #@1b
    .line 79
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->removeGroup(I)V

    #@1e
    .line 82
    :cond_0
    const/4 v4, 0x0

    #@1f
    .local v4, "i":I
    :goto_1
    if-ge v4, v3, :cond_4

    #@21
    .line 83
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@24
    move-result-object v8

    #@25
    check-cast v8, Landroid/content/pm/ResolveInfo;

    #@27
    .line 84
    .local v8, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v9, Landroid/content/Intent;

    #@29
    .line 85
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@2b
    if-gez v10, :cond_3

    #@2d
    move-object/from16 v10, p6

    #@2f
    .line 84
    :goto_2
    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    #@32
    .line 86
    .local v9, "rintent":Landroid/content/Intent;
    new-instance v10, Landroid/content/ComponentName;

    #@34
    .line 87
    iget-object v11, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@36
    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    #@38
    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #@3a
    .line 88
    iget-object v12, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    #@3c
    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    #@3e
    .line 86
    invoke-direct {v10, v11, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    invoke-virtual {v9, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@44
    .line 89
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    #@47
    move-result-object v10

    #@48
    move/from16 v0, p3

    #@4a
    invoke-virtual {p0, p1, p2, v0, v10}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@4d
    move-result-object v10

    #@4e
    .line 90
    invoke-virtual {v8, v7}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    #@51
    move-result-object v11

    #@52
    .line 89
    invoke-interface {v10, v11}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    #@55
    move-result-object v10

    #@56
    invoke-interface {v10, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    #@59
    move-result-object v5

    #@5a
    .line 92
    .local v5, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_1

    #@5c
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@5e
    if-ltz v10, :cond_1

    #@60
    .line 93
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@62
    aput-object v5, p8, v10

    #@64
    .line 82
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@66
    goto :goto_1

    #@67
    .line 76
    .end local v3    # "N":I
    .end local v4    # "i":I
    .end local v5    # "item":Landroid/view/MenuItem;
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v9    # "rintent":Landroid/content/Intent;
    :cond_2
    const/4 v3, 0x0

    #@68
    .restart local v3    # "N":I
    goto :goto_0

    #@69
    .line 85
    .restart local v4    # "i":I
    .restart local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_3
    iget v10, v8, Landroid/content/pm/ResolveInfo;->specificIndex:I

    #@6b
    aget-object v10, p5, v10

    #@6d
    goto :goto_2

    #@6e
    .line 97
    .end local v8    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_4
    return v3
.end method

.method public addSubMenu(I)Landroid/view/SubMenu;
    .locals 1
    .param p1, "titleRes"    # I

    #@0
    .prologue
    .line 107
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public addSubMenu(IIII)Landroid/view/SubMenu;
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "titleRes"    # I

    #@0
    .prologue
    .line 118
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 113
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 102
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    #@5
    .line 121
    return-void
.end method

.method public close()V
    .locals 0

    #@0
    .prologue
    .line 125
    return-void
.end method

.method public findItem(I)Landroid/view/MenuItem;
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Landroid/view/MenuItem;

    #@c
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public getItem(I)Landroid/view/MenuItem;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid/view/MenuItem;

    #@8
    return-object v0
.end method

.method public hasVisibleItems()Z
    .locals 4

    #@0
    .prologue
    .line 149
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    #@2
    .line 150
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 152
    .local v1, "itemCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 153
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    #@f
    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->isVisible()Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_0

    #@15
    .line 154
    const/4 v3, 0x1

    #@16
    return v3

    #@17
    .line 152
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 158
    :cond_1
    const/4 v3, 0x0

    #@1b
    return v3
.end method

.method public isShortcutKey(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 179
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public performIdentifierAction(II)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "flags"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 183
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    #@4
    move-result v0

    #@5
    .line 184
    .local v0, "index":I
    if-gez v0, :cond_0

    #@7
    .line 185
    return v1

    #@8
    .line 188
    :cond_0
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    #@a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@d
    move-result-object v1

    #@e
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->invoke()Z

    #@13
    move-result v1

    #@14
    return v1
.end method

.method public performShortcut(ILandroid/view/KeyEvent;I)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 192
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;

    #@3
    move-result-object v0

    #@4
    .line 193
    .local v0, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    if-nez v0, :cond_0

    #@6
    .line 194
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 197
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuItem;->invoke()Z

    #@b
    move-result v1

    #@c
    return v1
.end method

.method public removeGroup(I)V
    .locals 4
    .param p1, "groupId"    # I

    #@0
    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    #@2
    .line 202
    .local v2, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v1

    #@6
    .line 203
    .local v1, "itemCount":I
    const/4 v0, 0x0

    #@7
    .line 204
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@9
    .line 205
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v3

    #@d
    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    #@f
    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    #@12
    move-result v3

    #@13
    if-ne v3, p1, :cond_0

    #@15
    .line 206
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@18
    .line 207
    add-int/lit8 v1, v1, -0x1

    #@1a
    goto :goto_0

    #@1b
    .line 209
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 200
    :cond_1
    return-void
.end method

.method public removeItem(I)V
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    #@5
    move-result v1

    #@6
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@9
    .line 214
    return-void
.end method

.method public setGroupCheckable(IZZ)V
    .locals 5
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    #@0
    .prologue
    .line 220
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    #@2
    .line 221
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 223
    .local v2, "itemCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 224
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    #@f
    .line 225
    .local v1, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    #@12
    move-result v4

    #@13
    if-ne v4, p1, :cond_0

    #@15
    .line 226
    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    #@18
    .line 227
    invoke-virtual {v1, p3}, Lcom/android/internal/view/menu/ActionMenuItem;->setExclusiveCheckable(Z)Lcom/android/internal/view/menu/ActionMenuItem;

    #@1b
    .line 223
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 219
    .end local v1    # "item":Lcom/android/internal/view/menu/ActionMenuItem;
    :cond_1
    return-void
.end method

.method public setGroupEnabled(IZ)V
    .locals 5
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    #@0
    .prologue
    .line 233
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    #@2
    .line 234
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 236
    .local v2, "itemCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 237
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    #@f
    .line 238
    .local v1, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    #@12
    move-result v4

    #@13
    if-ne v4, p1, :cond_0

    #@15
    .line 239
    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    #@18
    .line 236
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 232
    .end local v1    # "item":Lcom/android/internal/view/menu/ActionMenuItem;
    :cond_1
    return-void
.end method

.method public setGroupVisible(IZ)V
    .locals 5
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    #@0
    .prologue
    .line 245
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    #@2
    .line 246
    .local v3, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    .line 248
    .local v2, "itemCount":I
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    #@9
    .line 249
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    #@f
    .line 250
    .local v1, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    #@12
    move-result v4

    #@13
    if-ne v4, p1, :cond_0

    #@15
    .line 251
    invoke-virtual {v1, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    #@18
    .line 248
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 244
    .end local v1    # "item":Lcom/android/internal/view/menu/ActionMenuItem;
    :cond_1
    return-void
.end method

.method public setQwertyMode(Z)V
    .locals 0
    .param p1, "isQwerty"    # Z

    #@0
    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenu;->mIsQwerty:Z

    #@2
    .line 256
    return-void
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method
