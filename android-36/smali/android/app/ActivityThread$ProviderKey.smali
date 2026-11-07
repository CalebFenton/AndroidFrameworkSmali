.class final Landroid/app/ActivityThread$ProviderKey;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProviderKey"
.end annotation


# instance fields
.field final greylist-max-o authority:Ljava/lang/String;

.field blacklist mHolder:Landroid/app/ContentProviderHolder;

.field final blacklist mLock:Ljava/lang/Object;

.field final greylist-max-o userId:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 536
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    .line 537
    iput p2, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    .line 538
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/app/ActivityThread$ProviderKey;->mLock:Ljava/lang/Object;

    .line 539
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 543
    instance-of v0, p1, Landroid/app/ActivityThread$ProviderKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    .line 544
    move-object v0, p1

    check-cast v0, Landroid/app/ActivityThread$ProviderKey;

    .line 545
    .local v0, "other":Landroid/app/ActivityThread$ProviderKey;
    iget-object v2, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    iget-object v3, v0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget v2, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    iget v3, v0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    if-ne v2, v3, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1

    .line 547
    .end local v0    # "other":Landroid/app/ActivityThread$ProviderKey;
    :cond_1a
    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 552
    iget-object v0, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/app/ActivityThread$ProviderKey;->authority:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iget v1, p0, Landroid/app/ActivityThread$ProviderKey;->userId:I

    xor-int/2addr v0, v1

    return v0
.end method
