.class public final Lcom/android/server/restrictions/RestrictionsManagerService;
.super Lcom/android/server/SystemService;
.source "RestrictionsManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final LOG_TAG:Ljava/lang/String; = "RestrictionsManagerService"


# instance fields
.field private final mRestrictionsManagerImpl:Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/restrictions/RestrictionsManagerService;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/restrictions/RestrictionsManagerService;->getBinderService(Ljava/lang/String;)Landroid/os/IBinder;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 51
    new-instance v0, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;

    #@5
    invoke-direct {v0, p0, p1}, Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;-><init>(Lcom/android/server/restrictions/RestrictionsManagerService;Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/android/server/restrictions/RestrictionsManagerService;->mRestrictionsManagerImpl:Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;

    #@a
    .line 49
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 56
    const-string/jumbo v0, "restrictions"

    #@3
    iget-object v1, p0, Lcom/android/server/restrictions/RestrictionsManagerService;->mRestrictionsManagerImpl:Lcom/android/server/restrictions/RestrictionsManagerService$RestrictionsManagerImpl;

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/restrictions/RestrictionsManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@8
    .line 55
    return-void
.end method
