.class public interface abstract Landroid/adservices/appsetid/IAppSetIdProviderService;
.super Ljava/lang/Object;
.source "IAppSetIdProviderService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/appsetid/IAppSetIdProviderService$Stub;,
        Landroid/adservices/appsetid/IAppSetIdProviderService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.appsetid.IAppSetIdProviderService"


# virtual methods
.method public abstract blacklist getAppSetId(ILjava/lang/String;Landroid/adservices/appsetid/IGetAppSetIdProviderCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
