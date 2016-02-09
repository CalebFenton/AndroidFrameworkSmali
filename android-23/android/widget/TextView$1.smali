.class Landroid/widget/TextView$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TextView;

.field final synthetic val$error:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/TextView;
    .param p2, "val$error"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 4098
    iput-object p1, p0, Landroid/widget/TextView$1;->this$0:Landroid/widget/TextView;

    #@2
    iput-object p2, p0, Landroid/widget/TextView$1;->val$error:Ljava/lang/CharSequence;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 4100
    iget-object v0, p0, Landroid/widget/TextView$1;->this$0:Landroid/widget/TextView;

    #@2
    invoke-static {v0}, Landroid/widget/TextView;->-get1(Landroid/widget/TextView;)Landroid/widget/Editor;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-object v0, p0, Landroid/widget/TextView$1;->this$0:Landroid/widget/TextView;

    #@a
    invoke-static {v0}, Landroid/widget/TextView;->-get1(Landroid/widget/TextView;)Landroid/widget/Editor;

    #@d
    move-result-object v0

    #@e
    iget-boolean v0, v0, Landroid/widget/Editor;->mErrorWasChanged:Z

    #@10
    if-eqz v0, :cond_0

    #@12
    .line 4099
    :goto_0
    return-void

    #@13
    .line 4101
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$1;->this$0:Landroid/widget/TextView;

    #@15
    iget-object v1, p0, Landroid/widget/TextView$1;->val$error:Ljava/lang/CharSequence;

    #@17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    #@1a
    goto :goto_0
.end method
