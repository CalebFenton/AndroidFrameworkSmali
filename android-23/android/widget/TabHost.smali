.class public Landroid/widget/TabHost;
.super Landroid/widget/FrameLayout;
.source "TabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabHost$OnTabChangeListener;,
        Landroid/widget/TabHost$TabContentFactory;,
        Landroid/widget/TabHost$TabSpec;,
        Landroid/widget/TabHost$IndicatorStrategy;,
        Landroid/widget/TabHost$ContentStrategy;,
        Landroid/widget/TabHost$LabelIndicatorStrategy;,
        Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;,
        Landroid/widget/TabHost$ViewIndicatorStrategy;,
        Landroid/widget/TabHost$ViewIdContentStrategy;,
        Landroid/widget/TabHost$FactoryContentStrategy;,
        Landroid/widget/TabHost$IntentContentStrategy;
    }
.end annotation


# static fields
.field private static final TABWIDGET_LOCATION_BOTTOM:I = 0x3

.field private static final TABWIDGET_LOCATION_LEFT:I = 0x0

.field private static final TABWIDGET_LOCATION_RIGHT:I = 0x2

.field private static final TABWIDGET_LOCATION_TOP:I = 0x1


# instance fields
.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabLayoutId:I

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Landroid/widget/TabWidget;


