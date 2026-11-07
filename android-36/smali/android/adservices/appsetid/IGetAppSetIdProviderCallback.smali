.class public interface abstract Landroid/adservices/appsetid/IGetAppSetIdProviderCallback;
.super Ljava/lang/Object;
.source "IGetAppSetIdProviderCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/appsetid/IGetAppSetIdProviderCallback$Stub;,
        Landroid/adservices/appsetid/IGetAppSetIdProviderCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.appsetid.IGetAppSetIdProviderCallback"


# virtual methods
.method public abstract blacklist onError(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onResult(Landroid/adservices/appsetid/GetAppSetIdResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
