.class public interface abstract Lcom/android/internal/backup/ITransportStatusCallback;
.super Ljava/lang/Object;
.source "ITransportStatusCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/backup/ITransportStatusCallback$Stub;,
        Lcom/android/internal/backup/ITransportStatusCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.backup.ITransportStatusCallback"


# virtual methods
.method public abstract blacklist onOperationComplete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onOperationCompleteWithStatus(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
