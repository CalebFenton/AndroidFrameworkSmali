.class public Lcom/android/server/pm/LauncherAppsService;
.super Lcom/android/server/SystemService;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    }
.end annotation


# instance fields
.field private final mLauncherAppsImpl:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    #@3
    .line 61
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@5
    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;-><init>(Lcom/android/server/pm/LauncherAppsService;Landroid/content/Context;)V

    #@8
    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService;->mLauncherAppsImpl:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@a
    .line 59
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    #@0
    .prologue
    .line 66
    const-string/jumbo v0, "launcherapps"

    #@3
    iget-object v1, p0, Lcom/android/server/pm/LauncherAppsService;->mLauncherAppsImpl:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    #@5
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/LauncherAppsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    #@8
    .line 65
    return-void
.end method
