.class public interface abstract Landroid/view/contentcapture/IContentCaptureDirectManager;
.super Ljava/lang/Object;
.source "IContentCaptureDirectManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/contentcapture/IContentCaptureDirectManager$Stub;,
        Landroid/view/contentcapture/IContentCaptureDirectManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.view.contentcapture.IContentCaptureDirectManager"


# virtual methods
.method public abstract blacklist sendEvents(Landroid/content/pm/ParceledListSlice;ILandroid/content/ContentCaptureOptions;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
