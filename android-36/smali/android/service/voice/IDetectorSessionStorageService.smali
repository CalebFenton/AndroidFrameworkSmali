.class public interface abstract Landroid/service/voice/IDetectorSessionStorageService;
.super Ljava/lang/Object;
.source "IDetectorSessionStorageService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/IDetectorSessionStorageService$Stub;,
        Landroid/service/voice/IDetectorSessionStorageService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.voice.IDetectorSessionStorageService"


# virtual methods
.method public abstract blacklist openFile(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
