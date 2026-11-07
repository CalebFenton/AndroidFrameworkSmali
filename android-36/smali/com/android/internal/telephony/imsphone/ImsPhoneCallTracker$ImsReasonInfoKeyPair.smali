.class Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsReasonInfoKeyPair;
.super Landroid/util/Pair;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ImsReasonInfoKeyPair"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Pair<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .registers 3

    .line 1211
    invoke-direct {p0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/Integer;Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker-IA;)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsReasonInfoKeyPair;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 1225
    instance-of v0, p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsReasonInfoKeyPair;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1228
    :cond_6
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ImsReasonInfoKeyPair;

    .line 1230
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    iget-object v2, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 1231
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 1241
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method
