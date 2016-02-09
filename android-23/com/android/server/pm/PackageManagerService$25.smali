.class Lcom/android/server/pm/PackageManagerService$25;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->removeUnusedPackagesLILPw(Lcom/android/server/pm/UserManagerService;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$userHandle:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$packageName"    # Ljava/lang/String;
    .param p3, "val$userHandle"    # I

    #@0
    .prologue
    .line 16141
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$25;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$25;->val$packageName:Ljava/lang/String;

    #@4
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$25;->val$userHandle:I

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
    .line 16143
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$25;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$25;->val$packageName:Ljava/lang/String;

    #@4
    iget v2, p0, Lcom/android/server/pm/PackageManagerService$25;->val$userHandle:I

    #@6
    const/4 v3, 0x0

    #@7
    invoke-static {v0, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->-wrap11(Lcom/android/server/pm/PackageManagerService;Ljava/lang/String;II)I

    #@a
    .line 16142
    return-void
.end method
