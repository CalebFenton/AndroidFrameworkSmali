.class public abstract Lcom/android/internal/telephony/SmsAddress;
.super Ljava/lang/Object;
.source "SmsAddress.java"


# static fields
.field public static final TON_ABBREVIATED:I = 0x6

.field public static final TON_ALPHANUMERIC:I = 0x5

.field public static final TON_INTERNATIONAL:I = 0x1

.field public static final TON_NATIONAL:I = 0x2

.field public static final TON_NETWORK:I = 0x3

.field public static final TON_SUBSCRIBER:I = 0x4

.field public static final TON_UNKNOWN:I


# instance fields
.field public address:Ljava/lang/String;

.field public origBytes:[B

.field public ton:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public couldBeEmailGateway()Z
    .locals 2

    #@0
    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@5
    move-result v0

    #@6
    const/4 v1, 0x4

    #@7
    if-gt v0, v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public getAddressString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isAlphanumeric()Z
    .locals 2

    #@0
    .prologue
    .line 45
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    #@2
    const/4 v1, 0x5

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isNetworkSpecific()Z
    .locals 2

    #@0
    .prologue
    .line 52
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    #@2
    const/4 v1, 0x3

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method
