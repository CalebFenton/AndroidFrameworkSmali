.class Lcom/android/internal/app/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "AlertController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lcom/android/internal/app/AlertController;

.field final synthetic val$listView:Lcom/android/internal/app/AlertController$RecycleListView;


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p2, "val$listView"    # Lcom/android/internal/app/AlertController$RecycleListView;
    .param p3, "val$dialog"    # Lcom/android/internal/app/AlertController;

    #@0
    .prologue
    .line 1115
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p2, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    #@4
    iput-object p3, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$dialog:Lcom/android/internal/app/AlertController;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "v"    # Landroid/view/View;
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
    .line 1118
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 1119
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    #@8
    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    #@a
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    #@c
    invoke-virtual {v1, p3}, Lcom/android/internal/app/AlertController$RecycleListView;->isItemChecked(I)Z

    #@f
    move-result v1

    #@10
    aput-boolean v1, v0, p3

    #@12
    .line 1121
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    #@14
    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    #@16
    .line 1122
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$dialog:Lcom/android/internal/app/AlertController;

    #@18
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get7(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    #@1b
    move-result-object v1

    #@1c
    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    #@1e
    invoke-virtual {v2, p3}, Lcom/android/internal/app/AlertController$RecycleListView;->isItemChecked(I)Z

    #@21
    move-result v2

    #@22
    .line 1121
    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    #@25
    .line 1117
    return-void
.end method
