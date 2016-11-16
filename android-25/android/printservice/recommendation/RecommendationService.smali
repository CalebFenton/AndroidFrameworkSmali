.class public abstract Landroid/printservice/recommendation/RecommendationService;
.super Landroid/app/Service;
.source "RecommendationService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/recommendation/RecommendationService$MyHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PrintServiceRecS"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.printservice.recommendation.RecommendationService"


# instance fields
.field private mCallbacks:Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Landroid/printservice/recommendation/RecommendationService;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService;->mCallbacks:Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/printservice/recommendation/RecommendationService;)Landroid/os/Handler;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService;->mHandler:Landroid/os/Handler;

    #@2
    return-object v0
.end method

.method static synthetic -set0(Landroid/printservice/recommendation/RecommendationService;Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)Landroid/printservice/recommendation/IRecommendationServiceCallbacks;
    .locals 0

    #@0
    iput-object p1, p0, Landroid/printservice/recommendation/RecommendationService;->mCallbacks:Landroid/printservice/recommendation/IRecommendationServiceCallbacks;

    #@2
    return-object p1
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;

    #@0
    .prologue
    .line 57
    invoke-super {p0, p1}, Landroid/app/Service;->attachBaseContext(Landroid/content/Context;)V

    #@3
    .line 59
    new-instance v0, Landroid/printservice/recommendation/RecommendationService$MyHandler;

    #@5
    invoke-direct {v0, p0}, Landroid/printservice/recommendation/RecommendationService$MyHandler;-><init>(Landroid/printservice/recommendation/RecommendationService;)V

    #@8
    iput-object v0, p0, Landroid/printservice/recommendation/RecommendationService;->mHandler:Landroid/os/Handler;

    #@a
    .line 56
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .line 73
    new-instance v0, Landroid/printservice/recommendation/RecommendationService$1;

    #@2
    invoke-direct {v0, p0}, Landroid/printservice/recommendation/RecommendationService$1;-><init>(Landroid/printservice/recommendation/RecommendationService;)V

    #@5
    return-object v0
.end method

.method public abstract onConnected()V
.end method

.method public abstract onDisconnected()V
.end method

.method public final updateRecommendations(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 68
    .local p1, "recommendations":Ljava/util/List;, "Ljava/util/List<Landroid/printservice/recommendation/RecommendationInfo;>;"
    iget-object v0, p0, Landroid/printservice/recommendation/RecommendationService;->mHandler:Landroid/os/Handler;

    #@2
    const/4 v1, 0x3

    #@3
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    #@a
    .line 67
    return-void
.end method
