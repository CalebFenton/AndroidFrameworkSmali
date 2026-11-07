.class public abstract Landroid/app/usage/CacheQuotaService;
.super Landroid/app/Service;
.source "CacheQuotaService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;,
        Landroid/app/usage/CacheQuotaService$ServiceHandler;
    }
.end annotation


# static fields
.field public static final greylist-max-o REQUEST_LIST_KEY:Ljava/lang/String; = "requests"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.app.usage.CacheQuotaService"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "CacheQuotaService"


# instance fields
.field private greylist-max-o mHandler:Landroid/os/Handler;

.field private greylist-max-o mWrapper:Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/app/usage/CacheQuotaService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/app/usage/CacheQuotaService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 64
    iget-object v0, p0, Landroid/app/usage/CacheQuotaService;->mWrapper:Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;

    return-object v0
.end method

.method public abstract whitelist onComputeCacheQuotaHints(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/app/usage/CacheQuotaHint;",
            ">;"
        }
    .end annotation
.end method

.method public whitelist onCreate()V
    .registers 3

    .line 57
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 58
    new-instance v0, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;-><init>(Landroid/app/usage/CacheQuotaService;Landroid/app/usage/CacheQuotaService-IA;)V

    iput-object v0, p0, Landroid/app/usage/CacheQuotaService;->mWrapper:Landroid/app/usage/CacheQuotaService$CacheQuotaServiceWrapper;

    .line 59
    new-instance v0, Landroid/app/usage/CacheQuotaService$ServiceHandler;

    invoke-virtual {p0}, Landroid/app/usage/CacheQuotaService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/usage/CacheQuotaService$ServiceHandler;-><init>(Landroid/app/usage/CacheQuotaService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/usage/CacheQuotaService;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method
