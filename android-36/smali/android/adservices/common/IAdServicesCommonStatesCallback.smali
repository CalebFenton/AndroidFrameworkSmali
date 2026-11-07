.class public interface abstract Landroid/adservices/common/IAdServicesCommonStatesCallback;
.super Ljava/lang/Object;
.source "IAdServicesCommonStatesCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/IAdServicesCommonStatesCallback$Stub;,
        Landroid/adservices/common/IAdServicesCommonStatesCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.common.IAdServicesCommonStatesCallback"


# virtual methods
.method public abstract blacklist onFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult(Landroid/adservices/common/AdServicesCommonStatesResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
