.class Lcom/android/server/pm/PackageManagerService$12;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->removePackageDataLI(Lcom/android/server/pm/PackageSetting;[I[ZLcom/android/server/pm/PackageManagerService$PackageRemovedInfo;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$deletedPs:Lcom/android/server/pm/PackageSetting;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageSetting;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$deletedPs"    # Lcom/android/server/pm/PackageSetting;

    #@0
    .prologue
    .line 12833
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deletedPs:Lcom/android/server/pm/PackageSetting;

    #@4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 12837
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$12;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deletedPs:Lcom/android/server/pm/PackageSetting;

    #@4
    iget-object v1, v1, Lcom/android/server/pm/PackageSetting;->name:Ljava/lang/String;

    #@6
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$12;->val$deletedPs:Lcom/android/server/pm/PackageSetting;

    #@8
    iget v2, v2, Lcom/android/server/pm/PackageSetting;->appId:I

    #@a
    .line 12838
    const-string/jumbo v3, "permission grant or revoke changed gids"

    #@d
    .line 12837
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap26(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;ILjava/lang/String;)V

    #@10
    .line 12835
    return-void
.end method
