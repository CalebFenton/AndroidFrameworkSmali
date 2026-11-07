.class public final Landroid/telephony/satellite/NtnSignalStrength;
.super Ljava/lang/Object;
.source "NtnSignalStrength.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/satellite/NtnSignalStrength$NtnSignalStrengthLevel;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/satellite/NtnSignalStrength;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist NTN_SIGNAL_STRENGTH_GOOD:I = 0x3

.field public static final whitelist NTN_SIGNAL_STRENGTH_GREAT:I = 0x4

.field public static final whitelist NTN_SIGNAL_STRENGTH_MODERATE:I = 0x2

.field public static final whitelist NTN_SIGNAL_STRENGTH_NONE:I = 0x0

.field public static final whitelist NTN_SIGNAL_STRENGTH_POOR:I = 0x1


# instance fields
.field private blacklist mLevel:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 107
    new-instance v0, Landroid/telephony/satellite/NtnSignalStrength$1;

    invoke-direct {v0}, Landroid/telephony/satellite/NtnSignalStrength$1;-><init>()V

    sput-object v0, Landroid/telephony/satellite/NtnSignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 2
    .param p1, "level"    # I

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    .line 65
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-direct {p0, p1}, Landroid/telephony/satellite/NtnSignalStrength;->readFromParcel(Landroid/os/Parcel;)V

    .line 76
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/satellite/NtnSignalStrength-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/satellite/NtnSignalStrength;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Landroid/telephony/satellite/NtnSignalStrength;)V
    .registers 3
    .param p1, "source"    # Landroid/telephony/satellite/NtnSignalStrength;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-nez p1, :cond_7

    const/4 v0, 0x0

    goto :goto_b

    :cond_7
    invoke-virtual {p1}, Landroid/telephony/satellite/NtnSignalStrength;->getLevel()I

    move-result v0

    :goto_b
    iput v0, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    .line 72
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    .line 105
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 125
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 126
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_1e

    .line 128
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/satellite/NtnSignalStrength;

    .line 129
    .local v2, "that":Landroid/telephony/satellite/NtnSignalStrength;
    iget v3, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    iget v4, v2, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    if-ne v3, v4, :cond_1c

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    return v0

    .line 126
    .end local v2    # "that":Landroid/telephony/satellite/NtnSignalStrength;
    :cond_1e
    :goto_1e
    return v1
.end method

.method public whitelist getLevel()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 120
    iget v0, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NtnSignalStrength{mLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 100
    iget v0, p0, Landroid/telephony/satellite/NtnSignalStrength;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return-void
.end method
