.class public interface abstract Landroid/view/ISystemGestureExclusionListener;
.super Ljava/lang/Object;
.source "ISystemGestureExclusionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ISystemGestureExclusionListener$Stub;,
        Landroid/view/ISystemGestureExclusionListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.ISystemGestureExclusionListener"


# virtual methods
.method public abstract blacklist onSystemGestureExclusionChanged(ILandroid/graphics/Region;Landroid/graphics/Region;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
