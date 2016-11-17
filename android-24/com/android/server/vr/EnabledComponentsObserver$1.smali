.class final Lcom/android/server/vr/EnabledComponentsObserver$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "EnabledComponentsObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/EnabledComponentsObserver;->build(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Looper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Collection;)Lcom/android/server/vr/EnabledComponentsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$o:Lcom/android/server/vr/EnabledComponentsObserver;


# direct methods
.method constructor <init>(Lcom/android/server/vr/EnabledComponentsObserver;)V
    .locals 0
    .param p1, "val$o"    # Lcom/android/server/vr/EnabledComponentsObserver;

    #@0
    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    #@2
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "packages"    # [Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "doit"    # Z

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    #@2
    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    #@5
    .line 137
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    #@8
    move-result v0

    #@9
    return v0
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "reason"    # I

    #@0
    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    #@2
    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    #@5
    .line 121
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    #@2
    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    #@5
    .line 127
    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 1

    #@0
    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->val$o:Lcom/android/server/vr/EnabledComponentsObserver;

    #@2
    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    #@5
    .line 115
    return-void
.end method
