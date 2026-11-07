.class public abstract Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;
.super Ljava/lang/Object;
.source "IkeLocalRequestScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "LocalRequest"
.end annotation


# instance fields
.field private final blacklist mPriority:I

.field private blacklist mRequestId:I

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final blacklist procedureType:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$macquireWakeLock(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;Landroid/os/PowerManager;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->acquireWakeLock(Landroid/os/PowerManager;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetRequestId(Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->setRequestId(I)V

    return-void
.end method

.method constructor blacklist <init>(II)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "priority"    # I

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->mRequestId:I

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->validateTypeOrThrow(I)V

    .line 157
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->procedureType:I

    .line 158
    iput p2, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->mPriority:I

    .line 159
    return-void
.end method

.method private blacklist acquireWakeLock(Landroid/os/PowerManager;)V
    .registers 5
    .param p1, "powerManager"    # Landroid/os/PowerManager;

    .line 182
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 183
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    const-string v1, "IkeLocalRequestScheduler"

    const-string v2, "This LocalRequest already acquired a WakeLock"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void

    .line 187
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IkeLocalRequestSchedulerLocalRequestWakeLock_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->procedureType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 188
    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 191
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 192
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 193
    return-void
.end method

.method private blacklist setRequestId(I)V
    .registers 2
    .param p1, "requestId"    # I

    .line 167
    iput p1, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->mRequestId:I

    .line 168
    return-void
.end method


# virtual methods
.method blacklist getPriority()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->mPriority:I

    return v0
.end method

.method blacklist getRequestId()I
    .registers 2

    .line 172
    iget v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->mRequestId:I

    return v0
.end method

.method protected abstract blacklist isChildRequest()Z
.end method

.method public blacklist releaseWakeLock()V
    .registers 2

    .line 197
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_c

    .line 198
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 199
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeLocalRequestScheduler$LocalRequest;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 201
    :cond_c
    return-void
.end method

.method protected abstract blacklist validateTypeOrThrow(I)V
.end method
