.class public interface abstract Landroid/service/voice/ISandboxedDetectionService$IPingMe;
.super Ljava/lang/Object;
.source "ISandboxedDetectionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/ISandboxedDetectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IPingMe"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/ISandboxedDetectionService$IPingMe$Stub;,
        Landroid/service/voice/ISandboxedDetectionService$IPingMe$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.service.voice.ISandboxedDetectionService.IPingMe"


# virtual methods
.method public abstract blacklist onPing()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
