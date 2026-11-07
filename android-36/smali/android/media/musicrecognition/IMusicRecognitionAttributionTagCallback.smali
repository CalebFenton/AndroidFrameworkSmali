.class public interface abstract Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback;
.super Ljava/lang/Object;
.source "IMusicRecognitionAttributionTagCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback$Stub;,
        Landroid/media/musicrecognition/IMusicRecognitionAttributionTagCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.media.musicrecognition.IMusicRecognitionAttributionTagCallback"


# virtual methods
.method public abstract blacklist onAttributionTag(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
