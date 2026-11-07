.class public interface abstract Lcom/android/internal/inputmethod/IInputContentUriToken;
.super Ljava/lang/Object;
.source "IInputContentUriToken.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;,
        Lcom/android/internal/inputmethod/IInputContentUriToken$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.inputmethod.IInputContentUriToken"


# virtual methods
.method public abstract blacklist release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist take()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
