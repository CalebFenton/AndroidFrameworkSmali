.class public interface abstract Landroid/window/ISurfaceSyncGroupCompletedListener;
.super Ljava/lang/Object;
.source "ISurfaceSyncGroupCompletedListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/window/ISurfaceSyncGroupCompletedListener$Stub;,
        Landroid/window/ISurfaceSyncGroupCompletedListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.window.ISurfaceSyncGroupCompletedListener"


# virtual methods
.method public abstract blacklist onSurfaceSyncGroupComplete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
