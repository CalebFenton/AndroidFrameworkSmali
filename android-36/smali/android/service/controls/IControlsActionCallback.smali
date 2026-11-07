.class public interface abstract Landroid/service/controls/IControlsActionCallback;
.super Ljava/lang/Object;
.source "IControlsActionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/IControlsActionCallback$Stub;,
        Landroid/service/controls/IControlsActionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.controls.IControlsActionCallback"


# virtual methods
.method public abstract blacklist accept(Landroid/os/IBinder;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
