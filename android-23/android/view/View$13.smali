.class Landroid/view/View$13;
.super Ljava/lang/Object;
.source "View.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/View;->findUserSetNextFocus(Landroid/view/View;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/View;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0
    .param p1, "this$0"    # Landroid/view/View;
    .param p2, "val$id"    # I

    #@0
    .prologue
    .line 8135
    iput-object p1, p0, Landroid/view/View$13;->this$0:Landroid/view/View;

    #@2
    iput p2, p0, Landroid/view/View$13;->val$id:I

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;)Z
    .locals 2
    .param p1, "t"    # Landroid/view/View;

    #@0
    .prologue
    .line 8138
    iget v0, p1, Landroid/view/View;->mNextFocusForwardId:I

    #@2
    iget v1, p0, Landroid/view/View$13;->val$id:I

    #@4
    if-ne v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "t"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 8137
    check-cast p1, Landroid/view/View;

    #@2
    .end local p1    # "t":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/view/View$13;->apply(Landroid/view/View;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
