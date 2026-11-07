.class public interface abstract Lcom/android/internal/telecom/IStreamingCallAdapter;
.super Ljava/lang/Object;
.source "IStreamingCallAdapter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IStreamingCallAdapter$Stub;,
        Lcom/android/internal/telecom/IStreamingCallAdapter$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IStreamingCallAdapter"


# virtual methods
.method public abstract blacklist setStreamingState(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
