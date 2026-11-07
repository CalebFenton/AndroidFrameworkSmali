.class public abstract Landroid/net/NetworkRecommendationProvider;
.super Ljava/lang/Object;
.source "NetworkRecommendationProvider.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/NetworkRecommendationProvider$ServiceWrapper;
    }
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "NetworkRecProvider"

.field private static final greylist-max-o VERBOSE:Z


# instance fields
.field private final greylist-max-o mService:Landroid/os/IBinder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 53
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_f

    const-string v0, "NetworkRecProvider"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    sput-boolean v0, Landroid/net/NetworkRecommendationProvider;->VERBOSE:Z

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    new-instance v0, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/NetworkRecommendationProvider$ServiceWrapper;-><init>(Landroid/net/NetworkRecommendationProvider;Landroid/content/Context;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/net/NetworkRecommendationProvider;->mService:Landroid/os/IBinder;

    .line 65
    return-void
.end method


# virtual methods
.method public final whitelist getBinder()Landroid/os/IBinder;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/net/NetworkRecommendationProvider;->mService:Landroid/os/IBinder;

    return-object v0
.end method

.method public abstract whitelist onRequestScores([Landroid/net/NetworkKey;)V
.end method
