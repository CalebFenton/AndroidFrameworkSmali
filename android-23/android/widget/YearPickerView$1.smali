.class Landroid/widget/YearPickerView$1;
.super Ljava/lang/Object;
.source "YearPickerView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/YearPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/YearPickerView;


# direct methods
.method constructor <init>(Landroid/widget/YearPickerView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/YearPickerView;

    #@0
    .prologue
    .line 62
    iput-object p1, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    #@0
    .prologue
    .line 65
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    #@2
    invoke-static {v1}, Landroid/widget/YearPickerView;->-get0(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$YearAdapter;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p3}, Landroid/widget/YearPickerView$YearAdapter;->getYearForPosition(I)I

    #@9
    move-result v0

    #@a
    .line 66
    .local v0, "year":I
    iget-object v1, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    #@c
    invoke-static {v1}, Landroid/widget/YearPickerView;->-get0(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$YearAdapter;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, v0}, Landroid/widget/YearPickerView$YearAdapter;->setSelection(I)Z

    #@13
    .line 68
    iget-object v1, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    #@15
    invoke-static {v1}, Landroid/widget/YearPickerView;->-get1(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$OnYearSelectedListener;

    #@18
    move-result-object v1

    #@19
    if-eqz v1, :cond_0

    #@1b
    .line 69
    iget-object v1, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    #@1d
    invoke-static {v1}, Landroid/widget/YearPickerView;->-get1(Landroid/widget/YearPickerView;)Landroid/widget/YearPickerView$OnYearSelectedListener;

    #@20
    move-result-object v1

    #@21
    iget-object v2, p0, Landroid/widget/YearPickerView$1;->this$0:Landroid/widget/YearPickerView;

    #@23
    invoke-interface {v1, v2, v0}, Landroid/widget/YearPickerView$OnYearSelectedListener;->onYearChanged(Landroid/widget/YearPickerView;I)V

    #@26
    .line 64
    :cond_0
    return-void
.end method
