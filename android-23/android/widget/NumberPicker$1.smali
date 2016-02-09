.class Landroid/widget/NumberPicker$1;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/NumberPicker;

    #@0
    .prologue
    .line 680
    iput-object p1, p0, Landroid/widget/NumberPicker$1;->this$0:Landroid/widget/NumberPicker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Landroid/widget/NumberPicker$1;->this$0:Landroid/widget/NumberPicker;

    #@2
    invoke-static {v0}, Landroid/widget/NumberPicker;->-wrap6(Landroid/widget/NumberPicker;)V

    #@5
    .line 683
    iget-object v0, p0, Landroid/widget/NumberPicker$1;->this$0:Landroid/widget/NumberPicker;

    #@7
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    #@e
    .line 684
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@11
    move-result v0

    #@12
    const v1, 0x1020381

    #@15
    if-ne v0, v1, :cond_0

    #@17
    .line 685
    iget-object v0, p0, Landroid/widget/NumberPicker$1;->this$0:Landroid/widget/NumberPicker;

    #@19
    const/4 v1, 0x1

    #@1a
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-wrap5(Landroid/widget/NumberPicker;Z)V

    #@1d
    .line 681
    :goto_0
    return-void

    #@1e
    .line 687
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker$1;->this$0:Landroid/widget/NumberPicker;

    #@20
    const/4 v1, 0x0

    #@21
    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-wrap5(Landroid/widget/NumberPicker;Z)V

    #@24
    goto :goto_0
.end method
