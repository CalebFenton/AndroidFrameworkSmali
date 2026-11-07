.class public abstract Landroid/os/CombinedVibration;
.super Ljava/lang/Object;
.source "CombinedVibration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/CombinedVibration$Mono;,
        Landroid/os/CombinedVibration$ParallelCombination;,
        Landroid/os/CombinedVibration$SequentialCombination;,
        Landroid/os/CombinedVibration$Sequential;,
        Landroid/os/CombinedVibration$Stereo;,
        Landroid/os/CombinedVibration$VibratorAdapter;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/CombinedVibration;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PARCEL_TOKEN_MONO:I = 0x1

.field private static final blacklist PARCEL_TOKEN_SEQUENTIAL:I = 0x3

.field private static final blacklist PARCEL_TOKEN_STEREO:I = 0x2


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1009
    new-instance v0, Landroid/os/CombinedVibration$1;

    invoke-direct {v0}, Landroid/os/CombinedVibration$1;-><init>()V

    sput-object v0, Landroid/os/CombinedVibration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static whitelist createParallel(Landroid/os/VibrationEffect;)Landroid/os/CombinedVibration;
    .registers 2
    .param p0, "effect"    # Landroid/os/VibrationEffect;

    .line 63
    new-instance v0, Landroid/os/CombinedVibration$Mono;

    invoke-direct {v0, p0}, Landroid/os/CombinedVibration$Mono;-><init>(Landroid/os/VibrationEffect;)V

    .line 64
    .local v0, "combined":Landroid/os/CombinedVibration;
    invoke-virtual {v0}, Landroid/os/CombinedVibration;->validate()V

    .line 65
    return-object v0
.end method

.method public static whitelist startParallel()Landroid/os/CombinedVibration$ParallelCombination;
    .registers 1

    .line 78
    new-instance v0, Landroid/os/CombinedVibration$ParallelCombination;

    invoke-direct {v0}, Landroid/os/CombinedVibration$ParallelCombination;-><init>()V

    return-object v0
.end method

.method public static blacklist startSequential()Landroid/os/CombinedVibration$SequentialCombination;
    .registers 1

    .line 94
    new-instance v0, Landroid/os/CombinedVibration$SequentialCombination;

    invoke-direct {v0}, Landroid/os/CombinedVibration$SequentialCombination;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract blacklist adapt(Landroid/os/CombinedVibration$VibratorAdapter;)Landroid/os/CombinedVibration;
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist getDuration()J
.end method

.method public abstract blacklist getDuration(Landroid/util/SparseArray;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/VibratorInfo;",
            ">;)J"
        }
    .end annotation
.end method

.method public abstract blacklist hasVendorEffects()Z
.end method

.method public abstract blacklist hasVibrator(I)Z
.end method

.method public blacklist isHapticFeedbackCandidate()Z
    .registers 2

    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method public abstract blacklist toDebugString()Ljava/lang/String;
.end method

.method public abstract blacklist transform(Landroid/os/VibrationEffect$Transformation;Ljava/lang/Object;)Landroid/os/CombinedVibration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ParamT:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/VibrationEffect$Transformation<",
            "TParamT;>;TParamT;)",
            "Landroid/os/CombinedVibration;"
        }
    .end annotation
.end method

.method public abstract blacklist validate()V
.end method
