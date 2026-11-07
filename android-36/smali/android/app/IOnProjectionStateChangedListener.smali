.class public interface abstract Landroid/app/IOnProjectionStateChangedListener;
.super Ljava/lang/Object;
.source "IOnProjectionStateChangedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IOnProjectionStateChangedListener$Stub;,
        Landroid/app/IOnProjectionStateChangedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IOnProjectionStateChangedListener"


# virtual methods
.method public abstract blacklist onProjectionStateChanged(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
