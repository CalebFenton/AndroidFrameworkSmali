.class public interface abstract Lcom/android/internal/policy/IDeviceLockedStateListener;
.super Ljava/lang/Object;
.source "IDeviceLockedStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/IDeviceLockedStateListener$Stub;,
        Lcom/android/internal/policy/IDeviceLockedStateListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.policy.IDeviceLockedStateListener"


# virtual methods
.method public abstract blacklist onDeviceLockedStateChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
