.class public Landroid/app/supervision/SupervisionAppService;
.super Landroid/app/Service;
.source "SupervisionAppService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# instance fields
.field private final blacklist mBinder:Landroid/app/supervision/ISupervisionAppService;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 36
    new-instance v0, Landroid/app/supervision/SupervisionAppService$1;

    invoke-direct {v0, p0}, Landroid/app/supervision/SupervisionAppService$1;-><init>(Landroid/app/supervision/SupervisionAppService;)V

    iput-object v0, p0, Landroid/app/supervision/SupervisionAppService;->mBinder:Landroid/app/supervision/ISupervisionAppService;

    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 52
    iget-object v0, p0, Landroid/app/supervision/SupervisionAppService;->mBinder:Landroid/app/supervision/ISupervisionAppService;

    invoke-interface {v0}, Landroid/app/supervision/ISupervisionAppService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public blacklist onDisabled()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 71
    return-void
.end method

.method public blacklist onEnabled()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 62
    return-void
.end method
