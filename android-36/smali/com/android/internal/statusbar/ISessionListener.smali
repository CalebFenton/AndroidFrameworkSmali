.class public interface abstract Lcom/android/internal/statusbar/ISessionListener;
.super Ljava/lang/Object;
.source "ISessionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/statusbar/ISessionListener$Stub;,
        Lcom/android/internal/statusbar/ISessionListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.statusbar.ISessionListener"


# virtual methods
.method public abstract blacklist onSessionEnded(ILcom/android/internal/logging/InstanceId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSessionStarted(ILcom/android/internal/logging/InstanceId;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
