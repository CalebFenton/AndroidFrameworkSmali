.class public interface abstract Landroid/window/ITransactionReadyCallback;
.super Ljava/lang/Object;
.source "ITransactionReadyCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITransactionReadyCallback$Stub;,
        Landroid/window/ITransactionReadyCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.ITransactionReadyCallback"


# virtual methods
.method public abstract blacklist onTransactionReady(Landroid/view/SurfaceControl$Transaction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
