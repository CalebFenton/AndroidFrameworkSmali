.class public interface abstract Landroid/media/quality/IActiveProcessingPictureListener;
.super Ljava/lang/Object;
.source "IActiveProcessingPictureListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/quality/IActiveProcessingPictureListener$Stub;,
        Landroid/media/quality/IActiveProcessingPictureListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.quality.IActiveProcessingPictureListener"


# virtual methods
.method public abstract blacklist onActiveProcessingPicturesChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/quality/ActiveProcessingPicture;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
