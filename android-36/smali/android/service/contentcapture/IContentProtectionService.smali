.class public interface abstract Landroid/service/contentcapture/IContentProtectionService;
.super Ljava/lang/Object;
.source "IContentProtectionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/contentcapture/IContentProtectionService$Stub;,
        Landroid/service/contentcapture/IContentProtectionService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.contentcapture.IContentProtectionService"


# virtual methods
.method public abstract blacklist onLoginDetected(Landroid/content/pm/ParceledListSlice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onUpdateAllowlistRequest(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
