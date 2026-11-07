.class public Lcom/android/internal/telephony/uicc/AdnCapacity;
.super Ljava/lang/Object;
.source "AdnCapacity.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/uicc/AdnCapacity;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mHashCode:I

.field private blacklist mMaxAdnCount:I

.field private blacklist mMaxAnrCount:I

.field private blacklist mMaxAnrLength:I

.field private blacklist mMaxEmailCount:I

.field private blacklist mMaxEmailLength:I

.field private blacklist mMaxNameLength:I

.field private blacklist mMaxNumberLength:I

.field private blacklist mUsedAdnCount:I

.field private blacklist mUsedAnrCount:I

.field private blacklist mUsedEmailCount:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 128
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnCapacity$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/AdnCapacity$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/AdnCapacity;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    .line 58
    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/uicc/AdnCapacity;-><init>(IIIIIIIIII)V

    return-void
.end method

.method public constructor blacklist <init>(IIIIIIIIII)V
    .registers 12

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mHashCode:I

    .line 45
    iput p1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAdnCount:I

    .line 46
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedAdnCount:I

    .line 47
    iput p3, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxEmailCount:I

    .line 48
    iput p4, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedEmailCount:I

    .line 49
    iput p5, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAnrCount:I

    .line 50
    iput p6, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedAnrCount:I

    .line 51
    iput p7, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxNameLength:I

    .line 52
    iput p8, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxNumberLength:I

    .line 53
    iput p9, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxEmailLength:I

    .line 54
    iput p10, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAnrLength:I

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
    .registers 5

    .line 174
    instance-of v0, p1, Lcom/android/internal/telephony/uicc/AdnCapacity;

    const/4 v1, 0x0

    if-eqz v0, :cond_59

    .line 175
    check-cast p1, Lcom/android/internal/telephony/uicc/AdnCapacity;

    .line 176
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxAdnCount()I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAdnCount:I

    if-ne v0, v2, :cond_59

    .line 177
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getUsedAdnCount()I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedAdnCount:I

    if-ne v0, v2, :cond_59

    .line 178
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxEmailCount()I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxEmailCount:I

    if-ne v0, v2, :cond_59

    .line 179
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getUsedEmailCount()I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedEmailCount:I

    if-ne v0, v2, :cond_59

    .line 180
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxAnrCount()I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAnrCount:I

    if-ne v0, v2, :cond_59

    .line 181
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getUsedAnrCount()I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedAnrCount:I

    if-ne v0, v2, :cond_59

    .line 182
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxNameLength()I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxNameLength:I

    if-ne v0, v2, :cond_59

    .line 183
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxNumberLength()I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxNumberLength:I

    if-ne v0, v2, :cond_59

    .line 184
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxEmailLength()I

    move-result v0

    iget v2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxEmailLength:I

    if-ne v0, v2, :cond_59

    .line 185
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnCapacity;->getMaxAnrLength()I

    move-result p1

    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAnrLength:I

    if-ne p1, p0, :cond_59

    const/4 p0, 0x1

    return p0

    :cond_59
    return v1
.end method

.method public blacklist getMaxAdnCount()I
    .registers 1

    .line 62
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAdnCount:I

    return p0
.end method

.method public blacklist getMaxAnrCount()I
    .registers 1

    .line 78
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAnrCount:I

    return p0
.end method

.method public blacklist getMaxAnrLength()I
    .registers 1

    .line 98
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAnrLength:I

    return p0
.end method

.method public blacklist getMaxEmailCount()I
    .registers 1

    .line 70
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxEmailCount:I

    return p0
.end method

.method public blacklist getMaxEmailLength()I
    .registers 1

    .line 94
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxEmailLength:I

    return p0
.end method

.method public blacklist getMaxNameLength()I
    .registers 1

    .line 86
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxNameLength:I

    return p0
.end method

.method public blacklist getMaxNumberLength()I
    .registers 1

    .line 90
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxNumberLength:I

    return p0
.end method

.method public blacklist getUsedAdnCount()I
    .registers 1

    .line 66
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedAdnCount:I

    return p0
.end method

.method public blacklist getUsedAnrCount()I
    .registers 1

    .line 82
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedAnrCount:I

    return p0
.end method

.method public blacklist getUsedEmailCount()I
    .registers 1

    .line 74
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedEmailCount:I

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 193
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mHashCode:I

    if-nez v0, :cond_35

    .line 194
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAdnCount:I

    mul-int/lit8 v0, v0, 0x1f

    .line 195
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedAdnCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 196
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxEmailCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 197
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedEmailCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 198
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAnrCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 199
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedAnrCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 200
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxNameLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 201
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxNumberLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 202
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxEmailLength:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 203
    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAnrLength:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mHashCode:I

    .line 205
    :cond_35
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mHashCode:I

    return p0
.end method

.method public blacklist isSimEmpty()Z
    .registers 1

    .line 106
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedAdnCount:I

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isSimFull()Z
    .registers 2

    .line 102
    iget v0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAdnCount:I

    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedAdnCount:I

    if-ne v0, p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist isSimValid()Z
    .registers 1

    .line 110
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAdnCount:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdnRecordsCapacity : max adn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAdnCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", used adn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedAdnCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxEmailCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", used email="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedEmailCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max anr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAnrCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", used anr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedAnrCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max name length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxNameLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max number length ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxNumberLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max email length ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxEmailLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", max anr length ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAnrLength:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 160
    iget p2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAdnCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget p2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedAdnCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget p2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxEmailCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget p2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedEmailCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget p2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAnrCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget p2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mUsedAnrCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget p2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxNameLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget p2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxNumberLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    iget p2, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxEmailLength:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    iget p0, p0, Lcom/android/internal/telephony/uicc/AdnCapacity;->mMaxAnrLength:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
