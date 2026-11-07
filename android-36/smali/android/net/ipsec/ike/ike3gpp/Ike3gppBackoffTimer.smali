.class public final Landroid/net/ipsec/ike/ike3gpp/Ike3gppBackoffTimer;
.super Landroid/net/ipsec/ike/ike3gpp/Ike3gppData;
.source "Ike3gppBackoffTimer.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist ERROR_TYPE_NETWORK_FAILURE:I = 0x2904
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ERROR_TYPE_NO_APN_SUBSCRIPTION:I = 0x232a
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final blacklist mBackoffCause:I

.field private final blacklist mBackoffTimer:B


# direct methods
.method public constructor whitelist <init>(BI)V
    .registers 3
    .param p1, "backoffTimer"    # B
    .param p2, "backoffCause"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 80
    invoke-direct {p0}, Landroid/net/ipsec/ike/ike3gpp/Ike3gppData;-><init>()V

    .line 81
    iput-byte p1, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppBackoffTimer;->mBackoffTimer:B

    .line 82
    iput p2, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppBackoffTimer;->mBackoffCause:I

    .line 83
    return-void
.end method

.method public static blacklist isValidErrorNotifyCause(Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;)Z
    .registers 2
    .param p0, "notifyPayload"    # Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/message/IkeNotifyPayload;->isErrorNotify()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public whitelist getBackoffCause()I
    .registers 2

    .line 104
    iget v0, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppBackoffTimer;->mBackoffCause:I

    return v0
.end method

.method public whitelist getBackoffTimer()B
    .registers 2

    .line 99
    iget-byte v0, p0, Landroid/net/ipsec/ike/ike3gpp/Ike3gppBackoffTimer;->mBackoffTimer:B

    return v0
.end method

.method public whitelist getDataType()I
    .registers 2

    .line 87
    const/4 v0, 0x2

    return v0
.end method
