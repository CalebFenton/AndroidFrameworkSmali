.class Landroid/app/ListFragment$1;
.super Ljava/lang/Object;
.source "ListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ListFragment;


# direct methods
.method constructor <init>(Landroid/app/ListFragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ListFragment;

    #@0
    .prologue
    .line 151
    iput-object p1, p0, Landroid/app/ListFragment$1;->this$0:Landroid/app/ListFragment;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    #@0
    .prologue
    .line 153
    iget-object v0, p0, Landroid/app/ListFragment$1;->this$0:Landroid/app/ListFragment;

    #@2
    iget-object v0, v0, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@4
    iget-object v1, p0, Landroid/app/ListFragment$1;->this$0:Landroid/app/ListFragment;

    #@6
    iget-object v1, v1, Landroid/app/ListFragment;->mList:Landroid/widget/ListView;

    #@8
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->focusableViewAvailable(Landroid/view/View;)V

    #@b
    .line 152
    return-void
.end method
