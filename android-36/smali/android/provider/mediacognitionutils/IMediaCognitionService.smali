.class public interface abstract Landroid/provider/mediacognitionutils/IMediaCognitionService;
.super Ljava/lang/Object;
.source "IMediaCognitionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/mediacognitionutils/IMediaCognitionService$_Parcel;,
        Landroid/provider/mediacognitionutils/IMediaCognitionService$Stub;,
        Landroid/provider/mediacognitionutils/IMediaCognitionService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.provider.mediacognitionutils.IMediaCognitionService"


# virtual methods
.method public abstract blacklist getProcessingVersions(Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist processMedia(Ljava/util/List;Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/provider/MediaCognitionProcessingRequest;",
            ">;",
            "Landroid/provider/mediacognitionutils/ICognitionProcessMediaCallbackInternal;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
