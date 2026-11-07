.class public interface abstract Landroid/printservice/recommendation/IRecommendationServiceCallbacks;
.super Ljava/lang/Object;
.source "IRecommendationServiceCallbacks.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/recommendation/IRecommendationServiceCallbacks$Stub;,
        Landroid/printservice/recommendation/IRecommendationServiceCallbacks$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onRecommendationsUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
