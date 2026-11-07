.class public interface abstract Landroid/app/ondeviceintelligence/IFeatureCallback;
.super Ljava/lang/Object;
.source "IFeatureCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/IFeatureCallback$Stub;,
        Landroid/app/ondeviceintelligence/IFeatureCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.ondeviceintelligence.IFeatureCallback"


# virtual methods
.method public abstract blacklist onFailure(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/app/ondeviceintelligence/Feature;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
