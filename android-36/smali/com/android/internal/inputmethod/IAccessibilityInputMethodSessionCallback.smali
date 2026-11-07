.class public interface abstract Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback;
.super Ljava/lang/Object;
.source "IAccessibilityInputMethodSessionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Stub;,
        Lcom/android/internal/inputmethod/IAccessibilityInputMethodSessionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.inputmethod.IAccessibilityInputMethodSessionCallback"


# virtual methods
.method public abstract blacklist sessionCreated(Lcom/android/internal/inputmethod/IAccessibilityInputMethodSession;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
