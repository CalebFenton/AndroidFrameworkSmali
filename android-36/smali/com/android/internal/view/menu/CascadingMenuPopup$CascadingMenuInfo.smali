.class Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;
.super Ljava/lang/Object;
.source "CascadingMenuPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/CascadingMenuPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CascadingMenuInfo"
.end annotation


# instance fields
.field public final blacklist menu:Lcom/android/internal/view/menu/MenuBuilder;

.field public final blacklist position:I

.field public final blacklist window:Landroid/widget/MenuPopupWindow;


# direct methods
.method public constructor blacklist <init>(Landroid/widget/MenuPopupWindow;Lcom/android/internal/view/menu/MenuBuilder;I)V
    .registers 4
    .param p1, "window"    # Landroid/widget/MenuPopupWindow;
    .param p2, "menu"    # Lcom/android/internal/view/menu/MenuBuilder;
    .param p3, "position"    # I

    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 738
    iput-object p1, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    .line 739
    iput-object p2, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->menu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 740
    iput p3, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->position:I

    .line 741
    return-void
.end method


# virtual methods
.method public blacklist getListView()Landroid/widget/ListView;
    .registers 2

    .line 744
    iget-object v0, p0, Lcom/android/internal/view/menu/CascadingMenuPopup$CascadingMenuInfo;->window:Landroid/widget/MenuPopupWindow;

    invoke-virtual {v0}, Landroid/widget/MenuPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method
