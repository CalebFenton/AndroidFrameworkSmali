.class public Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;
.super Ljava/lang/Object;
.source "BpfBitmap.java"


# instance fields
.field private blacklist mBpfMap:Landroid/net/connectivity/com/android/net/module/util/BpfMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/android/net/module/util/BpfMap<",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S32;",
            "Landroid/net/connectivity/com/android/net/module/util/Struct$S64;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$GIvQEKS83DJQP7pPaA8WEKbFQN8(Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;Landroid/net/connectivity/com/android/net/module/util/Struct$S32;Landroid/net/connectivity/com/android/net/module/util/Struct$S64;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;->lambda$clear$0(Landroid/net/connectivity/com/android/net/module/util/Struct$S32;Landroid/net/connectivity/com/android/net/module/util/Struct$S64;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/BpfMap;

    const-class v1, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    const-class v2, Landroid/net/connectivity/com/android/net/module/util/Struct$S64;

    invoke-direct {v0, p1, v1, v2}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;->mBpfMap:Landroid/net/connectivity/com/android/net/module/util/BpfMap;

    .line 42
    return-void
.end method

.method private blacklist getBpfMapValue(Landroid/net/connectivity/com/android/net/module/util/Struct$S32;)J
    .registers 5
    .param p1, "key"    # Landroid/net/connectivity/com/android/net/module/util/Struct$S32;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 50
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;->mBpfMap:Landroid/net/connectivity/com/android/net/module/util/BpfMap;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->getValue(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/android/net/module/util/Struct$S64;

    .line 51
    .local v0, "curVal":Landroid/net/connectivity/com/android/net/module/util/Struct$S64;
    if-eqz v0, :cond_d

    .line 52
    iget-wide v1, v0, Landroid/net/connectivity/com/android/net/module/util/Struct$S64;->val:J

    return-wide v1

    .line 54
    :cond_d
    const-wide/16 v1, 0x0

    return-wide v1
.end method

.method private synthetic blacklist lambda$clear$0(Landroid/net/connectivity/com/android/net/module/util/Struct$S32;Landroid/net/connectivity/com/android/net/module/util/Struct$S64;)V
    .registers 7
    .param p1, "key"    # Landroid/net/connectivity/com/android/net/module/util/Struct$S32;
    .param p2, "value"    # Landroid/net/connectivity/com/android/net/module/util/Struct$S64;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 111
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;->mBpfMap:Landroid/net/connectivity/com/android/net/module/util/BpfMap;

    new-instance v1, Landroid/net/connectivity/com/android/net/module/util/Struct$S64;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Landroid/net/connectivity/com/android/net/module/util/Struct$S64;-><init>(J)V

    invoke-virtual {v0, p1, v1}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->updateEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V

    .line 112
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;->mBpfMap:Landroid/net/connectivity/com/android/net/module/util/BpfMap;

    new-instance v1, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap$$ExternalSyntheticLambda0;-><init>(Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;)V

    invoke-virtual {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->forEach(Landroid/net/connectivity/com/android/net/module/util/IBpfMap$ThrowingBiConsumer;)V

    .line 113
    return-void
.end method

.method public blacklist get(I)Z
    .registers 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 64
    const/4 v0, 0x0

    if-gez p1, :cond_4

    return v0

    .line 66
    :cond_4
    new-instance v1, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    shr-int/lit8 v2, p1, 0x6

    invoke-direct {v1, v2}, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;-><init>(I)V

    .line 67
    .local v1, "key":Landroid/net/connectivity/com/android/net/module/util/Struct$S32;
    invoke-direct {p0, v1}, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;->getBpfMapValue(Landroid/net/connectivity/com/android/net/module/util/Struct$S32;)J

    move-result-wide v2

    and-int/lit8 v4, p1, 0x3f

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public blacklist isEmpty()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;->mBpfMap:Landroid/net/connectivity/com/android/net/module/util/BpfMap;

    invoke-virtual {v0}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->getFirstKey()Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    .line 120
    .local v0, "key":Landroid/net/connectivity/com/android/net/module/util/Struct$S32;
    :goto_8
    if-eqz v0, :cond_20

    .line 121
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;->getBpfMapValue(Landroid/net/connectivity/com/android/net/module/util/Struct$S32;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_16

    .line 122
    const/4 v1, 0x0

    return v1

    .line 124
    :cond_16
    iget-object v1, p0, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;->mBpfMap:Landroid/net/connectivity/com/android/net/module/util/BpfMap;

    invoke-virtual {v1, v0}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->getNextKey(Landroid/net/connectivity/com/android/net/module/util/Struct;)Landroid/net/connectivity/com/android/net/module/util/Struct;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    goto :goto_8

    .line 126
    :cond_20
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist set(I)V
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;->set(IZ)V

    .line 77
    return-void
.end method

.method public blacklist set(IZ)V
    .registers 10
    .param p1, "index"    # I
    .param p2, "set"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 95
    if-ltz p1, :cond_24

    .line 97
    new-instance v0, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;

    shr-int/lit8 v1, p1, 0x6

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/android/net/module/util/Struct$S32;-><init>(I)V

    .line 98
    .local v0, "key":Landroid/net/connectivity/com/android/net/module/util/Struct$S32;
    and-int/lit8 v1, p1, 0x3f

    const-wide/16 v2, 0x1

    shl-long v1, v2, v1

    .line 99
    .local v1, "mask":J
    invoke-direct {p0, v0}, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;->getBpfMapValue(Landroid/net/connectivity/com/android/net/module/util/Struct$S32;)J

    move-result-wide v3

    .line 100
    .local v3, "val":J
    if-eqz p2, :cond_17

    or-long/2addr v3, v1

    goto :goto_19

    :cond_17
    not-long v5, v1

    and-long/2addr v3, v5

    .line 101
    :goto_19
    iget-object v5, p0, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;->mBpfMap:Landroid/net/connectivity/com/android/net/module/util/BpfMap;

    new-instance v6, Landroid/net/connectivity/com/android/net/module/util/Struct$S64;

    invoke-direct {v6, v3, v4}, Landroid/net/connectivity/com/android/net/module/util/Struct$S64;-><init>(J)V

    invoke-virtual {v5, v0, v6}, Landroid/net/connectivity/com/android/net/module/util/BpfMap;->updateEntry(Landroid/net/connectivity/com/android/net/module/util/Struct;Landroid/net/connectivity/com/android/net/module/util/Struct;)V

    .line 102
    return-void

    .line 95
    .end local v0    # "key":Landroid/net/connectivity/com/android/net/module/util/Struct$S32;
    .end local v1    # "mask":J
    .end local v3    # "val":J
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Index out of bounds."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist unset(I)V
    .registers 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/connectivity/com/android/net/module/util/BpfBitmap;->set(IZ)V

    .line 86
    return-void
.end method
