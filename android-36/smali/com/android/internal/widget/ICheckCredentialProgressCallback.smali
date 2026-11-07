.class public interface abstract Lcom/android/internal/widget/ICheckCredentialProgressCallback;
.super Ljava/lang/Object;
.source "ICheckCredentialProgressCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ICheckCredentialProgressCallback$Stub;,
        Lcom/android/internal/widget/ICheckCredentialProgressCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onCredentialVerified()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
