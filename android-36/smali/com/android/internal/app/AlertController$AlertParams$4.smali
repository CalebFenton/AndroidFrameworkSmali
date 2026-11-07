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
.field final synthetic blacklist this$0:Lcom/android/internal/app/AlertController$AlertParams;

.field final synthetic blacklist val$dialog:Lcom/android/internal/app/AlertController;

.field final synthetic blacklist val$listView:Lcom/android/internal/app/AlertController$RecycleListView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/internal/app/AlertController$AlertParams;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1294
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    iput-object p3, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$dialog:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1297
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    if-eqz v0, :cond_12

    .line 1298
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    invoke-virtual {v1, p3}, Lcom/android/internal/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v1

    aput-boolean v1, v0, p3

    .line 1300
    :cond_12
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$dialog:Lcom/android/internal/app/AlertController;

    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-$$Nest$fgetmDialogInterface(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    .line 1301
    invoke-virtual {v2, p3}, Lcom/android/internal/app/AlertController$RecycleListView;->isItemChecked(I)Z

    move-result v2

    .line 1300
    invoke-interface {v0, v1, p3, v2}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 1302
    return-void
.end method
