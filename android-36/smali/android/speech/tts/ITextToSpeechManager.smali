.class public interface abstract Landroid/speech/tts/ITextToSpeechManager;
.super Ljava/lang/Object;
.source "ITextToSpeechManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechManager$Stub;,
        Landroid/speech/tts/ITextToSpeechManager$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITextToSpeechManager"


# virtual methods
.method public abstract blacklist createSession(Ljava/lang/String;Landroid/speech/tts/ITextToSpeechSessionCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
