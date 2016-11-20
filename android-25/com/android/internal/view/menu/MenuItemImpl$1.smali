.class Lcom/android/internal/view/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "MenuItemImpl.java"

# interfaces
.implements Landroid/view/ActionProvider$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/MenuItemImpl;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/MenuItemImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/menu/MenuItemImpl;

    #@0
    .prologue
    .line 602
    iput-object p1, p0, Lcom/android/internal/view/menu/MenuItemImpl$1;->this$0:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    #@0
    .prologue
    .line 604
    iget-object v0, p0, Lcom/android/internal/view/menu/MenuItemImpl$1;->this$0:Lcom/android/internal/view/menu/MenuItemImpl;

    #@2
    invoke-static {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->-get0(Lcom/android/internal/view/menu/MenuItemImpl;)Lcom/android/internal/view/menu/MenuBuilder;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/internal/view/menu/MenuItemImpl$1;->this$0:Lcom/android/internal/view/menu/MenuItemImpl;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder;->onItemVisibleChanged(Lcom/android/internal/view/menu/MenuItemImpl;)V

    #@b
    .line 603
    return-void
.end method
