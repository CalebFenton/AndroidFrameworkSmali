.class public abstract Landroid/federatedcompute/ExampleStoreService;
.super Landroid/app/Service;
.source "ExampleStoreService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/federatedcompute/ExampleStoreService$ServiceBinder;,
        Landroid/federatedcompute/ExampleStoreService$QueryCallback;
    }
.end annotation


# static fields
.field private static final blacklist BIND_EXAMPLE_STORE_SERVICE:Ljava/lang/String; = "android.permission.BIND_EXAMPLE_STORE_SERVICE"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mIBinder:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 49
    const-class v0, Landroid/federatedcompute/ExampleStoreService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/federatedcompute/ExampleStoreService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist checkCallerPermission()Z
    .registers 2

    .line 84
    const-string v0, "android.permission.BIND_EXAMPLE_STORE_SERVICE"

    invoke-virtual {p0, v0}, Landroid/federatedcompute/ExampleStoreService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 62
    iget-object v0, p0, Landroid/federatedcompute/ExampleStoreService;->mIBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public whitelist onCreate()V
    .registers 2

    .line 57
    new-instance v0, Landroid/federatedcompute/ExampleStoreService$ServiceBinder;

    invoke-direct {v0, p0}, Landroid/federatedcompute/ExampleStoreService$ServiceBinder;-><init>(Landroid/federatedcompute/ExampleStoreService;)V

    iput-object v0, p0, Landroid/federatedcompute/ExampleStoreService;->mIBinder:Landroid/os/IBinder;

    .line 58
    return-void
.end method

.method public abstract blacklist startQuery(Landroid/os/Bundle;Landroid/federatedcompute/ExampleStoreService$QueryCallback;)V
.end method
