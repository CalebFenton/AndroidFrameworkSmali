.class Lsun/misc/SoftCache$ValueCell;
.super Ljava/lang/ref/SoftReference;
.source "SoftCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/SoftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ValueCell"
.end annotation


# static fields
.field private static INVALID_KEY:Ljava/lang/Object;

.field private static dropped:I


# instance fields
.field private key:Ljava/lang/Object;


# direct methods
.method static synthetic -get0()I
    .locals 1

    #@0
    sget v0, Lsun/misc/SoftCache$ValueCell;->dropped:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lsun/misc/SoftCache$ValueCell;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0

    #@0
    sput p0, Lsun/misc/SoftCache$ValueCell;->dropped:I

    #@2
    return p0
.end method

.method static synthetic -wrap0(Lsun/misc/SoftCache$ValueCell;)Z
    .locals 1

    #@0
    invoke-direct {p0}, Lsun/misc/SoftCache$ValueCell;->isValid()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 1
    .param p0, "val"    # Ljava/lang/Object;
    .param p1, "drop"    # Z

    #@0
    .prologue
    invoke-static {p0, p1}, Lsun/misc/SoftCache$ValueCell;->strip(Ljava/lang/Object;Z)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "queue"    # Ljava/lang/ref/ReferenceQueue;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Lsun/misc/SoftCache$ValueCell;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 119
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Lsun/misc/SoftCache$ValueCell;->INVALID_KEY:Ljava/lang/Object;

    #@7
    .line 120
    const/4 v0, 0x0

    #@8
    sput v0, Lsun/misc/SoftCache$ValueCell;->dropped:I

    #@a
    .line 118
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "queue"    # Ljava/lang/ref/ReferenceQueue;

    #@0
    .prologue
    .line 124
    invoke-direct {p0, p2, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@3
    .line 125
    iput-object p1, p0, Lsun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    #@5
    .line 123
    return-void
.end method

.method private static create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;
    .locals 1
    .param p0, "key"    # Ljava/lang/Object;
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "queue"    # Ljava/lang/ref/ReferenceQueue;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 131
    if-nez p1, :cond_0

    #@3
    return-object v0

    #@4
    .line 132
    :cond_0
    new-instance v0, Lsun/misc/SoftCache$ValueCell;

    #@6
    invoke-direct {v0, p0, p1, p2}, Lsun/misc/SoftCache$ValueCell;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@9
    return-object v0
.end method

.method private drop()V
    .locals 1

    #@0
    .prologue
    .line 148
    invoke-super {p0}, Ljava/lang/ref/SoftReference;->clear()V

    #@3
    .line 149
    sget-object v0, Lsun/misc/SoftCache$ValueCell;->INVALID_KEY:Ljava/lang/Object;

    #@5
    iput-object v0, p0, Lsun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    #@7
    .line 150
    sget v0, Lsun/misc/SoftCache$ValueCell;->dropped:I

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    sput v0, Lsun/misc/SoftCache$ValueCell;->dropped:I

    #@d
    .line 147
    return-void
.end method

.method private isValid()Z
    .locals 2

    #@0
    .prologue
    .line 144
    iget-object v0, p0, Lsun/misc/SoftCache$ValueCell;->key:Ljava/lang/Object;

    #@2
    sget-object v1, Lsun/misc/SoftCache$ValueCell;->INVALID_KEY:Ljava/lang/Object;

    #@4
    if-eq v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method private static strip(Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 3
    .param p0, "val"    # Ljava/lang/Object;
    .param p1, "drop"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 136
    if-nez p0, :cond_0

    #@3
    return-object v2

    #@4
    :cond_0
    move-object v1, p0

    #@5
    .line 137
    check-cast v1, Lsun/misc/SoftCache$ValueCell;

    #@7
    .line 138
    .local v1, "vc":Lsun/misc/SoftCache$ValueCell;
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    .line 139
    .local v0, "o":Ljava/lang/Object;
    if-eqz p1, :cond_1

    #@d
    invoke-direct {v1}, Lsun/misc/SoftCache$ValueCell;->drop()V

    #@10
    .line 140
    :cond_1
    return-object v0
.end method
