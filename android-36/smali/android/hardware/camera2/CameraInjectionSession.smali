.class public abstract Landroid/hardware/camera2/CameraInjectionSession;
.super Ljava/lang/Object;
.source "CameraInjectionSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api close()V
.end method
