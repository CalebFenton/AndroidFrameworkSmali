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
.field private static final defaultGroupId:I = 0x0

.field private static final defaultItemCategory:I = 0x0

.field private static final defaultItemCheckable:I = 0x0

.field private static final defaultItemChecked:Z = false

.field private static final defaultItemEnabled:Z = true

.field private static final defaultItemId:I = 0x0

.field private static final defaultItemOrder:I = 0x0

.field private static final defaultItemVisible:Z = true


# instance fields
.field private groupCategory:I

.field private groupCheckable:I

.field private groupEnabled:Z

.field private groupId:I

.field private groupOrder:I

.field private groupVisible:Z

.field private itemActionProvider:Landroid/view/ActionProvider;

.field private itemActionProviderClassName:Ljava/lang/String;

.field private itemActionViewClassName:Ljava/lang/String;

.field private itemActionViewLayout:I

.field private itemAdded:Z

.field private itemAlphabeticShortcut:C

.field private itemCategoryOrder:I

.field private itemCheckable:I

.field private itemChecked:Z

.field private itemEnabled:Z

.field private itemIconResId:I

.field private itemId:I

.field private itemListenerMethodName:Ljava/lang/String;

.field private itemNumericShortcut:C

.field private itemShowAsAction:I

.field private itemTitle:Ljava/lang/CharSequence;

.field private itemTitleCondensed:Ljava/lang/CharSequence;

.field private itemVisible:Z

.field private menu:Landroid/view/Menu;

.field final synthetic this$0:Landroid/view/MenuInflater;


# direct methods
.method static synthetic -get0(Landroid/view/MenuInflater$MenuState;)Landroid/view/ActionProvider;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/view/MenuInflater;Landroid/view/Menu;)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/MenuInflater;
    .param p2, "menu"    # Landroid/view/Menu;

    #@0
    .prologue
    .line 346
    iput-object p1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 347
    iput-object p2, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    #@7
    .line 349
    invoke-virtual {p0}, Landroid/view/MenuInflater$MenuState;->resetGroup()V

    #@a
    .line 346
    return-void
.end method

.method private getShortcut(Ljava/lang/String;)C
    .locals 1
    .param p1, "shortcutString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 433
    if-nez p1, :cond_0

    #@3
    .line 434
    return v0

    #@4
    .line 436
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    #@7
    move-result v0

    #@8
    return v0
.end method

