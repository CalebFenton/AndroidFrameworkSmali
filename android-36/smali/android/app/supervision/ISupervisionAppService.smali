.class public interface abstract Landroid/app/supervision/ISupervisionAppService;
.super Ljava/lang/Object;
.source "ISupervisionAppService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/supervision/ISupervisionAppService$Stub;,
        Landroid/app/supervision/ISupervisionAppService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.supervision.ISupervisionAppService"


# virtual methods
.method public abstract blacklist onDisabled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onEnabled()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
