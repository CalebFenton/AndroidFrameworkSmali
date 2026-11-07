.class public final Landroid/telephony/ims/SipMessage;
.super Ljava/lang/Object;
.source "SipMessage.java"

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
            "Landroid/telephony/ims/SipMessage;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist CRLF:Ljava/lang/String; = "\r\n"

.field private static final blacklist IS_DEBUGGING:Z


# instance fields
.field private final blacklist mCallIdParam:Ljava/lang/String;

.field private final blacklist mContent:[B

.field private final blacklist mHeaderSection:Ljava/lang/String;

.field private final blacklist mStartLine:Ljava/lang/String;

.field private final blacklist mViaBranchParam:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    sput-boolean v0, Landroid/telephony/ims/SipMessage;->IS_DEBUGGING:Z

    .line 146
    new-instance v0, Landroid/telephony/ims/SipMessage$1;

    invoke-direct {v0}, Landroid/telephony/ims/SipMessage$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/SipMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    .line 87
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipMessage;->mViaBranchParam:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipMessage;->mCallIdParam:Ljava/lang/String;

    .line 90
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/SipMessage-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/SipMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 6
    .param p1, "startLine"    # Ljava/lang/String;
    .param p2, "headerSection"    # Ljava/lang/String;
    .param p3, "content"    # [B

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-string v0, "Required parameter is null: startLine"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    const-string v0, "Required parameter is null: headerSection"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 66
    const-string v0, "Required parameter is null: content"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 68
    iput-object p1, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    .line 72
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getTransactionId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipMessage;->mViaBranchParam:Ljava/lang/String;

    .line 73
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mViaBranchParam:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 77
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/SipMessageParsingUtils;->getCallId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/SipMessage;->mCallIdParam:Ljava/lang/String;

    .line 78
    return-void

    .line 74
    :cond_31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "header section MUST contain a branch parameter inside of the Via header."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist sanitizeStartLineRequest(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "startLine"    # Ljava/lang/String;

    .line 183
    invoke-static {p1}, Lcom/android/internal/telephony/SipMessageParsingUtils;->isSipRequest(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    return-object p1

    .line 184
    :cond_7
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "splitLine":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " <Request-URI> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 133
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 190
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 191
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_36

    .line 192
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/telephony/ims/SipMessage;

    .line 193
    .local v2, "that":Landroid/telephony/ims/SipMessage;
    iget-object v3, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    iget-object v4, v2, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    .line 194
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    iget-object v3, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    iget-object v4, v2, Landroid/telephony/ims/SipMessage;->mContent:[B

    .line 195
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v1

    .line 193
    :goto_35
    return v0

    .line 191
    .end local v2    # "that":Landroid/telephony/ims/SipMessage;
    :cond_36
    :goto_36
    return v1
.end method

.method public whitelist getCallIdParameter()Ljava/lang/String;
    .registers 2

    .line 128
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mCallIdParam:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getContent()[B
    .registers 2

    .line 111
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    return-object v0
.end method

.method public whitelist getHeaderSection()Ljava/lang/String;
    .registers 2

    .line 104
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getStartLine()Ljava/lang/String;
    .registers 2

    .line 97
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getViaBranchParameter()Ljava/lang/String;
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mViaBranchParam:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 200
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    iget-object v1, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 201
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 202
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public whitelist toEncodedMessage()[B
    .registers 7

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    .line 217
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 221
    .local v0, "header":[B
    array-length v1, v0

    iget-object v2, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 222
    .local v1, "sipMessage":[B
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    iget-object v2, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    array-length v4, v0

    iget-object v5, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    array-length v5, v5

    invoke-static {v2, v3, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 224
    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "StartLine: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    sget-boolean v1, Landroid/telephony/ims/SipMessage;->IS_DEBUGGING:Z

    if-eqz v1, :cond_14

    .line 163
    iget-object v1, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 165
    :cond_14
    iget-object v1, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    invoke-direct {p0, v1}, Landroid/telephony/ims/SipMessage;->sanitizeStartLineRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :goto_1d
    const-string v1, "], Header: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    sget-boolean v1, Landroid/telephony/ims/SipMessage;->IS_DEBUGGING:Z

    if-eqz v1, :cond_2c

    .line 169
    iget-object v1, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 172
    :cond_2c
    const-string v1, "***"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    :goto_31
    const-string v1, "], Content: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {p0}, Landroid/telephony/ims/SipMessage;->getContent()[B

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_40

    const-string v1, "[NONE]"

    goto :goto_42

    :cond_40
    const-string v1, "[NOT SHOWN]"

    :goto_42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 138
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mStartLine:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mHeaderSection:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mContent:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 142
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mViaBranchParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Landroid/telephony/ims/SipMessage;->mCallIdParam:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    return-void
.end method
