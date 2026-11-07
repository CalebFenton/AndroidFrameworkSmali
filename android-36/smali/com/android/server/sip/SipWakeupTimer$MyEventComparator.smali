.class Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;
.super Ljava/lang/Object;
.source "SipWakeupTimer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipWakeupTimer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MyEventComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/sip/SipWakeupTimer$MyEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/server/sip/SipWakeupTimer-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Lcom/android/server/sip/SipWakeupTimer$MyEvent;Lcom/android/server/sip/SipWakeupTimer$MyEvent;)I
    .registers 5
    .param p1, "e1"    # Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .param p2, "e2"    # Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    .line 321
    if-ne p1, p2, :cond_4

    const/4 v0, 0x0

    return v0

    .line 322
    :cond_4
    iget v0, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    iget v1, p2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    sub-int/2addr v0, v1

    .line 323
    .local v0, "diff":I
    if-nez v0, :cond_c

    const/4 v0, -0x1

    .line 324
    :cond_c
    return v0
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

    .line 318
    check-cast p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    check-cast p2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;->compare(Lcom/android/server/sip/SipWakeupTimer$MyEvent;Lcom/android/server/sip/SipWakeupTimer$MyEvent;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "that"    # Ljava/lang/Object;

    .line 329
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    return v0
.end method
