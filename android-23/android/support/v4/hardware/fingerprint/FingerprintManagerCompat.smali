.class public Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
.super Ljava/lang/Object;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl;,
        Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    .line 53
    .local v0, "version":I
    const/16 v1, 0x17

    #@4
    if-lt v0, v1, :cond_0

    #@6
    .line 54
    new-instance v1, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;

    #@8
    invoke-direct {v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;-><init>()V

    #@b
    sput-object v1, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    #@d
    .line 37
    :goto_0
    return-void

    #@e
    .line 56
    :cond_0
    new-instance v1, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl;

    #@10
    invoke-direct {v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$LegacyFingerprintManagerCompatImpl;-><init>()V

    #@13
    sput-object v1, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    #@15
    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    #@5
    .line 46
    return-void
.end method

.method public static from(Landroid/content/Context;)Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 43
    new-instance v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;-><init>(Landroid/content/Context;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public authenticate(Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V
    .locals 7
    .param p1, "crypto"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "flags"    # I
    .param p3, "cancel"    # Landroid/support/v4/os/CancellationSignal;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "callback"    # Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    #@0
    .prologue
    .line 95
    sget-object v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    #@2
    iget-object v1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    #@4
    move-object v2, p1

    #@5
    move v3, p2

    #@6
    move-object v4, p3

    #@7
    move-object v5, p4

    #@8
    move-object v6, p5

    #@9
    invoke-interface/range {v0 .. v6}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;->authenticate(Landroid/content/Context;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$CryptoObject;ILandroid/support/v4/os/CancellationSignal;Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback;Landroid/os/Handler;)V

    #@c
    .line 94
    return-void
.end method

.method public hasEnrolledFingerprints()Z
    .locals 2

    #@0
    .prologue
    .line 66
    sget-object v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    #@2
    iget-object v1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    #@4
    invoke-interface {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;->hasEnrolledFingerprints(Landroid/content/Context;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isHardwareDetected()Z
    .locals 2

    #@0
    .prologue
    .line 75
    sget-object v0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->IMPL:Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;

    #@2
    iget-object v1, p0, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat;->mContext:Landroid/content/Context;

    #@4
    invoke-interface {v0, v1}, Landroid/support/v4/hardware/fingerprint/FingerprintManagerCompat$FingerprintManagerCompatImpl;->isHardwareDetected(Landroid/content/Context;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method
