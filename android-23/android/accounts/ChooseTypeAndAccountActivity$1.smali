.class Landroid/accounts/ChooseTypeAndAccountActivity$1;
.super Ljava/lang/Object;
.source "ChooseTypeAndAccountActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/ChooseTypeAndAccountActivity;->populateUIAccountList([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/accounts/ChooseTypeAndAccountActivity;


# direct methods
.method constructor <init>(Landroid/accounts/ChooseTypeAndAccountActivity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/accounts/ChooseTypeAndAccountActivity;

    #@0
    .prologue
    .line 563
    iput-object p1, p0, Landroid/accounts/ChooseTypeAndAccountActivity$1;->this$0:Landroid/accounts/ChooseTypeAndAccountActivity;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
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
    .line 566
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity$1;->this$0:Landroid/accounts/ChooseTypeAndAccountActivity;

    #@2
    invoke-static {v0, p3}, Landroid/accounts/ChooseTypeAndAccountActivity;->-set0(Landroid/accounts/ChooseTypeAndAccountActivity;I)I

    #@5
    .line 567
    iget-object v0, p0, Landroid/accounts/ChooseTypeAndAccountActivity$1;->this$0:Landroid/accounts/ChooseTypeAndAccountActivity;

    #@7
    invoke-static {v0}, Landroid/accounts/ChooseTypeAndAccountActivity;->-get0(Landroid/accounts/ChooseTypeAndAccountActivity;)Landroid/widget/Button;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x1

    #@c
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    #@f
    .line 565
    return-void
.end method
