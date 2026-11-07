.class public final Landroid/os/vibrator/VendorVibrationSession;
.super Ljava/lang/Object;
.source "VendorVibrationSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/vibrator/VendorVibrationSession$Callback;,
        Landroid/os/vibrator/VendorVibrationSession$Status;
    }
.end annotation


# static fields
.field public static final whitelist STATUS_CANCELED:I = 0x4

.field public static final whitelist STATUS_IGNORED:I = 0x2

.field public static final whitelist STATUS_SUCCESS:I = 0x1

.field public static final whitelist STATUS_UNKNOWN:I = 0x0

.field public static final whitelist STATUS_UNKNOWN_ERROR:I = 0x5

.field public static final whitelist STATUS_UNSUPPORTED:I = 0x3

.field private static final blacklist TAG:Ljava/lang/String; = "VendorVibrationSession"


# instance fields
.field private final blacklist mSession:Landroid/os/vibrator/IVibrationSession;


# direct methods
.method public constructor blacklist <init>(Landroid/os/vibrator/IVibrationSession;)V
    .registers 2
    .param p1, "session"    # Landroid/os/vibrator/IVibrationSession;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iput-object p1, p0, Landroid/os/vibrator/VendorVibrationSession;->mSession:Landroid/os/vibrator/IVibrationSession;

    .line 121
    return-void
.end method


# virtual methods
.method public whitelist cancel()V
    .registers 4

    .line 165
    :try_start_0
    iget-object v0, p0, Landroid/os/vibrator/VendorVibrationSession;->mSession:Landroid/os/vibrator/IVibrationSession;

    invoke-interface {v0}, Landroid/os/vibrator/IVibrationSession;->cancelSession()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 169
    goto :goto_11

    .line 166
    :catch_6
    move-exception v0

    .line 167
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VendorVibrationSession"

    const-string v2, "Failed to cancel vendor vibration session."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 170
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public whitelist test-api close()V
    .registers 4

    .line 184
    :try_start_0
    iget-object v0, p0, Landroid/os/vibrator/VendorVibrationSession;->mSession:Landroid/os/vibrator/IVibrationSession;

    invoke-interface {v0}, Landroid/os/vibrator/IVibrationSession;->finishSession()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6

    .line 188
    goto :goto_11

    .line 185
    :catch_6
    move-exception v0

    .line 186
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VendorVibrationSession"

    const-string v2, "Failed to finish vendor vibration session."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 189
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_11
    return-void
.end method

.method public whitelist vibrate(Landroid/os/VibrationEffect;Ljava/lang/String;)V
    .registers 6
    .param p1, "effect"    # Landroid/os/VibrationEffect;
    .param p2, "reason"    # Ljava/lang/String;

    .line 146
    :try_start_0
    iget-object v0, p0, Landroid/os/vibrator/VendorVibrationSession;->mSession:Landroid/os/vibrator/IVibrationSession;

    invoke-static {p1}, Landroid/os/CombinedVibration;->createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/os/vibrator/IVibrationSession;->vibrate(Landroid/os/CombinedVibration;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 150
    goto :goto_15

    .line 147
    :catch_a
    move-exception v0

    .line 148
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VendorVibrationSession"

    const-string v2, "Failed to vibrate in a vendor vibration session."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 151
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_15
    return-void
.end method
