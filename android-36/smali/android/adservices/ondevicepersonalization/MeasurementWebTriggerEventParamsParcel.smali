.class public final Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;
.super Ljava/lang/Object;
.source "MeasurementWebTriggerEventParamsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAppPackageName:Ljava/lang/String;

.field private blacklist mCertDigest:Ljava/lang/String;

.field private blacklist mDestinationUrl:Landroid/net/Uri;

.field private blacklist mEventData:[B

.field private blacklist mIsolatedService:Landroid/content/ComponentName;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 225
    new-instance v0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel$1;

    invoke-direct {v0}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel$1;-><init>()V

    sput-object v0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;)V
    .registers 8
    .param p1, "params"    # Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;

    .line 70
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->getDestinationUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->getAppPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->getIsolatedService()Landroid/content/ComponentName;

    move-result-object v3

    .line 71
    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->getCertDigest()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParams;->getEventData()[B

    move-result-object v5

    .line 70
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;-><init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;[B)V

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/Uri;Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;[B)V
    .registers 9
    .param p1, "destinationUrl"    # Landroid/net/Uri;
    .param p2, "appPackageName"    # Ljava/lang/String;
    .param p3, "isolatedService"    # Landroid/content/ComponentName;
    .param p4, "certDigest"    # Ljava/lang/String;
    .param p5, "eventData"    # [B

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mCertDigest:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mEventData:[B

    .line 115
    iput-object p1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mDestinationUrl:Landroid/net/Uri;

    .line 116
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mDestinationUrl:Landroid/net/Uri;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 118
    iput-object p2, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mAppPackageName:Ljava/lang/String;

    .line 119
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mAppPackageName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 121
    iput-object p3, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mIsolatedService:Landroid/content/ComponentName;

    .line 122
    const-class v1, Landroid/annotation/NonNull;

    iget-object v2, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mIsolatedService:Landroid/content/ComponentName;

    invoke-static {v1, v0, v2}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 124
    iput-object p4, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mCertDigest:Ljava/lang/String;

    .line 125
    iput-object p5, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mEventData:[B

    .line 128
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 11
    .param p1, "in"    # Landroid/os/Parcel;

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mCertDigest:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mEventData:[B

    .line 202
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    .line 203
    .local v1, "flg":B
    sget-object v2, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 204
    .local v2, "destinationUrl":Landroid/net/Uri;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 205
    .local v3, "appPackageName":Ljava/lang/String;
    sget-object v4, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 206
    .local v4, "isolatedService":Landroid/content/ComponentName;
    and-int/lit8 v5, v1, 0x8

    if-nez v5, :cond_26

    move-object v5, v0

    goto :goto_2a

    :cond_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 207
    .local v5, "certDigest":Ljava/lang/String;
    :goto_2a
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    .line 209
    .local v6, "eventData":[B
    iput-object v2, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mDestinationUrl:Landroid/net/Uri;

    .line 210
    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mDestinationUrl:Landroid/net/Uri;

    invoke-static {v7, v0, v8}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 212
    iput-object v3, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mAppPackageName:Ljava/lang/String;

    .line 213
    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mAppPackageName:Ljava/lang/String;

    invoke-static {v7, v0, v8}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 215
    iput-object v4, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mIsolatedService:Landroid/content/ComponentName;

    .line 216
    const-class v7, Landroid/annotation/NonNull;

    iget-object v8, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mIsolatedService:Landroid/content/ComponentName;

    invoke-static {v7, v0, v8}, Lcom/android/ondevicepersonalization/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 218
    iput-object v5, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mCertDigest:Ljava/lang/String;

    .line 219
    iput-object v6, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mEventData:[B

    .line 222
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 244
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAppPackageName()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mAppPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getCertDigest()Ljava/lang/String;
    .registers 2

    .line 163
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mCertDigest:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDestinationUrl()Landroid/net/Uri;
    .registers 2

    .line 135
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mDestinationUrl:Landroid/net/Uri;

    return-object v0
.end method

.method public blacklist getEventData()[B
    .registers 2

    .line 172
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mEventData:[B

    return-object v0
.end method

.method public blacklist getIsolatedService()Landroid/content/ComponentName;
    .registers 2

    .line 152
    iget-object v0, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mIsolatedService:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, "flg":B
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mCertDigest:Ljava/lang/String;

    if-eqz v1, :cond_8

    or-int/lit8 v1, v0, 0x8

    int-to-byte v0, v1

    .line 183
    :cond_8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 184
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mDestinationUrl:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 185
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mAppPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mIsolatedService:Landroid/content/ComponentName;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 187
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mCertDigest:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mCertDigest:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    :cond_23
    iget-object v1, p0, Landroid/adservices/ondevicepersonalization/MeasurementWebTriggerEventParamsParcel;->mEventData:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 189
    return-void
.end method
