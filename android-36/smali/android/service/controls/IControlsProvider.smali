.class public interface abstract Landroid/service/controls/IControlsProvider;
.super Ljava/lang/Object;
.source "IControlsProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/controls/IControlsProvider$Stub;,
        Landroid/service/controls/IControlsProvider$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.controls.IControlsProvider"


# virtual methods
.method public abstract blacklist action(Ljava/lang/String;Landroid/service/controls/actions/ControlActionWrapper;Landroid/service/controls/IControlsActionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist load(Landroid/service/controls/IControlsSubscriber;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist loadSuggested(Landroid/service/controls/IControlsSubscriber;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist subscribe(Ljava/util/List;Landroid/service/controls/IControlsSubscriber;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/service/controls/IControlsSubscriber;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
