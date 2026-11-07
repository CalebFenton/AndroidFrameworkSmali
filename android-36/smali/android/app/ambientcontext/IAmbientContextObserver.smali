.class public interface abstract Landroid/app/ambientcontext/IAmbientContextObserver;
.super Ljava/lang/Object;
.source "IAmbientContextObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ambientcontext/IAmbientContextObserver$Stub;,
        Landroid/app/ambientcontext/IAmbientContextObserver$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.ambientcontext.IAmbientContextObserver"


# virtual methods
.method public abstract blacklist onEvents(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/ambientcontext/AmbientContextEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRegistrationComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
