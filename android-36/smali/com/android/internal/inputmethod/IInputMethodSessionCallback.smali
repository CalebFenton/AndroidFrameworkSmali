.class public interface abstract Lcom/android/internal/inputmethod/IInputMethodSessionCallback;
.super Ljava/lang/Object;
.source "IInputMethodSessionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IInputMethodSessionCallback$Stub;,
        Lcom/android/internal/inputmethod/IInputMethodSessionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.inputmethod.IInputMethodSessionCallback"


# virtual methods
.method public abstract blacklist sessionCreated(Lcom/android/internal/inputmethod/IInputMethodSession;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
