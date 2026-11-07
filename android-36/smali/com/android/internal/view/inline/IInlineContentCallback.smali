.class public interface abstract Lcom/android/internal/view/inline/IInlineContentCallback;
.super Ljava/lang/Object;
.source "IInlineContentCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/inline/IInlineContentCallback$Stub;,
        Lcom/android/internal/view/inline/IInlineContentCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.inline.IInlineContentCallback"


# virtual methods
.method public abstract blacklist onClick()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onContent(Landroid/view/SurfaceControlViewHost$SurfacePackage;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onLongClick()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
