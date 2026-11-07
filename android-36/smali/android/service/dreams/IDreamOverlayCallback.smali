.class public interface abstract Landroid/service/dreams/IDreamOverlayCallback;
.super Ljava/lang/Object;
.source "IDreamOverlayCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/dreams/IDreamOverlayCallback$Stub;,
        Landroid/service/dreams/IDreamOverlayCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.dreams.IDreamOverlayCallback"


# virtual methods
.method public abstract blacklist onExitRequested()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRedirectWake(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
