.class public final Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;
.super Ljava/lang/Object;
.source "CarrierDisplayNameData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mDataSpn:Ljava/lang/String;

.field private blacklist mPlmn:Ljava/lang/String;

.field private blacklist mShowPlmn:Z

.field private blacklist mShowSpn:Z

.field private blacklist mSpn:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->mSpn:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->mDataSpn:Ljava/lang/String;

    .line 175
    iput-object v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->mPlmn:Ljava/lang/String;

    const/4 v0, 0x0

    .line 176
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->mShowPlmn:Z

    .line 177
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->mShowSpn:Z

    return-void
.end method


# virtual methods
.method public blacklist build()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;
    .registers 8

    .line 182
    new-instance v0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    iget-object v1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->mSpn:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->mDataSpn:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->mShowSpn:Z

    iget-object v4, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->mPlmn:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->mShowPlmn:Z

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZLcom/android/internal/telephony/cdnr/CarrierDisplayNameData-IA;)V

    return-object v0
.end method

.method public blacklist setDataSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;
    .registers 2

    .line 193
    iput-object p1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->mDataSpn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setPlmn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->mPlmn:Ljava/lang/String;

    return-object p0
.end method

.method public blacklist setShowPlmn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;
    .registers 2

    .line 211
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->mShowPlmn:Z

    return-object p0
.end method

.method public blacklist setShowSpn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;
    .registers 2

    .line 205
    iput-boolean p1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->mShowSpn:Z

    return-object p0
.end method

.method public blacklist setSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;
    .registers 2

    .line 187
    iput-object p1, p0, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->mSpn:Ljava/lang/String;

    return-object p0
.end method
