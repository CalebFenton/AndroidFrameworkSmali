.class Lcom/android/server/backup/BackupManagerService$5;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/BackupManagerService;->dataChanged(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$targets:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "val$packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 8476
    .local p3, "val$targets":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$5;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$5;->val$packageName:Ljava/lang/String;

    #@4
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$5;->val$targets:Ljava/util/HashSet;

    #@6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@9
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    #@0
    .prologue
    .line 8478
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$5;->this$0:Lcom/android/server/backup/BackupManagerService;

    #@2
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$5;->val$packageName:Ljava/lang/String;

    #@4
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$5;->val$targets:Ljava/util/HashSet;

    #@6
    invoke-static {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap8(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    #@9
    .line 8477
    return-void
.end method
