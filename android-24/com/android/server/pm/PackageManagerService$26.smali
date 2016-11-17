.class Lcom/android/server/pm/PackageManagerService$26;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePackage(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$moveId:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$volumeUuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$packageName"    # Ljava/lang/String;
    .param p3, "val$volumeUuid"    # Ljava/lang/String;
    .param p4, "val$moveId"    # I
    .param p5, "val$user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 19993
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$26;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$26;->val$packageName:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerService$26;->val$volumeUuid:Ljava/lang/String;

    #@6
    iput p4, p0, Lcom/android/server/pm/PackageManagerService$26;->val$moveId:I

    #@8
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerService$26;->val$user:Landroid/os/UserHandle;

    #@a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@d
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 19997
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$26;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$26;->val$packageName:Ljava/lang/String;

    #@4
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$26;->val$volumeUuid:Ljava/lang/String;

    #@6
    iget v4, p0, Lcom/android/server/pm/PackageManagerService$26;->val$moveId:I

    #@8
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$26;->val$user:Landroid/os/UserHandle;

    #@a
    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/pm/PackageManagerService;->-wrap31(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 19995
    :goto_0
    return-void

    #@e
    .line 19998
    :catch_0
    move-exception v0

    #@f
    .line 19999
    .local v0, "e":Lcom/android/server/pm/PackageManagerException;
    const-string/jumbo v1, "PackageManager"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, "Failed to move "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$26;->val$packageName:Ljava/lang/String;

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    .line 20000
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$26;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2d
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerService;->-get7(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    #@30
    move-result-object v1

    #@31
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$26;->val$moveId:I

    #@33
    .line 20001
    const/4 v3, -0x6

    #@34
    .line 20000
    invoke-static {v1, v2, v3}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->-wrap1(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V

    #@37
    goto :goto_0
.end method
