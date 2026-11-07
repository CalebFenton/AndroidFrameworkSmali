.class public interface abstract Lcom/android/internal/textservice/ITextServicesSessionListener;
.super Ljava/lang/Object;
.source "ITextServicesSessionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ITextServicesSessionListener$Stub;,
        Lcom/android/internal/textservice/ITextServicesSessionListener$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onServiceConnected(Lcom/android/internal/textservice/ISpellCheckerSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
