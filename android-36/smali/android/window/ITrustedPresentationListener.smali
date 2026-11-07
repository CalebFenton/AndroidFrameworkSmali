.class public interface abstract Landroid/window/ITrustedPresentationListener;
.super Ljava/lang/Object;
.source "ITrustedPresentationListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ITrustedPresentationListener$Stub;,
        Landroid/window/ITrustedPresentationListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.ITrustedPresentationListener"


# virtual methods
.method public abstract blacklist onTrustedPresentationChanged([I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
