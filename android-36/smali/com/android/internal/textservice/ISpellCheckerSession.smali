.class public interface abstract Lcom/android/internal/textservice/ISpellCheckerSession;
.super Ljava/lang/Object;
.source "ISpellCheckerSession.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ISpellCheckerSession$Stub;,
        Lcom/android/internal/textservice/ISpellCheckerSession$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o onCancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onClose()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onGetSentenceSuggestionsMultiple([Landroid/view/textservice/TextInfo;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract greylist-max-o onGetSuggestionsMultiple([Landroid/view/textservice/TextInfo;IZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
