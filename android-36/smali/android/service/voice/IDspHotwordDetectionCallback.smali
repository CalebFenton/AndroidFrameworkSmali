.class public interface abstract Landroid/service/voice/IDspHotwordDetectionCallback;
.super Ljava/lang/Object;
.source "IDspHotwordDetectionCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IDspHotwordDetectionCallback$Stub;,
        Landroid/service/voice/IDspHotwordDetectionCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.voice.IDspHotwordDetectionCallback"


# virtual methods
.method public abstract blacklist onDetected(Landroid/service/voice/HotwordDetectedResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onRejected(Landroid/service/voice/HotwordRejectedResult;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
