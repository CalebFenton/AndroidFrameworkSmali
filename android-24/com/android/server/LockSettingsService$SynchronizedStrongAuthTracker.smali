.class Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;
.super Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SynchronizedStrongAuthTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LockSettingsService;


# direct methods
.method public constructor <init>(Lcom/android/server/LockSettingsService;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LockSettingsService;
    .param p2, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;->this$0:Lcom/android/server/LockSettingsService;

    #@2
    .line 193
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;-><init>(Landroid/content/Context;)V

    #@5
    .line 192
    return-void
.end method


# virtual methods
.method public getStrongAuthForUser(I)I
    .locals 1
    .param p1, "userId"    # I

    #@0
    .prologue
    .line 205
    monitor-enter p0

    #@1
    .line 206
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    move-result v0

    #@5
    monitor-exit p0

    #@6
    return v0

    #@7
    .line 205
    :catchall_0
    move-exception v0

    #@8
    monitor-exit p0

    #@9
    throw v0
.end method

.method protected handleStrongAuthRequiredChanged(II)V
    .locals 1
    .param p1, "strongAuthFlags"    # I
    .param p2, "userId"    # I

    #@0
    .prologue
    .line 198
    monitor-enter p0

    #@1
    .line 199
    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->handleStrongAuthRequiredChanged(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 197
    return-void

    #@6
    .line 198
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method register()V
    .locals 2

    #@0
    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;->this$0:Lcom/android/server/LockSettingsService;

    #@2
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->-get3(Lcom/android/server/LockSettingsService;)Lcom/android/server/LockSettingsStrongAuth;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Lcom/android/server/LockSettingsService$SynchronizedStrongAuthTracker;->mStub:Landroid/app/trust/IStrongAuthTracker$Stub;

    #@8
    invoke-virtual {v0, v1}, Lcom/android/server/LockSettingsStrongAuth;->registerStrongAuthTracker(Landroid/app/trust/IStrongAuthTracker;)V

    #@b
    .line 210
    return-void
.end method
