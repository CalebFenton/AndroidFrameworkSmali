.class Landroid/accounts/ChooseAccountActivity$1;
.super Ljava/lang/Object;
.source "ChooseAccountActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/accounts/ChooseAccountActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/accounts/ChooseAccountActivity;


# direct methods
.method constructor blacklist <init>(Landroid/accounts/ChooseAccountActivity;)V
    .registers 2
    .param p1, "this$0"    # Landroid/accounts/ChooseAccountActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 106
    iput-object p1, p0, Landroid/accounts/ChooseAccountActivity$1;->this$0:Landroid/accounts/ChooseAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
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

    .line 108
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/accounts/ChooseAccountActivity$1;->this$0:Landroid/accounts/ChooseAccountActivity;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .end local p2    # "v":Landroid/view/View;
    .end local p3    # "position":I
    .end local p4    # "id":J
    .local v2, "v":Landroid/view/View;
    .local v3, "position":I
    .local v4, "id":J
    invoke-virtual/range {v0 .. v5}, Landroid/accounts/ChooseAccountActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 109
    return-void
.end method
