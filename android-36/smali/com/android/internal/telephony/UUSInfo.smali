.class public Lcom/android/internal/telephony/UUSInfo;
.super Ljava/lang/Object;
.source "UUSInfo.java"


# static fields
.field public static final blacklist UUS_DCS_IA5c:I = 0x4

.field public static final blacklist UUS_DCS_OSIHLP:I = 0x1

.field public static final blacklist UUS_DCS_RMCF:I = 0x3

.field public static final blacklist UUS_DCS_USP:I = 0x0

.field public static final blacklist UUS_DCS_X244:I = 0x2

.field public static final blacklist UUS_TYPE1_IMPLICIT:I = 0x0

.field public static final blacklist UUS_TYPE1_NOT_REQUIRED:I = 0x2

.field public static final blacklist UUS_TYPE1_REQUIRED:I = 0x1

.field public static final blacklist UUS_TYPE2_NOT_REQUIRED:I = 0x4

.field public static final blacklist UUS_TYPE2_REQUIRED:I = 0x3

.field public static final blacklist UUS_TYPE3_NOT_REQUIRED:I = 0x6

.field public static final blacklist UUS_TYPE3_REQUIRED:I = 0x5


# instance fields
.field private blacklist mUusData:[B

.field private blacklist mUusDcs:I

.field private blacklist mUusType:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusType:I

    const/4 v0, 0x4

    .line 70
    iput v0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusDcs:I

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusData:[B

    return-void
.end method

.method public constructor blacklist <init>(II[B)V
    .registers 4

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lcom/android/internal/telephony/UUSInfo;->mUusType:I

    .line 76
    iput p2, p0, Lcom/android/internal/telephony/UUSInfo;->mUusDcs:I

    .line 77
    iput-object p3, p0, Lcom/android/internal/telephony/UUSInfo;->mUusData:[B

    return-void
.end method


# virtual methods
.method public greylist-max-r getDcs()I
    .registers 1

    .line 82
    iget p0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusDcs:I

    return p0
.end method

.method public greylist-max-r getType()I
    .registers 1

    .line 91
    iget p0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusType:I

    return p0
.end method

.method public greylist-max-r getUserData()[B
    .registers 1

    .line 100
    iget-object p0, p0, Lcom/android/internal/telephony/UUSInfo;->mUusData:[B

    return-object p0
.end method

.method public blacklist setDcs(I)V
    .registers 2

    .line 86
    iput p1, p0, Lcom/android/internal/telephony/UUSInfo;->mUusDcs:I

    return-void
.end method

.method public blacklist setType(I)V
    .registers 2

    .line 95
    iput p1, p0, Lcom/android/internal/telephony/UUSInfo;->mUusType:I

    return-void
.end method

.method public blacklist setUserData([B)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/android/internal/telephony/UUSInfo;->mUusData:[B

    return-void
.end method
