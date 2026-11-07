.class public Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;
.super Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;
.source "IkeLocalRequestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IkeLocalRequest"
.end annotation


# instance fields
.field public blacklist remoteSpi:J


# direct methods
.method private constructor blacklist <init>(IJI)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "remoteIkeSpi"    # J
    .param p4, "priority"    # I

    .line 229
    invoke-direct {p0, p1, p4}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;-><init>(II)V

    .line 230
    iput-wide p2, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;->remoteSpi:J

    .line 231
    return-void
.end method

.method synthetic constructor blacklist <init>(IJILcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$IkeLocalRequest;-><init>(IJI)V

    return-void
.end method


# virtual methods
.method protected blacklist isChildRequest()Z
    .registers 2

    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method protected blacklist validateTypeOrThrow(I)V
    .registers 5
    .param p1, "type"    # I

    .line 235
    const/16 v0, 0x191

    if-lt p1, v0, :cond_9

    const/16 v0, 0x197

    if-gt p1, v0, :cond_9

    .line 236
    return-void

    .line 238
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IKE procedure type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
