.class public interface abstract Landroid/os/IProfilingResultCallback;
.super Ljava/lang/Object;
.source "IProfilingResultCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IProfilingResultCallback$Stub;,
        Landroid/os/IProfilingResultCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IProfilingResultCallback"


# virtual methods
.method public abstract blacklist deleteFile(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist generateFile(Ljava/lang/String;Ljava/lang/String;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist sendResult(Ljava/lang/String;JJILjava/lang/String;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
