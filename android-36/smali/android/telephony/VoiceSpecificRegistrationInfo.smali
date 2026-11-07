.class public Landroid/telephony/VoiceSpecificRegistrationInfo;
.super Ljava/lang/Object;
.source "VoiceSpecificRegistrationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/VoiceSpecificRegistrationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final blacklist cssSupported:Z

.field public final blacklist defaultRoamingIndicator:I

.field public final blacklist roamingIndicator:I

.field public final blacklist systemIsInPrl:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 132
    new-instance v0, Landroid/telephony/VoiceSpecificRegistrationInfo$1;

    invoke-direct {v0}, Landroid/telephony/VoiceSpecificRegistrationInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/VoiceSpecificRegistrationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    .line 86
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/VoiceSpecificRegistrationInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/VoiceSpecificRegistrationInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor blacklist <init>(Landroid/telephony/VoiceSpecificRegistrationInfo;)V
    .registers 3
    .param p1, "vsri"    # Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iget-boolean v0, p1, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    iput-boolean v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    .line 76
    iget v0, p1, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    iput v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    .line 77
    iget v0, p1, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    iput v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    .line 78
    iget v0, p1, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    iput v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    .line 79
    return-void
.end method

.method constructor blacklist <init>(ZIII)V
    .registers 5
    .param p1, "cssSupported"    # Z
    .param p2, "roamingIndicator"    # I
    .param p3, "systemIsInPrl"    # I
    .param p4, "defaultRoamingIndicator"    # I

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean p1, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    .line 63
    iput p2, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    .line 64
    iput p3, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    .line 65
    iput p4, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    .line 66
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 118
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 120
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_2a

    instance-of v2, p1, Landroid/telephony/VoiceSpecificRegistrationInfo;

    if-nez v2, :cond_c

    goto :goto_2a

    .line 124
    :cond_c
    move-object v2, p1

    check-cast v2, Landroid/telephony/VoiceSpecificRegistrationInfo;

    .line 125
    .local v2, "other":Landroid/telephony/VoiceSpecificRegistrationInfo;
    iget-boolean v3, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    iget-boolean v4, v2, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    iget v4, v2, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    iget v4, v2, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    if-ne v3, v4, :cond_28

    iget v3, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    iget v4, v2, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    if-ne v3, v4, :cond_28

    goto :goto_29

    :cond_28
    move v0, v1

    :goto_29
    return v0

    .line 121
    .end local v2    # "other":Landroid/telephony/VoiceSpecificRegistrationInfo;
    :cond_2a
    :goto_2a
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 112
    iget-boolean v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    .line 113
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 112
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoiceSpecificRegistrationInfo { mCssSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mSystemIsInPrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDefaultRoamingIndicator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 90
    iget-boolean v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->cssSupported:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 91
    iget v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->roamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->systemIsInPrl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Landroid/telephony/VoiceSpecificRegistrationInfo;->defaultRoamingIndicator:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    return-void
.end method
