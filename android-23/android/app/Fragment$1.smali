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
.field final synthetic this$0:Landroid/app/Fragment;


# direct methods
.method constructor <init>(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 2176
    iput-object p1, p0, Landroid/app/Fragment$1;->this$0:Landroid/app/Fragment;

    #@2
    invoke-direct {p0}, Landroid/app/FragmentContainer;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onFindViewById(I)Landroid/view/View;
    .locals 2
    .param p1, "id"    # I

    #@0
    .prologue
    .line 2180
    iget-object v0, p0, Landroid/app/Fragment$1;->this$0:Landroid/app/Fragment;

    #@2
    iget-object v0, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@4
    if-nez v0, :cond_0

    #@6
    .line 2181
    new-instance v0, Ljava/lang/IllegalStateException;

    #@8
    const-string/jumbo v1, "Fragment does not have a view"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 2183
    :cond_0
    iget-object v0, p0, Landroid/app/Fragment$1;->this$0:Landroid/app/Fragment;

    #@11
    iget-object v0, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@13
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    #@16
    move-result-object v0

    #@17
    return-object v0
.end method

.method public onHasView()Z
    .locals 1

    #@0
    .prologue
    .line 2188
    iget-object v0, p0, Landroid/app/Fragment$1;->this$0:Landroid/app/Fragment;

    #@2
    iget-object v0, v0, Landroid/app/Fragment;->mView:Landroid/view/View;

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method
