.class public interface abstract Landroid/view/IDisplayChangeWindowController;
.super Ljava/lang/Object;
.source "IDisplayChangeWindowController.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IDisplayChangeWindowController$Stub;,
        Landroid/view/IDisplayChangeWindowController$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.IDisplayChangeWindowController"


# virtual methods
.method public abstract blacklist onDisplayChange(IIILandroid/window/DisplayAreaInfo;Landroid/view/IDisplayChangeWindowCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
