.class public interface abstract Lcom/android/internal/util/ObservableServiceConnection$Callback;
.super Ljava/lang/Object;
.source "ObservableServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/ObservableServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract blacklist onConnected(Lcom/android/internal/util/ObservableServiceConnection;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "TT;>;TT;)V"
        }
    .end annotation
.end method

.method public abstract blacklist onDisconnected(Lcom/android/internal/util/ObservableServiceConnection;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/ObservableServiceConnection<",
            "TT;>;I)V"
        }
    .end annotation
.end method
