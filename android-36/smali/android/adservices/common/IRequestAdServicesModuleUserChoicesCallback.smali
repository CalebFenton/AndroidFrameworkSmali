.class public interface abstract Landroid/adservices/common/IRequestAdServicesModuleUserChoicesCallback;
.super Ljava/lang/Object;
.source "IRequestAdServicesModuleUserChoicesCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/common/IRequestAdServicesModuleUserChoicesCallback$Stub;,
        Landroid/adservices/common/IRequestAdServicesModuleUserChoicesCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.common.IRequestAdServicesModuleUserChoicesCallback"


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
