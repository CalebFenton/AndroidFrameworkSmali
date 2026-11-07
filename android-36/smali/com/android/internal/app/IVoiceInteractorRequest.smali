.class public interface abstract Lcom/android/internal/app/IVoiceInteractorRequest;
.super Ljava/lang/Object;
.source "IVoiceInteractorRequest.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceInteractorRequest$Stub;,
        Lcom/android/internal/app/IVoiceInteractorRequest$Default;
    }
.end annotation


# virtual methods
.method public abstract greylist-max-o cancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
