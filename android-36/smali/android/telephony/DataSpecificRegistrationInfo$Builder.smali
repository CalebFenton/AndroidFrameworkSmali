.class public final Landroid/telephony/DataSpecificRegistrationInfo$Builder;
.super Ljava/lang/Object;
.source "DataSpecificRegistrationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/DataSpecificRegistrationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mIsDcNrRestricted:Z

.field private blacklist mIsEnDcAvailable:Z

.field private blacklist mIsNrAvailable:Z

.field private blacklist mLteAttachExtraInfo:I

.field private blacklist mLteAttachResultType:I

.field private final blacklist mMaxDataCalls:I

.field private blacklist mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmIsDcNrRestricted(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mIsDcNrRestricted:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsEnDcAvailable(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mIsEnDcAvailable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNrAvailable(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mIsNrAvailable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLteAttachExtraInfo(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mLteAttachExtraInfo:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLteAttachResultType(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mLteAttachResultType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxDataCalls(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)I
    .registers 1

    iget p0, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mMaxDataCalls:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVopsSupportInfo(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)Landroid/telephony/VopsSupportInfo;
    .registers 1

    iget-object p0, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    return-object p0
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "maxDataCalls"    # I

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mLteAttachResultType:I

    .line 323
    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mLteAttachExtraInfo:I

    .line 326
    iput p1, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mMaxDataCalls:I

    .line 327
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/telephony/DataSpecificRegistrationInfo;
    .registers 3

    .line 392
    new-instance v0, Landroid/telephony/DataSpecificRegistrationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/DataSpecificRegistrationInfo;-><init>(Landroid/telephony/DataSpecificRegistrationInfo$Builder;Landroid/telephony/DataSpecificRegistrationInfo-IA;)V

    return-object v0
.end method

.method public blacklist setDcNrRestricted(Z)Landroid/telephony/DataSpecificRegistrationInfo$Builder;
    .registers 2
    .param p1, "isDcNrRestricted"    # Z

    .line 335
    iput-boolean p1, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mIsDcNrRestricted:Z

    .line 336
    return-object p0
.end method

.method public blacklist setEnDcAvailable(Z)Landroid/telephony/DataSpecificRegistrationInfo$Builder;
    .registers 2
    .param p1, "isEnDcAvailable"    # Z

    .line 354
    iput-boolean p1, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mIsEnDcAvailable:Z

    .line 355
    return-object p0
.end method

.method public blacklist setLteAttachExtraInfo(I)Landroid/telephony/DataSpecificRegistrationInfo$Builder;
    .registers 2
    .param p1, "lteAttachExtraInfo"    # I

    .line 384
    iput p1, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mLteAttachExtraInfo:I

    .line 385
    return-object p0
.end method

.method public blacklist setLteAttachResultType(I)Landroid/telephony/DataSpecificRegistrationInfo$Builder;
    .registers 2
    .param p1, "lteAttachResultType"    # I

    .line 374
    iput p1, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mLteAttachResultType:I

    .line 375
    return-object p0
.end method

.method public blacklist setNrAvailable(Z)Landroid/telephony/DataSpecificRegistrationInfo$Builder;
    .registers 2
    .param p1, "isNrAvailable"    # Z

    .line 344
    iput-boolean p1, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mIsNrAvailable:Z

    .line 345
    return-object p0
.end method

.method public blacklist setVopsSupportInfo(Landroid/telephony/VopsSupportInfo;)Landroid/telephony/DataSpecificRegistrationInfo$Builder;
    .registers 2
    .param p1, "vops"    # Landroid/telephony/VopsSupportInfo;

    .line 364
    iput-object p1, p0, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    .line 365
    return-object p0
.end method
