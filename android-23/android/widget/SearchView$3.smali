.class Landroid/widget/SearchView$3;
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
    .line 170
    iput-object p1, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 172
    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    #@3
    invoke-static {v0}, Landroid/widget/SearchView;->-get6(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;

    #@6
    move-result-object v0

    #@7
    if-eqz v0, :cond_0

    #@9
    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    #@b
    invoke-static {v0}, Landroid/widget/SearchView;->-get6(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;

    #@e
    move-result-object v0

    #@f
    instance-of v0, v0, Landroid/widget/SuggestionsAdapter;

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 173
    iget-object v0, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    #@15
    invoke-static {v0}, Landroid/widget/SearchView;->-get6(Landroid/widget/SearchView;)Landroid/widget/CursorAdapter;

    #@18
    move-result-object v0

    #@19
    invoke-virtual {v0, v1}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    #@1c
    .line 171
    :cond_0
    return-void
.end method
