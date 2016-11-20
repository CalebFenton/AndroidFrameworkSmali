.class public final Lcom/android/server/pm/ShortcutService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field final mService:Lcom/android/server/pm/ShortcutService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 520
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 521
    new-instance v0, Lcom/android/server/pm/ShortcutService;

    #@5
    invoke-direct {v0, p1}, Lcom/android/server/pm/ShortcutService;-><init>(Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/android/server/pm/ShortcutService$Lifecycle;->mService:Lcom/android/server/pm/ShortcutService;

    #@a
    .line 519
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$Lifecycle;->mService:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->onBootPhase(I)V

    #@5
    .line 530
    return-void
.end method

.method public onCleanupUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 536
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$Lifecycle;->mService:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->handleCleanupUser(I)V

    #@5
    .line 535
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 526
    const-string/jumbo v0, "shortcut"

    #@3
    iget-object v1, p0, Lcom/android/server/pm/ShortcutService$Lifecycle;->mService:Lcom/android/server/pm/ShortcutService;

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/ShortcutService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@8
    .line 525
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 541
    iget-object v0, p0, Lcom/android/server/pm/ShortcutService$Lifecycle;->mService:Lcom/android/server/pm/ShortcutService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutService;->handleUnlockUser(I)V

    #@5
    .line 540
    return-void
.end method
