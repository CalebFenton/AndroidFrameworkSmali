.class Lcom/android/internal/view/menu/IconMenuView$1;
.super Ljava/lang/Object;
.source "IconMenuView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/view/menu/IconMenuView;->createMoreItemView()Lcom/android/internal/view/menu/IconMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/IconMenuView;


# direct methods
.method constructor <init>(Lcom/android/internal/view/menu/IconMenuView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/view/menu/IconMenuView;

    #@0
    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/internal/view/menu/IconMenuView$1;->this$0:Lcom/android/internal/view/menu/IconMenuView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/internal/view/menu/IconMenuView$1;->this$0:Lcom/android/internal/view/menu/IconMenuView;

    #@2
    invoke-static {v0}, Lcom/android/internal/view/menu/IconMenuView;->-get0(Lcom/android/internal/view/menu/IconMenuView;)Lcom/android/internal/view/menu/MenuBuilder;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->changeMenuMode()V

    #@9
    .line 304
    return-void
.end method
