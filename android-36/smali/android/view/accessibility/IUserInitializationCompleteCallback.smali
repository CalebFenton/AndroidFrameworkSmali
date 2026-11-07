.class public interface abstract Landroid/view/accessibility/IUserInitializationCompleteCallback;
.super Ljava/lang/Object;
.source "IUserInitializationCompleteCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/accessibility/IUserInitializationCompleteCallback$Stub;,
        Landroid/view/accessibility/IUserInitializationCompleteCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.accessibility.IUserInitializationCompleteCallback"


# virtual methods
.method public abstract blacklist onUserInitializationComplete(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
