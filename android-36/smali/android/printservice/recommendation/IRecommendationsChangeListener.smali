.class public interface abstract Landroid/printservice/recommendation/IRecommendationsChangeListener;
.super Ljava/lang/Object;
.source "IRecommendationsChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/printservice/recommendation/IRecommendationsChangeListener$Stub;,
        Landroid/printservice/recommendation/IRecommendationsChangeListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onRecommendationsChanged()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
