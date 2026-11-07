.class public interface abstract Lcom/android/internal/inputmethod/IBooleanListener;
.super Ljava/lang/Object;
.source "IBooleanListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/inputmethod/IBooleanListener$Stub;,
        Lcom/android/internal/inputmethod/IBooleanListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.inputmethod.IBooleanListener"


# virtual methods
.method public abstract blacklist onResult(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
