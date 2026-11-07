.class public interface abstract Landroid/security/apc/IConfirmationCallback;
.super Ljava/lang/Object;
.source "IConfirmationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/apc/IConfirmationCallback$Stub;,
        Landroid/security/apc/IConfirmationCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.apc.IConfirmationCallback"


# virtual methods
.method public abstract blacklist onCompleted(I[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
