.class public abstract Lcom/android/internal/telephony/SmsAddress;
.super Ljava/lang/Object;
.source "SmsAddress.java"


# static fields
.field public static final greylist-max-o TON_ABBREVIATED:I = 0x6

.field public static final greylist-max-o TON_ALPHANUMERIC:I = 0x5

.field public static final greylist-max-o TON_INTERNATIONAL:I = 0x1

.field public static final greylist-max-o TON_NATIONAL:I = 0x2

.field public static final greylist-max-o TON_NETWORK:I = 0x3

.field public static final greylist-max-o TON_SUBSCRIBER:I = 0x4

.field public static final greylist-max-o TON_UNKNOWN:I


# instance fields
.field public greylist-max-o address:Ljava/lang/String;

.field public greylist origBytes:[B

.field public greylist-max-o ton:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public greylist-max-o couldBeEmailGateway()Z
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public greylist-max-o getAddressString()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o isAlphanumeric()Z
    .registers 3

    .line 48
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public greylist-max-o isNetworkSpecific()Z
    .registers 3

    .line 55
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method
