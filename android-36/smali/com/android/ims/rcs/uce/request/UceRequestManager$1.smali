.class Lcom/android/ims/rcs/uce/request/UceRequestManager$1;
.super Ljava/lang/Object;
.source "UceRequestManager.java"

# interfaces
.implements Lcom/android/ims/rcs/uce/request/UceRequestManager$UceUtilsProxy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/rcs/uce/request/UceRequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getRclMaxNumberEntries(I)I
    .registers 3
    .param p1, "subId"    # I

    .line 145
    invoke-static {p1}, Lcom/android/ims/rcs/uce/util/UceUtils;->getRclMaxNumberEntries(I)I

    move-result v0

    return v0
.end method

.method public blacklist getSubscribeRetryDuration(Landroid/content/Context;I)J
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 155
    invoke-static {p1, p2}, Lcom/android/ims/rcs/uce/util/UceUtils;->getSubscribeRetryInterval(Landroid/content/Context;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist isNumberBlocked(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .line 150
    invoke-static {p1, p2}, Lcom/android/ims/rcs/uce/util/UceUtils;->isNumberBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist isPresenceCapExchangeEnabled(Landroid/content/Context;I)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 125
    invoke-static {p1, p2}, Lcom/android/ims/rcs/uce/util/UceUtils;->isPresenceCapExchangeEnabled(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public blacklist isPresenceGroupSubscribeEnabled(Landroid/content/Context;I)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 140
    invoke-static {p1, p2}, Lcom/android/ims/rcs/uce/util/UceUtils;->isPresenceGroupSubscribeEnabled(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public blacklist isPresenceSupported(Landroid/content/Context;I)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 130
    invoke-static {p1, p2}, Lcom/android/ims/rcs/uce/util/UceUtils;->isPresenceSupported(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method

.method public blacklist isSipOptionsSupported(Landroid/content/Context;I)Z
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 135
    invoke-static {p1, p2}, Lcom/android/ims/rcs/uce/util/UceUtils;->isSipOptionsSupported(Landroid/content/Context;I)Z

    move-result v0

    return v0
.end method
