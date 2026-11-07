.class public interface abstract Landroid/hardware/biometrics/BiometricTestSession$TestSessionProvider;
.super Ljava/lang/Object;
.source "BiometricTestSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/biometrics/BiometricTestSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TestSessionProvider"
.end annotation


# virtual methods
.method public abstract blacklist createTestSession(Landroid/content/Context;ILandroid/hardware/biometrics/ITestSessionCallback;)Landroid/hardware/biometrics/ITestSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
