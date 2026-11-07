.class public interface abstract Landroid/view/IScrollCaptureResponseListener;
.super Ljava/lang/Object;
.source "IScrollCaptureResponseListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/IScrollCaptureResponseListener$Stub;,
        Landroid/view/IScrollCaptureResponseListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.IScrollCaptureResponseListener"


# virtual methods
.method public abstract blacklist onScrollCaptureResponse(Landroid/view/ScrollCaptureResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
