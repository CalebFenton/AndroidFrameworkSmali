.class Lcom/android/server/am/ActivityManagerService$ProcessInfoService;
.super Landroid/os/IProcessInfoService$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ProcessInfoService"
.end annotation


# instance fields
.field final mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .param p1, "activityManagerService"    # Lcom/android/server/am/ActivityManagerService;

    #@0
    .prologue
    .line 6943
    invoke-direct {p0}, Landroid/os/IProcessInfoService$Stub;-><init>()V

    #@3
    .line 6944
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@5
    .line 6943
    return-void
.end method


# virtual methods
.method public getProcessStatesFromPids([I[I)V
    .locals 1
    .param p1, "pids"    # [I
    .param p2, "states"    # [I

    #@0
    .prologue
    .line 6949
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$ProcessInfoService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    #@2
    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->getProcessStatesForPIDs([I[I)V

    #@5
    .line 6948
    return-void
.end method
