.class Landroid/view/MenuInflater$MenuState;
.super Ljava/lang/Object;
.source "MenuInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/MenuInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MenuState"
.end annotation


# static fields
.field private static final greylist-max-o defaultGroupId:I = 0x0

.field private static final greylist-max-o defaultItemCategory:I = 0x0

.field private static final greylist-max-o defaultItemCheckable:I = 0x0

.field private static final greylist-max-o defaultItemChecked:Z = false

.field private static final greylist-max-o defaultItemEnabled:Z = true

.field private static final greylist-max-o defaultItemId:I = 0x0

.field private static final greylist-max-o defaultItemOrder:I = 0x0

.field private static final greylist-max-o defaultItemVisible:Z = true


# instance fields
.field private greylist-max-o groupCategory:I

.field private greylist-max-o groupCheckable:I

.field private greylist-max-o groupEnabled:Z

.field private greylist-max-o groupId:I

.field private greylist-max-o groupOrder:I

.field private greylist-max-o groupVisible:Z

.field private greylist-max-o itemActionProvider:Landroid/view/ActionProvider;

.field private greylist-max-o itemActionProviderClassName:Ljava/lang/String;

.field private greylist-max-o itemActionViewClassName:Ljava/lang/String;

.field private greylist-max-o itemActionViewLayout:I

.field private greylist-max-o itemAdded:Z

.field private greylist-max-o itemAlphabeticModifiers:I

.field private greylist-max-o itemAlphabeticShortcut:C

.field private greylist-max-o itemCategoryOrder:I

.field private greylist-max-o itemCheckable:I

.field private greylist-max-o itemChecked:Z

.field private greylist-max-o itemContentDescription:Ljava/lang/CharSequence;

.field private greylist-max-o itemEnabled:Z

.field private greylist-max-o itemIconResId:I

.field private greylist-max-o itemIconTintList:Landroid/content/res/ColorStateList;

.field private greylist-max-o itemId:I

.field private greylist-max-o itemListenerMethodName:Ljava/lang/String;

.field private greylist-max-o itemNumericModifiers:I

.field private greylist-max-o itemNumericShortcut:C

.field private greylist-max-o itemShowAsAction:I

.field private greylist-max-o itemTitle:Ljava/lang/CharSequence;

.field private greylist-max-o itemTitleCondensed:Ljava/lang/CharSequence;

.field private greylist-max-o itemTooltipText:Ljava/lang/CharSequence;

.field private greylist-max-o itemVisible:Z

.field private blacklist mItemIconBlendMode:Landroid/graphics/BlendMode;

.field private greylist-max-o menu:Landroid/view/Menu;

