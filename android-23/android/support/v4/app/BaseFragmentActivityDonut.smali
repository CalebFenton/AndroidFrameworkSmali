.class abstract Landroid/support/v4/app/BaseFragmentActivityDonut;
.super Landroid/app/Activity;
.source "BaseFragmentActivityDonut.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method abstract dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    const/16 v1, 0xb

    #@4
    if-ge v0, v1, :cond_0

    #@6
    invoke-virtual {p0}, Landroid/support/v4/app/BaseFragmentActivityDonut;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@9
    move-result-object v0

    #@a
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    #@d
    move-result-object v0

    #@e
    if-nez v0, :cond_0

    #@10
    .line 36
    invoke-virtual {p0}, Landroid/support/v4/app/BaseFragmentActivityDonut;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@13
    move-result-object v0

    #@14
    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    #@17
    .line 39
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    #@1a
    .line 32
    return-void
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 44
    invoke-virtual {p0, v1, p1, p2, p3}, Landroid/support/v4/app/BaseFragmentActivityDonut;->dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@4
    move-result-object v0

    #@5
    .line 45
    .local v0, "v":Landroid/view/View;
    if-nez v0, :cond_0

    #@7
    .line 46
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    #@a
    move-result-object v1

    #@b
    return-object v1

    #@c
    .line 48
    :cond_0
    return-object v0
.end method
