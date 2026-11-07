.class public interface abstract Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal;
.super Ljava/lang/Object;
.source "ICognitionGetVersionsCallbackInternal.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal$Stub;,
        Landroid/provider/mediacognitionutils/ICognitionGetVersionsCallbackInternal$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.provider.mediacognitionutils.ICognitionGetVersionsCallbackInternal"


# virtual methods
.method public abstract blacklist onGetProcessingVersionsFailure(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onGetProcessingVersionsSuccess(Landroid/provider/MediaCognitionProcessingVersions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
