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
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/sip/SipWakeupTimer$MyEvent;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/sip/SipWakeupTimer$MyEvent;Lcom/android/server/sip/SipWakeupTimer$MyEvent;)I
    .locals 3
    .param p1, "e1"    # Lcom/android/server/sip/SipWakeupTimer$MyEvent;
    .param p2, "e2"    # Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 321
    if-ne p1, p2, :cond_0

    #@3
    return v1

    #@4
    .line 322
    :cond_0
    iget v1, p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    #@6
    iget v2, p2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;->mMaxPeriod:I

    #@8
    sub-int v0, v1, v2

    #@a
    .line 323
    .local v0, "diff":I
    if-nez v0, :cond_1

    #@c
    const/4 v0, -0x1

    #@d
    .line 324
    :cond_1
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "e1"    # Ljava/lang/Object;
    .param p2, "e2"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 320
    check-cast p1, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    #@2
    .end local p1    # "e1":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/sip/SipWakeupTimer$MyEvent;

    #@4
    .end local p2    # "e2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/sip/SipWakeupTimer$MyEventComparator;->compare(Lcom/android/server/sip/SipWakeupTimer$MyEvent;Lcom/android/server/sip/SipWakeupTimer$MyEvent;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 329
    if-ne p0, p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    return v0

    #@4
    :cond_0
    const/4 v0, 0x0

    #@5
    goto :goto_0
.end method
