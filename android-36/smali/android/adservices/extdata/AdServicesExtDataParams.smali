.class public final Landroid/adservices/extdata/AdServicesExtDataParams;
.super Ljava/lang/Object;
.source "AdServicesExtDataParams.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/adservices/extdata/AdServicesExtDataParams$Builder;,
        Landroid/adservices/extdata/AdServicesExtDataParams$UserManualInteraction;,
        Landroid/adservices/extdata/AdServicesExtDataParams$TriStateBoolean;
    }
.end annotation


# static fields
.field public static final blacklist BOOLEAN_FALSE:I = 0x0

.field public static final blacklist BOOLEAN_TRUE:I = 0x1

.field public static final blacklist BOOLEAN_UNKNOWN:I = -0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/extdata/AdServicesExtDataParams;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist STATE_MANUAL_INTERACTIONS_RECORDED:I = 0x1

.field public static final blacklist STATE_NO_MANUAL_INTERACTIONS_RECORDED:I = -0x1

.field public static final blacklist STATE_UNKNOWN:I


# instance fields
.field private final blacklist mIsAdultAccount:I

.field private final blacklist mIsMeasurementConsented:I

.field private final blacklist mIsNotificationDisplayed:I

.field private final blacklist mIsU18Account:I

.field private final blacklist mManualInteractionWithConsentStatus:I

.field private final blacklist mMeasurementRollbackApexVersion:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 153
    new-instance v0, Landroid/adservices/extdata/AdServicesExtDataParams$1;

    invoke-direct {v0}, Landroid/adservices/extdata/AdServicesExtDataParams$1;-><init>()V

    sput-object v0, Landroid/adservices/extdata/AdServicesExtDataParams;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(IIIIIJ)V
    .registers 8
    .param p1, "isNotificationDisplayed"    # I
    .param p2, "isMeasurementConsented"    # I
    .param p3, "isU18Account"    # I
    .param p4, "isAdultAccount"    # I
    .param p5, "manualInteractionWithConsentStatus"    # I
    .param p6, "measurementRollbackApexVersion"    # J

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput p1, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsNotificationDisplayed:I

    .line 135
    iput p2, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsMeasurementConsented:I

    .line 136
    iput p3, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsU18Account:I

    .line 137
    iput p4, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsAdultAccount:I

    .line 138
    iput p5, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mManualInteractionWithConsentStatus:I

    .line 139
    iput-wide p6, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mMeasurementRollbackApexVersion:J

    .line 140
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsNotificationDisplayed:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsMeasurementConsented:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsU18Account:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsAdultAccount:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mManualInteractionWithConsentStatus:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mMeasurementRollbackApexVersion:J

    .line 149
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/extdata/AdServicesExtDataParams-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/extdata/AdServicesExtDataParams;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getIsAdultAccount()I
    .registers 2

    .line 202
    iget v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsAdultAccount:I

    return v0
.end method

.method public whitelist getIsMeasurementConsented()I
    .registers 2

    .line 190
    iget v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsMeasurementConsented:I

    return v0
.end method

.method public whitelist getIsNotificationDisplayed()I
    .registers 2

    .line 184
    iget v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsNotificationDisplayed:I

    return v0
.end method

.method public whitelist getIsU18Account()I
    .registers 2

    .line 196
    iget v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsU18Account:I

    return v0
.end method

.method public whitelist getManualInteractionWithConsentStatus()I
    .registers 2

    .line 208
    iget v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mManualInteractionWithConsentStatus:I

    return v0
.end method

.method public whitelist getMeasurementRollbackApexVersion()J
    .registers 3

    .line 216
    iget-wide v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mMeasurementRollbackApexVersion:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 9

    .line 222
    iget v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsNotificationDisplayed:I

    .line 230
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsMeasurementConsented:I

    .line 231
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsU18Account:I

    .line 232
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsAdultAccount:I

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mManualInteractionWithConsentStatus:I

    .line 234
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mMeasurementRollbackApexVersion:J

    .line 235
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    move-result-object v0

    .line 222
    const-string v1, "AdServicesExtDataParams{mIsNotificationDisplayed=%d, mIsMsmtConsented=%d, mIsU18Account=%d, mIsAdultAccount=%d, mManualInteractionWithConsentStatus=%d, mMsmtRollbackApexVersion=%d}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 173
    iget v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsNotificationDisplayed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    iget v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsMeasurementConsented:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    iget v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsU18Account:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    iget v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mIsAdultAccount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mManualInteractionWithConsentStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget-wide v0, p0, Landroid/adservices/extdata/AdServicesExtDataParams;->mMeasurementRollbackApexVersion:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 179
    return-void
.end method
