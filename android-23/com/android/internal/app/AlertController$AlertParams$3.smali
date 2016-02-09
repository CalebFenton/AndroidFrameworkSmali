.class Lcom/android/internal/app/AlertController$AlertParams$3;
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


# direct methods
.method constructor <init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/app/AlertController$AlertParams;
    .param p2, "val$dialog"    # Lcom/android/internal/app/AlertController;

    #@0
    .prologue
    .line 1105
    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iput-object p2, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->val$dialog:Lcom/android/internal/app/AlertController;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1108
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    #@2
    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    #@4
    iget-object v1, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->val$dialog:Lcom/android/internal/app/AlertController;

    #@6
    invoke-static {v1}, Lcom/android/internal/app/AlertController;->-get7(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    #@9
    move-result-object v1

    #@a
    invoke-interface {v0, v1, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    #@d
    .line 1109
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->this$1:Lcom/android/internal/app/AlertController$AlertParams;

    #@f
    iget-boolean v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIsSingleChoice:Z

    #@11
    if-nez v0, :cond_0

    #@13
    .line 1110
    iget-object v0, p0, Lcom/android/internal/app/AlertController$AlertParams$3;->val$dialog:Lcom/android/internal/app/AlertController;

    #@15
    invoke-static {v0}, Lcom/android/internal/app/AlertController;->-get7(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    #@18
    move-result-object v0

    #@19
    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    #@1c
    .line 1107
    :cond_0
    return-void
.end method
