.class public interface abstract Landroid/adservices/adid/IAdIdService;
.super Ljava/lang/Object;
.source "IAdIdService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/adid/IAdIdService$Stub;,
        Landroid/adservices/adid/IAdIdService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.adid.IAdIdService"


# virtual methods
.method public abstract blacklist getAdId(Landroid/adservices/adid/GetAdIdParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/adid/IGetAdIdCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
