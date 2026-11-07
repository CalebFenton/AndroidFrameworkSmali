.class public interface abstract Landroid/adservices/adid/IAdIdProviderService;
.super Ljava/lang/Object;
.source "IAdIdProviderService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adid/IAdIdProviderService$Stub;,
        Landroid/adservices/adid/IAdIdProviderService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.adid.IAdIdProviderService"


# virtual methods
.method public abstract blacklist getAdIdProvider(ILjava/lang/String;Landroid/adservices/adid/IGetAdIdProviderCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
