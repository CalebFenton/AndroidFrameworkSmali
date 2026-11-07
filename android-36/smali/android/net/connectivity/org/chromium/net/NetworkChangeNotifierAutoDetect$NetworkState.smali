.class public Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
.super Ljava/lang/Object;
.source "NetworkChangeNotifierAutoDetect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkState"
.end annotation


# instance fields
.field private final blacklist mConnected:Z

.field private final blacklist mIsMetered:Z

.field private final blacklist mIsPrivateDnsActive:Z

.field private final blacklist mNetworkIdentifier:Ljava/lang/String;

.field private final blacklist mPrivateDnsServerName:Ljava/lang/String;

.field private final blacklist mSubtype:I

.field private final blacklist mType:I


# direct methods
.method public constructor blacklist <init>(ZIIZLjava/lang/String;ZLjava/lang/String;)V
    .registers 10
    .param p1, "connected"    # Z
    .param p2, "type"    # I
    .param p3, "subtype"    # I
    .param p4, "isMetered"    # Z
    .param p5, "networkIdentifier"    # Ljava/lang/String;
    .param p6, "isPrivateDnsActive"    # Z
    .param p7, "privateDnsServerName"    # Ljava/lang/String;

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mConnected:Z

    .line 82
    iput p2, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mType:I

    .line 83
    iput p3, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mSubtype:I

    .line 84
    iput-boolean p4, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mIsMetered:Z

    .line 85
    const-string v0, ""

    if-nez p5, :cond_11

    move-object v1, v0

    goto :goto_12

    :cond_11
    move-object v1, p5

    :goto_12
    iput-object v1, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mNetworkIdentifier:Ljava/lang/String;

    .line 86
    iput-boolean p6, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mIsPrivateDnsActive:Z

    .line 87
    if-nez p7, :cond_19

    goto :goto_1a

    :cond_19
    move-object v0, p7

    :goto_1a
    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mPrivateDnsServerName:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public blacklist getConnectionCost()I
    .registers 2

    .line 123
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->isMetered()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 124
    const/4 v0, 0x2

    return v0

    .line 126
    :cond_8
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist getConnectionSubtype()I
    .registers 3

    .line 131
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 132
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_8
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_44

    .line 180
    :pswitch_10
    return v1

    .line 140
    :pswitch_11
    return v1

    .line 145
    :pswitch_12
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkSubType()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    .line 177
    return v1

    .line 173
    :pswitch_1a
    const/16 v0, 0x11

    return v0

    .line 171
    :pswitch_1d
    const/16 v0, 0x10

    return v0

    .line 175
    :pswitch_20
    const/16 v0, 0x12

    return v0

    .line 169
    :pswitch_23
    const/16 v0, 0xd

    return v0

    .line 155
    :pswitch_26
    const/4 v0, 0x4

    return v0

    .line 167
    :pswitch_28
    const/16 v0, 0xc

    return v0

    .line 165
    :pswitch_2b
    const/16 v0, 0xf

    return v0

    .line 163
    :pswitch_2e
    const/16 v0, 0xe

    return v0

    .line 153
    :pswitch_31
    const/4 v0, 0x6

    return v0

    .line 161
    :pswitch_33
    const/16 v0, 0xb

    return v0

    .line 159
    :pswitch_36
    const/16 v0, 0xa

    return v0

    .line 151
    :pswitch_39
    const/4 v0, 0x5

    return v0

    .line 157
    :pswitch_3b
    const/16 v0, 0x9

    return v0

    .line 149
    :pswitch_3e
    const/16 v0, 0x8

    return v0

    .line 147
    :pswitch_41
    const/4 v0, 0x7

    return v0

    nop

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_11
    .end packed-switch

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_41
        :pswitch_3e
        :pswitch_3b
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_31
        :pswitch_2e
        :pswitch_2b
        :pswitch_28
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch
.end method

.method public blacklist getConnectionType()I
    .registers 3

    .line 114
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->isConnected()Z

    move-result v0

    if-nez v0, :cond_8

    .line 115
    const/4 v0, 0x6

    return v0

    .line 117
    :cond_8
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkType()I

    move-result v0

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkSubType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect;->-$$Nest$smconvertToConnectionType(II)I

    move-result v0

    return v0
.end method

.method public blacklist getNetworkIdentifier()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mNetworkIdentifier:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNetworkSubType()I
    .registers 2

    .line 103
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mSubtype:I

    return v0
.end method

.method public blacklist getNetworkType()I
    .registers 2

    .line 95
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mType:I

    return v0
.end method

.method public blacklist getPrivateDnsServerName()Ljava/lang/String;
    .registers 2

    .line 191
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mPrivateDnsServerName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist isConnected()Z
    .registers 2

    .line 91
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mConnected:Z

    return v0
.end method

.method public blacklist isMetered()Z
    .registers 2

    .line 99
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mIsMetered:Z

    return v0
.end method

.method public blacklist isPrivateDnsActive()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->mIsPrivateDnsActive:Z

    return v0
.end method
