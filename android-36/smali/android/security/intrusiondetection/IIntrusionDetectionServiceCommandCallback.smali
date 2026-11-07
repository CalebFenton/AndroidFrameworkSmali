.class public interface abstract Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback;
.super Ljava/lang/Object;
.source "IIntrusionDetectionServiceCommandCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback$ErrorCode;,
        Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback$Stub;,
        Landroid/security/intrusiondetection/IIntrusionDetectionServiceCommandCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.intrusiondetection.IIntrusionDetectionServiceCommandCallback"


# virtual methods
.method public abstract blacklist onFailure(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist onSuccess()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
