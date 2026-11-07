.class public Lcom/android/internal/telephony/util/NetworkIdentityUtils;
.super Ljava/lang/Object;
.source "NetworkIdentityUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_22

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "..."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 36
    :cond_22
    const-string p0, "null"

    return-object p0
.end method

.method public static blacklist scrubSubscriberIds([Ljava/lang/String;)[Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_4
    array-length v0, p0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_15

    .line 48
    aget-object v3, p0, v2

    invoke-static {v3}, Lcom/android/internal/telephony/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_15
    return-object v1
.end method
