.class public final Landroid/telephony/SmsCbCmasInfo;
.super Ljava/lang/Object;
.source "SmsCbCmasInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsCbCmasInfo$Certainty;,
        Landroid/telephony/SmsCbCmasInfo$Urgency;,
        Landroid/telephony/SmsCbCmasInfo$Severity;,
        Landroid/telephony/SmsCbCmasInfo$ResponseType;,
        Landroid/telephony/SmsCbCmasInfo$Category;,
        Landroid/telephony/SmsCbCmasInfo$Class;
    }
.end annotation


# static fields
.field public static final whitelist CMAS_CATEGORY_CBRNE:I = 0xa

.field public static final whitelist CMAS_CATEGORY_ENV:I = 0x7

.field public static final whitelist CMAS_CATEGORY_FIRE:I = 0x5

.field public static final whitelist CMAS_CATEGORY_GEO:I = 0x0

.field public static final whitelist CMAS_CATEGORY_HEALTH:I = 0x6

.field public static final whitelist CMAS_CATEGORY_INFRA:I = 0x9

.field public static final whitelist CMAS_CATEGORY_MET:I = 0x1

.field public static final whitelist CMAS_CATEGORY_OTHER:I = 0xb

.field public static final whitelist CMAS_CATEGORY_RESCUE:I = 0x4

.field public static final whitelist CMAS_CATEGORY_SAFETY:I = 0x2

.field public static final whitelist CMAS_CATEGORY_SECURITY:I = 0x3

.field public static final whitelist CMAS_CATEGORY_TRANSPORT:I = 0x8

.field public static final whitelist CMAS_CATEGORY_UNKNOWN:I = -0x1

.field public static final whitelist CMAS_CERTAINTY_LIKELY:I = 0x1

.field public static final whitelist CMAS_CERTAINTY_OBSERVED:I = 0x0

.field public static final whitelist CMAS_CERTAINTY_UNKNOWN:I = -0x1

.field public static final whitelist CMAS_CLASS_CHILD_ABDUCTION_EMERGENCY:I = 0x3

.field public static final whitelist CMAS_CLASS_CMAS_EXERCISE:I = 0x5

.field public static final whitelist CMAS_CLASS_EXTREME_THREAT:I = 0x1

.field public static final whitelist CMAS_CLASS_OPERATOR_DEFINED_USE:I = 0x6

.field public static final whitelist CMAS_CLASS_PRESIDENTIAL_LEVEL_ALERT:I = 0x0

.field public static final whitelist CMAS_CLASS_REQUIRED_MONTHLY_TEST:I = 0x4

.field public static final whitelist CMAS_CLASS_SEVERE_THREAT:I = 0x2

.field public static final whitelist CMAS_CLASS_UNKNOWN:I = -0x1

.field public static final whitelist CMAS_RESPONSE_TYPE_ASSESS:I = 0x6

.field public static final whitelist CMAS_RESPONSE_TYPE_AVOID:I = 0x5

.field public static final whitelist CMAS_RESPONSE_TYPE_EVACUATE:I = 0x1

.field public static final whitelist CMAS_RESPONSE_TYPE_EXECUTE:I = 0x3

.field public static final whitelist CMAS_RESPONSE_TYPE_MONITOR:I = 0x4

.field public static final whitelist CMAS_RESPONSE_TYPE_NONE:I = 0x7

.field public static final whitelist CMAS_RESPONSE_TYPE_PREPARE:I = 0x2

.field public static final whitelist CMAS_RESPONSE_TYPE_SHELTER:I = 0x0

.field public static final whitelist CMAS_RESPONSE_TYPE_UNKNOWN:I = -0x1

.field public static final whitelist CMAS_SEVERITY_EXTREME:I = 0x0

.field public static final whitelist CMAS_SEVERITY_SEVERE:I = 0x1

.field public static final whitelist CMAS_SEVERITY_UNKNOWN:I = -0x1

.field public static final whitelist CMAS_URGENCY_EXPECTED:I = 0x1

.field public static final whitelist CMAS_URGENCY_IMMEDIATE:I = 0x0

.field public static final whitelist CMAS_URGENCY_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/SmsCbCmasInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o mCategory:I

.field private final greylist-max-o mCertainty:I

.field private final greylist-max-o mMessageClass:I

.field private final greylist-max-o mResponseType:I

.field private final greylist-max-o mSeverity:I

.field private final greylist-max-o mUrgency:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 391
    new-instance v0, Landroid/telephony/SmsCbCmasInfo$1;

    invoke-direct {v0}, Landroid/telephony/SmsCbCmasInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/SmsCbCmasInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIIIII)V
    .registers 7
    .param p1, "messageClass"    # I
    .param p2, "category"    # I
    .param p3, "responseType"    # I
    .param p4, "severity"    # I
    .param p5, "urgency"    # I
    .param p6, "certainty"    # I

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput p1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 290
    iput p2, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 291
    iput p3, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 292
    iput p4, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 293
    iput p5, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 294
    iput p6, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 295
    return-void
.end method

.method constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    .line 301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    .line 305
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 386
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCategory()I
    .registers 2

    .line 336
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    return v0
.end method

.method public whitelist getCertainty()I
    .registers 2

    .line 369
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    return v0
.end method

.method public whitelist getMessageClass()I
    .registers 2

    .line 328
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    return v0
.end method

.method public whitelist getResponseType()I
    .registers 2

    .line 344
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    return v0
.end method

.method public whitelist getSeverity()I
    .registers 2

    .line 352
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    return v0
.end method

.method public whitelist getUrgency()I
    .registers 2

    .line 360
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmsCbCmasInfo{messageClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", category="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", responseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", severity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", urgency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", certainty="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

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
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 315
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mMessageClass:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCategory:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mResponseType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mSeverity:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mUrgency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Landroid/telephony/SmsCbCmasInfo;->mCertainty:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    return-void
.end method
