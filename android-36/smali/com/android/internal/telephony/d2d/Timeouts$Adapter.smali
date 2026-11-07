.class public Lcom/android/internal/telephony/d2d/Timeouts$Adapter;
.super Ljava/lang/Object;
.source "Timeouts.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/d2d/Timeouts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# instance fields
.field private final blacklist mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor blacklist <init>(Landroid/content/ContentResolver;)V
    .registers 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/internal/telephony/d2d/Timeouts$Adapter;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public blacklist getDtmfDurationFuzzMillis()J
    .registers 3

    .line 51
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/Timeouts$Adapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/d2d/Timeouts;->getDtmfDurationFuzzMillis(Landroid/content/ContentResolver;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDtmfMinimumIntervalMillis()J
    .registers 3

    .line 43
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/Timeouts$Adapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/d2d/Timeouts;->getDtmfMinimumIntervalMillis(Landroid/content/ContentResolver;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getDtmfNegotiationTimeoutMillis()J
    .registers 3

    .line 55
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/Timeouts$Adapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/d2d/Timeouts;->getDtmfNegotiationTimeoutMillis(Landroid/content/ContentResolver;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMaxDurationOfDtmfMessageMillis()J
    .registers 3

    .line 47
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/Timeouts$Adapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/d2d/Timeouts;->getMaxDurationOfDtmfMessageMillis(Landroid/content/ContentResolver;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getRtpMessageAckDurationMillis()J
    .registers 3

    .line 35
    iget-object p0, p0, Lcom/android/internal/telephony/d2d/Timeouts$Adapter;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0}, Lcom/android/internal/telephony/d2d/Timeouts;->getRtpMessageAckDurationMillis(Landroid/content/ContentResolver;)J

    move-result-wide v0

    return-wide v0
.end method
