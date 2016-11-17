.class Landroid/widget/Editor$4;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Editor;->onCreateContextMenu(Landroid/view/ContextMenu;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Editor;

.field final synthetic val$info:Landroid/widget/Editor$SuggestionInfo;


# direct methods
.method constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/Editor;
    .param p2, "val$info"    # Landroid/widget/Editor$SuggestionInfo;

    #@0
    .prologue
    .line 2515
    iput-object p1, p0, Landroid/widget/Editor$4;->this$0:Landroid/widget/Editor;

    #@2
    iput-object p2, p0, Landroid/widget/Editor$4;->val$info:Landroid/widget/Editor$SuggestionInfo;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    #@0
    .prologue
    .line 2518
    iget-object v0, p0, Landroid/widget/Editor$4;->this$0:Landroid/widget/Editor;

    #@2
    iget-object v1, p0, Landroid/widget/Editor$4;->val$info:Landroid/widget/Editor$SuggestionInfo;

    #@4
    invoke-static {v0, v1}, Landroid/widget/Editor;->-wrap18(Landroid/widget/Editor;Landroid/widget/Editor$SuggestionInfo;)V

    #@7
    .line 2519
    const/4 v0, 0x1

    #@8
    return v0
.end method
