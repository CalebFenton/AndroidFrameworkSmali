.class public Lcom/android/internal/view/menu/ActionMenu;
.super Ljava/lang/Object;
.source "ActionMenu.java"

# interfaces
.implements Landroid/view/Menu;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIsQwerty:Z

.field private blacklist mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/view/menu/ActionMenuItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-r <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 48
    return-void
.end method

.method private blacklist findItemIndex(I)I
    .registers 6
    .param p1, "id"    # I

    .line 132
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 133
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 134
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_19

    .line 135
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getItemId()I

    move-result v3

    if-ne v3, p1, :cond_16

    .line 136
    return v2

    .line 134
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 140
    .end local v2    # "i":I
    :cond_19
    const/4 v2, -0x1

    return v2
.end method

.method private blacklist findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;
    .registers 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 166
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mIsQwerty:Z

    .line 167
    .local v0, "qwerty":Z
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 168
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 169
    .local v2, "itemCount":I
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getModifiers()I

    move-result v3

    .line 170
    .local v3, "modifierState":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    if-ge v4, v2, :cond_3f

    .line 171
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/view/menu/ActionMenuItem;

    .line 172
    .local v5, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    if-eqz v0, :cond_1c

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItem;->getAlphabeticShortcut()C

    move-result v6

    goto :goto_20

    .line 173
    :cond_1c
    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItem;->getNumericShortcut()C

    move-result v6

    :goto_20
    nop

    .line 175
    .local v6, "shortcut":C
    if-eqz v0, :cond_28

    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItem;->getAlphabeticModifiers()I

    move-result v7

    goto :goto_2c

    :cond_28
    invoke-virtual {v5}, Lcom/android/internal/view/menu/ActionMenuItem;->getNumericModifiers()I

    move-result v7

    .line 176
    .local v7, "shortcutModifiers":I
    :goto_2c
    const v8, 0x1100f

    and-int v9, v3, v8

    and-int/2addr v8, v7

    if-ne v9, v8, :cond_36

    const/4 v8, 0x1

    goto :goto_37

    :cond_36
    const/4 v8, 0x0

    .line 178
    .local v8, "is_modifiers_exact_match":Z
    :goto_37
    if-ne p1, v6, :cond_3c

    if-eqz v8, :cond_3c

    .line 179
    return-object v5

    .line 170
    .end local v5    # "item":Lcom/android/internal/view/menu/ActionMenuItem;
    .end local v6    # "shortcut":C
    .end local v7    # "shortcutModifiers":I
    .end local v8    # "is_modifiers_exact_match":Z
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 182
    .end local v4    # "i":I
    :cond_3f
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method public whitelist add(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "titleRes"    # I

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/ActionMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public whitelist add(IIII)Landroid/view/MenuItem;
    .registers 6
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "titleRes"    # I

    .line 63
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public whitelist add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 12
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 67
    new-instance v0, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v4, 0x0

    move v2, p1

    move v3, p2

    move v5, p3

    move-object v6, p4

    .end local p1    # "groupId":I
    .end local p2    # "itemId":I
    .end local p3    # "order":I
    .end local p4    # "title":Ljava/lang/CharSequence;
    .local v2, "groupId":I
    .local v3, "itemId":I
    .local v5, "order":I
    .local v6, "title":Ljava/lang/CharSequence;
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    .line 69
    .local v0, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    iget-object p1, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p1, v5, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 70
    return-object v0
.end method

.method public whitelist add(Ljava/lang/CharSequence;)Landroid/view/MenuItem;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, p1}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method public whitelist addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I
    .registers 22
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "caller"    # Landroid/content/ComponentName;
    .param p5, "specifics"    # [Landroid/content/Intent;
    .param p6, "intent"    # Landroid/content/Intent;
    .param p7, "flags"    # I
    .param p8, "outSpecificItems"    # [Landroid/view/MenuItem;

    .line 76
    move-object/from16 v0, p5

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 77
    .local v1, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 78
    const/4 v2, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/content/pm/PackageManager;->queryIntentActivityOptions(Landroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 79
    .local v5, "lri":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v5, :cond_18

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 81
    .local v2, "N":I
    :cond_18
    and-int/lit8 v6, p7, 0x1

    if-nez v6, :cond_1f

    .line 82
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/view/menu/ActionMenu;->removeGroup(I)V

    .line 85
    :cond_1f
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_20
    if-ge v6, v2, :cond_6c

    .line 86
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 87
    .local v7, "ri":Landroid/content/pm/ResolveInfo;
    new-instance v8, Landroid/content/Intent;

    .line 88
    iget v9, v7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-gez v9, :cond_30

    move-object v9, v4

    goto :goto_34

    :cond_30
    iget v9, v7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aget-object v9, v0, v9

    :goto_34
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 89
    .local v8, "rintent":Landroid/content/Intent;
    new-instance v9, Landroid/content/ComponentName;

    iget-object v10, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v9, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 92
    invoke-virtual {v7, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    move/from16 v11, p3

    invoke-virtual {p0, p1, p2, v11, v9}, Lcom/android/internal/view/menu/ActionMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v9

    .line 93
    invoke-virtual {v7, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v9

    .line 94
    invoke-interface {v9, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    move-result-object v9

    .line 95
    .local v9, "item":Landroid/view/MenuItem;
    if-eqz p8, :cond_69

    iget v12, v7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    if-ltz v12, :cond_69

    .line 96
    iget v12, v7, Landroid/content/pm/ResolveInfo;->specificIndex:I

    aput-object v9, p8, v12

    .line 85
    .end local v7    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v8    # "rintent":Landroid/content/Intent;
    .end local v9    # "item":Landroid/view/MenuItem;
    :cond_69
    add-int/lit8 v6, v6, 0x1

    goto :goto_20

    :cond_6c
    move/from16 v11, p3

    .line 100
    .end local v6    # "i":I
    return v2
.end method

.method public whitelist addSubMenu(I)Landroid/view/SubMenu;
    .registers 3
    .param p1, "titleRes"    # I

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist addSubMenu(IIII)Landroid/view/SubMenu;
    .registers 6
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "titleRes"    # I

    .line 121
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 6
    .param p1, "groupId"    # I
    .param p2, "itemId"    # I
    .param p3, "order"    # I
    .param p4, "title"    # Ljava/lang/CharSequence;

    .line 116
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist addSubMenu(Ljava/lang/CharSequence;)Landroid/view/SubMenu;
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 105
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist clear()V
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 126
    return-void
.end method

.method public whitelist close()V
    .registers 1

    .line 129
    return-void
.end method

.method public whitelist findItem(I)Landroid/view/MenuItem;
    .registers 4
    .param p1, "id"    # I

    .line 144
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public whitelist getItem(I)Landroid/view/MenuItem;
    .registers 3
    .param p1, "index"    # I

    .line 148
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    return-object v0
.end method

.method public whitelist hasVisibleItems()Z
    .registers 5

    .line 152
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 153
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 155
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1a

    .line 156
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 157
    const/4 v3, 0x1

    return v3

    .line 155
    :cond_17
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 161
    .end local v2    # "i":I
    :cond_1a
    const/4 v2, 0x0

    return v2
.end method

.method public whitelist isShortcutKey(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 186
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist performIdentifierAction(II)Z
    .registers 5
    .param p1, "id"    # I
    .param p2, "flags"    # I

    .line 190
    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v0

    .line 191
    .local v0, "index":I
    if-gez v0, :cond_8

    .line 192
    const/4 v1, 0x0

    return v1

    .line 195
    :cond_8
    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v1}, Lcom/android/internal/view/menu/ActionMenuItem;->invoke()Z

    move-result v1

    return v1
.end method

.method public whitelist performShortcut(ILandroid/view/KeyEvent;I)Z
    .registers 6
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;
    .param p3, "flags"    # I

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/android/internal/view/menu/ActionMenu;->findItemWithShortcut(ILandroid/view/KeyEvent;)Lcom/android/internal/view/menu/ActionMenuItem;

    move-result-object v0

    .line 200
    .local v0, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    if-nez v0, :cond_8

    .line 201
    const/4 v1, 0x0

    return v1

    .line 204
    :cond_8
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuItem;->invoke()Z

    move-result v1

    return v1
.end method

.method public whitelist removeGroup(I)V
    .registers 6
    .param p1, "groupId"    # I

    .line 208
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 209
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 210
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .line 211
    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1e

    .line 212
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v3

    if-ne v3, p1, :cond_1b

    .line 213
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 214
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 216
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 219
    :cond_1e
    return-void
.end method

.method public whitelist removeItem(I)V
    .registers 4
    .param p1, "id"    # I

    .line 222
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/internal/view/menu/ActionMenu;->findItemIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 223
    return-void
.end method

.method public whitelist setGroupCheckable(IZZ)V
    .registers 9
    .param p1, "group"    # I
    .param p2, "checkable"    # Z
    .param p3, "exclusive"    # Z

    .line 227
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 228
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 230
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1e

    .line 231
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    .line 232
    .local v3, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_1b

    .line 233
    invoke-virtual {v3, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    .line 234
    invoke-virtual {v3, p3}, Lcom/android/internal/view/menu/ActionMenuItem;->setExclusiveCheckable(Z)Lcom/android/internal/view/menu/ActionMenuItem;

    .line 230
    .end local v3    # "item":Lcom/android/internal/view/menu/ActionMenuItem;
    :cond_1b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 237
    .end local v2    # "i":I
    :cond_1e
    return-void
.end method

.method public whitelist setGroupEnabled(IZ)V
    .registers 8
    .param p1, "group"    # I
    .param p2, "enabled"    # Z

    .line 240
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 241
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 243
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1b

    .line 244
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    .line 245
    .local v3, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_18

    .line 246
    invoke-virtual {v3, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 243
    .end local v3    # "item":Lcom/android/internal/view/menu/ActionMenuItem;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 249
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method

.method public whitelist setGroupVisible(IZ)V
    .registers 8
    .param p1, "group"    # I
    .param p2, "visible"    # Z

    .line 252
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    .line 253
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/view/menu/ActionMenuItem;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 255
    .local v1, "itemCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    if-ge v2, v1, :cond_1b

    .line 256
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/view/menu/ActionMenuItem;

    .line 257
    .local v3, "item":Lcom/android/internal/view/menu/ActionMenuItem;
    invoke-virtual {v3}, Lcom/android/internal/view/menu/ActionMenuItem;->getGroupId()I

    move-result v4

    if-ne v4, p1, :cond_18

    .line 258
    invoke-virtual {v3, p2}, Lcom/android/internal/view/menu/ActionMenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 255
    .end local v3    # "item":Lcom/android/internal/view/menu/ActionMenuItem;
    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 261
    .end local v2    # "i":I
    :cond_1b
    return-void
.end method

.method public whitelist setQwertyMode(Z)V
    .registers 2
    .param p1, "isQwerty"    # Z

    .line 264
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenu;->mIsQwerty:Z

    .line 265
    return-void
.end method

.method public whitelist size()I
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenu;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
