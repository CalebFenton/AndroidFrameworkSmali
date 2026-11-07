.class public interface abstract Landroid/view/IDisplayChangeWindowCallback;
.super Ljava/lang/Object;
.source "IDisplayChangeWindowCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayChangeWindowCallback$Stub;,
        Landroid/view/IDisplayChangeWindowCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.IDisplayChangeWindowCallback"


# virtual methods
.method public abstract blacklist continueDisplayChange(Landroid/window/WindowContainerTransaction;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
