.class public interface abstract Landroid/service/resumeonreboot/IResumeOnRebootService;
.super Ljava/lang/Object;
.source "IResumeOnRebootService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/resumeonreboot/IResumeOnRebootService$Stub;,
        Landroid/service/resumeonreboot/IResumeOnRebootService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.resumeonreboot.IResumeOnRebootService"


# virtual methods
.method public abstract blacklist unwrap([BLandroid/os/RemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist wrapSecret([BJLandroid/os/RemoteCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
