.class public interface abstract Lcom/android/internal/os/IShellCallback;
.super Ljava/lang/Object;
.source "IShellCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/IShellCallback$Stub;,
        Lcom/android/internal/os/IShellCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o openFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
