.class public interface abstract Landroid/adservices/common/IRequestAdServicesModuleOverridesCallback;
.super Ljava/lang/Object;
.source "IRequestAdServicesModuleOverridesCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/IRequestAdServicesModuleOverridesCallback$Stub;,
        Landroid/adservices/common/IRequestAdServicesModuleOverridesCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.common.IRequestAdServicesModuleOverridesCallback"


# virtual methods
.method public abstract blacklist onFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
