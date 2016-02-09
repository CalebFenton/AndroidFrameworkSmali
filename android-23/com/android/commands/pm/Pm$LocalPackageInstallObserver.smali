.class Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;
.super Landroid/app/PackageInstallObserver;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/Pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalPackageInstallObserver"
.end annotation


# instance fields
.field extraPackage:Ljava/lang/String;

.field extraPermission:Ljava/lang/String;

.field finished:Z

.field result:I

.field final synthetic this$0:Lcom/android/commands/pm/Pm;


# direct methods
.method constructor <init>(Lcom/android/commands/pm/Pm;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/commands/pm/Pm;

    #@0
    .prologue
    .line 778
    iput-object p1, p0, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->this$0:Lcom/android/commands/pm/Pm;

    #@2
    invoke-direct {p0}, Landroid/app/PackageInstallObserver;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onPackageInstalled(Ljava/lang/String;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 786
    monitor-enter p0

    #@1
    .line 787
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->finished:Z

    #@4
    .line 788
    iput p2, p0, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->result:I

    #@6
    .line 789
    const/16 v0, -0x70

    #@8
    if-ne p2, v0, :cond_0

    #@a
    .line 791
    const-string/jumbo v0, "android.content.pm.extra.FAILURE_EXISTING_PERMISSION"

    #@d
    .line 790
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    iput-object v0, p0, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->extraPermission:Ljava/lang/String;

    #@13
    .line 793
    const-string/jumbo v0, "android.content.pm.extra.FAILURE_EXISTING_PACKAGE"

    #@16
    .line 792
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->extraPackage:Ljava/lang/String;

    #@1c
    .line 795
    :cond_0
    invoke-virtual {p0}, Lcom/android/commands/pm/Pm$LocalPackageInstallObserver;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit p0

    #@20
    .line 785
    return-void

    #@21
    .line 786
    :catchall_0
    move-exception v0

    #@22
    monitor-exit p0

    #@23
    throw v0
.end method
