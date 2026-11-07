.class Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$1;
.super Ljava/lang/Object;
.source "ImsCallInfoTracker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker;->sort(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/internal/telephony/imsphone/ImsCallInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/internal/telephony/imsphone/ImsCallInfo;Lcom/android/internal/telephony/imsphone/ImsCallInfo;)I
    .registers 4

    .line 192
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->getIndex()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->getIndex()I

    move-result v0

    if-le p0, v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 194
    :cond_c
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->getIndex()I

    move-result p0

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsCallInfo;->getIndex()I

    move-result p1

    if-ge p0, p1, :cond_18

    const/4 p0, -0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 189
    check-cast p1, Lcom/android/internal/telephony/imsphone/ImsCallInfo;

    check-cast p2, Lcom/android/internal/telephony/imsphone/ImsCallInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsCallInfoTracker$1;->compare(Lcom/android/internal/telephony/imsphone/ImsCallInfo;Lcom/android/internal/telephony/imsphone/ImsCallInfo;)I

    move-result p0

    return p0
.end method
