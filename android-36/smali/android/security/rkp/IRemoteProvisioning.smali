.class public interface abstract Landroid/security/rkp/IRemoteProvisioning;
.super Ljava/lang/Object;
.source "IRemoteProvisioning.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/rkp/IRemoteProvisioning$Stub;,
        Landroid/security/rkp/IRemoteProvisioning$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.rkp.IRemoteProvisioning"


# virtual methods
.method public abstract blacklist getRegistration(Ljava/lang/String;Landroid/security/rkp/IGetRegistrationCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
