.class public interface abstract Landroid/printservice/recommendation/IRecommendationService;
.super Ljava/lang/Object;
.source "IRecommendationService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/recommendation/IRecommendationService$Stub;,
        Landroid/printservice/recommendation/IRecommendationService$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o registerCallbacks(Landroid/printservice/recommendation/IRecommendationServiceCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
