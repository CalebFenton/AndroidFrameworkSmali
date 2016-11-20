.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 1243
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@2
    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    #@4
    iput p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->val$column:I

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 1246
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@2
    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@4
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    #@6
    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    #@8
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->val$column:I

    #@a
    aget v1, v1, v2

    #@c
    const/4 v2, 0x0

    #@d
    const/4 v3, 0x1

    #@e
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    #@11
    .line 1245
    return-void
.end method
