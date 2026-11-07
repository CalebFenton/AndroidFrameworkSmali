.class public Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;
.super Ljava/lang/Object;
.source "CarrierDisplayNameData.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mDataSpn:Ljava/lang/String;

.field private final blacklist mPlmn:Ljava/lang/String;

.field private final blacklist mShowPlmn:Z

.field private final blacklist mShowSpn:Z

.field private final blacklist mSpn:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 134
    new-instance v0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mSpn:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mDataSpn:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mPlmn:Ljava/lang/String;

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowSpn:Z

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowPlmn:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V
    .registers 7

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1c

    if-nez p2, :cond_1c

    .line 51
    const-string p2, "CarrierDisplayNameData"

    const-string v0, "Data SPN must be provided if SPN is provided"

    invoke-static {p2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p2

    if-nez p2, :cond_16

    move-object p2, p1

    goto :goto_1c

    .line 53
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 59
    :cond_1c
    :goto_1c
    iput-object p1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mSpn:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mDataSpn:Ljava/lang/String;

    .line 61
    iput-boolean p3, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowSpn:Z

    .line 62
    iput-object p4, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mPlmn:Ljava/lang/String;

    .line 63
    iput-boolean p5, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowPlmn:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/telephony/cdnr/CarrierDisplayNameData-IA;)V
    .registers 7

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_3f

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_3f

    .line 151
    :cond_12
    check-cast p1, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    .line 152
    iget-boolean v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowSpn:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowSpn:Z

    if-ne v2, v3, :cond_3f

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowPlmn:Z

    iget-boolean v3, p1, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowPlmn:Z

    if-ne v2, v3, :cond_3f

    iget-object v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mSpn:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mSpn:Ljava/lang/String;

    .line 154
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mDataSpn:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mDataSpn:Ljava/lang/String;

    .line 155
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mPlmn:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mPlmn:Ljava/lang/String;

    .line 156
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3f

    return v0

    :cond_3f
    :goto_3f
    return v1
.end method

.method public blacklist getDataSpn()Ljava/lang/String;
    .registers 1

    .line 79
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mDataSpn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getPlmn()Ljava/lang/String;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mPlmn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist getSpn()Ljava/lang/String;
    .registers 1

    .line 71
    iget-object p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mSpn:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 161
    iget-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mSpn:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mDataSpn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mPlmn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowSpn:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowPlmn:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public blacklist shouldShowPlmn()Z
    .registers 1

    .line 103
    iget-boolean p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowPlmn:Z

    return p0
.end method

.method public blacklist shouldShowSpn()Z
    .registers 1

    .line 95
    iget-boolean p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowSpn:Z

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 108
    iget-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mSpn:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mDataSpn:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowSpn:Z

    .line 109
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mPlmn:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowPlmn:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 108
    const-string v0, "{ spn = %s, dataSpn = %s, showSpn = %b, plmn = %s, showPlmn = %b"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 119
    iget-object p2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mSpn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget-object p2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mDataSpn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 121
    iget-object p2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mPlmn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-boolean p2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowSpn:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 123
    iget-boolean p0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;->mShowPlmn:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
