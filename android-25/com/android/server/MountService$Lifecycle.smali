.class public Lcom/android/server/MountService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mMountService:Lcom/android/server/MountService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 161
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 160
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    #@0
    .prologue
    .line 173
    const/16 v0, 0x226

    #@2
    if-ne p1, v0, :cond_1

    #@4
    .line 174
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    #@6
    invoke-static {v0}, Lcom/android/server/MountService;->-wrap15(Lcom/android/server/MountService;)V

    #@9
    .line 172
    :cond_0
    :goto_0
    return-void

    #@a
    .line 175
    :cond_1
    const/16 v0, 0x3e8

    #@c
    if-ne p1, v0, :cond_0

    #@e
    .line 176
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    #@10
    invoke-static {v0}, Lcom/android/server/MountService;->-wrap5(Lcom/android/server/MountService;)V

    #@13
    goto :goto_0
.end method

.method public onCleanupUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/MountService;->-wrap9(Lcom/android/server/MountService;I)V

    #@5
    .line 191
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 166
    new-instance v0, Lcom/android/server/MountService;

    #@2
    invoke-virtual {p0}, Lcom/android/server/MountService$Lifecycle;->getContext()Landroid/content/Context;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    #@9
    iput-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    #@b
    .line 167
    const-string/jumbo v0, "mount"

    #@e
    iget-object v1, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    #@10
    invoke-virtual {p0, v0, v1}, Lcom/android/server/MountService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@13
    .line 168
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    #@15
    invoke-static {v0}, Lcom/android/server/MountService;->-wrap14(Lcom/android/server/MountService;)V

    #@18
    .line 165
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/MountService;->-set1(Lcom/android/server/MountService;I)I

    #@5
    .line 181
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/MountService$Lifecycle;->mMountService:Lcom/android/server/MountService;

    #@2
    invoke-static {v0, p1}, Lcom/android/server/MountService;->-wrap10(Lcom/android/server/MountService;I)V

    #@5
    .line 186
    return-void
.end method
