.class public interface abstract Lcom/android/internal/telecom/IInternalServiceRetriever;
.super Ljava/lang/Object;
.source "IInternalServiceRetriever.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telecom/IInternalServiceRetriever$Stub;,
        Lcom/android/internal/telecom/IInternalServiceRetriever$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telecom.IInternalServiceRetriever"


# virtual methods
.method public abstract blacklist getDeviceIdleController()Lcom/android/internal/telecom/IDeviceIdleControllerAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
