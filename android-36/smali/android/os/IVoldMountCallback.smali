.class public interface abstract Landroid/os/IVoldMountCallback;
.super Ljava/lang/Object;
.source "IVoldMountCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVoldMountCallback$Stub;,
        Landroid/os/IVoldMountCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.os.IVoldMountCallback"


# virtual methods
.method public abstract blacklist onVolumeChecking(Ljava/io/FileDescriptor;Ljava/lang/String;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
