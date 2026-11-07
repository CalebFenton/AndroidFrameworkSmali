.class public interface abstract Lcom/android/internal/view/inline/IInlineContentProvider;
.super Ljava/lang/Object;
.source "IInlineContentProvider.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/inline/IInlineContentProvider$Stub;,
        Lcom/android/internal/view/inline/IInlineContentProvider$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.view.inline.IInlineContentProvider"


# virtual methods
.method public abstract blacklist onSurfacePackageReleased()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist provideContent(IILcom/android/internal/view/inline/IInlineContentCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist requestSurfacePackage()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
