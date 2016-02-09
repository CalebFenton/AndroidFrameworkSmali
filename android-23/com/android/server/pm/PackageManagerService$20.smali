.class Lcom/android/server/pm/PackageManagerService$20;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->updateExternalMediaStatus(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$mediaStatus:Z

.field final synthetic val$reportStatus:Z


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$mediaStatus"    # Z
    .param p3, "val$reportStatus"    # Z

    #@0
    .prologue
    .line 15279
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$20;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-boolean p2, p0, Lcom/android/server/pm/PackageManagerService$20;->val$mediaStatus:Z

    #@4
    iput-boolean p3, p0, Lcom/android/server/pm/PackageManagerService$20;->val$reportStatus:Z

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    .line 15281
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$20;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-boolean v1, p0, Lcom/android/server/pm/PackageManagerService$20;->val$mediaStatus:Z

    #@4
    iget-boolean v2, p0, Lcom/android/server/pm/PackageManagerService$20;->val$reportStatus:Z

    #@6
    const/4 v3, 0x1

    #@7
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap38(Lcom/android/server/pm/PackageManagerService;ZZZ)V

    #@a
    .line 15280
    return-void
.end method
