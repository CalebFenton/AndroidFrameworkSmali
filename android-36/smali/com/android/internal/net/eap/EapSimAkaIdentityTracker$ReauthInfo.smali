.class public Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;
.super Ljava/lang/Object;
.source "EapSimAkaIdentityTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReauthInfo"
.end annotation


# instance fields
.field private final blacklist mExpiryTimestampElapsedRealtime:J

.field private final blacklist mKeyAut:[B

.field private final blacklist mKeyEncr:[B

.field private final blacklist mMk:[B

.field private final blacklist mReauthCount:I


# direct methods
.method private constructor blacklist <init>(I[B[B[B)V
    .registers 9
    .param p1, "reauthCount"    # I
    .param p2, "mk"    # [B
    .param p3, "kEncr"    # [B
    .param p4, "kAut"    # [B

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput p1, p0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->mReauthCount:I

    .line 88
    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->mMk:[B

    .line 89
    invoke-virtual {p3}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->mKeyEncr:[B

    .line 90
    invoke-virtual {p4}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->mKeyAut:[B

    .line 91
    nop

    .line 92
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker;->-$$Nest$sfgetREAUTH_INFO_LIFETIME_MILLIS()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->mExpiryTimestampElapsedRealtime:J

    .line 93
    return-void
.end method

.method constructor blacklist <init>(I[B[B[BJ)V
    .registers 9
    .param p1, "reauthCount"    # I
    .param p2, "mk"    # [B
    .param p3, "kEncr"    # [B
    .param p4, "kAut"    # [B
    .param p5, "elapsedExpiryTimeMillis"    # J

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput p1, p0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->mReauthCount:I

    .line 103
    iput-object p2, p0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->mMk:[B

    .line 104
    iput-object p3, p0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->mKeyEncr:[B

    .line 105
    iput-object p4, p0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->mKeyAut:[B

    .line 106
    nop

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p5

    iput-wide v0, p0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->mExpiryTimestampElapsedRealtime:J

    .line 108
    return-void
.end method

.method synthetic constructor blacklist <init>(I[B[B[BLcom/android/internal/net/eap/EapSimAkaIdentityTracker-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;-><init>(I[B[B[B)V

    return-void
.end method


# virtual methods
.method public blacklist getKeyAut()[B
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->mKeyAut:[B

    return-object v0
.end method

.method public blacklist getKeyEncr()[B
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->mKeyEncr:[B

    return-object v0
.end method

.method public blacklist getMk()[B
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->mMk:[B

    return-object v0
.end method

.method public blacklist getReauthCount()I
    .registers 2

    .line 116
    iget v0, p0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->mReauthCount:I

    return v0
.end method

.method public blacklist isValid()Z
    .registers 5

    .line 152
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/net/eap/EapSimAkaIdentityTracker$ReauthInfo;->mExpiryTimestampElapsedRealtime:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method
