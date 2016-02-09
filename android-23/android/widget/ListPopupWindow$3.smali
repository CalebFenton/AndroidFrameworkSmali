.class Landroid/widget/ListPopupWindow$3;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ListPopupWindow;->buildDropDown()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Landroid/widget/ListPopupWindow;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/ListPopupWindow;

    #@0
    .prologue
    .line 1079
    iput-object p1, p0, Landroid/widget/ListPopupWindow$3;->this$0:Landroid/widget/ListPopupWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1083
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, -0x1

    #@1
    if-eq p3, v1, :cond_0

    #@3
    .line 1084
    iget-object v1, p0, Landroid/widget/ListPopupWindow$3;->this$0:Landroid/widget/ListPopupWindow;

    #@5
    invoke-static {v1}, Landroid/widget/ListPopupWindow;->-get0(Landroid/widget/ListPopupWindow;)Landroid/widget/ListPopupWindow$DropDownListView;

    #@8
    move-result-object v0

    #@9
    .line 1086
    .local v0, "dropDownList":Landroid/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    #@b
    .line 1087
    const/4 v1, 0x0

    #@c
    invoke-static {v0, v1}, Landroid/widget/ListPopupWindow$DropDownListView;->-set0(Landroid/widget/ListPopupWindow$DropDownListView;Z)Z

    #@f
    .line 1081
    .end local v0    # "dropDownList":Landroid/widget/ListPopupWindow$DropDownListView;
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 1092
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
