.class public final Lcom/android/server/print/PrintManagerService;
.super Lcom/android/server/SystemService;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
    }
.end annotation


# instance fields
.field private final mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 76
    new-instance v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@5
    invoke-direct {v0, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;-><init>(Lcom/android/server/print/PrintManagerService;Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/android/server/print/PrintManagerService;->mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@a
    .line 74
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 81
    const-string/jumbo v0, "print"

    #@3
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService;->mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/print/PrintManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@8
    .line 80
    return-void
.end method

.method public onStartUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap1(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    #@5
    .line 85
    return-void
.end method

.method public onStopUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService;->mPrintManagerImpl:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-wrap2(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    #@5
    .line 90
    return-void
.end method
