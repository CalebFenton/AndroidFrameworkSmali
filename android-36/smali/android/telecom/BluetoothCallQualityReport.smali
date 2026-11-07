.class public final Landroid/telecom/BluetoothCallQualityReport;
.super Ljava/lang/Object;
.source "BluetoothCallQualityReport.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/BluetoothCallQualityReport$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telecom/BluetoothCallQualityReport;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EVENT_BLUETOOTH_CALL_QUALITY_REPORT:Ljava/lang/String; = "android.telecom.event.BLUETOOTH_CALL_QUALITY_REPORT"

.field public static final whitelist EXTRA_BLUETOOTH_CALL_QUALITY_REPORT:Ljava/lang/String; = "android.telecom.extra.BLUETOOTH_CALL_QUALITY_REPORT"


# instance fields
.field private final blacklist mChoppyVoice:Z

.field private final blacklist mNegativeAcknowledgementCount:I

.field private final blacklist mPacketsNotReceivedCount:I

.field private final blacklist mRetransmittedPacketsCount:I

.field private final blacklist mRssiDbm:I

.field private final blacklist mSentTimestampMillis:J

.field private final blacklist mSnrDb:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 139
    new-instance v0, Landroid/telecom/BluetoothCallQualityReport$1;

    invoke-direct {v0}, Landroid/telecom/BluetoothCallQualityReport$1;-><init>()V

    sput-object v0, Landroid/telecom/BluetoothCallQualityReport;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSentTimestampMillis:J

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mChoppyVoice:Z

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRssiDbm:I

    .line 265
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSnrDb:I

    .line 266
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRetransmittedPacketsCount:I

    .line 267
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mPacketsNotReceivedCount:I

    .line 268
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mNegativeAcknowledgementCount:I

    .line 269
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telecom/BluetoothCallQualityReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/BluetoothCallQualityReport;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telecom/BluetoothCallQualityReport$Builder;)V
    .registers 4
    .param p1, "builder"    # Landroid/telecom/BluetoothCallQualityReport$Builder;

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 272
    invoke-static {p1}, Landroid/telecom/BluetoothCallQualityReport$Builder;->-$$Nest$fgetmSentTimestampMillis(Landroid/telecom/BluetoothCallQualityReport$Builder;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSentTimestampMillis:J

    .line 273
    invoke-static {p1}, Landroid/telecom/BluetoothCallQualityReport$Builder;->-$$Nest$fgetmChoppyVoice(Landroid/telecom/BluetoothCallQualityReport$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mChoppyVoice:Z

    .line 274
    invoke-static {p1}, Landroid/telecom/BluetoothCallQualityReport$Builder;->-$$Nest$fgetmRssiDbm(Landroid/telecom/BluetoothCallQualityReport$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRssiDbm:I

    .line 275
    invoke-static {p1}, Landroid/telecom/BluetoothCallQualityReport$Builder;->-$$Nest$fgetmSnrDb(Landroid/telecom/BluetoothCallQualityReport$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSnrDb:I

    .line 276
    invoke-static {p1}, Landroid/telecom/BluetoothCallQualityReport$Builder;->-$$Nest$fgetmRetransmittedPacketsCount(Landroid/telecom/BluetoothCallQualityReport$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRetransmittedPacketsCount:I

    .line 277
    invoke-static {p1}, Landroid/telecom/BluetoothCallQualityReport$Builder;->-$$Nest$fgetmPacketsNotReceivedCount(Landroid/telecom/BluetoothCallQualityReport$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mPacketsNotReceivedCount:I

    .line 278
    invoke-static {p1}, Landroid/telecom/BluetoothCallQualityReport$Builder;->-$$Nest$fgetmNegativeAcknowledgementCount(Landroid/telecom/BluetoothCallQualityReport$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mNegativeAcknowledgementCount:I

    .line 279
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telecom/BluetoothCallQualityReport$Builder;Landroid/telecom/BluetoothCallQualityReport-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telecom/BluetoothCallQualityReport;-><init>(Landroid/telecom/BluetoothCallQualityReport$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 125
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "o"    # Ljava/lang/Object;

    .line 154
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 155
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_44

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_44

    .line 156
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telecom/BluetoothCallQualityReport;

    .line 157
    .local v2, "that":Landroid/telecom/BluetoothCallQualityReport;
    iget-wide v3, p0, Landroid/telecom/BluetoothCallQualityReport;->mSentTimestampMillis:J

    iget-wide v5, v2, Landroid/telecom/BluetoothCallQualityReport;->mSentTimestampMillis:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_42

    iget-boolean v3, p0, Landroid/telecom/BluetoothCallQualityReport;->mChoppyVoice:Z

    iget-boolean v4, v2, Landroid/telecom/BluetoothCallQualityReport;->mChoppyVoice:Z

    if-ne v3, v4, :cond_42

    iget v3, p0, Landroid/telecom/BluetoothCallQualityReport;->mRssiDbm:I

    iget v4, v2, Landroid/telecom/BluetoothCallQualityReport;->mRssiDbm:I

    if-ne v3, v4, :cond_42

    iget v3, p0, Landroid/telecom/BluetoothCallQualityReport;->mSnrDb:I

    iget v4, v2, Landroid/telecom/BluetoothCallQualityReport;->mSnrDb:I

    if-ne v3, v4, :cond_42

    iget v3, p0, Landroid/telecom/BluetoothCallQualityReport;->mRetransmittedPacketsCount:I

    iget v4, v2, Landroid/telecom/BluetoothCallQualityReport;->mRetransmittedPacketsCount:I

    if-ne v3, v4, :cond_42

    iget v3, p0, Landroid/telecom/BluetoothCallQualityReport;->mPacketsNotReceivedCount:I

    iget v4, v2, Landroid/telecom/BluetoothCallQualityReport;->mPacketsNotReceivedCount:I

    if-ne v3, v4, :cond_42

    iget v3, p0, Landroid/telecom/BluetoothCallQualityReport;->mNegativeAcknowledgementCount:I

    iget v4, v2, Landroid/telecom/BluetoothCallQualityReport;->mNegativeAcknowledgementCount:I

    if-ne v3, v4, :cond_42

    goto :goto_43

    :cond_42
    move v0, v1

    :goto_43
    return v0

    .line 155
    .end local v2    # "that":Landroid/telecom/BluetoothCallQualityReport;
    :cond_44
    :goto_44
    return v1
.end method

.method public whitelist getNegativeAcknowledgementCount()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mNegativeAcknowledgementCount:I

    return v0
.end method

.method public whitelist getPacketsNotReceivedCount()I
    .registers 2

    .line 108
    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mPacketsNotReceivedCount:I

    return v0
.end method

.method public whitelist getRetransmittedPacketsCount()I
    .registers 2

    .line 98
    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRetransmittedPacketsCount:I

    return v0
.end method

.method public whitelist getRssiDbm()I
    .registers 2

    .line 82
    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRssiDbm:I

    return v0
.end method

.method public whitelist getSentTimestampMillis()J
    .registers 3

    .line 65
    iget-wide v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSentTimestampMillis:J

    return-wide v0
.end method

.method public whitelist getSnrDb()I
    .registers 2

    .line 90
    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSnrDb:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 167
    iget-wide v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSentTimestampMillis:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-boolean v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mChoppyVoice:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRssiDbm:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSnrDb:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRetransmittedPacketsCount:I

    .line 168
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mPacketsNotReceivedCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mNegativeAcknowledgementCount:I

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v2 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 167
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isChoppyVoice()Z
    .registers 2

    .line 74
    iget-boolean v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mChoppyVoice:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 130
    iget-wide v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSentTimestampMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 131
    iget-boolean v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mChoppyVoice:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 132
    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRssiDbm:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mSnrDb:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mRetransmittedPacketsCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mPacketsNotReceivedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    iget v0, p0, Landroid/telecom/BluetoothCallQualityReport;->mNegativeAcknowledgementCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    return-void
.end method
