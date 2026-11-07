.class public interface abstract Landroid/app/appfunctions/ICancellationCallback;
.super Ljava/lang/Object;
.source "ICancellationCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/appfunctions/ICancellationCallback$Stub;,
        Landroid/app/appfunctions/ICancellationCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.appfunctions.ICancellationCallback"


# virtual methods
.method public abstract blacklist sendCancellationTransport(Landroid/os/ICancellationSignal;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
