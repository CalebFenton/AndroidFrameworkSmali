.class public interface abstract Landroid/speech/IRecognitionServiceManagerCallback;
.super Ljava/lang/Object;
.source "IRecognitionServiceManagerCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/IRecognitionServiceManagerCallback$Stub;,
        Landroid/speech/IRecognitionServiceManagerCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.speech.IRecognitionServiceManagerCallback"


# virtual methods
.method public abstract blacklist onError(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess(Landroid/speech/IRecognitionService;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
