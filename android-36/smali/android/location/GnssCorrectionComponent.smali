.class public final Landroid/location/GnssCorrectionComponent;
.super Ljava/lang/Object;
.source "GnssCorrectionComponent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssCorrectionComponent$GnssInterval;,
        Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/location/GnssCorrectionComponent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mPseudorangeCorrection:Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;

.field private final blacklist mSourceKey:Ljava/lang/String;

.field private final blacklist mValidityInterval:Landroid/location/GnssCorrectionComponent$GnssInterval;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 90
    new-instance v0, Landroid/location/GnssCorrectionComponent$1;

    invoke-direct {v0}, Landroid/location/GnssCorrectionComponent$1;-><init>()V

    sput-object v0, Landroid/location/GnssCorrectionComponent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/location/GnssCorrectionComponent$GnssInterval;Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;)V
    .registers 5
    .param p1, "sourceKey"    # Ljava/lang/String;
    .param p2, "validityInterval"    # Landroid/location/GnssCorrectionComponent$GnssInterval;
    .param p3, "pseudorangeCorrection"    # Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "SourceKey cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "ValidityInterval cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v0, "PseudorangeCorrection cannot be null"

    invoke-static {p3, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iput-object p1, p0, Landroid/location/GnssCorrectionComponent;->mSourceKey:Ljava/lang/String;

    .line 68
    iput-object p2, p0, Landroid/location/GnssCorrectionComponent;->mValidityInterval:Landroid/location/GnssCorrectionComponent$GnssInterval;

    .line 69
    iput-object p3, p0, Landroid/location/GnssCorrectionComponent;->mPseudorangeCorrection:Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;

    .line 70
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 111
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getPseudorangeCorrection()Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;
    .registers 2

    .line 87
    iget-object v0, p0, Landroid/location/GnssCorrectionComponent;->mPseudorangeCorrection:Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;

    return-object v0
.end method

.method public blacklist getSourceKey()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/location/GnssCorrectionComponent;->mSourceKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValidityInterval()Landroid/location/GnssCorrectionComponent$GnssInterval;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/location/GnssCorrectionComponent;->mValidityInterval:Landroid/location/GnssCorrectionComponent$GnssInterval;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 116
    iget-object v0, p0, Landroid/location/GnssCorrectionComponent;->mSourceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Landroid/location/GnssCorrectionComponent;->mValidityInterval:Landroid/location/GnssCorrectionComponent$GnssInterval;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 118
    iget-object v0, p0, Landroid/location/GnssCorrectionComponent;->mPseudorangeCorrection:Landroid/location/GnssCorrectionComponent$PseudorangeCorrection;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 119
    return-void
.end method
