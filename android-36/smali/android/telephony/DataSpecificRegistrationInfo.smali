.class public final Landroid/telephony/DataSpecificRegistrationInfo;
.super Ljava/lang/Object;
.source "DataSpecificRegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/DataSpecificRegistrationInfo$Builder;,
        Landroid/telephony/DataSpecificRegistrationInfo$LteAttachExtraInfo;,
        Landroid/telephony/DataSpecificRegistrationInfo$LteAttachResultType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/DataSpecificRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LTE_ATTACH_EXTRA_INFO_CSFB_NOT_PREFERRED:I = 0x1

.field public static final whitelist LTE_ATTACH_EXTRA_INFO_NONE:I = 0x0

.field public static final whitelist LTE_ATTACH_EXTRA_INFO_SMS_ONLY:I = 0x2

.field public static final whitelist LTE_ATTACH_TYPE_COMBINED:I = 0x2

.field public static final whitelist LTE_ATTACH_TYPE_EPS_ONLY:I = 0x1

.field public static final whitelist LTE_ATTACH_TYPE_UNKNOWN:I


# instance fields
.field public final blacklist isDcNrRestricted:Z

.field public final blacklist isEnDcAvailable:Z

.field public final blacklist isNrAvailable:Z

.field private final blacklist mLteAttachExtraInfo:I

.field private final blacklist mLteAttachResultType:I

.field private final blacklist mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

.field public final blacklist maxDataCalls:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 257
    new-instance v0, Landroid/telephony/DataSpecificRegistrationInfo$1;

    invoke-direct {v0}, Landroid/telephony/DataSpecificRegistrationInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/DataSpecificRegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IZZZLandroid/telephony/VopsSupportInfo;)V
    .registers 7
    .param p1, "maxDataCalls"    # I
    .param p2, "isDcNrRestricted"    # Z
    .param p3, "isNrAvailable"    # Z
    .param p4, "isEnDcAvailable"    # Z
    .param p5, "vops"    # Landroid/telephony/VopsSupportInfo;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p1, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    .line 168
    iput-boolean p2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    .line 169
    iput-boolean p3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    .line 170
    iput-boolean p4, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    .line 171
    iput-object p5, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    .line 172
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    .line 173
    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    .line 174
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    .line 197
    const-class v0, Landroid/telephony/VopsSupportInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Landroid/telephony/VopsSupportInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/VopsSupportInfo;

    iput-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    .line 200
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/DataSpecificRegistrationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/DataSpecificRegistrationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/telephony/DataSpecificRegistrationInfo$Builder;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    invoke-static {p1}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->-$$Nest$fgetmMaxDataCalls(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    .line 152
    invoke-static {p1}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->-$$Nest$fgetmIsDcNrRestricted(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    .line 153
    invoke-static {p1}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->-$$Nest$fgetmIsNrAvailable(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    .line 154
    invoke-static {p1}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->-$$Nest$fgetmIsEnDcAvailable(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    .line 155
    invoke-static {p1}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->-$$Nest$fgetmVopsSupportInfo(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)Landroid/telephony/VopsSupportInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    .line 156
    invoke-static {p1}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->-$$Nest$fgetmLteAttachResultType(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    .line 157
    invoke-static {p1}, Landroid/telephony/DataSpecificRegistrationInfo$Builder;->-$$Nest$fgetmLteAttachExtraInfo(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    .line 158
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/telephony/DataSpecificRegistrationInfo$Builder;Landroid/telephony/DataSpecificRegistrationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/DataSpecificRegistrationInfo;-><init>(Landroid/telephony/DataSpecificRegistrationInfo$Builder;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/DataSpecificRegistrationInfo;)V
    .registers 3
    .param p1, "dsri"    # Landroid/telephony/DataSpecificRegistrationInfo;

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    iget v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    .line 184
    iget-boolean v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    .line 185
    iget-boolean v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    .line 186
    iget-boolean v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    iput-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    .line 187
    iget-object v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    iput-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    .line 188
    iget v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    .line 189
    iget v0, p1, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    iput v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    .line 190
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 243
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 245
    :cond_4
    instance-of v1, p1, Landroid/telephony/DataSpecificRegistrationInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 247
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/telephony/DataSpecificRegistrationInfo;

    .line 248
    .local v1, "other":Landroid/telephony/DataSpecificRegistrationInfo;
    iget v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    iget v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    if-ne v3, v4, :cond_3c

    iget-boolean v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    iget-boolean v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    if-ne v3, v4, :cond_3c

    iget-boolean v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    iget-boolean v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    if-ne v3, v4, :cond_3c

    iget-boolean v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    iget-boolean v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    if-ne v3, v4, :cond_3c

    iget-object v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    iget-object v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    .line 252
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    iget v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    iget v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    if-ne v3, v4, :cond_3c

    iget v3, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    iget v4, v1, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    if-ne v3, v4, :cond_3c

    goto :goto_3d

    :cond_3c
    move v0, v2

    .line 248
    :goto_3d
    return v0
.end method

.method public whitelist getLteAttachExtraInfo()I
    .registers 2

    .line 308
    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    return v0
.end method

.method public whitelist getLteAttachResultType()I
    .registers 2

    .line 299
    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    return v0
.end method

.method public whitelist getLteVopsSupportInfo()Landroid/telephony/LteVopsSupportInfo;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 278
    iget-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    instance-of v0, v0, Landroid/telephony/LteVopsSupportInfo;

    if-eqz v0, :cond_b

    .line 279
    iget-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    check-cast v0, Landroid/telephony/LteVopsSupportInfo;

    goto :goto_11

    .line 280
    :cond_b
    new-instance v0, Landroid/telephony/LteVopsSupportInfo;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1}, Landroid/telephony/LteVopsSupportInfo;-><init>(II)V

    .line 278
    :goto_11
    return-object v0
.end method

.method public whitelist getVopsSupportInfo()Landroid/telephony/VopsSupportInfo;
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 9

    .line 236
    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    .line 237
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object v5, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    .line 238
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v0

    .line 236
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 222
    const-string v1, " :{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " maxDataCalls = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isDcNrRestricted = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isNrAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " isEnDcAvailable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLteAttachResultType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mLteAttachExtraInfo = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 230
    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 204
    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->maxDataCalls:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 206
    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 207
    iget-boolean v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 208
    iget-object v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mVopsSupportInfo:Landroid/telephony/VopsSupportInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 209
    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachResultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Landroid/telephony/DataSpecificRegistrationInfo;->mLteAttachExtraInfo:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    return-void
.end method
