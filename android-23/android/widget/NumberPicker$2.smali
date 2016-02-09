.class Landroid/widget/NumberPicker$2;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 692
    iput-object p1, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 694
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #@5
    invoke-static {v0}, Landroid/widget/NumberPicker;->-wrap6(Landroid/widget/NumberPicker;)V

    #@8
    .line 695
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #@a
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    #@11
    .line 696
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    #@14
    move-result v0

    #@15
    const v1, 0x1020381

    #@18
    if-ne v0, v1, :cond_0

    #@1a
    .line 697
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #@1c
    invoke-static {v0, v2, v4, v5}, Landroid/widget/NumberPicker;->-wrap7(Landroid/widget/NumberPicker;ZJ)V

    #@1f
    .line 701
    :goto_0
    return v2

    #@20
    .line 699
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker$2;->this$0:Landroid/widget/NumberPicker;

    #@22
    const/4 v1, 0x0

    #@23
    invoke-static {v0, v1, v4, v5}, Landroid/widget/NumberPicker;->-wrap7(Landroid/widget/NumberPicker;ZJ)V

    #@26
    goto :goto_0
.end method
