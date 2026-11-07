.class public interface abstract Lcom/android/internal/textservice/ISpellCheckerService;
.super Ljava/lang/Object;
.source "ISpellCheckerService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/textservice/ISpellCheckerService$Stub;,
        Lcom/android/internal/textservice/ISpellCheckerService$Default;
    }
.end annotation


# virtual methods
.method public abstract blacklist getISpellCheckerSession(Ljava/lang/String;Lcom/android/internal/textservice/ISpellCheckerSessionListener;Landroid/os/Bundle;ILcom/android/internal/textservice/ISpellCheckerServiceCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
