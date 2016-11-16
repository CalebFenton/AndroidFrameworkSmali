.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field final synthetic val$column:I

.field final synthetic val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    .param p2, "val$holder"    # Lcom/android/internal/app/ChooserActivity$RowViewHolder;
    .param p3, "val$column"    # I

    #@0
    .prologue
    .line 1249
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@2
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    #@4
    iput p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->val$column:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1252
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@3
    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@5
    .line 1253
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@7
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@a
    move-result-object v1

    #@b
    .line 1254
    iget-object v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    #@d
    iget-object v2, v2, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    #@f
    iget v3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->val$column:I

    #@11
    aget v2, v2, v3

    #@13
    .line 1253
    invoke-virtual {v1, v2, v4}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    #@16
    move-result-object v1

    #@17
    .line 1252
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    #@1a
    .line 1255
    return v4
.end method
