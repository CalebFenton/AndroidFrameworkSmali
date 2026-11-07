.class public abstract Landroid/net/NetworkScoreManager$NetworkScoreCallback;
.super Ljava/lang/Object;
.source "NetworkScoreManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/NetworkScoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "NetworkScoreCallback"
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist onScoresInvalidated()V
.end method

.method public abstract whitelist onScoresUpdated(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/net/ScoredNetwork;",
            ">;)V"
        }
    .end annotation
.end method
