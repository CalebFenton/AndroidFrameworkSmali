.class public interface abstract Landroid/telephony/IBootstrapAuthenticationCallback;
.super Ljava/lang/Object;
.source "IBootstrapAuthenticationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/IBootstrapAuthenticationCallback$Stub;,
        Landroid/telephony/IBootstrapAuthenticationCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.telephony.IBootstrapAuthenticationCallback"


# virtual methods
.method public abstract blacklist onAuthenticationFailure(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onKeysAvailable(I[BLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
