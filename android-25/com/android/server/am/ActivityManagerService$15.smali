.class Lcom/android/server/am/ActivityManagerService$15;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->inputDispatchingTimedOut(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;

.field final synthetic val$aboveSystem:Z

.field final synthetic val$activity:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$annotation:Ljava/lang/String;

.field final synthetic val$parent:Lcom/android/server/am/ActivityRecord;

.field final synthetic val$proc:Lcom/android/server/am/ProcessRecord;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "val$proc"    # Lcom/android/server/am/ProcessRecord;
    .param p3, "val$activity"    # Lcom/android/server/am/ActivityRecord;
    .param p4, "val$parent"    # Lcom/android/server/am/ActivityRecord;
    .param p5, "val$aboveSystem"    # Z
    .param p6, "val$annotation"    # Ljava/lang/String;

    #@0
    .prologue
    .line 12191
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$15;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$15;->val$proc:Lcom/android/server/am/ProcessRecord;

    #@4
    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$15;->val$activity:Lcom/android/server/am/ActivityRecord;

    #@6
    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$15;->val$parent:Lcom/android/server/am/ActivityRecord;

    #@8
    iput-boolean p5, p0, Lcom/android/server/am/ActivityManagerService$15;->val$aboveSystem:Z

    #@a
    iput-object p6, p0, Lcom/android/server/am/ActivityManagerService$15;->val$annotation:Ljava/lang/String;

    #@c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@f
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    #@0
    .prologue
    .line 12194
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$15;->this$0:Lcom/android/server/am/ActivityManagerService;

    #@2
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    #@4
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$15;->val$proc:Lcom/android/server/am/ProcessRecord;

    #@6
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$15;->val$activity:Lcom/android/server/am/ActivityRecord;

    #@8
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$15;->val$parent:Lcom/android/server/am/ActivityRecord;

    #@a
    iget-boolean v4, p0, Lcom/android/server/am/ActivityManagerService$15;->val$aboveSystem:Z

    #@c
    iget-object v5, p0, Lcom/android/server/am/ActivityManagerService$15;->val$annotation:Ljava/lang/String;

    #@e
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/AppErrors;->appNotResponding(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;ZLjava/lang/String;)V

    #@11
    .line 12193
    return-void
.end method
