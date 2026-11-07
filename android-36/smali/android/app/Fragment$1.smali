.class Landroid/app/Fragment$1;
.super Landroid/app/FragmentContainer;
.source "Fragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/Fragment;->instantiateChildFragmentManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/Fragment;


# direct methods
.method constructor blacklist <init>(Landroid/app/Fragment;)V
    .registers 2
    .param p1, "this$0"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 2468
    iput-object p1, p0, Landroid/app/Fragment$1;->this$0:Landroid/app/Fragment;

    invoke-direct {p0}, Landroid/app/FragmentContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onFindViewById(I)Landroid/view/View;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 2472
    iget-object v0, p0, Landroid/app/Fragment$1;->this$0:Landroid/app/Fragment;

    iget-object v0, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_f

    .line 2475
    iget-object v0, p0, Landroid/app/Fragment$1;->this$0:Landroid/app/Fragment;

    iget-object v0, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 2473
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Fragment does not have a view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist onHasView()Z
    .registers 2

    .line 2480
    iget-object v0, p0, Landroid/app/Fragment$1;->this$0:Landroid/app/Fragment;

    iget-object v0, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
