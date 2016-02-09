.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;
.super Ljava/lang/Object;
.source "ChooserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 987
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@2
    iput p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->val$itemIndex:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 990
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    #@2
    iget-object v0, v0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    #@4
    iget v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$2;->val$itemIndex:I

    #@6
    const/4 v2, 0x0

    #@7
    const/4 v3, 0x1

    #@8
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/app/ChooserActivity;->startSelected(IZZ)V

    #@b
    .line 989
    return-void
.end method
