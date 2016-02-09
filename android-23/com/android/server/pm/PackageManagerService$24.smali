.class Lcom/android/server/pm/PackageManagerService$24;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;->movePrimaryStorage(Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$realMoveId:I


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;
    .param p2, "val$realMoveId"    # I

    #@0
    .prologue
    .line 16023
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    iput p2, p0, Lcom/android/server/pm/PackageManagerService$24;->val$realMoveId:I

    #@4
    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    #@7
    return-void
.end method


# virtual methods
.method public onCreated(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "moveId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 16025
    return-void
.end method

.method public onStatusChanged(IIJ)V
    .locals 3
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    #@0
    .prologue
    .line 16031
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$24;->this$0:Lcom/android/server/pm/PackageManagerService;

    #@2
    invoke-static {v0}, Lcom/android/server/pm/PackageManagerService;->-get4(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    #@5
    move-result-object v0

    #@6
    iget v1, p0, Lcom/android/server/pm/PackageManagerService$24;->val$realMoveId:I

    #@8
    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->-wrap2(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;IIJ)V

    #@b
    .line 16030
    return-void
.end method
