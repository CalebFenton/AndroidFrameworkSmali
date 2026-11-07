.class public Landroid/net/connectivity/com/android/net/module/util/NetworkIdentityUtils;
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
    .param p0, "subscriberId"    # Ljava/lang/String;

    .line 32
    if-eqz p0, :cond_24

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

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 36
    :cond_24
    const-string v0, "null"

    return-object v0
.end method

.method public static blacklist scrubSubscriberIds([Ljava/lang/String;)[Ljava/lang/String;
    .registers 4
    .param p0, "subscriberIds"    # [Ljava/lang/String;

    .line 45
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 46
    :cond_4
    array-length v0, p0

    new-array v0, v0, [Ljava/lang/String;

    .line 47
    .local v0, "res":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    array-length v2, v0

    if-ge v1, v2, :cond_16

    .line 48
    aget-object v2, p0, v1

    invoke-static {v2}, Landroid/net/connectivity/com/android/net/module/util/NetworkIdentityUtils;->scrubSubscriberId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 50
    .end local v1    # "i":I
    :cond_16
    return-object v0
.end method
