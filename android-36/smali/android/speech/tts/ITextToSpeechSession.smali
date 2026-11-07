.class public interface abstract Landroid/speech/tts/ITextToSpeechSession;
.super Ljava/lang/Object;
.source "ITextToSpeechSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/speech/tts/ITextToSpeechSession$Stub;,
        Landroid/speech/tts/ITextToSpeechSession$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.speech.tts.ITextToSpeechSession"


# virtual methods
.method public abstract blacklist disconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
