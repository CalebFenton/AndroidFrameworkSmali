.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->bindViewHolder(I[Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field final synthetic val$itemIndex:I


# direct methods
.method constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;
    .param p2, "val$itemIndex"    # I

    #@0
    .prologue
    .line 993
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@2
    iput p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->val$itemIndex:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 996
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@3
    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@5
    .line 997
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@7
    invoke-static {v1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->-get0(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    #@a
    move-result-object v1

    #@b
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->val$itemIndex:I

    #@d
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    #@10
    move-result-object v1

    #@11
    .line 996
    invoke-virtual {v0, v1}, Lcom/android/internal/app/ChooserActivity;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    #@14
    .line 998
    return v3
.end method
