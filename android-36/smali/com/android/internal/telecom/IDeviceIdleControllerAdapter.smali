.class public interface abstract Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;
.super Ljava/lang/Object;
.source "IDeviceIdleControllerAdapter.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Stub;,
        Lcom/android/internal/telecom/IDeviceIdleControllerAdapter$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IDeviceIdleControllerAdapter"


# virtual methods
.method public abstract blacklist exemptAppTemporarilyForEvent(Ljava/lang/String;JILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
