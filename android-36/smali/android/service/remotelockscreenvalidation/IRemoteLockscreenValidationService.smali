.class public interface abstract Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;
.super Ljava/lang/Object;
.source "IRemoteLockscreenValidationService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService$Stub;,
        Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.remotelockscreenvalidation.IRemoteLockscreenValidationService"


# virtual methods
.method public abstract blacklist validateLockscreenGuess([BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
