.class public interface abstract Landroid/adservices/appsetid/IGetAppSetIdCallback;
.super Ljava/lang/Object;
.source "IGetAppSetIdCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/appsetid/IGetAppSetIdCallback$Stub;,
        Landroid/adservices/appsetid/IGetAppSetIdCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.appsetid.IGetAppSetIdCallback"


# virtual methods
.method public abstract blacklist onError(I)V
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
