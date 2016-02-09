.class final Lcom/android/server/LockSettingsStorage$Cache$CacheKey;
.super Ljava/lang/Object;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockSettingsStorage$Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation


# static fields
.field static final TYPE_FETCHED:I = 0x2

.field static final TYPE_FILE:I = 0x1

.field static final TYPE_KEY_VALUE:I


# instance fields
.field key:Ljava/lang/String;

.field type:I

.field userId:I


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 592
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockSettingsStorage$Cache$CacheKey;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 610
    instance-of v2, p1, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 611
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 612
    check-cast v0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;

    #@9
    .line 613
    .local v0, "o":Lcom/android/server/LockSettingsStorage$Cache$CacheKey;
    iget v2, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->userId:I

    #@b
    iget v3, v0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->userId:I

    #@d
    if-ne v2, v3, :cond_1

    #@f
    iget v2, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->type:I

    #@11
    iget v3, v0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->type:I

    #@13
    if-ne v2, v3, :cond_1

    #@15
    iget-object v1, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    #@17
    iget-object v2, v0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v1

    #@1d
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->userId:I

    #@8
    xor-int/2addr v0, v1

    #@9
    iget v1, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->type:I

    #@b
    xor-int/2addr v0, v1

    #@c
    return v0
.end method

.method public set(ILjava/lang/String;I)Lcom/android/server/LockSettingsStorage$Cache$CacheKey;
    .locals 0
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "userId"    # I

    #@0
    .prologue
    .line 602
    iput p1, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->type:I

    #@2
    .line 603
    iput-object p2, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->key:Ljava/lang/String;

    #@4
    .line 604
    iput p3, p0, Lcom/android/server/LockSettingsStorage$Cache$CacheKey;->userId:I

    #@6
    .line 605
    return-object p0
.end method
