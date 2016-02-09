.class Landroid/widget/NumberPicker$3;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 725
    iput-object p1, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 727
    if-eqz p2, :cond_0

    #@3
    .line 728
    iget-object v0, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    #@5
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    #@c
    .line 726
    :goto_0
    return-void

    #@d
    .line 730
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    #@f
    invoke-static {v0}, Landroid/widget/NumberPicker;->-get7(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    #@16
    .line 731
    iget-object v0, p0, Landroid/widget/NumberPicker$3;->this$0:Landroid/widget/NumberPicker;

    #@18
    invoke-static {v0, p1}, Landroid/widget/NumberPicker;->-wrap9(Landroid/widget/NumberPicker;Landroid/view/View;)V

    #@1b
    goto :goto_0
.end method