# direct methods
.method static synthetic -get0(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/TabHost;)I
    .locals 1

    #@0
    iget v0, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/widget/TabHost;)Landroid/widget/TabWidget;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    #@2
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 72
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    #@4
    .line 54
    new-instance v0, Ljava/util/ArrayList;

    #@6
    const/4 v1, 0x2

    #@7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@a
    iput-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    #@c
    .line 59
    const/4 v0, -0x1

    #@d
    iput v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@f
    .line 60
    iput-object v2, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    #@11
    .line 65
    iput-object v2, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@13
    .line 73
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    #@16
    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 77
    const v0, 0x1010083

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@6
    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 81
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/TabHost;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    .line 54
    new-instance v1, Ljava/util/ArrayList;

    #@7
    const/4 v2, 0x2

    #@8
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@b
    iput-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    #@d
    .line 59
    const/4 v1, -0x1

    #@e
    iput v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@10
    .line 60
    iput-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    #@12
    .line 65
    iput-object v4, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@14
    .line 88
    sget-object v1, Lcom/android/internal/R$styleable;->TabWidget:[I

    #@16
    .line 87
    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@19
    move-result-object v0

    #@1a
    .line 90
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x4

    #@1b
    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    #@1e
    move-result v1

    #@1f
    iput v1, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    #@21
    .line 91
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@24
    .line 93
    iget v1, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    #@26
    if-nez v1, :cond_0

    #@28
    .line 96
    const v1, 0x10900e5

    #@2b
    iput v1, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    #@2d
    .line 99
    :cond_0
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    #@30
    .line 84
    return-void
.end method

.method private getTabWidgetLocation()I
    .locals 3

    #@0
    .prologue
    .line 288
    const/4 v0, 0x1

    #@1
    .line 290
    .local v0, "location":I
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    #@3
    invoke-virtual {v1}, Landroid/widget/TabWidget;->getOrientation()I

    #@6
    move-result v1

    #@7
    packed-switch v1, :pswitch_data_0

    #@a
    .line 297
    iget-object v1, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    #@c
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    #@f
    move-result v1

    #@10
    iget-object v2, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    #@12
    invoke-virtual {v2}, Landroid/widget/TabWidget;->getTop()I

    #@15
    move-result v2

    #@16
    if-ge v1, v2, :cond_1

    #@18
    const/4 v0, 0x3

    #@19
    .line 301
    :goto_0
    return v0

    #@1a
    .line 292
    :pswitch_0
    iget-object v1, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    #@1c
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    #@1f
    move-result v1

    #@20
    iget-object v2, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    #@22
    invoke-virtual {v2}, Landroid/widget/TabWidget;->getLeft()I

    #@25
    move-result v2

    #@26
    if-ge v1, v2, :cond_0

    #@28
    const/4 v0, 0x2

    #@29
    goto :goto_0

    #@2a
    .line 293
    :cond_0
    const/4 v0, 0x0

    #@2b
    goto :goto_0

    #@2c
    .line 298
    :cond_1
    const/4 v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 290
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private initTabHost()V
    .locals 1

    #@0
    .prologue
    .line 103
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setFocusableInTouchMode(Z)V

    #@4
    .line 104
    const/high16 v0, 0x40000

    #@6
    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setDescendantFocusability(I)V

    #@9
    .line 106
    const/4 v0, -0x1

    #@a
    iput v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@c
    .line 107
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    #@f
    .line 102
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    #@0
    .prologue
    .line 420
    iget-object v0, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 421
    iget-object v0, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    #@6
    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    #@d
    .line 419
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;)V
    .locals 4
    .param p1, "tabSpec"    # Landroid/widget/TabHost$TabSpec;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 202
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->-get1(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    #@4
    move-result-object v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 203
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v2, "you must specify a way to create the tab indicator."

    #@c
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v1

    #@10
    .line 206
    :cond_0
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->-get0(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    #@13
    move-result-object v1

    #@14
    if-nez v1, :cond_1

    #@16
    .line 207
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v2, "you must specify a way to create the tab content"

    #@1b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v1

    #@1f
    .line 209
    :cond_1
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->-get1(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v1}, Landroid/widget/TabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    #@26
    move-result-object v0

    #@27
    .line 210
    .local v0, "tabIndicator":Landroid/view/View;
    iget-object v1, p0, Landroid/widget/TabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    #@29
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    #@2c
    .line 214
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->-get1(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    #@2f
    move-result-object v1

    #@30
    instance-of v1, v1, Landroid/widget/TabHost$ViewIndicatorStrategy;

    #@32
    if-eqz v1, :cond_2

    #@34
    .line 215
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    #@36
    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    #@39
    .line 218
    :cond_2
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    #@3b
    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->addView(Landroid/view/View;)V

    #@3e
    .line 219
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    #@40
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@43
    .line 221
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@45
    const/4 v2, -0x1

    #@46
    if-ne v1, v2, :cond_3

    #@48
    .line 222
    invoke-virtual {p0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    #@4b
    .line 200
    :cond_3
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    #@0
    .prologue
    .line 231
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    #@2
    invoke-virtual {v0}, Landroid/widget/TabWidget;->removeAllViews()V

    #@5
    .line 232
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    #@8
    .line 233
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    #@a
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    #@d
    .line 234
    iget-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    #@f
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@12
    .line 235
    invoke-virtual {p0}, Landroid/widget/TabHost;->requestLayout()V

    #@15
    .line 236
    invoke-virtual {p0}, Landroid/widget/TabHost;->invalidate()V

    #@18
    .line 230
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "event"    # Landroid/view/KeyEvent;

    #@0
    .prologue
    .line 306
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    #@3
    move-result v1

    #@4
    .line 311
    .local v1, "handled":Z
    if-nez v1, :cond_0

    #@6
    .line 312
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    #@9
    move-result v4

    #@a
    if-nez v4, :cond_0

    #@c
    .line 313
    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 314
    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    #@12
    invoke-virtual {v4}, Landroid/view/View;->isRootNamespace()Z

    #@15
    move-result v4

    #@16
    .line 311
    if-eqz v4, :cond_0

    #@18
    .line 315
    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    #@1a
    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    #@1d
    move-result v4

    #@1e
    .line 311
    if-eqz v4, :cond_0

    #@20
    .line 316
    const/16 v2, 0x13

    #@22
    .line 317
    .local v2, "keyCodeShouldChangeFocus":I
    const/16 v0, 0x21

    #@24
    .line 318
    .local v0, "directionShouldChangeFocus":I
    const/4 v3, 0x2

    #@25
    .line 320
    .local v3, "soundEffect":I
    invoke-direct {p0}, Landroid/widget/TabHost;->getTabWidgetLocation()I

    #@28
    move-result v4

    #@29
    packed-switch v4, :pswitch_data_0

    #@2c
    .line 338
    :pswitch_0
    const/16 v2, 0x13

    #@2e
    .line 339
    const/16 v0, 0x21

    #@30
    .line 340
    const/4 v3, 0x2

    #@31
    .line 343
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    #@34
    move-result v4

    #@35
    if-ne v4, v2, :cond_0

    #@37
    .line 344
    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    #@39
    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    #@3c
    move-result-object v4

    #@3d
    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    #@40
    move-result-object v4

    #@41
    if-nez v4, :cond_0

    #@43
    .line 345
    iget-object v4, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    #@45
    iget v5, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@47
    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@4a
    move-result-object v4

    #@4b
    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    #@4e
    .line 346
    invoke-virtual {p0, v3}, Landroid/widget/TabHost;->playSoundEffect(I)V

    #@51
    .line 347
    const/4 v4, 0x1

    #@52
    return v4

    #@53
    .line 322
    :pswitch_1
    const/16 v2, 0x15

    #@55
    .line 323
    const/16 v0, 0x11

    #@57
    .line 324
    const/4 v3, 0x1

    #@58
    .line 325
    goto :goto_0

    #@59
    .line 327
    :pswitch_2
    const/16 v2, 0x16

    #@5b
    .line 328
    const/16 v0, 0x42

    #@5d
    .line 329
    const/4 v3, 0x3

    #@5e
    .line 330
    goto :goto_0

    #@5f
    .line 332
    :pswitch_3
    const/16 v2, 0x14

    #@61
    .line 333
    const/16 v0, 0x82

    #@63
    .line 334
    const/4 v3, 0x4

    #@64
    .line 335
    goto :goto_0

    #@65
    .line 350
    .end local v0    # "directionShouldChangeFocus":I
    .end local v2    # "keyCodeShouldChangeFocus":I
    .end local v3    # "soundEffect":I
    :cond_0
    return v1

    #@66
    .line 320
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasFocus"    # Z

    #@0
    .prologue
    .line 356
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 357
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    #@6
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    #@9
    .line 355
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 363
    const-class v0, Landroid/widget/TabHost;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getCurrentTab()I
    .locals 1

    #@0
    .prologue
    .line 244
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@2
    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 248
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@2
    if-ltz v0, :cond_0

    #@4
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@6
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    #@8
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 249
    iget-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    #@10
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@12
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    check-cast v0, Landroid/widget/TabHost$TabSpec;

    #@18
    invoke-virtual {v0}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0

    #@1d
    .line 251
    :cond_0
    const/4 v0, 0x0

    #@1e
    return-object v0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    #@0
    .prologue
    .line 255
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@2
    if-ltz v0, :cond_0

    #@4
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@6
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    #@8
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@b
    move-result v1

    #@c
    if-ge v0, v1, :cond_0

    #@e
    .line 256
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    #@10
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@12
    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    #@15
    move-result-object v0

    #@16
    return-object v0

    #@17
    .line 258
    :cond_0
    const/4 v0, 0x0

    #@18
    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    #@0
    .prologue
    .line 262
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    #@2
    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    #@2
    return-object v0
.end method

.method public getTabWidget()Landroid/widget/TabWidget;
    .locals 1

    #@0
    .prologue
    .line 240
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    #@2
    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 115
    new-instance v0, Landroid/widget/TabHost$TabSpec;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, p1, v1}, Landroid/widget/TabHost$TabSpec;-><init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/widget/TabHost$TabSpec;)V

    #@6
    return-object v0
.end method

.method public onTouchModeChanged(Z)V
    .locals 0
    .param p1, "isInTouchMode"    # Z

    #@0
    .prologue
    .line 192
    return-void
.end method

.method public sendAccessibilityEventInternal(I)V
    .locals 0
    .param p1, "eventType"    # I

    #@0
    .prologue
    .line 175
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5
    .param p1, "index"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 367
    if-ltz p1, :cond_0

    #@3
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    #@5
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@8
    move-result v1

    #@9
    if-lt p1, v1, :cond_1

    #@b
    .line 368
    :cond_0
    return-void

    #@c
    .line 371
    :cond_1
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@e
    if-ne p1, v1, :cond_2

    #@10
    .line 372
    return-void

    #@11
    .line 376
    :cond_2
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@13
    if-eq v1, v4, :cond_3

    #@15
    .line 377
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    #@17
    iget v2, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@19
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v1

    #@1d
    check-cast v1, Landroid/widget/TabHost$TabSpec;

    #@1f
    invoke-static {v1}, Landroid/widget/TabHost$TabSpec;->-get0(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    #@22
    move-result-object v1

    #@23
    invoke-interface {v1}, Landroid/widget/TabHost$ContentStrategy;->tabClosed()V

    #@26
    .line 380
    :cond_3
    iput p1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@28
    .line 381
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    #@2a
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Landroid/widget/TabHost$TabSpec;

    #@30
    .line 385
    .local v0, "spec":Landroid/widget/TabHost$TabSpec;
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    #@32
    iget v2, p0, Landroid/widget/TabHost;->mCurrentTab:I

    #@34
    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->focusCurrentTab(I)V

    #@37
    .line 388
    invoke-static {v0}, Landroid/widget/TabHost$TabSpec;->-get0(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    #@3a
    move-result-object v1

    #@3b
    invoke-interface {v1}, Landroid/widget/TabHost$ContentStrategy;->getContentView()Landroid/view/View;

    #@3e
    move-result-object v1

    #@3f
    iput-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    #@41
    .line 390
    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    #@43
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    #@46
    move-result-object v1

    #@47
    if-nez v1, :cond_4

    #@49
    .line 391
    iget-object v1, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    #@4b
    .line 393
    iget-object v2, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    #@4d
    .line 394
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    #@4f
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    #@52
    .line 391
    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    #@55
    .line 399
    :cond_4
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    #@57
    invoke-virtual {v1}, Landroid/widget/TabWidget;->hasFocus()Z

    #@5a
    move-result v1

    #@5b
    if-nez v1, :cond_5

    #@5d
    .line 402
    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    #@5f
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    #@62
    .line 406
    :cond_5
    invoke-direct {p0}, Landroid/widget/TabHost;->invokeOnTabChangeListener()V

    #@65
    .line 366
    return-void
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    #@0
    .prologue
    .line 267
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    #@3
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@6
    move-result v1

    #@7
    if-ge v0, v1, :cond_0

    #@9
    .line 268
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    #@b
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e
    move-result-object v1

    #@f
    check-cast v1, Landroid/widget/TabHost$TabSpec;

    #@11
    invoke-virtual {v1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    if-eqz v1, :cond_1

    #@1b
    .line 269
    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    #@1e
    .line 265
    :cond_0
    return-void

    #@1f
    .line 267
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@21
    goto :goto_0
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/TabHost$OnTabChangeListener;

    #@0
    .prologue
    .line 416
    iput-object p1, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    #@2
    .line 415
    return-void
.end method

.method public setup()V
    .locals 2

    #@0
    .prologue
    .line 130
    const v0, 0x1020013

    #@3
    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/widget/TabWidget;

    #@9
    iput-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    #@b
    .line 131
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    #@d
    if-nez v0, :cond_0

    #@f
    .line 132
    new-instance v0, Ljava/lang/RuntimeException;

    #@11
    .line 133
    const-string/jumbo v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    #@14
    .line 132
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 138
    :cond_0
    new-instance v0, Landroid/widget/TabHost$1;

    #@1a
    invoke-direct {v0, p0}, Landroid/widget/TabHost$1;-><init>(Landroid/widget/TabHost;)V

    #@1d
    iput-object v0, p0, Landroid/widget/TabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    #@1f
    .line 156
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    #@21
    new-instance v1, Landroid/widget/TabHost$2;

    #@23
    invoke-direct {v1, p0}, Landroid/widget/TabHost$2;-><init>(Landroid/widget/TabHost;)V

    #@26
    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V

    #@29
    .line 165
    const v0, 0x1020011

    #@2c
    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    #@2f
    move-result-object v0

    #@30
    check-cast v0, Landroid/widget/FrameLayout;

    #@32
    iput-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    #@34
    .line 166
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    #@36
    if-nez v0, :cond_1

    #@38
    .line 167
    new-instance v0, Ljava/lang/RuntimeException;

    #@3a
    .line 168
    const-string/jumbo v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    #@3d
    .line 167
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@40
    throw v0

    #@41
    .line 129
    :cond_1
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .param p1, "activityGroup"    # Landroid/app/LocalActivityManager;

    #@0
    .prologue
    .line 187
    invoke-virtual {p0}, Landroid/widget/TabHost;->setup()V

    #@3
    .line 188
    iput-object p1, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    #@5
    .line 186
    return-void
.end method
