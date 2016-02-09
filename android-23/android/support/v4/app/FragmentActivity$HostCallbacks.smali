.class Landroid/support/v4/app/FragmentActivity$HostCallbacks;
.super Landroid/support/v4/app/FragmentHostCallback;
.source "FragmentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/FragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/app/FragmentHostCallback",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v4/app/FragmentActivity;

    #@0
    .prologue
    .line 840
    iput-object p1, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    #@2
    .line 841
    invoke-direct {p0, p1}, Landroid/support/v4/app/FragmentHostCallback;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    #@5
    .line 840
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 900
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->onAttachFragment(Landroid/support/v4/app/Fragment;)V

    #@5
    .line 899
    return-void
.end method

.method public onDump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 846
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/support/v4/app/FragmentActivity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5
    .line 845
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    #@0
    .prologue
    .line 906
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    #@2
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onGetHost()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    #@0
    .prologue
    .line 861
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    #@2
    return-object v0
.end method

.method public bridge synthetic onGetHost()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 860
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->onGetHost()Landroid/support/v4/app/FragmentActivity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    #@0
    .prologue
    .line 856
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    #@8
    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 2

    #@0
    .prologue
    .line 894
    iget-object v1, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    #@2
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    #@5
    move-result-object v0

    #@6
    .line 895
    .local v0, "w":Landroid/view/Window;
    if-nez v0, :cond_0

    #@8
    const/4 v1, 0x0

    #@9
    :goto_0
    return v1

    #@a
    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    #@d
    move-result-object v1

    #@e
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    #@10
    goto :goto_0
.end method

.method public onHasView()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 911
    iget-object v2, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    #@3
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    #@6
    move-result-object v0

    #@7
    .line 912
    .local v0, "w":Landroid/view/Window;
    if-eqz v0, :cond_0

    #@9
    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    #@c
    move-result-object v2

    #@d
    if-eqz v2, :cond_0

    #@f
    const/4 v1, 0x1

    #@10
    :cond_0
    return v1
.end method

.method public onHasWindowAnimations()Z
    .locals 1

    #@0
    .prologue
    .line 889
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    #@5
    move-result-object v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I

    #@0
    .prologue
    .line 877
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    #@2
    invoke-static {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->-wrap0(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    #@5
    .line 876
    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/support/v4/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;

    #@0
    .prologue
    .line 851
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    #@0
    .prologue
    .line 884
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    #@2
    .line 883
    invoke-static {v0, p1}, Landroid/support/v4/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .param p1, "fragment"    # Landroid/support/v4/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    #@0
    .prologue
    .line 871
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    #@5
    .line 870
    return-void
.end method

.method public onSupportInvalidateOptionsMenu()V
    .locals 1

    #@0
    .prologue
    .line 866
    iget-object v0, p0, Landroid/support/v4/app/FragmentActivity$HostCallbacks;->this$0:Landroid/support/v4/app/FragmentActivity;

    #@2
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    #@5
    .line 865
    return-void
.end method
