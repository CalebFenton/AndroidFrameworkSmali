.class public abstract Landroid/widget/RemoteViewsService;
.super Landroid/app/Service;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/RemoteViewsService$RemoteViewsFactory;,
        Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "RemoteViewsService"

.field private static final sLock:Ljava/lang/Object;

.field private static final sRemoteViewFactories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Intent$FilterComparison;",
            "Landroid/widget/RemoteViewsService$RemoteViewsFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/lang/Object;
    .locals 1

    #@0
    sget-object v0, Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Ljava/util/HashMap;
    .locals 1

    #@0
    sget-object v0, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 42
    new-instance v0, Ljava/util/HashMap;

    #@2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@5
    .line 41
    sput-object v0, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    #@7
    .line 43
    new-instance v0, Ljava/lang/Object;

    #@9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@c
    sput-object v0, Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;

    #@e
    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 32
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 236
    sget-object v4, Landroid/widget/RemoteViewsService;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v4

    #@3
    .line 237
    :try_start_0
    new-instance v1, Landroid/content/Intent$FilterComparison;

    #@5
    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    #@8
    .line 238
    .local v1, "fc":Landroid/content/Intent$FilterComparison;
    const/4 v0, 0x0

    #@9
    .line 239
    .local v0, "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    const/4 v2, 0x0

    #@a
    .line 240
    .local v2, "isCreated":Z
    sget-object v3, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    #@c
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_0

    #@12
    .line 241
    invoke-virtual {p0, p1}, Landroid/widget/RemoteViewsService;->onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    #@15
    move-result-object v0

    #@16
    .line 242
    .local v0, "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    sget-object v3, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    #@18
    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    .line 243
    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onCreate()V

    #@1e
    .line 244
    const/4 v2, 0x0

    #@1f
    .line 249
    :goto_0
    new-instance v3, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;

    #@21
    invoke-direct {v3, v0, v2}, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;-><init>(Landroid/widget/RemoteViewsService$RemoteViewsFactory;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v4

    #@25
    return-object v3

    #@26
    .line 246
    .local v0, "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :cond_0
    :try_start_1
    sget-object v3, Landroid/widget/RemoteViewsService;->sRemoteViewFactories:Ljava/util/HashMap;

    #@28
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v0

    #@2c
    .end local v0    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    check-cast v0, Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2e
    .line 247
    .local v0, "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    const/4 v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 236
    .end local v0    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .end local v1    # "fc":Landroid/content/Intent$FilterComparison;
    .end local v2    # "isCreated":Z
    :catchall_0
    move-exception v3

    #@31
    monitor-exit v4

    #@32
    throw v3
.end method

.method public abstract onGetViewFactory(Landroid/content/Intent;)Landroid/widget/RemoteViewsService$RemoteViewsFactory;
.end method
