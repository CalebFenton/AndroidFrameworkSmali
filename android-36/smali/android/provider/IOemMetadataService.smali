.class public interface abstract Landroid/provider/IOemMetadataService;
.super Ljava/lang/Object;
.source "IOemMetadataService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/IOemMetadataService$Stub;,
        Landroid/provider/IOemMetadataService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.provider.IOemMetadataService"


# virtual methods
.method public abstract blacklist getOemCustomData(Landroid/os/ParcelFileDescriptor;Landroid/os/RemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSupportedMimeTypes(Landroid/os/RemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
