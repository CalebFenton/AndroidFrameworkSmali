.class public Landroid/os/SystemVibrator;
.super Landroid/os/Vibrator;
.source "SystemVibrator.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Vibrator"


# instance fields
.field private final mService:Landroid/os/IVibratorService;

.field private final mToken:Landroid/os/Binder;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 34
    invoke-direct {p0}, Landroid/os/Vibrator;-><init>()V

    #@3
    .line 32
    new-instance v0, Landroid/os/Binder;

    #@5
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@8
    iput-object v0, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    #@a
    .line 36
    const-string/jumbo v0, "vibrator"

    #@d
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v0

    #@11
    .line 35
    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    #@17
    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/os/Vibrator;-><init>(Landroid/content/Context;)V

    #@3
    .line 32
    new-instance v0, Landroid/os/Binder;

    #@5
    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    #@8
    iput-object v0, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    #@a
    .line 42
    const-string/jumbo v0, "vibrator"

    #@d
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@10
    move-result-object v0

    #@11
    .line 41
    invoke-static {v0}, Landroid/os/IVibratorService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVibratorService;

    #@14
    move-result-object v0

    #@15
    iput-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    #@17
    .line 39
    return-void
.end method

.method private static usageForAttributes(Landroid/media/AudioAttributes;)I
    .locals 1
    .param p0, "attributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 100
    if-eqz p0, :cond_0

    #@2
    invoke-virtual {p0}, Landroid/media/AudioAttributes;->getUsage()I

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 3

    #@0
    .prologue
    .line 105
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 106
    return-void

    #@5
    .line 109
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    #@7
    iget-object v2, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    #@9
    invoke-interface {v1, v2}, Landroid/os/IVibratorService;->cancelVibrate(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@c
    .line 104
    :goto_0
    return-void

    #@d
    .line 110
    :catch_0
    move-exception v0

    #@e
    .line 111
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Vibrator"

    #@11
    const-string/jumbo v2, "Failed to cancel vibration."

    #@14
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@17
    goto :goto_0
.end method

.method public hasVibrator()Z
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 47
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 48
    const-string/jumbo v1, "Vibrator"

    #@8
    const-string/jumbo v2, "Failed to vibrate; no vibrator service."

    #@b
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 49
    return v3

    #@f
    .line 52
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    #@11
    invoke-interface {v1}, Landroid/os/IVibratorService;->hasVibrator()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@14
    move-result v1

    #@15
    return v1

    #@16
    .line 53
    :catch_0
    move-exception v0

    #@17
    .line 55
    .local v0, "e":Landroid/os/RemoteException;
    return v3
.end method

.method public vibrate(ILjava/lang/String;JLandroid/media/AudioAttributes;)V
    .locals 9
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "milliseconds"    # J
    .param p5, "attributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 63
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 64
    const-string/jumbo v1, "Vibrator"

    #@7
    const-string/jumbo v2, "Failed to vibrate; no vibrator service."

    #@a
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 65
    return-void

    #@e
    .line 68
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    #@10
    invoke-static {p5}, Landroid/os/SystemVibrator;->usageForAttributes(Landroid/media/AudioAttributes;)I

    #@13
    move-result v6

    #@14
    iget-object v7, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    #@16
    move v2, p1

    #@17
    move-object v3, p2

    #@18
    move-wide v4, p3

    #@19
    invoke-interface/range {v1 .. v7}, Landroid/os/IVibratorService;->vibrate(ILjava/lang/String;JILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    .line 62
    :goto_0
    return-void

    #@1d
    .line 69
    :catch_0
    move-exception v0

    #@1e
    .line 70
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Vibrator"

    #@21
    const-string/jumbo v2, "Failed to vibrate."

    #@24
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@27
    goto :goto_0
.end method

.method public vibrate(ILjava/lang/String;[JILandroid/media/AudioAttributes;)V
    .locals 8
    .param p1, "uid"    # I
    .param p2, "opPkg"    # Ljava/lang/String;
    .param p3, "pattern"    # [J
    .param p4, "repeat"    # I
    .param p5, "attributes"    # Landroid/media/AudioAttributes;

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 81
    const-string/jumbo v0, "Vibrator"

    #@7
    const-string/jumbo v1, "Failed to vibrate; no vibrator service."

    #@a
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@d
    .line 82
    return-void

    #@e
    .line 87
    :cond_0
    array-length v0, p3

    #@f
    if-ge p4, v0, :cond_1

    #@11
    .line 89
    :try_start_0
    iget-object v0, p0, Landroid/os/SystemVibrator;->mService:Landroid/os/IVibratorService;

    #@13
    invoke-static {p5}, Landroid/os/SystemVibrator;->usageForAttributes(Landroid/media/AudioAttributes;)I

    #@16
    move-result v5

    #@17
    .line 90
    iget-object v6, p0, Landroid/os/SystemVibrator;->mToken:Landroid/os/Binder;

    #@19
    move v1, p1

    #@1a
    move-object v2, p2

    #@1b
    move-object v3, p3

    #@1c
    move v4, p4

    #@1d
    .line 89
    invoke-interface/range {v0 .. v6}, Landroid/os/IVibratorService;->vibratePattern(ILjava/lang/String;[JIILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@20
    .line 79
    :goto_0
    return-void

    #@21
    .line 91
    :catch_0
    move-exception v7

    #@22
    .line 92
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "Vibrator"

    #@25
    const-string/jumbo v1, "Failed to vibrate."

    #@28
    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@2b
    goto :goto_0

    #@2c
    .line 95
    .end local v7    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    #@2e
    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    #@31
    throw v0
.end method