.field final synthetic blacklist this$0:Landroid/view/MenuInflater;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetitemActionProvider(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;
    .registers 1

    iget-object p0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V
    .registers 3
    .param p2, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x10
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 356
    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    const/4 p1, 0x0

    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 311
    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->mItemIconBlendMode:Landroid/graphics/BlendMode;

    .line 357
    iput-object p2, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    .line 359
    invoke-virtual {p0}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    .line 360
    return-void
.end method

.method private greylist-max-o getShortcut(Ljava/lang/String;)C
    .registers 3
    .param p1, "shortcutString"    # Ljava/lang/String;

    .line 469
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 470
    return v0

    .line 472
    :cond_4
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private greylist-max-o newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 560
    .local p2, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v0}, Landroid/view/MenuInflater;->-$$Nest$fgetmContext(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 561
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 562
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 563
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    return-object v2

    .line 564
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_1b
    move-exception v0

    .line 565
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot instantiate class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MenuInflater"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 567
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o setItem(Landroid/view/MenuItem;)V
    .registers 6
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 477
    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    .line 478
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    .line 479
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_19

    move v1, v2

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    .line 480
    :goto_1a
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 481
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    .line 482
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticModifiers:I

    .line 483
    invoke-interface {v0, v1, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    move-result-object v0

    iget-char v1, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemNumericModifiers:I

    .line 484
    invoke-interface {v0, v1, v3}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 486
    iget v0, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    if-ltz v0, :cond_42

    .line 487
    iget v0, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 490
    :cond_42
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->mItemIconBlendMode:Landroid/graphics/BlendMode;

    if-eqz v0, :cond_4b

    .line 491
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->mItemIconBlendMode:Landroid/graphics/BlendMode;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintBlendMode(Landroid/graphics/BlendMode;)Landroid/view/MenuItem;

    .line 494
    :cond_4b
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_54

    .line 495
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    .line 498
    :cond_54
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    if-eqz v0, :cond_7d

    .line 499
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v0}, Landroid/view/MenuInflater;->-$$Nest$fgetmContext(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_75

    .line 503
    new-instance v0, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;

    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    .line 504
    invoke-static {v1}, Landroid/view/MenuInflater;->-$$Nest$mgetRealOwner(Landroid/view/MenuInflater;)Ljava/lang/Object;

    move-result-object v1

    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    invoke-direct {v0, v1, v3}, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 503
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_7d

    .line 500
    :cond_75
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 507
    :cond_7d
    :goto_7d
    instance-of v0, p1, Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_8c

    .line 508
    move-object v0, p1

    check-cast v0, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 509
    .local v0, "impl":Lcom/android/internal/view/menu/MenuItemImpl;
    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_8c

    .line 510
    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    .line 514
    .end local v0    # "impl":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_8c
    const/4 v0, 0x0

    .line 515
    .local v0, "actionViewSpecified":Z
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-eqz v1, :cond_a7

    .line 516
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    invoke-static {}, Landroid/view/MenuInflater;->-$$Nest$sfgetACTION_VIEW_CONSTRUCTOR_SIGNATURE()[Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v3}, Landroid/view/MenuInflater;->-$$Nest$fgetmActionViewConstructorArguments(Landroid/view/MenuInflater;)[Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Landroid/view/MenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 518
    .local v1, "actionView":Landroid/view/View;
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 519
    const/4 v0, 0x1

    .line 521
    .end local v1    # "actionView":Landroid/view/View;
    :cond_a7
    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    if-lez v1, :cond_bb

    .line 522
    if-nez v0, :cond_b4

    .line 523
    iget v1, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 524
    const/4 v0, 0x1

    goto :goto_bb

    .line 526
    :cond_b4
    const-string v1, "MenuInflater"

    const-string v2, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_bb
    :goto_bb
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    if-eqz v1, :cond_c4

    .line 531
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 534
    :cond_c4
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 535
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 536
    return-void
.end method


# virtual methods
.method public greylist-max-o addItem()Landroid/view/MenuItem;
    .registers 6

    .line 539
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    .line 540
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 541
    .local v0, "item":Landroid/view/MenuItem;
    invoke-direct {p0, v0}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 542
    return-object v0
.end method

.method public greylist-max-o addSubMenuItem()Landroid/view/SubMenu;
    .registers 6

    .line 546
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    .line 547
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    iget v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    iget v2, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 548
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    .line 549
    return-object v0
.end method

.method public greylist-max-o hasAddedItem()Z
    .registers 2

    .line 553
    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    return v0
.end method

.method public greylist-max-o readGroup(Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 375
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v0}, Landroid/view/MenuInflater;->-$$Nest$fgetmContext(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->MenuGroup:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 378
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    .line 379
    const/4 v3, 0x3

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    .line 380
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    .line 381
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    .line 382
    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    .line 383
    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    .line 385
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 386
    return-void
.end method

.method public greylist-max-o readItem(Landroid/util/AttributeSet;)V
    .registers 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 392
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v0}, Landroid/view/MenuInflater;->-$$Nest$fgetmContext(Landroid/view/MenuInflater;)Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/internal/R$styleable;->MenuItem:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 396
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    .line 397
    const/4 v1, 0x5

    iget v3, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 398
    .local v1, "category":I
    const/4 v3, 0x6

    iget v4, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 399
    .local v3, "order":I
    const/high16 v4, -0x10000

    and-int/2addr v4, v1

    const v5, 0xffff

    and-int/2addr v5, v3

    or-int/2addr v4, v5

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    .line 400
    const/4 v4, 0x7

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    .line 401
    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    .line 402
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    .line 403
    const/16 v4, 0x16

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_58

    .line 404
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->mItemIconBlendMode:Landroid/graphics/BlendMode;

    invoke-static {v4, v5}, Landroid/graphics/drawable/Drawable;->parseBlendMode(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendMode;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->mItemIconBlendMode:Landroid/graphics/BlendMode;

    goto :goto_5a

    .line 409
    :cond_58
    iput-object v7, p0, Landroid/view/MenuInflater$MenuState;->mItemIconBlendMode:Landroid/graphics/BlendMode;

    .line 411
    :goto_5a
    const/16 v4, 0x15

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 412
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    goto :goto_6b

    .line 416
    :cond_69
    iput-object v7, p0, Landroid/view/MenuInflater$MenuState;->itemIconTintList:Landroid/content/res/ColorStateList;

    .line 419
    :goto_6b
    nop

    .line 420
    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    .line 421
    nop

    .line 422
    const/16 v4, 0x13

    const/16 v5, 0x1000

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticModifiers:I

    .line 424
    nop

    .line 425
    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    move-result v4

    iput-char v4, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    .line 426
    nop

    .line 427
    const/16 v4, 0x14

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemNumericModifiers:I

    .line 429
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 431
    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    goto :goto_ac

    .line 435
    :cond_a8
    iget v4, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    .line 437
    :goto_ac
    const/4 v4, 0x3

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    .line 438
    const/4 v4, 0x4

    iget-boolean v5, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    .line 439
    iget-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    const/4 v5, 0x1

    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    .line 440
    const/16 v4, 0xe

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    .line 441
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    .line 442
    const/16 v4, 0xf

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    .line 443
    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    .line 444
    const/16 v4, 0x11

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    .line 446
    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    if-eqz v4, :cond_f2

    goto :goto_f3

    :cond_f2
    move v5, v2

    .line 447
    .local v5, "hasActionProvider":Z
    :goto_f3
    if-eqz v5, :cond_112

    iget v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    if-nez v4, :cond_112

    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    if-nez v4, :cond_112

    .line 448
    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    invoke-static {}, Landroid/view/MenuInflater;->-$$Nest$sfgetACTION_PROVIDER_CONSTRUCTOR_SIGNATURE()[Ljava/lang/Class;

    move-result-object v6

    iget-object v7, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    invoke-static {v7}, Landroid/view/MenuInflater;->-$$Nest$fgetmActionProviderConstructorArguments(Landroid/view/MenuInflater;)[Ljava/lang/Object;

    move-result-object v7

    invoke-direct {p0, v4, v6, v7}, Landroid/view/MenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ActionProvider;

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    goto :goto_11d

    .line 452
    :cond_112
    if-eqz v5, :cond_11b

    .line 453
    const-string v4, "MenuInflater"

    const-string v6, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_11b
    iput-object v7, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    .line 459
    :goto_11d
    nop

    .line 460
    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemContentDescription:Ljava/lang/CharSequence;

    .line 461
    const/16 v4, 0x12

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTooltipText:Ljava/lang/CharSequence;

    .line 463
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 465
    iput-boolean v2, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    .line 466
    return-void
.end method

.method public greylist-max-o resetGroup()V
    .registers 2

    .line 363
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    .line 364
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    .line 365
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    .line 366
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    .line 367
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    .line 368
    iput-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    .line 369
    return-void
.end method
