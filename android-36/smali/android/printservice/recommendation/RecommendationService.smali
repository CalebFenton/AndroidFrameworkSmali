.class public abstract Landroid/printservice/recommendation/RecommendationService;
.super Landroid/app/Service;
.source "RecommendationService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/recommendation/RecommendationService$MyHandler;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "PrintServiceRecS"

.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.printservice.recommendation.RecommendationService"


# instance fields
.field private greylist-max-o mCallbacks:Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

.field private greylist-max-o mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallbacks(Landroid/printservice/recommendation/RecommendationService;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;
    .registers 1

    iget-object p0, p0, Landroid/printservice/recommendation/RecommendationService;->mCallbacks:Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/printservice/recommendation/RecommendationService;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Landroid/printservice/recommendation/RecommendationService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallbacks(Landroid/printservice/recommendation/RecommendationService;Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V
    .registers 2

    iput-object p1, p0, Landroid/printservice/recommendation/RecommendationService;->mCallbacks:Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method protected whitelist attachBaseContext(Landroid/content/Context;)V
    .registers 3
    .param p1, "base"    # Landroid/content/Context;

    .line 57
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    .line 59
    new-instance v0, Landroid/printservice/recommendation/RecommendationService$MyHandler;

    invoke-direct {v0, p0}, Landroid/printservice/recommendation/RecommendationService$MyHandler;-><init>(Landroid/printservice/recommendation/RecommendationService;)V

    iput-object v0, p0, Landroid/printservice/recommendation/RecommendationService;->mHandler:Landroid/os/Handler;

    .line 60
    return-void
.end method

.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "intent"    # Landroid/content/Intent;

    .line 73
    new-instance v0, Landroid/printservice/recommendation/RecommendationService$1;

    invoke-direct {v0, p0}, Landroid/printservice/recommendation/RecommendationService$1;-><init>(Landroid/printservice/recommendation/RecommendationService;)V

    return-object v0
.end method

.method public abstract whitelist onConnected()V
.end method

.method public abstract whitelist onDisconnected()V
.end method

.method public final whitelist updateRecommendations(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p1, "recommendations":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 69
    return-void
.end method
