.class public interface abstract Lcom/android/internal/policy/IKeyguardDrawnCallback;
.super Ljava/lang/Object;
.source "IKeyguardDrawnCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IKeyguardDrawnCallback$Stub;,
        Lcom/android/internal/policy/IKeyguardDrawnCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onDrawn()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
