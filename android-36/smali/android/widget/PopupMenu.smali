.class public Landroid/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupMenu$OnMenuItemClickListener;,
        Landroid/widget/PopupMenu$OnDismissListener;
    }
.end annotation


# instance fields
.field private final greylist-max-o mAnchor:Landroid/view/View;

.field private final greylist-max-r mContext:Landroid/content/Context;

.field private greylist-max-o mDragListener:Landroid/view/View$OnTouchListener;

.field private final greylist-max-o mMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private greylist-max-o mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private greylist-max-o mOnDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

.field private final greylist mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmMenuItemClickListener(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnMenuItemClickListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupMenu;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOnDismissListener(Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu$OnDismissListener;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupMenu;->mOnDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPopup(Landroid/widget/PopupMenu;)Lcom/android/internal/view/menu/MenuPopupHelper;
    .registers 1

    iget-object p0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    return-object p0
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 65
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/View;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "gravity"    # I

    .line 79
    const v4, 0x1010300

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "anchor":Landroid/view/View;
    .end local p3    # "gravity":I
    .local v1, "context":Landroid/content/Context;
    .local v2, "anchor":Landroid/view/View;
    .local v3, "gravity":I
    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    .line 80
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/view/View;III)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "gravity"    # I
    .param p4, "popupStyleAttr"    # I
    .param p5, "popupStyleRes"    # I

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Landroid/widget/PopupMenu;->mContext:Landroid/content/Context;

    .line 102
    iput-object p2, p0, Landroid/widget/PopupMenu;->mAnchor:Landroid/view/View;

    .line 104
    new-instance v0, Lcom/android/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Lcom/android/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 105
    iget-object v0, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    new-instance v1, Landroid/widget/PopupMenu$1;

    invoke-direct {v1, p0}, Landroid/widget/PopupMenu$1;-><init>(Landroid/widget/PopupMenu;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->setCallback(Lcom/android/internal/view/menu/MenuBuilder$Callback;)V

    .line 119
    new-instance v2, Lcom/android/internal/view/menu/MenuPopupHelper;

    iget-object v4, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    const/4 v6, 0x0

    move-object v3, p1

    move-object v5, p2

    move v7, p4

    move v8, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "anchor":Landroid/view/View;
    .end local p4    # "popupStyleAttr":I
    .end local p5    # "popupStyleRes":I
    .local v3, "context":Landroid/content/Context;
    .local v5, "anchor":Landroid/view/View;
    .local v7, "popupStyleAttr":I
    .local v8, "popupStyleRes":I
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    iput-object v2, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    .line 120
    iget-object p1, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {p1, p3}, Lcom/android/internal/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 121
    iget-object p1, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    new-instance p2, Landroid/widget/PopupMenu$2;

    invoke-direct {p2, p0}, Landroid/widget/PopupMenu$2;-><init>(Landroid/widget/PopupMenu;)V

    invoke-virtual {p1, p2}, Lcom/android/internal/view/menu/MenuPopupHelper;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 129
    return-void
.end method


# virtual methods
.method public whitelist dismiss()V
    .registers 2

    .line 240
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 241
    return-void
.end method

.method public whitelist getDragToOpenListener()Landroid/view/View$OnTouchListener;
    .registers 3

    .line 169
    iget-object v0, p0, Landroid/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_d

    .line 170
    new-instance v0, Landroid/widget/PopupMenu$3;

    iget-object v1, p0, Landroid/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Landroid/widget/PopupMenu$3;-><init>(Landroid/widget/PopupMenu;Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    .line 191
    :cond_d
    iget-object v0, p0, Landroid/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public whitelist getGravity()I
    .registers 2

    .line 149
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getGravity()I

    move-result v0

    return v0
.end method

.method public whitelist getMenu()Landroid/view/Menu;
    .registers 2

    .line 203
    iget-object v0, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public whitelist getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 212
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Landroid/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public blacklist getMenuListView()Landroid/widget/ListView;
    .registers 2

    .line 312
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-nez v0, :cond_a

    .line 313
    const/4 v0, 0x0

    return-object v0

    .line 315
    :cond_a
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->getPopup()Lcom/android/internal/view/menu/MenuPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopup;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public whitelist inflate(I)V
    .registers 4
    .param p1, "menuRes"    # I

    .line 222
    invoke-virtual {p0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/PopupMenu;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 223
    return-void
.end method

.method public whitelist setForceShowIcon(Z)V
    .registers 3
    .param p1, "forceShowIcon"    # Z

    .line 272
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setForceShowIcon(Z)V

    .line 273
    return-void
.end method

.method public whitelist setGravity(I)V
    .registers 3
    .param p1, "gravity"    # I

    .line 141
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 142
    return-void
.end method

.method public whitelist setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/PopupMenu$OnDismissListener;

    .line 259
    iput-object p1, p0, Landroid/widget/PopupMenu;->mOnDismissListener:Landroid/widget/PopupMenu$OnDismissListener;

    .line 260
    return-void
.end method

.method public whitelist setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 250
    iput-object p1, p0, Landroid/widget/PopupMenu;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    .line 251
    return-void
.end method

.method public whitelist show()V
    .registers 2

    .line 231
    iget-object v0, p0, Landroid/widget/PopupMenu;->mPopup:Lcom/android/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuPopupHelper;->show()V

    .line 232
    return-void
.end method
