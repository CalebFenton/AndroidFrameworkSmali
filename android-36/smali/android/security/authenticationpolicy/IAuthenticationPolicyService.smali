.class public interface abstract Landroid/security/authenticationpolicy/IAuthenticationPolicyService;
.super Ljava/lang/Object;
.source "IAuthenticationPolicyService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Stub;,
        Landroid/security/authenticationpolicy/IAuthenticationPolicyService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.authenticationpolicy.IAuthenticationPolicyService"


# virtual methods
.method public abstract blacklist disableSecureLockDevice(Landroid/security/authenticationpolicy/DisableSecureLockDeviceParams;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist enableSecureLockDevice(Landroid/security/authenticationpolicy/EnableSecureLockDeviceParams;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
