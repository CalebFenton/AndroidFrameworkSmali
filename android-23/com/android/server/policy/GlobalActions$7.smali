.class Lcom/android/server/policy/GlobalActions$7;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions;->createDialog()Lcom/android/server/policy/GlobalActions$GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/GlobalActions;

    #@0
    .prologue
    .line 319
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
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
            "IJ)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 323
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/server/policy/GlobalActions$7;->this$0:Lcom/android/server/policy/GlobalActions;

    #@2
    invoke-static {v1}, Lcom/android/server/policy/GlobalActions;->-get0(Lcom/android/server/policy/GlobalActions;)Lcom/android/server/policy/GlobalActions$MyAdapter;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {v1, p3}, Lcom/android/server/policy/GlobalActions$MyAdapter;->getItem(I)Lcom/android/server/policy/GlobalActions$Action;

    #@9
    move-result-object v0

    #@a
    .line 324
    .local v0, "action":Lcom/android/server/policy/GlobalActions$Action;
    instance-of v1, v0, Lcom/android/server/policy/GlobalActions$LongPressAction;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 325
    check-cast v0, Lcom/android/server/policy/GlobalActions$LongPressAction;

    #@10
    .end local v0    # "action":Lcom/android/server/policy/GlobalActions$Action;
    invoke-interface {v0}, Lcom/android/server/policy/GlobalActions$LongPressAction;->onLongPress()Z

    #@13
    move-result v1

    #@14
    return v1

    #@15
    .line 327
    .restart local v0    # "action":Lcom/android/server/policy/GlobalActions$Action;
    :cond_0
    const/4 v1, 0x0

    #@16
    return v1
.end method
