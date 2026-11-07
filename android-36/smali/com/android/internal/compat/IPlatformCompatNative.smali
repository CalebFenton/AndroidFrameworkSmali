.class public interface abstract Lcom/android/internal/compat/IPlatformCompatNative;
.super Ljava/lang/Object;
.source "IPlatformCompatNative.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/compat/IPlatformCompatNative$Stub;,
        Lcom/android/internal/compat/IPlatformCompatNative$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.compat.IPlatformCompatNative"


# virtual methods
.method public abstract blacklist isChangeEnabledByPackageName(JLjava/lang/String;I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isChangeEnabledByUid(JI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reportChangeByPackageName(JLjava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist reportChangeByUid(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
