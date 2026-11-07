.class public interface abstract Landroid/view/contentcapture/IContentCaptureOptionsCallback;
.super Ljava/lang/Object;
.source "IContentCaptureOptionsCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/IContentCaptureOptionsCallback$Stub;,
        Landroid/view/contentcapture/IContentCaptureOptionsCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.contentcapture.IContentCaptureOptionsCallback"


# virtual methods
.method public abstract blacklist setContentCaptureOptions(Landroid/content/ContentCaptureOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
