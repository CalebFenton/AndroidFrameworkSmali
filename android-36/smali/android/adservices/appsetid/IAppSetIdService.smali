.class public interface abstract Landroid/adservices/appsetid/IAppSetIdService;
.super Ljava/lang/Object;
.source "IAppSetIdService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/appsetid/IAppSetIdService$Stub;,
        Landroid/adservices/appsetid/IAppSetIdService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.adservices.appsetid.IAppSetIdService"


# virtual methods
.method public abstract blacklist getAppSetId(Landroid/adservices/appsetid/GetAppSetIdParam;Landroid/adservices/common/CallerMetadata;Landroid/adservices/appsetid/IGetAppSetIdCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
