.class public interface abstract Landroid/app/IUiModeManagerCallback;
.super Ljava/lang/Object;
.source "IUiModeManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/IUiModeManagerCallback$Stub;,
        Landroid/app/IUiModeManagerCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.app.IUiModeManagerCallback"


# virtual methods
.method public abstract blacklist notifyContrastChanged(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist notifyForceInvertStateChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
