.class public final Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
.super Ljava/lang/Object;
.source "FloatingToolbar.java"


# static fields
.field public static final blacklist FLOATING_TOOLBAR_TAG:Ljava/lang/String; = "floating_toolbar"

.field private static final blacklist NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field private final blacklist mContentRect:Landroid/graphics/Rect;

.field private blacklist mMenu:Landroid/view/Menu;

.field private blacklist mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private final blacklist mMenuItemComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

.field private final blacklist mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

.field private final blacklist mWindow:Landroid/view/Window;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmPopup(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;
    .registers 1

    iget-object p0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 46
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/view/Window;)V
    .registers 4
    .param p1, "window"    # Landroid/view/Window;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    .line 55
    sget-object v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 57
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$1;-><init>(Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;)V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    .line 79
    new-instance v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemComparator:Ljava/util/Comparator;

    .line 112
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Window;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mWindow:Landroid/view/Window;

    .line 113
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->createInstance(Landroid/content/Context;Landroid/view/View;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    .line 114
    return-void
.end method

.method private blacklist doShow()V
    .registers 5

    .line 225
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    invoke-static {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v0

    .line 226
    .local v0, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemComparator:Ljava/util/Comparator;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 227
    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    iget-object v2, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    iget-object v3, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-interface {v1, v0, v2, v3}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->show(Ljava/util/List;Landroid/view/MenuItem$OnMenuItemClickListener;Landroid/graphics/Rect;)V

    .line 228
    return-void
.end method

.method private static blacklist getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;
    .registers 6
    .param p0, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/Menu;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/MenuItem;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 236
    .local v0, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/view/MenuItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    if-eqz p0, :cond_32

    invoke-interface {p0}, Landroid/view/Menu;->size()I

    move-result v2

    if-ge v1, v2, :cond_32

    .line 237
    invoke-interface {p0, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 238
    .local v2, "menuItem":Landroid/view/MenuItem;
    invoke-interface {v2}, Landroid/view/MenuItem;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-interface {v2}, Landroid/view/MenuItem;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 239
    invoke-interface {v2}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v3

    .line 240
    .local v3, "subMenu":Landroid/view/Menu;
    if-eqz v3, :cond_2c

    .line 241
    invoke-static {v3}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->getVisibleAndEnabledMenuItems(Landroid/view/Menu;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2f

    .line 243
    :cond_2c
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v2    # "menuItem":Landroid/view/MenuItem;
    .end local v3    # "subMenu":Landroid/view/Menu;
    :cond_2f
    :goto_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 247
    .end local v1    # "i":I
    :cond_32
    return-object v0
.end method

.method static synthetic blacklist lambda$new$1(Landroid/view/MenuItem;Landroid/view/MenuItem;)I
    .registers 7
    .param p0, "menuItem1"    # Landroid/view/MenuItem;
    .param p1, "menuItem2"    # Landroid/view/MenuItem;

    .line 81
    invoke-interface {p0}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const v3, 0x1020041

    if-ne v0, v3, :cond_14

    .line 82
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-ne v0, v3, :cond_12

    goto :goto_13

    :cond_12
    move v1, v2

    :goto_13
    return v1

    .line 84
    :cond_14
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1c

    .line 85
    return v4

    .line 89
    :cond_1c
    invoke-interface {p0}, Landroid/view/MenuItem;->requiresActionButton()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 90
    invoke-interface {p1}, Landroid/view/MenuItem;->requiresActionButton()Z

    move-result v0

    if-eqz v0, :cond_29

    goto :goto_2a

    :cond_29
    move v1, v2

    :goto_2a
    return v1

    .line 92
    :cond_2b
    invoke-interface {p1}, Landroid/view/MenuItem;->requiresActionButton()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 93
    return v4

    .line 95
    :cond_32
    invoke-interface {p0}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 96
    invoke-interface {p1}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v0

    xor-int/2addr v0, v4

    return v0

    .line 98
    :cond_3e
    invoke-interface {p1}, Landroid/view/MenuItem;->requiresOverflow()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 99
    return v2

    .line 103
    :cond_45
    invoke-interface {p0}, Landroid/view/MenuItem;->getOrder()I

    move-result v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getOrder()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static synthetic blacklist lambda$static$0(Landroid/view/MenuItem;)Z
    .registers 2
    .param p0, "item"    # Landroid/view/MenuItem;

    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist registerOrientationHandler()V
    .registers 3

    .line 251
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->unregisterOrientationHandler()V

    .line 252
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 253
    return-void
.end method

.method private blacklist unregisterOrientationHandler()V
    .registers 3

    .line 256
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mOrientationChangeHandler:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 257
    return-void
.end method


# virtual methods
.method public blacklist dismiss()V
    .registers 2

    .line 186
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->unregisterOrientationHandler()V

    .line 187
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->dismiss()V

    .line 188
    return-void
.end method

.method public blacklist hide()V
    .registers 2

    .line 195
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->hide()V

    .line 196
    return-void
.end method

.method public blacklist isHidden()Z
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->isHidden()Z

    move-result v0

    return v0
.end method

.method public blacklist isShowing()Z
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->isShowing()Z

    move-result v0

    return v0
.end method

.method public blacklist setContentRect(Landroid/graphics/Rect;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .registers 4
    .param p1, "rect"    # Landroid/graphics/Rect;

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mContentRect:Landroid/graphics/Rect;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 147
    return-object p0
.end method

.method public blacklist setMenu(Landroid/view/Menu;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .registers 3
    .param p1, "menu"    # Landroid/view/Menu;

    .line 122
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Menu;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenu:Landroid/view/Menu;

    .line 123
    return-object p0
.end method

.method public blacklist setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .registers 3
    .param p1, "menuItemClickListener"    # Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 131
    if-eqz p1, :cond_5

    .line 132
    iput-object p1, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    goto :goto_9

    .line 134
    :cond_5
    sget-object v0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->NO_OP_MENUITEM_CLICK_LISTENER:Landroid/view/MenuItem$OnMenuItemClickListener;

    iput-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 136
    :goto_9
    return-object p0
.end method

.method public blacklist setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)V
    .registers 4
    .param p1, "outsideTouchable"    # Z
    .param p2, "onDismiss"    # Landroid/widget/PopupWindow$OnDismissListener;

    .line 221
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->setOutsideTouchable(ZLandroid/widget/PopupWindow$OnDismissListener;)Z

    .line 222
    return-void
.end method

.method public blacklist setSuggestedWidth(I)Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .registers 3
    .param p1, "suggestedWidth"    # I

    .line 158
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0, p1}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->setSuggestedWidth(I)V

    .line 159
    return-object p0
.end method

.method public blacklist show()Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .registers 1

    .line 166
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->registerOrientationHandler()V

    .line 167
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->doShow()V

    .line 168
    return-object p0
.end method

.method public blacklist updateLayout()Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;
    .registers 2

    .line 176
    iget-object v0, p0, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->mPopup:Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;

    invoke-interface {v0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 177
    invoke-direct {p0}, Lcom/android/internal/widget/floatingtoolbar/FloatingToolbar;->doShow()V

    .line 179
    :cond_b
    return-object p0
.end method
