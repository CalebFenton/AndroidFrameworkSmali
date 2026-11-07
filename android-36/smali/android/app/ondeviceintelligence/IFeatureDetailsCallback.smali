.class public interface abstract Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;
.super Ljava/lang/Object;
.source "IFeatureDetailsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/IFeatureDetailsCallback$Stub;,
        Landroid/app/ondeviceintelligence/IFeatureDetailsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.ondeviceintelligence.IFeatureDetailsCallback"


# virtual methods
.method public abstract blacklist onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/app/ondeviceintelligence/FeatureDetails;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
