.class Lcom/android/internal/net/ipsec/ike/ike3gpp/Ike3gppBackoffTimerUtils;
.super Ljava/lang/Object;
.source "Ike3gppBackoffTimerUtils.java"


# static fields
.field private static final blacklist BACKOFF_TIMER_DATA_LEN:I = 0x2

.field private static final blacklist BACKOFF_TIMER_LEN:B = 0x1t


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getBackoffTimerfromNotifyData([B)B
    .registers 4
    .param p0, "notifyData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;
        }
    .end annotation

    .line 41
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 43
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_17

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_17

    .line 47
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    return v1

    .line 44
    :cond_17
    new-instance v1, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;

    const-string v2, "BACKOFF_TIMER payload with an invalid encoding"

    invoke-direct {v1, v2}, Landroid/net/ipsec/ike/exceptions/InvalidSyntaxException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
