.class Landroid/widget/SearchView$10;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/SearchView;

    #@0
    .prologue
    .line 320
    iput-object p1, p0, Landroid/widget/SearchView$10;->this$0:Landroid/widget/SearchView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    #@0
    .prologue
    .line 323
    iget-object v0, p0, Landroid/widget/SearchView$10;->this$0:Landroid/widget/SearchView;

    #@2
    invoke-static {v0}, Landroid/widget/SearchView;->-get2(Landroid/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 324
    iget-object v0, p0, Landroid/widget/SearchView$10;->this$0:Landroid/widget/SearchView;

    #@a
    invoke-static {v0}, Landroid/widget/SearchView;->-get2(Landroid/widget/SearchView;)Landroid/view/View$OnFocusChangeListener;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Landroid/widget/SearchView$10;->this$0:Landroid/widget/SearchView;

    #@10
    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    #@13
    .line 322
    :cond_0
    return-void
.end method
