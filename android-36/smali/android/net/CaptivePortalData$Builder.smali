.class public Landroid/net/CaptivePortalData$Builder;
.super Ljava/lang/Object;
.source "CaptivePortalData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/CaptivePortalData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mBytesRemaining:J

.field private blacklist mCaptive:Z

.field private blacklist mExpiryTime:J

.field private blacklist mIsSessionExtendable:Z

.field private blacklist mRefreshTime:J

.field private blacklist mUserPortalUrl:Landroid/net/Uri;

.field private blacklist mUserPortalUrlSource:I

.field private blacklist mVenueFriendlyName:Ljava/lang/CharSequence;

.field private blacklist mVenueInfoUrl:Landroid/net/Uri;

.field private blacklist mVenueInfoUrlSource:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 3

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/CaptivePortalData$Builder;->mBytesRemaining:J

    .line 115
    iput-wide v0, p0, Landroid/net/CaptivePortalData$Builder;->mExpiryTime:J

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/CaptivePortalData$Builder;->mVenueInfoUrlSource:I

    .line 119
    iput v0, p0, Landroid/net/CaptivePortalData$Builder;->mUserPortalUrlSource:I

    .line 125
    return-void
.end method

.method public constructor whitelist <init>(Landroid/net/CaptivePortalData;)V
    .registers 5
    .param p1, "data"    # Landroid/net/CaptivePortalData;

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/net/CaptivePortalData$Builder;->mBytesRemaining:J

    .line 115
    iput-wide v0, p0, Landroid/net/CaptivePortalData$Builder;->mExpiryTime:J

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/CaptivePortalData$Builder;->mVenueInfoUrlSource:I

    .line 119
    iput v0, p0, Landroid/net/CaptivePortalData$Builder;->mUserPortalUrlSource:I

    .line 131
    if-nez p1, :cond_11

    return-void

    .line 132
    :cond_11
    invoke-static {p1}, Landroid/net/CaptivePortalData;->-$$Nest$fgetmRefreshTimeMillis(Landroid/net/CaptivePortalData;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/net/CaptivePortalData$Builder;->setRefreshTime(J)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/CaptivePortalData;->-$$Nest$fgetmUserPortalUrl(Landroid/net/CaptivePortalData;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Landroid/net/CaptivePortalData;->-$$Nest$fgetmUserPortalUrlSource(Landroid/net/CaptivePortalData;)I

    move-result v2

    .line 133
    invoke-virtual {v0, v1, v2}, Landroid/net/CaptivePortalData$Builder;->setUserPortalUrl(Landroid/net/Uri;I)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/CaptivePortalData;->-$$Nest$fgetmVenueInfoUrl(Landroid/net/CaptivePortalData;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {p1}, Landroid/net/CaptivePortalData;->-$$Nest$fgetmVenueInfoUrlSource(Landroid/net/CaptivePortalData;)I

    move-result v2

    .line 134
    invoke-virtual {v0, v1, v2}, Landroid/net/CaptivePortalData$Builder;->setVenueInfoUrl(Landroid/net/Uri;I)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/CaptivePortalData;->-$$Nest$fgetmIsSessionExtendable(Landroid/net/CaptivePortalData;)Z

    move-result v1

    .line 135
    invoke-virtual {v0, v1}, Landroid/net/CaptivePortalData$Builder;->setSessionExtendable(Z)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/CaptivePortalData;->-$$Nest$fgetmByteLimit(Landroid/net/CaptivePortalData;)J

    move-result-wide v1

    .line 136
    invoke-virtual {v0, v1, v2}, Landroid/net/CaptivePortalData$Builder;->setBytesRemaining(J)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/CaptivePortalData;->-$$Nest$fgetmExpiryTimeMillis(Landroid/net/CaptivePortalData;)J

    move-result-wide v1

    .line 137
    invoke-virtual {v0, v1, v2}, Landroid/net/CaptivePortalData$Builder;->setExpiryTime(J)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/CaptivePortalData;->-$$Nest$fgetmCaptive(Landroid/net/CaptivePortalData;)Z

    move-result v1

    .line 138
    invoke-virtual {v0, v1}, Landroid/net/CaptivePortalData$Builder;->setCaptive(Z)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    invoke-static {p1}, Landroid/net/CaptivePortalData;->-$$Nest$fgetmVenueFriendlyName(Landroid/net/CaptivePortalData;)Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Landroid/net/CaptivePortalData$Builder;->setVenueFriendlyName(Ljava/lang/CharSequence;)Landroid/net/CaptivePortalData$Builder;

    .line 140
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/CaptivePortalData;
    .registers 16

    .line 241
    new-instance v0, Landroid/net/CaptivePortalData;

    iget-wide v1, p0, Landroid/net/CaptivePortalData$Builder;->mRefreshTime:J

    iget-object v3, p0, Landroid/net/CaptivePortalData$Builder;->mUserPortalUrl:Landroid/net/Uri;

    iget-object v4, p0, Landroid/net/CaptivePortalData$Builder;->mVenueInfoUrl:Landroid/net/Uri;

    iget-boolean v5, p0, Landroid/net/CaptivePortalData$Builder;->mIsSessionExtendable:Z

    iget-wide v6, p0, Landroid/net/CaptivePortalData$Builder;->mBytesRemaining:J

    iget-wide v8, p0, Landroid/net/CaptivePortalData$Builder;->mExpiryTime:J

    iget-boolean v10, p0, Landroid/net/CaptivePortalData$Builder;->mCaptive:Z

    iget-object v11, p0, Landroid/net/CaptivePortalData$Builder;->mVenueFriendlyName:Ljava/lang/CharSequence;

    iget v12, p0, Landroid/net/CaptivePortalData$Builder;->mVenueInfoUrlSource:I

    iget v13, p0, Landroid/net/CaptivePortalData$Builder;->mUserPortalUrlSource:I

    const/4 v14, 0x0

    invoke-direct/range {v0 .. v14}, Landroid/net/CaptivePortalData;-><init>(JLandroid/net/Uri;Landroid/net/Uri;ZJJZLjava/lang/CharSequence;IILandroid/net/CaptivePortalData-IA;)V

    return-object v0
.end method

.method public whitelist setBytesRemaining(J)Landroid/net/CaptivePortalData$Builder;
    .registers 3
    .param p1, "bytesRemaining"    # J

    .line 205
    iput-wide p1, p0, Landroid/net/CaptivePortalData$Builder;->mBytesRemaining:J

    .line 206
    return-object p0
.end method

.method public whitelist setCaptive(Z)Landroid/net/CaptivePortalData$Builder;
    .registers 2
    .param p1, "captive"    # Z

    .line 223
    iput-boolean p1, p0, Landroid/net/CaptivePortalData$Builder;->mCaptive:Z

    .line 224
    return-object p0
.end method

.method public whitelist setExpiryTime(J)Landroid/net/CaptivePortalData$Builder;
    .registers 3
    .param p1, "expiryTime"    # J

    .line 214
    iput-wide p1, p0, Landroid/net/CaptivePortalData$Builder;->mExpiryTime:J

    .line 215
    return-object p0
.end method

.method public whitelist setRefreshTime(J)Landroid/net/CaptivePortalData$Builder;
    .registers 3
    .param p1, "refreshTime"    # J

    .line 147
    iput-wide p1, p0, Landroid/net/CaptivePortalData$Builder;->mRefreshTime:J

    .line 148
    return-object p0
.end method

.method public whitelist setSessionExtendable(Z)Landroid/net/CaptivePortalData$Builder;
    .registers 2
    .param p1, "sessionExtendable"    # Z

    .line 196
    iput-boolean p1, p0, Landroid/net/CaptivePortalData$Builder;->mIsSessionExtendable:Z

    .line 197
    return-object p0
.end method

.method public whitelist setUserPortalUrl(Landroid/net/Uri;)Landroid/net/CaptivePortalData$Builder;
    .registers 3
    .param p1, "userPortalUrl"    # Landroid/net/Uri;

    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/CaptivePortalData$Builder;->setUserPortalUrl(Landroid/net/Uri;I)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setUserPortalUrl(Landroid/net/Uri;I)Landroid/net/CaptivePortalData$Builder;
    .registers 3
    .param p1, "userPortalUrl"    # Landroid/net/Uri;
    .param p2, "source"    # I

    .line 166
    iput-object p1, p0, Landroid/net/CaptivePortalData$Builder;->mUserPortalUrl:Landroid/net/Uri;

    .line 167
    iput p2, p0, Landroid/net/CaptivePortalData$Builder;->mUserPortalUrlSource:I

    .line 168
    return-object p0
.end method

.method public whitelist setVenueFriendlyName(Ljava/lang/CharSequence;)Landroid/net/CaptivePortalData$Builder;
    .registers 2
    .param p1, "venueFriendlyName"    # Ljava/lang/CharSequence;

    .line 232
    iput-object p1, p0, Landroid/net/CaptivePortalData$Builder;->mVenueFriendlyName:Ljava/lang/CharSequence;

    .line 233
    return-object p0
.end method

.method public whitelist setVenueInfoUrl(Landroid/net/Uri;)Landroid/net/CaptivePortalData$Builder;
    .registers 3
    .param p1, "venueInfoUrl"    # Landroid/net/Uri;

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/CaptivePortalData$Builder;->setVenueInfoUrl(Landroid/net/Uri;I)Landroid/net/CaptivePortalData$Builder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist setVenueInfoUrl(Landroid/net/Uri;I)Landroid/net/CaptivePortalData$Builder;
    .registers 3
    .param p1, "venueInfoUrl"    # Landroid/net/Uri;
    .param p2, "source"    # I

    .line 186
    iput-object p1, p0, Landroid/net/CaptivePortalData$Builder;->mVenueInfoUrl:Landroid/net/Uri;

    .line 187
    iput p2, p0, Landroid/net/CaptivePortalData$Builder;->mVenueInfoUrlSource:I

    .line 188
    return-object p0
.end method
