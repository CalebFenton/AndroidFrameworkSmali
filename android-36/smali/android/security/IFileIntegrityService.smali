.class public interface abstract Landroid/security/IFileIntegrityService;
.super Ljava/lang/Object;
.source "IFileIntegrityService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/IFileIntegrityService$Stub;,
        Landroid/security/IFileIntegrityService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.IFileIntegrityService"


# virtual methods
.method public abstract blacklist createAuthToken(Landroid/os/ParcelFileDescriptor;)Landroid/os/IInstalld$IFsveritySetupAuthToken;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist setupFsverity(Landroid/os/IInstalld$IFsveritySetupAuthToken;Ljava/lang/String;Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
