.class public abstract Landroid/federatedcompute/ResultHandlingService;
.super Landroid/app/Service;
.source "ResultHandlingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/ResultHandlingService$ServiceBinder;,
        Landroid/federatedcompute/ResultHandlingService$ResultHandlingCallback;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ResultHandlingService"


# instance fields
.field private blacklist mIBinder:Landroid/os/IBinder;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist handleResult(Landroid/os/Bundle;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 64
    iget-object v0, p0, Landroid/federatedcompute/ResultHandlingService;->mIBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 3

    .line 59
    new-instance v0, Landroid/federatedcompute/ResultHandlingService$ServiceBinder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/federatedcompute/ResultHandlingService$ServiceBinder;-><init>(Landroid/federatedcompute/ResultHandlingService;Landroid/federatedcompute/ResultHandlingService-IA;)V

    iput-object v0, p0, Landroid/federatedcompute/ResultHandlingService;->mIBinder:Landroid/os/IBinder;

    .line 60
    return-void
.end method
