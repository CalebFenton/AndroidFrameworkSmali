.class public interface abstract Lcom/android/internal/textservice/ITextServicesManager;
.super Ljava/lang/Object;
.source "ITextServicesManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ITextServicesManager$Stub;,
        Lcom/android/internal/textservice/ITextServicesManager$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist finishSpellCheckerService(ILcom/android/internal/textservice/ISpellCheckerSessionListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCurrentSpellChecker(ILjava/lang/String;)Landroid/view/textservice/SpellCheckerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getCurrentSpellCheckerSubtype(IZ)Landroid/view/textservice/SpellCheckerSubtype;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getEnabledSpellCheckers(I)[Landroid/view/textservice/SpellCheckerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist getSpellCheckerService(ILjava/lang/String;Ljava/lang/String;Lcom/android/internal/textservice/ITextServicesSessionListener;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isSpellCheckerEnabled(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
