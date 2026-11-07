.class public interface abstract Landroid/security/intrusiondetection/IIntrusionDetectionService;
.super Ljava/lang/Object;
.source "IIntrusionDetectionService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/intrusiondetection/IIntrusionDetectionService$Stub;,
        Landroid/security/intrusiondetection/IIntrusionDetectionService$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.intrusiondetection.IIntrusionDetectionService"


# virtual methods
.method public abstract blacklist addStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist disable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist enable(Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist removeStateCallback(Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
