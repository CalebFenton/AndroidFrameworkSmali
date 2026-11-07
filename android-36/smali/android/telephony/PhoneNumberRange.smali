.class public final Landroid/telephony/PhoneNumberRange;
.super Ljava/lang/Object;
.source "PhoneNumberRange.java"

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
            "Landroid/telephony/PhoneNumberRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCountryCode:Ljava/lang/String;

.field private final blacklist mLowerBound:Ljava/lang/String;

.field private final blacklist mPrefix:Ljava/lang/String;

.field private final blacklist mUpperBound:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 47
    new-instance v0, Landroid/telephony/PhoneNumberRange$1;

    invoke-direct {v0}, Landroid/telephony/PhoneNumberRange$1;-><init>()V

    sput-object v0, Landroid/telephony/PhoneNumberRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberRange;->mCountryCode:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberRange;->mPrefix:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberRange;->mLowerBound:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/PhoneNumberRange;->mUpperBound:Ljava/lang/String;

    .line 92
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/PhoneNumberRange-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/PhoneNumberRange;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "countryCode"    # Ljava/lang/String;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "lowerBound"    # Ljava/lang/String;
    .param p4, "upperBound"    # Ljava/lang/String;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    invoke-direct {p0, p3, p4}, Landroid/telephony/PhoneNumberRange;->validateLowerAndUpperBounds(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v0, "[0-9]*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 78
    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 81
    iput-object p1, p0, Landroid/telephony/PhoneNumberRange;->mCountryCode:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Landroid/telephony/PhoneNumberRange;->mPrefix:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Landroid/telephony/PhoneNumberRange;->mLowerBound:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Landroid/telephony/PhoneNumberRange;->mUpperBound:Ljava/lang/String;

    .line 85
    return-void

    .line 79
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Prefix must be all numeric"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Country code must be all numeric"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist validateLowerAndUpperBounds(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "lowerBound"    # Ljava/lang/String;
    .param p2, "upperBound"    # Ljava/lang/String;

    .line 135
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3b

    .line 138
    const-string v0, "[0-9]*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 141
    invoke-static {v0, p2}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 144
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gt v0, v1, :cond_23

    .line 147
    return-void

    .line 145
    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lower bound must be lower than upper bound"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Upper bound must be all numeric"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lower bound must be all numeric"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Lower and upper bounds must have the same length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 109
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 110
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_40

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_40

    .line 111
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/PhoneNumberRange;

    .line 112
    .local v2, "that":Landroid/telephony/PhoneNumberRange;
    iget-object v3, p0, Landroid/telephony/PhoneNumberRange;->mCountryCode:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/PhoneNumberRange;->mCountryCode:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/telephony/PhoneNumberRange;->mPrefix:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/PhoneNumberRange;->mPrefix:Ljava/lang/String;

    .line 113
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/telephony/PhoneNumberRange;->mLowerBound:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/PhoneNumberRange;->mLowerBound:Ljava/lang/String;

    .line 114
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    iget-object v3, p0, Landroid/telephony/PhoneNumberRange;->mUpperBound:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/PhoneNumberRange;->mUpperBound:Ljava/lang/String;

    .line 115
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    goto :goto_3f

    :cond_3e
    move v0, v1

    .line 112
    :goto_3f
    return v0

    .line 110
    .end local v2    # "that":Landroid/telephony/PhoneNumberRange;
    :cond_40
    :goto_40
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 120
    iget-object v0, p0, Landroid/telephony/PhoneNumberRange;->mCountryCode:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/PhoneNumberRange;->mPrefix:Ljava/lang/String;

    iget-object v2, p0, Landroid/telephony/PhoneNumberRange;->mLowerBound:Ljava/lang/String;

    iget-object v3, p0, Landroid/telephony/PhoneNumberRange;->mUpperBound:Ljava/lang/String;

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist matches(Ljava/lang/String;)Z
    .registers 9
    .param p1, "number"    # Ljava/lang/String;

    .line 156
    const-string v0, "[^0-9]"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "normalizedNumber":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/telephony/PhoneNumberRange;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/PhoneNumberRange;->mPrefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, "prefixWithCountryCode":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    .line 160
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .local v2, "numberPostfix":Ljava/lang/String;
    goto :goto_3f

    .line 161
    .end local v2    # "numberPostfix":Ljava/lang/String;
    :cond_2d
    iget-object v2, p0, Landroid/telephony/PhoneNumberRange;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 162
    iget-object v2, p0, Landroid/telephony/PhoneNumberRange;->mPrefix:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 169
    .restart local v2    # "numberPostfix":Ljava/lang/String;
    :goto_3f
    :try_start_3f
    iget-object v4, p0, Landroid/telephony/PhoneNumberRange;->mLowerBound:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 170
    .local v4, "lower":I
    iget-object v5, p0, Landroid/telephony/PhoneNumberRange;->mUpperBound:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 171
    .local v5, "upper":I
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6
    :try_end_4f
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_4f} :catch_55

    .line 172
    .local v6, "numberToCheck":I
    if-gt v6, v5, :cond_54

    if-lt v6, v4, :cond_54

    const/4 v3, 0x1

    :cond_54
    return v3

    .line 173
    .end local v4    # "lower":I
    .end local v5    # "upper":I
    .end local v6    # "numberToCheck":I
    :catch_55
    move-exception v4

    .line 174
    .local v4, "e":Ljava/lang/NumberFormatException;
    const-class v5, Landroid/telephony/PhoneNumberRange;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Invalid bounds or number."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    return v3

    .line 164
    .end local v2    # "numberPostfix":Ljava/lang/String;
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_62
    return v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PhoneNumberRange{mCountryCode=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/PhoneNumberRange;->mCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mPrefix=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/PhoneNumberRange;->mPrefix:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mLowerBound=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/PhoneNumberRange;->mLowerBound:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mUpperBound=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/telephony/PhoneNumberRange;->mUpperBound:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 96
    iget-object v0, p0, Landroid/telephony/PhoneNumberRange;->mCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Landroid/telephony/PhoneNumberRange;->mPrefix:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Landroid/telephony/PhoneNumberRange;->mLowerBound:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Landroid/telephony/PhoneNumberRange;->mUpperBound:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    return-void
.end method
