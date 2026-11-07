.class public abstract Lcom/android/internal/telephony/uicc/IccServiceTable;
.super Ljava/lang/Object;
.source "IccServiceTable.java"


# instance fields
.field protected final greylist-max-r mServiceTable:[B


# direct methods
.method protected constructor blacklist <init>([B)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    return-void
.end method


# virtual methods
.method protected abstract greylist-max-r getTag()Ljava/lang/String;
.end method

.method protected abstract blacklist getValues()[Ljava/lang/Object;
.end method

.method protected blacklist isAvailable(I)Z
    .registers 7

    .line 48
    div-int/lit8 v0, p1, 0x8

    .line 49
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v2, :cond_30

    .line 51
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAvailable for service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v4

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " fails, max service is "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    array-length p0, p0

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 55
    :cond_30
    rem-int/lit8 p1, p1, 0x8

    .line 56
    aget-byte p0, v1, v0

    shl-int p1, v4, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_3a

    return v4

    :cond_3a
    return v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 11

    .line 61
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->getValues()[Ljava/lang/Object;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    array-length v1, v1

    .line 63
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccServiceTable;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    mul-int/lit8 v3, v1, 0x8

    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]={ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_22
    if-ge v4, v1, :cond_58

    .line 68
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/IccServiceTable;->mServiceTable:[B

    aget-byte v6, v6, v4

    move v7, v3

    :goto_29
    const/16 v8, 0x8

    if-ge v7, v8, :cond_55

    const/4 v8, 0x1

    shl-int v9, v8, v7

    and-int/2addr v9, v6

    if-eqz v9, :cond_52

    if-eqz v5, :cond_3b

    .line 72
    const-string v8, ", "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    :cond_3b
    move v5, v8

    :goto_3c
    mul-int/lit8 v8, v4, 0x8

    add-int/2addr v8, v7

    .line 77
    array-length v9, v0

    if-ge v8, v9, :cond_48

    .line 78
    aget-object v8, v0, v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_52

    :cond_48
    const/16 v9, 0x23

    .line 80
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_52
    :goto_52
    add-int/lit8 v7, v7, 0x1

    goto :goto_29

    :cond_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 85
    :cond_58
    const-string p0, " }"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
