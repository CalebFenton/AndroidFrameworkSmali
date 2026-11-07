.class public interface abstract Landroid/service/controls/IControlsSubscription;
.super Ljava/lang/Object;
.source "IControlsSubscription.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/IControlsSubscription$Stub;,
        Landroid/service/controls/IControlsSubscription$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.controls.IControlsSubscription"


# virtual methods
.method public abstract blacklist cancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist request(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
