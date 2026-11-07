.class public interface abstract Lcom/android/internal/app/IVisualQueryRecognitionStatusListener;
.super Ljava/lang/Object;
.source "IVisualQueryRecognitionStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVisualQueryRecognitionStatusListener$Stub;,
        Lcom/android/internal/app/IVisualQueryRecognitionStatusListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVisualQueryRecognitionStatusListener"


# virtual methods
.method public abstract blacklist onStartPerceiving()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onStopPerceiving()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
