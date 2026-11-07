.class public interface abstract Lcom/android/internal/app/IVisualQueryDetectionAttentionListener;
.super Ljava/lang/Object;
.source "IVisualQueryDetectionAttentionListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IVisualQueryDetectionAttentionListener$Stub;,
        Lcom/android/internal/app/IVisualQueryDetectionAttentionListener$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IVisualQueryDetectionAttentionListener"


# virtual methods
.method public abstract blacklist onAttentionGained(Landroid/service/voice/VisualQueryAttentionResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onAttentionLost(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
