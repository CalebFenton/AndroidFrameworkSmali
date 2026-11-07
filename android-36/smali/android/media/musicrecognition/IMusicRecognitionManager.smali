.class public interface abstract Landroid/media/musicrecognition/IMusicRecognitionManager;
.super Ljava/lang/Object;
.source "IMusicRecognitionManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/musicrecognition/IMusicRecognitionManager$Stub;,
        Landroid/media/musicrecognition/IMusicRecognitionManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.musicrecognition.IMusicRecognitionManager"


# virtual methods
.method public abstract blacklist beginRecognition(Landroid/media/musicrecognition/RecognitionRequest;Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
