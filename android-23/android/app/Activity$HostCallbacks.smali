.class Landroid/app/Activity$HostCallbacks;
.super Landroid/app/FragmentHostCallback;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HostCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/FragmentHostCallback",
        "<",
        "Landroid/app/Activity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 6567
    iput-object p1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@2
    .line 6568
    invoke-direct {p0, p1}, Landroid/app/FragmentHostCallback;-><init>(Landroid/app/Activity;)V

    #@5
    .line 6567
    return-void
.end method


# virtual methods
.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 6633
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/Activity;->onAttachFragment(Landroid/app/Fragment;)V

    #@5
    .line 6632
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
    .line 6573
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@5
    .line 6572
    return-void
.end method

.method public onFindViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    #@0
    .prologue
    .line 6639
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@2
    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public onGetHost()Landroid/app/Activity;
    .locals 1

    #@0
    .prologue
    .line 6598
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method public bridge synthetic onGetHost()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 6597
    invoke-virtual {p0}, Landroid/app/Activity$HostCallbacks;->onGetHost()Landroid/app/Activity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public onGetLayoutInflater()Landroid/view/LayoutInflater;
    .locals 2

    #@0
    .prologue
    .line 6583
    iget-object v1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@2
    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    #@5
    move-result-object v0

    #@6
    .line 6584
    .local v0, "result":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Landroid/app/Activity$HostCallbacks;->onUseFragmentManagerInflaterFactory()Z

    #@9
    move-result v1

    #@a
    if-eqz v1, :cond_0

    #@c
    .line 6585
    iget-object v1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@e
    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    .line 6587
    :cond_0
    return-object v0
.end method

.method public onGetWindowAnimations()I
    .locals 2

    #@0
    .prologue
    .line 6627
    iget-object v1, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@2
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@5
    move-result-object v0

    #@6
    .line 6628
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
    .line 6644
    iget-object v2, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@3
    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    #@6
    move-result-object v0

    #@7
    .line 6645
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
    .line 6622
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@2
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

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

.method public onInvalidateOptionsMenu()V
    .locals 1

    #@0
    .prologue
    .line 6603
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@2
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    #@5
    .line 6602
    return-void
.end method

.method public onRequestPermissionsFromFragment(Landroid/app/Fragment;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "requestCode"    # I

    #@0
    .prologue
    .line 6615
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "@android:requestPermissions:"

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p1, Landroid/app/Fragment;->mWho:Ljava/lang/String;

    #@e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 6616
    .local v1, "who":Ljava/lang/String;
    iget-object v2, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@18
    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManager;->buildRequestPermissionsIntent([Ljava/lang/String;)Landroid/content/Intent;

    #@1f
    move-result-object v0

    #@20
    .line 6617
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@22
    const/4 v3, 0x0

    #@23
    invoke-virtual {v2, v1, v0, p3, v3}, Landroid/app/Activity;->startActivityForResult(Ljava/lang/String;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@26
    .line 6614
    return-void
.end method

.method public onShouldSaveFragmentState(Landroid/app/Fragment;)Z
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;

    #@0
    .prologue
    .line 6578
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@2
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

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

.method public onStartActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I
    .param p4, "options"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 6609
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    #@5
    .line 6608
    return-void
.end method

.method public onUseFragmentManagerInflaterFactory()Z
    .locals 2

    #@0
    .prologue
    .line 6593
    iget-object v0, p0, Landroid/app/Activity$HostCallbacks;->this$0:Landroid/app/Activity;

    #@2
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@5
    move-result-object v0

    #@6
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@8
    const/16 v1, 0x15

    #@a
    if-lt v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method
