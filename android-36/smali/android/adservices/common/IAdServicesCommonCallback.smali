.class public interface abstract Landroid/adservices/common/IAdServicesCommonCallback;
.super Ljava/lang/Object;
.source "IAdServicesCommonCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/IAdServicesCommonCallback$Stub;,
        Landroid/adservices/common/IAdServicesCommonCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.common.IAdServicesCommonCallback"


# virtual methods
.method public abstract blacklist onFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult(Landroid/adservices/common/IsAdServicesEnabledResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
