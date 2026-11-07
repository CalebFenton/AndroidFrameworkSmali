.class public interface abstract Lcom/android/internal/os/BinderInternal$Observer;
.super Ljava/lang/Object;
.source "BinderInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Observer"
.end annotation


# virtual methods
.method public abstract blacklist callEnded(Lcom/android/internal/os/BinderInternal$CallSession;III)V
.end method

.method public abstract blacklist callStarted(Landroid/os/Binder;II)Lcom/android/internal/os/BinderInternal$CallSession;
.end method

.method public abstract blacklist callThrewException(Lcom/android/internal/os/BinderInternal$CallSession;Ljava/lang/Exception;)V
.end method
