.class Landroid/widget/Spinner$DropdownPopup$1;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Spinner$DropdownPopup;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/Spinner$DropdownPopup;


# direct methods
.method constructor <init>(Landroid/widget/Spinner$DropdownPopup;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/Spinner$DropdownPopup;

    #@0
    .prologue
    .line 1153
    iput-object p1, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    #@0
    .prologue
    .line 1155
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    #@2
    iget-object v0, v0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@4
    invoke-virtual {v0, p3}, Landroid/widget/Spinner;->setSelection(I)V

    #@7
    .line 1156
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    #@9
    iget-object v0, v0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@b
    iget-object v0, v0, Landroid/widget/Spinner;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    #@d
    if-eqz v0, :cond_0

    #@f
    .line 1157
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    #@11
    iget-object v0, v0, Landroid/widget/Spinner$DropdownPopup;->this$0:Landroid/widget/Spinner;

    #@13
    iget-object v1, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    #@15
    invoke-static {v1}, Landroid/widget/Spinner$DropdownPopup;->-get0(Landroid/widget/Spinner$DropdownPopup;)Landroid/widget/ListAdapter;

    #@18
    move-result-object v1

    #@19
    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItemId(I)J

    #@1c
    move-result-wide v2

    #@1d
    invoke-virtual {v0, p2, p3, v2, v3}, Landroid/widget/Spinner;->performItemClick(Landroid/view/View;IJ)Z

    #@20
    .line 1159
    :cond_0
    iget-object v0, p0, Landroid/widget/Spinner$DropdownPopup$1;->this$1:Landroid/widget/Spinner$DropdownPopup;

    #@22
    invoke-virtual {v0}, Landroid/widget/Spinner$DropdownPopup;->dismiss()V

    #@25
    .line 1154
    return-void
.end method
