.class public final Lcom/android/server/LockSettingsService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mLockSettingsService:Lcom/android/server/LockSettingsService;


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
    iget-object v0, p0, Lcom/android/server/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/LockSettingsService;

    #@6
    invoke-static {v0}, Lcom/android/server/LockSettingsService;->-wrap0(Lcom/android/server/LockSettingsService;)V

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
    goto :goto_0
.end method

.method public onCleanupUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/LockSettingsService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService;->onCleanupUser(I)V

    #@5
    .line 186
    return-void
.end method

.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 166
    invoke-static {}, Landroid/security/keystore/AndroidKeyStoreProvider;->install()V

    #@3
    .line 167
    new-instance v0, Lcom/android/server/LockSettingsService;

    #@5
    invoke-virtual {p0}, Lcom/android/server/LockSettingsService$Lifecycle;->getContext()Landroid/content/Context;

    #@8
    move-result-object v1

    #@9
    invoke-direct {v0, v1}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V

    #@c
    iput-object v0, p0, Lcom/android/server/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/LockSettingsService;

    #@e
    .line 168
    const-string/jumbo v0, "lock_settings"

    #@11
    iget-object v1, p0, Lcom/android/server/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/LockSettingsService;

    #@13
    invoke-virtual {p0, v0, v1}, Lcom/android/server/LockSettingsService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@16
    .line 165
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 1
    .param p1, "userHandle"    # I

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/server/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/LockSettingsService;

    #@2
    invoke-virtual {v0, p1}, Lcom/android/server/LockSettingsService;->onUnlockUser(I)V

    #@5
    .line 181
    return-void
.end method
