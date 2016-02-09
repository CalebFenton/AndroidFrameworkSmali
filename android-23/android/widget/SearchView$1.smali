.class Landroid/widget/SearchView$1;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
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
    .line 153
    iput-object p1, p0, Landroid/widget/SearchView$1;->this$0:Landroid/widget/SearchView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 156
    iget-object v1, p0, Landroid/widget/SearchView$1;->this$0:Landroid/widget/SearchView;

    #@3
    invoke-virtual {v1}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    #@6
    move-result-object v1

    #@7
    const-string/jumbo v2, "input_method"

    #@a
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    .line 155
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    #@10
    .line 158
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    #@12
    .line 159
    const/4 v1, 0x0

    #@13
    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInputUnchecked(ILandroid/os/ResultReceiver;)V

    #@16
    .line 154
    :cond_0
    return-void
.end method
