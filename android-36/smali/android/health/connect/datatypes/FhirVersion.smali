.class public final Landroid/health/connect/datatypes/FhirVersion;
.super Ljava/lang/Object;
.source "FhirVersion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/health/connect/datatypes/FhirVersion;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist R4B_FHIR_VERSION:Landroid/health/connect/datatypes/FhirVersion;

.field private static final blacklist R4_FHIR_VERSION:Landroid/health/connect/datatypes/FhirVersion;

.field private static final blacklist SUPPORTED_FHIR_VERSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/health/connect/datatypes/FhirVersion;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist VERSION_REGEX:Ljava/lang/String; = "(\\d+)\\.(\\d+)\\.(\\d+)"


# instance fields
.field private final blacklist mMajor:I

.field private final blacklist mMinor:I

.field private final blacklist mPatch:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    const-string v0, "4.0.1"

    invoke-static {v0}, Landroid/health/connect/datatypes/FhirVersion;->parseFhirVersion(Ljava/lang/String;)Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/FhirVersion;->R4_FHIR_VERSION:Landroid/health/connect/datatypes/FhirVersion;

    .line 44
    const-string v0, "4.3.0"

    invoke-static {v0}, Landroid/health/connect/datatypes/FhirVersion;->parseFhirVersion(Ljava/lang/String;)Landroid/health/connect/datatypes/FhirVersion;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/FhirVersion;->R4B_FHIR_VERSION:Landroid/health/connect/datatypes/FhirVersion;

    .line 45
    sget-object v0, Landroid/health/connect/datatypes/FhirVersion;->R4_FHIR_VERSION:Landroid/health/connect/datatypes/FhirVersion;

    sget-object v1, Landroid/health/connect/datatypes/FhirVersion;->R4B_FHIR_VERSION:Landroid/health/connect/datatypes/FhirVersion;

    .line 46
    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Landroid/health/connect/datatypes/FhirVersion;->SUPPORTED_FHIR_VERSIONS:Ljava/util/Set;

    .line 74
    new-instance v0, Landroid/health/connect/datatypes/FhirVersion$1;

    invoke-direct {v0}, Landroid/health/connect/datatypes/FhirVersion$1;-><init>()V

    sput-object v0, Landroid/health/connect/datatypes/FhirVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(III)V
    .registers 4
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "patch"    # I

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/health/connect/datatypes/FhirVersion;->mMajor:I

    .line 56
    iput p2, p0, Landroid/health/connect/datatypes/FhirVersion;->mMinor:I

    .line 57
    iput p3, p0, Landroid/health/connect/datatypes/FhirVersion;->mPatch:I

    .line 58
    invoke-direct {p0}, Landroid/health/connect/datatypes/FhirVersion;->validateVersionNumbersNotNegative()V

    .line 59
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/datatypes/FhirVersion;->mMajor:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/datatypes/FhirVersion;->mMinor:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/health/connect/datatypes/FhirVersion;->mPatch:I

    .line 70
    invoke-direct {p0}, Landroid/health/connect/datatypes/FhirVersion;->validateVersionNumbersNotNegative()V

    .line 71
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/health/connect/datatypes/FhirVersion-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/health/connect/datatypes/FhirVersion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static whitelist parseFhirVersion(Ljava/lang/String;)Landroid/health/connect/datatypes/FhirVersion;
    .registers 7
    .param p0, "fhirVersionString"    # Ljava/lang/String;

    .line 97
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const-string v0, "(\\d+)\\.(\\d+)\\.(\\d+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 99
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 100
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_34

    .line 103
    new-instance v2, Landroid/health/connect/datatypes/FhirVersion;

    .line 104
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 105
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 106
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Landroid/health/connect/datatypes/FhirVersion;-><init>(III)V

    .line 103
    return-object v2

    .line 101
    :cond_34
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid FHIR version string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist validateVersionNumbersNotNegative()V
    .registers 3

    .line 165
    iget v0, p0, Landroid/health/connect/datatypes/FhirVersion;->mMajor:I

    if-ltz v0, :cond_d

    iget v0, p0, Landroid/health/connect/datatypes/FhirVersion;->mMinor:I

    if-ltz v0, :cond_d

    iget v0, p0, Landroid/health/connect/datatypes/FhirVersion;->mPatch:I

    if-ltz v0, :cond_d

    .line 168
    return-void

    .line 166
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Version numbers can not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 141
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 142
    :cond_4
    instance-of v1, p1, Landroid/health/connect/datatypes/FhirVersion;

    const/4 v2, 0x0

    if-eqz v1, :cond_2d

    move-object v1, p1

    check-cast v1, Landroid/health/connect/datatypes/FhirVersion;

    .line 143
    .local v1, "that":Landroid/health/connect/datatypes/FhirVersion;
    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirVersion;->getMajor()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/FhirVersion;->getMajor()I

    move-result v4

    if-ne v3, v4, :cond_2b

    .line 144
    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirVersion;->getMinor()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/FhirVersion;->getMinor()I

    move-result v4

    if-ne v3, v4, :cond_2b

    .line 145
    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirVersion;->getPatch()I

    move-result v3

    invoke-virtual {v1}, Landroid/health/connect/datatypes/FhirVersion;->getPatch()I

    move-result v4

    if-ne v3, v4, :cond_2b

    goto :goto_2c

    :cond_2b
    move v0, v2

    .line 143
    :goto_2c
    return v0

    .line 142
    .end local v1    # "that":Landroid/health/connect/datatypes/FhirVersion;
    :cond_2d
    return v2
.end method

.method public whitelist getMajor()I
    .registers 2

    .line 111
    iget v0, p0, Landroid/health/connect/datatypes/FhirVersion;->mMajor:I

    return v0
.end method

.method public whitelist getMinor()I
    .registers 2

    .line 116
    iget v0, p0, Landroid/health/connect/datatypes/FhirVersion;->mMinor:I

    return v0
.end method

.method public whitelist getPatch()I
    .registers 2

    .line 121
    iget v0, p0, Landroid/health/connect/datatypes/FhirVersion;->mPatch:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 151
    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirVersion;->getMajor()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirVersion;->getMinor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirVersion;->getPatch()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isSupportedFhirVersion()Z
    .registers 2

    .line 161
    sget-object v0, Landroid/health/connect/datatypes/FhirVersion;->SUPPORTED_FHIR_VERSIONS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 156
    iget v0, p0, Landroid/health/connect/datatypes/FhirVersion;->mMajor:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/health/connect/datatypes/FhirVersion;->mMinor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/health/connect/datatypes/FhirVersion;->mPatch:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d.%d.%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 132
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirVersion;->getMajor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirVersion;->getMinor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    invoke-virtual {p0}, Landroid/health/connect/datatypes/FhirVersion;->getPatch()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    return-void
.end method