.method private newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p3, "arguments"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 513
    .local p2, "constructorSignature":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :try_start_0
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #@2
    invoke-static {v3}, Landroid/view/MenuInflater;->-get4(Landroid/view/MenuInflater;)Landroid/content/Context;

    #@5
    move-result-object v3

    #@6
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    #@d
    move-result-object v0

    #@e
    .line 514
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    #@11
    move-result-object v1

    #@12
    .line 515
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    #@13
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    #@16
    .line 516
    invoke-virtual {v1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    move-result-object v3

    #@1a
    return-object v3

    #@1b
    .line 517
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :catch_0
    move-exception v2

    #@1c
    .line 518
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "MenuInflater"

    #@1f
    new-instance v4, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v5, "Cannot instantiate class: "

    #@27
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v4

    #@33
    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@36
    .line 520
    const/4 v3, 0x0

    #@37
    return-object v3
.end method

.method private setItem(Landroid/view/MenuItem;)V
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 441
    iget-boolean v5, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    #@4
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    #@7
    move-result-object v5

    #@8
    .line 442
    iget-boolean v6, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    #@a
    .line 441
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    #@d
    move-result-object v5

    #@e
    .line 443
    iget-boolean v6, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    #@10
    .line 441
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    #@13
    move-result-object v5

    #@14
    .line 444
    iget v6, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    #@16
    if-lt v6, v4, :cond_0

    #@18
    move v3, v4

    #@19
    .line 441
    :cond_0
    invoke-interface {v5, v3}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    #@1c
    move-result-object v3

    #@1d
    .line 445
    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    #@1f
    .line 441
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    #@22
    move-result-object v3

    #@23
    .line 446
    iget v5, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    #@25
    .line 441
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    #@28
    move-result-object v3

    #@29
    .line 447
    iget-char v5, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    #@2b
    .line 441
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    #@2e
    move-result-object v3

    #@2f
    .line 448
    iget-char v5, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    #@31
    .line 441
    invoke-interface {v3, v5}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    #@34
    .line 450
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    #@36
    if-ltz v3, :cond_1

    #@38
    .line 451
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    #@3a
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    #@3d
    .line 454
    :cond_1
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    #@3f
    if-eqz v3, :cond_3

    #@41
    .line 455
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #@43
    invoke-static {v3}, Landroid/view/MenuInflater;->-get4(Landroid/view/MenuInflater;)Landroid/content/Context;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3}, Landroid/content/Context;->isRestricted()Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_2

    #@4d
    .line 456
    new-instance v3, Ljava/lang/IllegalStateException;

    #@4f
    const-string/jumbo v4, "The android:onClick attribute cannot be used within a restricted context"

    #@52
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@55
    throw v3

    #@56
    .line 460
    :cond_2
    new-instance v3, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;

    #@58
    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #@5a
    invoke-static {v5}, Landroid/view/MenuInflater;->-wrap0(Landroid/view/MenuInflater;)Ljava/lang/Object;

    #@5d
    move-result-object v5

    #@5e
    iget-object v6, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    #@60
    invoke-direct {v3, v5, v6}, Landroid/view/MenuInflater$InflatedOnMenuItemClickListener;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    #@63
    .line 459
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    #@66
    .line 463
    :cond_3
    instance-of v3, p1, Lcom/android/internal/view/menu/MenuItemImpl;

    #@68
    if-eqz v3, :cond_4

    #@6a
    move-object v2, p1

    #@6b
    .line 464
    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    #@6d
    .line 465
    .local v2, "impl":Lcom/android/internal/view/menu/MenuItemImpl;
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    #@6f
    const/4 v5, 0x2

    #@70
    if-lt v3, v5, :cond_4

    #@72
    .line 466
    invoke-virtual {v2, v4}, Lcom/android/internal/view/menu/MenuItemImpl;->setExclusiveCheckable(Z)V

    #@75
    .line 470
    .end local v2    # "impl":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_4
    const/4 v1, 0x0

    #@76
    .line 471
    .local v1, "actionViewSpecified":Z
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    #@78
    if-eqz v3, :cond_5

    #@7a
    .line 472
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    #@7c
    .line 473
    invoke-static {}, Landroid/view/MenuInflater;->-get1()[Ljava/lang/Class;

    #@7f
    move-result-object v4

    #@80
    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #@82
    invoke-static {v5}, Landroid/view/MenuInflater;->-get3(Landroid/view/MenuInflater;)[Ljava/lang/Object;

    #@85
    move-result-object v5

    #@86
    .line 472
    invoke-direct {p0, v3, v4, v5}, Landroid/view/MenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    #@89
    move-result-object v0

    #@8a
    check-cast v0, Landroid/view/View;

    #@8c
    .line 474
    .local v0, "actionView":Landroid/view/View;
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    #@8f
    .line 475
    const/4 v1, 0x1

    #@90
    .line 477
    .end local v0    # "actionView":Landroid/view/View;
    :cond_5
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    #@92
    if-lez v3, :cond_6

    #@94
    .line 478
    if-nez v1, :cond_8

    #@96
    .line 479
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    #@98
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    #@9b
    .line 480
    const/4 v1, 0x1

    #@9c
    .line 486
    :cond_6
    :goto_0
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    #@9e
    if-eqz v3, :cond_7

    #@a0
    .line 487
    iget-object v3, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    #@a2
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    #@a5
    .line 440
    :cond_7
    return-void

    #@a6
    .line 482
    :cond_8
    const-string/jumbo v3, "MenuInflater"

    #@a9
    const-string/jumbo v4, "Ignoring attribute \'itemActionViewLayout\'. Action view already specified."

    #@ac
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@af
    goto :goto_0
.end method


# virtual methods
.method public addItem()Landroid/view/MenuItem;
    .locals 6

    #@0
    .prologue
    .line 492
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    #@3
    .line 493
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    #@5
    iget v2, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    #@7
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    #@9
    iget v4, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    #@b
    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    #@d
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    #@10
    move-result-object v0

    #@11
    .line 494
    .local v0, "item":Landroid/view/MenuItem;
    invoke-direct {p0, v0}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    #@14
    .line 495
    return-object v0
.end method

.method public addSubMenuItem()Landroid/view/SubMenu;
    .locals 6

    #@0
    .prologue
    .line 499
    const/4 v1, 0x1

    #@1
    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    #@3
    .line 500
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->menu:Landroid/view/Menu;

    #@5
    iget v2, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    #@7
    iget v3, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    #@9
    iget v4, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    #@b
    iget-object v5, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    #@d
    invoke-interface {v1, v2, v3, v4, v5}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    #@10
    move-result-object v0

    #@11
    .line 501
    .local v0, "subMenu":Landroid/view/SubMenu;
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    #@14
    move-result-object v1

    #@15
    invoke-direct {p0, v1}, Landroid/view/MenuInflater$MenuState;->setItem(Landroid/view/MenuItem;)V

    #@18
    .line 502
    return-object v0
.end method

.method public hasAddedItem()Z
    .locals 1

    #@0
    .prologue
    .line 506
    iget-boolean v0, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    #@2
    return v0
.end method

.method public readGroup(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 365
    iget-object v1, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #@4
    invoke-static {v1}, Landroid/view/MenuInflater;->-get4(Landroid/view/MenuInflater;)Landroid/content/Context;

    #@7
    move-result-object v1

    #@8
    .line 366
    sget-object v2, Lcom/android/internal/R$styleable;->MenuGroup:[I

    #@a
    .line 365
    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@d
    move-result-object v0

    #@e
    .line 368
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@11
    move-result v1

    #@12
    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    #@14
    .line 369
    const/4 v1, 0x3

    #@15
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@18
    move-result v1

    #@19
    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    #@1b
    .line 370
    const/4 v1, 0x4

    #@1c
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1f
    move-result v1

    #@20
    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    #@22
    .line 371
    const/4 v1, 0x5

    #@23
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    #@26
    move-result v1

    #@27
    iput v1, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    #@29
    .line 372
    const/4 v1, 0x2

    #@2a
    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@2d
    move-result v1

    #@2e
    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    #@30
    .line 373
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@33
    move-result v1

    #@34
    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    #@36
    .line 375
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@39
    .line 364
    return-void
.end method

.method public readItem(Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/16 v9, 0xb

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v8, 0x0

    #@4
    const/4 v6, 0x0

    #@5
    .line 382
    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #@7
    invoke-static {v4}, Landroid/view/MenuInflater;->-get4(Landroid/view/MenuInflater;)Landroid/content/Context;

    #@a
    move-result-object v4

    #@b
    .line 383
    sget-object v7, Lcom/android/internal/R$styleable;->MenuItem:[I

    #@d
    .line 382
    invoke-virtual {v4, p1, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@10
    move-result-object v0

    #@11
    .line 386
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x2

    #@12
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@15
    move-result v4

    #@16
    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemId:I

    #@18
    .line 387
    iget v4, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    #@1a
    const/4 v7, 0x5

    #@1b
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@1e
    move-result v1

    #@1f
    .line 388
    .local v1, "category":I
    iget v4, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    #@21
    const/4 v7, 0x6

    #@22
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    #@25
    move-result v3

    #@26
    .line 389
    .local v3, "order":I
    const/high16 v4, -0x10000

    #@28
    and-int/2addr v4, v1

    #@29
    const v7, 0xffff

    #@2c
    and-int/2addr v7, v3

    #@2d
    or-int/2addr v4, v7

    #@2e
    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemCategoryOrder:I

    #@30
    .line 390
    const/4 v4, 0x7

    #@31
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@34
    move-result-object v4

    #@35
    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitle:Ljava/lang/CharSequence;

    #@37
    .line 391
    const/16 v4, 0x8

    #@39
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@3c
    move-result-object v4

    #@3d
    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemTitleCondensed:Ljava/lang/CharSequence;

    #@3f
    .line 392
    invoke-virtual {v0, v6, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@42
    move-result v4

    #@43
    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemIconResId:I

    #@45
    .line 394
    const/16 v4, 0x9

    #@47
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@4a
    move-result-object v4

    #@4b
    invoke-direct {p0, v4}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    #@4e
    move-result v4

    #@4f
    .line 393
    iput-char v4, p0, Landroid/view/MenuInflater$MenuState;->itemAlphabeticShortcut:C

    #@51
    .line 396
    const/16 v4, 0xa

    #@53
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@56
    move-result-object v4

    #@57
    invoke-direct {p0, v4}, Landroid/view/MenuInflater$MenuState;->getShortcut(Ljava/lang/String;)C

    #@5a
    move-result v4

    #@5b
    .line 395
    iput-char v4, p0, Landroid/view/MenuInflater$MenuState;->itemNumericShortcut:C

    #@5d
    .line 397
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    #@60
    move-result v4

    #@61
    if-eqz v4, :cond_1

    #@63
    .line 399
    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@66
    move-result v4

    #@67
    if-eqz v4, :cond_0

    #@69
    move v4, v5

    #@6a
    :goto_0
    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    #@6c
    .line 405
    :goto_1
    const/4 v4, 0x3

    #@6d
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@70
    move-result v4

    #@71
    iput-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->itemChecked:Z

    #@73
    .line 406
    iget-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    #@75
    const/4 v7, 0x4

    #@76
    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@79
    move-result v4

    #@7a
    iput-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->itemVisible:Z

    #@7c
    .line 407
    iget-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    #@7e
    invoke-virtual {v0, v5, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    #@81
    move-result v4

    #@82
    iput-boolean v4, p0, Landroid/view/MenuInflater$MenuState;->itemEnabled:Z

    #@84
    .line 408
    const/16 v4, 0xd

    #@86
    const/4 v5, -0x1

    #@87
    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    #@8a
    move-result v4

    #@8b
    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemShowAsAction:I

    #@8d
    .line 409
    const/16 v4, 0xc

    #@8f
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@92
    move-result-object v4

    #@93
    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemListenerMethodName:Ljava/lang/String;

    #@95
    .line 410
    const/16 v4, 0xe

    #@97
    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@9a
    move-result v4

    #@9b
    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    #@9d
    .line 411
    const/16 v4, 0xf

    #@9f
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@a2
    move-result-object v4

    #@a3
    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    #@a5
    .line 412
    const/16 v4, 0x10

    #@a7
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    #@aa
    move-result-object v4

    #@ab
    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    #@ad
    .line 414
    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    #@af
    if-eqz v4, :cond_2

    #@b1
    const/4 v2, 0x1

    #@b2
    .line 415
    .local v2, "hasActionProvider":Z
    :goto_2
    if-eqz v2, :cond_3

    #@b4
    iget v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewLayout:I

    #@b6
    if-nez v4, :cond_3

    #@b8
    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionViewClassName:Ljava/lang/String;

    #@ba
    if-nez v4, :cond_3

    #@bc
    .line 416
    iget-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProviderClassName:Ljava/lang/String;

    #@be
    .line 417
    invoke-static {}, Landroid/view/MenuInflater;->-get0()[Ljava/lang/Class;

    #@c1
    move-result-object v5

    #@c2
    .line 418
    iget-object v7, p0, Landroid/view/MenuInflater$MenuState;->this$0:Landroid/view/MenuInflater;

    #@c4
    invoke-static {v7}, Landroid/view/MenuInflater;->-get2(Landroid/view/MenuInflater;)[Ljava/lang/Object;

    #@c7
    move-result-object v7

    #@c8
    .line 416
    invoke-direct {p0, v4, v5, v7}, Landroid/view/MenuInflater$MenuState;->newInstance(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    #@cb
    move-result-object v4

    #@cc
    check-cast v4, Landroid/view/ActionProvider;

    #@ce
    iput-object v4, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    #@d0
    .line 427
    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@d3
    .line 429
    iput-boolean v6, p0, Landroid/view/MenuInflater$MenuState;->itemAdded:Z

    #@d5
    .line 381
    return-void

    #@d6
    .end local v2    # "hasActionProvider":Z
    :cond_0
    move v4, v6

    #@d7
    .line 399
    goto :goto_0

    #@d8
    .line 403
    :cond_1
    iget v4, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    #@da
    iput v4, p0, Landroid/view/MenuInflater$MenuState;->itemCheckable:I

    #@dc
    goto :goto_1

    #@dd
    .line 414
    :cond_2
    const/4 v2, 0x0

    #@de
    .restart local v2    # "hasActionProvider":Z
    goto :goto_2

    #@df
    .line 420
    :cond_3
    if-eqz v2, :cond_4

    #@e1
    .line 421
    const-string/jumbo v4, "MenuInflater"

    #@e4
    const-string/jumbo v5, "Ignoring attribute \'actionProviderClass\'. Action view already specified."

    #@e7
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@ea
    .line 424
    :cond_4
    iput-object v8, p0, Landroid/view/MenuInflater$MenuState;->itemActionProvider:Landroid/view/ActionProvider;

    #@ec
    goto :goto_3
.end method

.method public resetGroup()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 353
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupId:I

    #@4
    .line 354
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCategory:I

    #@6
    .line 355
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupOrder:I

    #@8
    .line 356
    iput v0, p0, Landroid/view/MenuInflater$MenuState;->groupCheckable:I

    #@a
    .line 357
    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupVisible:Z

    #@c
    .line 358
    iput-boolean v1, p0, Landroid/view/MenuInflater$MenuState;->groupEnabled:Z

    #@e
    .line 352
    return-void
.end method
