.class public interface abstract Landroid/service/ondeviceintelligence/IRemoteProcessingService;
.super Ljava/lang/Object;
.source "IRemoteProcessingService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/ondeviceintelligence/IRemoteProcessingService$Stub;,
        Landroid/service/ondeviceintelligence/IRemoteProcessingService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.ondeviceintelligence.IRemoteProcessingService"


# virtual methods
.method public abstract blacklist updateProcessingState(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
