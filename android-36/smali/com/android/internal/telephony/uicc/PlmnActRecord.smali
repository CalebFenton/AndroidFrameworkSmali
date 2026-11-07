.class public Lcom/android/internal/telephony/uicc/PlmnActRecord;
.super Ljava/lang/Object;
.source "PlmnActRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist ACCESS_TECH_CDMA2000_1XRTT:I = 0x10

.field public static final blacklist ACCESS_TECH_CDMA2000_HRPD:I = 0x20

.field public static final blacklist ACCESS_TECH_EUTRAN:I = 0x4000

.field public static final blacklist ACCESS_TECH_GSM:I = 0x80

.field public static final blacklist ACCESS_TECH_GSM_COMPACT:I = 0x40

.field public static final blacklist ACCESS_TECH_RESERVED:I = 0x3f0f

.field public static final blacklist ACCESS_TECH_UTRAN:I = 0x8000

.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/uicc/PlmnActRecord;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ENCODED_LENGTH:I = 0x5


# instance fields
.field public final blacklist accessTechs:I

.field public final blacklist plmn:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 156
    new-instance v0, Lcom/android/internal/telephony/uicc/PlmnActRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/PlmnActRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    .line 62
    iput p2, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    return-void
.end method

.method public constructor blacklist <init>([BI)V
    .registers 4

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-static {p1, p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdPlmnToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    add-int/lit8 v0, p2, 0x3

    .line 72
    aget-byte v0, p1, v0

    invoke-static {v0}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p2, p2, 0x4

    aget-byte p1, p1, p2

    .line 73
    invoke-static {p1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result p1

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    return-void
.end method

.method private blacklist accessTechString()Ljava/lang/String;
    .registers 4

    .line 88
    iget v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    if-nez v0, :cond_7

    .line 89
    const-string p0, "NONE"

    return-object p0

    .line 92
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    const v2, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_19

    .line 94
    const-string v1, "UTRAN|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    :cond_19
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_24

    .line 97
    const-string v1, "EUTRAN|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    :cond_24
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2f

    .line 100
    const-string v1, "GSM|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_2f
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_3a

    .line 103
    const-string v1, "GSM_COMPACT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    :cond_3a
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_45

    .line 106
    const-string v1, "CDMA2000_HRPD|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_45
    iget v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_50

    .line 109
    const-string v1, "CDMA2000_1XRTT|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_50
    iget p0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    and-int/lit16 v1, p0, 0x3f0f

    if-eqz v1, :cond_69

    and-int/lit16 p0, p0, 0x3f0f

    .line 112
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "UNKNOWN:%x|"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    :cond_69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist getRecords([B)[Lcom/android/internal/telephony/uicc/PlmnActRecord;
    .registers 6

    if-eqz p0, :cond_20

    .line 127
    array-length v0, p0

    if-eqz v0, :cond_20

    array-length v0, p0

    rem-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_b

    goto :goto_20

    .line 133
    :cond_b
    array-length v0, p0

    div-int/lit8 v0, v0, 0x5

    .line 136
    new-array v1, v0, [Lcom/android/internal/telephony/uicc/PlmnActRecord;

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v0, :cond_1f

    .line 139
    new-instance v3, Lcom/android/internal/telephony/uicc/PlmnActRecord;

    mul-int/lit8 v4, v2, 0x5

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/uicc/PlmnActRecord;-><init>([BI)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1f
    return-object v1

    .line 129
    :cond_20
    :goto_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Malformed PlmnActRecord, bytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p0, :cond_32

    .line 130
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_33

    :cond_32
    move-object p0, v1

    :goto_33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 129
    const-string v0, "PlmnActRecord"

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
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

    .line 176
    instance-of v0, p1, Lcom/android/internal/telephony/uicc/PlmnActRecord;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 178
    :cond_6
    check-cast p1, Lcom/android/internal/telephony/uicc/PlmnActRecord;

    .line 179
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget p0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    iget p1, p1, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    if-ne p0, p1, :cond_1a

    const/4 p0, 0x1

    return p0

    :cond_1a
    return v1
.end method

.method public blacklist getBytes()[B
    .registers 4

    const/4 v0, 0x5

    .line 80
    new-array v0, v0, [B

    .line 81
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToBcdPlmn(Ljava/lang/String;[BI)V

    .line 82
    iget p0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    const/4 v1, 0x4

    int-to-byte p0, p0

    .line 83
    aput-byte p0, v0, v1

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    iget p0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 120
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "{PLMN=%s,AccessTechs=%s}"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 152
    iget-object p2, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->plmn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget p0, p0, Lcom/android/internal/telephony/uicc/PlmnActRecord;->accessTechs:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
