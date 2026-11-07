.class Landroid/os/SystemVibrator$SingleVibratorStateListener;
.super Ljava/lang/Object;
.source "SystemVibrator.java"

# interfaces
.implements Landroid/os/Vibrator$OnVibratorStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/SystemVibrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingleVibratorStateListener"
.end annotation


# instance fields
.field private final blacklist mAllVibratorsListener:Landroid/os/SystemVibrator$MultiVibratorStateListener;

.field private final blacklist mVibratorIdx:I


# direct methods
.method constructor blacklist <init>(Landroid/os/SystemVibrator$MultiVibratorStateListener;I)V
    .registers 3
    .param p1, "listener"    # Landroid/os/SystemVibrator$MultiVibratorStateListener;
    .param p2, "vibratorIdx"    # I

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 330
    iput-object p1, p0, Landroid/os/SystemVibrator$SingleVibratorStateListener;->mAllVibratorsListener:Landroid/os/SystemVibrator$MultiVibratorStateListener;

    .line 331
    iput p2, p0, Landroid/os/SystemVibrator$SingleVibratorStateListener;->mVibratorIdx:I

    .line 332
    return-void
.end method


# virtual methods
.method public whitelist onVibratorStateChanged(Z)V
    .registers 4
    .param p1, "isVibrating"    # Z

    .line 336
    iget-object v0, p0, Landroid/os/SystemVibrator$SingleVibratorStateListener;->mAllVibratorsListener:Landroid/os/SystemVibrator$MultiVibratorStateListener;

    iget v1, p0, Landroid/os/SystemVibrator$SingleVibratorStateListener;->mVibratorIdx:I

    invoke-virtual {v0, v1, p1}, Landroid/os/SystemVibrator$MultiVibratorStateListener;->onVibrating(IZ)V

    .line 337
    return-void
.end method
