.class public interface abstract Lcom/android/internal/app/IVoiceActionCheckCallback;
.super Ljava/lang/Object;
.source "IVoiceActionCheckCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVoiceActionCheckCallback$Stub;,
        Lcom/android/internal/app/IVoiceActionCheckCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVoiceActionCheckCallback"


# virtual methods
.method public abstract blacklist onComplete(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
