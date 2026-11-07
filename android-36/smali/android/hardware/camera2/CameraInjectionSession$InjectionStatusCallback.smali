.class public abstract Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback;
.super Ljava/lang/Object;
.source "CameraInjectionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/camera2/CameraInjectionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InjectionStatusCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/CameraInjectionSession$InjectionStatusCallback$ErrorCode;
    }
.end annotation


# static fields
.field public static final blacklist ERROR_INJECTION_SERVICE:I = 0x1

.field public static final blacklist ERROR_INJECTION_SESSION:I = 0x0

.field public static final blacklist ERROR_INJECTION_UNSUPPORTED:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist onInjectionError(I)V
.end method

.method public abstract blacklist onInjectionSucceeded(Landroid/hardware/camera2/CameraInjectionSession;)V
.end method
