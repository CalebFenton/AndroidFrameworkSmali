.class public interface abstract Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback;
.super Ljava/lang/Object;
.source "IIntrusionDetectionServiceStateCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback$State;,
        Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback$Stub;,
        Landroid/security/intrusiondetection/IIntrusionDetectionServiceStateCallback$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.security.intrusiondetection.IIntrusionDetectionServiceStateCallback"


# virtual methods
.method public abstract blacklist onStateChange(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
