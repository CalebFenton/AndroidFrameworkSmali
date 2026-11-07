.class public interface abstract Landroid/adservices/adid/IGetAdIdProviderCallback;
.super Ljava/lang/Object;
.source "IGetAdIdProviderCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adid/IGetAdIdProviderCallback$Stub;,
        Landroid/adservices/adid/IGetAdIdProviderCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.adid.IGetAdIdProviderCallback"


# virtual methods
.method public abstract blacklist onError(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult(Landroid/adservices/adid/GetAdIdResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
