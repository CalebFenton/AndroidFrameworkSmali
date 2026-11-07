.class public interface abstract Lcom/android/internal/textservice/ISpellCheckerServiceCallback;
.super Ljava/lang/Object;
.source "ISpellCheckerServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ISpellCheckerServiceCallback$Stub;,
        Lcom/android/internal/textservice/ISpellCheckerServiceCallback$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onSessionCreated(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
