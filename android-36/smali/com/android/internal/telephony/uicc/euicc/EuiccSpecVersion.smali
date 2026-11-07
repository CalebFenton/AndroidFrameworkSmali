.class public final Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
.super Ljava/lang/Object;
.source "EuiccSpecVersion.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;",
        ">;"
    }
.end annotation


# instance fields
.field private final blacklist mVersionValues:[I


# direct methods
.method public constructor blacklist <init>(III)V
    .registers 5

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 38
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 p0, 0x0

    .line 77
    aput p1, v0, p0

    const/4 p0, 0x1

    .line 78
    aput p2, v0, p0

    const/4 p0, 0x2

    .line 79
    aput p3, v0, p0

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 38
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 p0, 0x0

    .line 86
    aget-byte v1, p1, p0

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, p0

    const/4 p0, 0x1

    .line 87
    aget-byte v1, p1, p0

    and-int/lit16 v1, v1, 0xff

    aput v1, v0, p0

    const/4 p0, 0x2

    .line 88
    aget-byte p1, p1, p0

    and-int/lit16 p1, p1, 0xff

    aput p1, v0, p0

    return-void
.end method

.method public static blacklist fromOpenChannelResponse([B)Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;
    .registers 7

    .line 48
    const-string v0, "Cannot parse select response of ISD-R: "

    const-string v1, "EuiccSpecVer"

    const/4 v2, 0x0

    :try_start_5
    new-instance v3, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;-><init>([B)V

    .line 49
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->hasNextNode()Z

    move-result p0

    if-nez p0, :cond_11

    return-object v2

    .line 52
    :cond_11
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Decoder;->nextNode()Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object p0
    :try_end_15
    .catch Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException; {:try_start_5 .. :try_end_15} :catch_6f

    .line 59
    :try_start_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getTag()I

    move-result v3

    const/16 v4, 0x82

    const/16 v5, 0xe0

    if-ne v3, v5, :cond_2b

    const/4 v3, 0x0

    .line 60
    new-array v3, v3, [I

    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v3

    goto :goto_37

    .line 62
    :cond_2b
    filled-new-array {v4}, [I

    move-result-object v3

    .line 63
    invoke-virtual {p0, v5, v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->getChild(I[I)Lcom/android/internal/telephony/uicc/asn1/Asn1Node;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->asBytes()[B

    move-result-object v3

    .line 65
    :goto_37
    array-length v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_41

    .line 66
    new-instance v4, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-direct {v4, v3}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;-><init>([B)V

    return-object v4

    .line 68
    :cond_41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_57
    .catch Lcom/android/internal/telephony/uicc/asn1/InvalidAsn1DataException; {:try_start_15 .. :try_end_57} :catch_58
    .catch Lcom/android/internal/telephony/uicc/asn1/TagNotFoundException; {:try_start_15 .. :try_end_57} :catch_58

    goto :goto_6e

    .line 71
    :catch_58
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/asn1/Asn1Node;->toHex()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6e
    return-object v2

    :catch_6f
    move-exception p0

    .line 54
    const-string v0, "Cannot parse the select response of ISD-R."

    invoke-static {v1, v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method


# virtual methods
.method public blacklist compareTo(Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)I
    .registers 6

    .line 105
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMajor()I

    move-result v1

    const/4 v2, 0x1

    if-le v0, v1, :cond_c

    return v2

    .line 107
    :cond_c
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMajor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMajor()I

    move-result v1

    const/4 v3, -0x1

    if-ge v0, v1, :cond_18

    return v3

    .line 110
    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMinor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMinor()I

    move-result v1

    if-le v0, v1, :cond_23

    return v2

    .line 112
    :cond_23
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMinor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getMinor()I

    move-result v1

    if-ge v0, v1, :cond_2e

    return v3

    .line 115
    :cond_2e
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getRevision()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getRevision()I

    move-result v1

    if-le v0, v1, :cond_39

    return v2

    .line 117
    :cond_39
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getRevision()I

    move-result p0

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->getRevision()I

    move-result p1

    if-ge p0, p1, :cond_44

    return v3

    :cond_44
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 31
    check-cast p1, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->compareTo(Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;)I

    move-result p0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_1a

    .line 128
    const-class v0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_f

    goto :goto_1a

    .line 131
    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    check-cast p1, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;

    iget-object p1, p1, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getMajor()I
    .registers 2

    .line 92
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public blacklist getMinor()I
    .registers 2

    .line 96
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public blacklist getRevision()I
    .registers 2

    .line 100
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 136
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([I)I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/euicc/EuiccSpecVersion;->mVersionValues:[I

    const/4 v1, 0x2

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
