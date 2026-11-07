.class public final Landroid/telephony/EmergencyRegistrationResult;
.super Ljava/lang/Object;
.source "EmergencyRegistrationResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/EmergencyRegistrationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mAccessNetworkType:I

.field private blacklist mCountryIso:Ljava/lang/String;

.field private blacklist mDomain:I

.field private blacklist mIsEmcBearerSupported:Z

.field private blacklist mIsVopsSupported:Z

.field private blacklist mMcc:Ljava/lang/String;

.field private blacklist mMnc:Ljava/lang/String;

.field private blacklist mNwProvidedEmc:I

.field private blacklist mNwProvidedEmf:I

.field private blacklist mRegState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 314
    new-instance v0, Landroid/telephony/EmergencyRegistrationResult$1;

    invoke-direct {v0}, Landroid/telephony/EmergencyRegistrationResult$1;-><init>()V

    sput-object v0, Landroid/telephony/EmergencyRegistrationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(IIIZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .param p1, "accessNetwork"    # I
    .param p2, "regState"    # I
    .param p3, "domain"    # I
    .param p4, "isVopsSupported"    # Z
    .param p5, "isEmcBearerSupported"    # Z
    .param p6, "emc"    # I
    .param p7, "emf"    # I
    .param p8, "mcc"    # Ljava/lang/String;
    .param p9, "mnc"    # Ljava/lang/String;
    .param p10, "iso"    # Ljava/lang/String;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    .line 111
    iput p2, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    .line 112
    iput p3, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    .line 113
    iput-boolean p4, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    .line 114
    iput-boolean p5, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    .line 115
    iput p6, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    .line 116
    iput p7, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    .line 117
    iput-object p8, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    .line 118
    iput-object p9, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    .line 119
    iput-object p10, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    .line 120
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    invoke-direct {p0, p1}, Landroid/telephony/EmergencyRegistrationResult;->readFromParcel(Landroid/os/Parcel;)V

    .line 146
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/EmergencyRegistrationResult-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/EmergencyRegistrationResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/EmergencyRegistrationResult;)V
    .registers 3
    .param p1, "s"    # Landroid/telephony/EmergencyRegistrationResult;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iget v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    .line 130
    iget v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    .line 131
    iget v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    .line 132
    iget-boolean v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    iput-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    .line 133
    iget-boolean v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    iput-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    .line 134
    iget v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    .line 135
    iget v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    .line 136
    iget-object v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    .line 138
    iget-object v0, p1, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    iput-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    .line 139
    return-void
.end method

.method private blacklist readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    .line 303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    .line 304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    .line 305
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    .line 306
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    .line 312
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 284
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 259
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 260
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_60

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_60

    .line 261
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/EmergencyRegistrationResult;

    .line 262
    .local v2, "that":Landroid/telephony/EmergencyRegistrationResult;
    iget v3, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    iget v4, v2, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    if-ne v3, v4, :cond_5e

    iget v3, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    iget v4, v2, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    if-ne v3, v4, :cond_5e

    iget v3, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    iget v4, v2, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    if-ne v3, v4, :cond_5e

    iget-boolean v3, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    iget-boolean v4, v2, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    if-ne v3, v4, :cond_5e

    iget-boolean v3, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    iget-boolean v4, v2, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    if-ne v3, v4, :cond_5e

    iget v3, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    iget v4, v2, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    if-ne v3, v4, :cond_5e

    iget v3, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    iget v4, v2, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    if-ne v3, v4, :cond_5e

    iget-object v3, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    .line 269
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    .line 270
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5e

    iget-object v3, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    .line 271
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5e

    goto :goto_5f

    :cond_5e
    move v0, v1

    .line 262
    :goto_5f
    return v0

    .line 260
    .end local v2    # "that":Landroid/telephony/EmergencyRegistrationResult;
    :cond_60
    :goto_60
    return v1
.end method

.method public whitelist getAccessNetwork()I
    .registers 2

    .line 154
    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    return v0
.end method

.method public whitelist getCountryIso()Ljava/lang/String;
    .registers 2

    .line 238
    iget-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDomain()I
    .registers 2

    .line 172
    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    return v0
.end method

.method public whitelist getMcc()Ljava/lang/String;
    .registers 2

    .line 220
    iget-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMnc()Ljava/lang/String;
    .registers 2

    .line 229
    iget-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getNwProvidedEmc()I
    .registers 2

    .line 201
    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    return v0
.end method

.method public whitelist getNwProvidedEmf()I
    .registers 2

    .line 211
    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    return v0
.end method

.method public whitelist getRegState()I
    .registers 2

    .line 163
    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 12

    .line 276
    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    .line 277
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    .line 278
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    iget-object v9, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    iget-object v10, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    filled-new-array/range {v1 .. v10}, [Ljava/lang/Object;

    move-result-object v0

    .line 276
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isEmcBearerSupported()Z
    .registers 2

    .line 191
    iget-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    return v0
.end method

.method public whitelist isVopsSupported()Z
    .registers 2

    .line 181
    iget-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ accessNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    .line 244
    invoke-static {v1}, Landroid/telephony/AccessNetworkConstants$AccessNetworkType;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", regState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    .line 245
    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->registrationStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", domain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    .line 246
    invoke-static {v1}, Landroid/telephony/NetworkRegistrationInfo;->domainToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", vops="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emcBearer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", emf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", iso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 243
    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 289
    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mAccessNetworkType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mRegState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mDomain:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsVopsSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 293
    iget-boolean v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mIsEmcBearerSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 294
    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mNwProvidedEmf:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 298
    iget-object v0, p0, Landroid/telephony/EmergencyRegistrationResult;->mCountryIso:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString8(Ljava/lang/String;)V

    .line 299
    return-void
.end method
