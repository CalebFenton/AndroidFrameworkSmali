.class public final Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;
.super Ljava/lang/Object;
.source "WifiAwareDataPathSecurityConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mCipherSuite:I

.field private final blacklist mPassphrase:Ljava/lang/String;

.field private final blacklist mPmk:[B

.field private final blacklist mPmkId:[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 77
    new-instance v0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(I[B[BLjava/lang/String;)V
    .registers 5
    .param p1, "cipherSuite"    # I
    .param p2, "pmk"    # [B
    .param p3, "pmkId"    # [B
    .param p4, "passphrase"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mCipherSuite:I

    .line 65
    iput-object p4, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPassphrase:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmk:[B

    .line 67
    iput-object p3, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmkId:[B

    .line 68
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmk:[B

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPassphrase:Ljava/lang/String;

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmkId:[B

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mCipherSuite:I

    .line 75
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 92
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 105
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 106
    return v0

    .line 108
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 109
    return v2

    .line 112
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;

    .line 113
    .local v1, "lhs":Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;
    iget v3, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mCipherSuite:I

    iget v4, v1, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mCipherSuite:I

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmk:[B

    iget-object v4, v1, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmk:[B

    .line 114
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPassphrase:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPassphrase:Ljava/lang/String;

    .line 115
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmkId:[B

    iget-object v4, v1, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmkId:[B

    .line 116
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_32

    goto :goto_33

    :cond_32
    move v0, v2

    .line 113
    :goto_33
    return v0
.end method

.method public whitelist getCipherSuite()I
    .registers 2

    .line 177
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mCipherSuite:I

    return v0
.end method

.method public whitelist getPmk()[B
    .registers 2

    .line 187
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmk:[B

    return-object v0
.end method

.method public whitelist getPmkId()[B
    .registers 2

    .line 196
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmkId:[B

    return-object v0
.end method

.method public whitelist getPskPassphrase()Ljava/lang/String;
    .registers 2

    .line 204
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPassphrase:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 121
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmk:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPassphrase:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmkId:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mCipherSuite:I

    .line 122
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 121
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public blacklist isValid()Z
    .registers 5

    .line 146
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mCipherSuite:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_32

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mCipherSuite:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_c

    goto :goto_32

    .line 161
    :cond_c
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mCipherSuite:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_19

    iget v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mCipherSuite:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_18

    goto :goto_19

    .line 168
    :cond_18
    return v1

    .line 163
    :cond_19
    :goto_19
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmk:[B

    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmk([B)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmkId:[B

    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmkId([B)Z

    move-result v0

    if-nez v0, :cond_2a

    goto :goto_31

    .line 166
    :cond_2a
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    .line 164
    :cond_31
    :goto_31
    return v1

    .line 148
    :cond_32
    :goto_32
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmk:[B

    if-nez v0, :cond_3f

    .line 149
    return v1

    .line 151
    :cond_3f
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4c

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmk:[B

    if-eqz v0, :cond_4c

    .line 152
    return v1

    .line 154
    :cond_4c
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmkId:[B

    if-eqz v0, :cond_51

    .line 155
    return v1

    .line 157
    :cond_51
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePassphrase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmk:[B

    if-nez v0, :cond_5e

    .line 158
    return v2

    .line 160
    :cond_5e
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPassphrase:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6f

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmk:[B

    invoke-static {v0}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmk([B)Z

    move-result v0

    if-eqz v0, :cond_6f

    move v1, v2

    :cond_6f
    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WifiAwareDataPathSecurityConfig ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mCipherSuite:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 129
    const-string v2, ", passphrase="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 130
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPassphrase:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "<null>"

    const-string v4, "<non-null>"

    if-eqz v2, :cond_27

    move-object v2, v3

    goto :goto_28

    :cond_27
    move-object v2, v4

    :goto_28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 131
    const-string v2, ", PMK="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 132
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmk:[B

    if-nez v2, :cond_38

    move-object v2, v3

    goto :goto_39

    :cond_38
    move-object v2, v4

    :goto_39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 133
    const-string v2, ", PMKID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 134
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmkId:[B

    if-nez v2, :cond_48

    goto :goto_49

    :cond_48
    move-object v3, v4

    :goto_49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 135
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 97
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmk:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 98
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPassphrase:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mPmkId:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 100
    iget v0, p0, Landroid/net/wifi/aware/WifiAwareDataPathSecurityConfig;->mCipherSuite:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    return-void
.end method
