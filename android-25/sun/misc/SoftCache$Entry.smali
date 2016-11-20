.class Lsun/misc/SoftCache$Entry;
.super Ljava/lang/Object;
.source "SoftCache.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/misc/SoftCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Entry"
.end annotation


# instance fields
.field private ent:Ljava/util/Map$Entry;

.field final synthetic this$0:Lsun/misc/SoftCache;

.field private value:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Lsun/misc/SoftCache$Entry;)Ljava/util/Map$Entry;
    .locals 1

    #@0
    iget-object v0, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    #@2
    return-object v0
.end method

.method constructor <init>(Lsun/misc/SoftCache;Ljava/util/Map$Entry;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lsun/misc/SoftCache;
    .param p2, "ent"    # Ljava/util/Map$Entry;
    .param p3, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 357
    iput-object p1, p0, Lsun/misc/SoftCache$Entry;->this$0:Lsun/misc/SoftCache;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 358
    iput-object p2, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    #@7
    .line 359
    iput-object p3, p0, Lsun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    #@9
    .line 357
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 375
    instance-of v2, p1, Ljava/util/Map$Entry;

    #@3
    if-nez v2, :cond_0

    #@5
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 376
    check-cast v0, Ljava/util/Map$Entry;

    #@9
    .line 377
    .local v0, "e":Ljava/util/Map$Entry;
    iget-object v2, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    #@b
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@e
    move-result-object v2

    #@f
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@12
    move-result-object v3

    #@13
    invoke-static {v2, v3}, Lsun/misc/SoftCache;->-wrap0(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 378
    iget-object v1, p0, Lsun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    #@1b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v1, v2}, Lsun/misc/SoftCache;->-wrap0(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@22
    move-result v1

    #@23
    .line 377
    :cond_1
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 363
    iget-object v0, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    #@2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 367
    iget-object v0, p0, Lsun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 383
    invoke-virtual {p0}, Lsun/misc/SoftCache$Entry;->getKey()Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    .local v0, "k":Ljava/lang/Object;
    if-nez v0, :cond_0

    #@7
    move v1, v2

    #@8
    .line 384
    :goto_0
    iget-object v3, p0, Lsun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    #@a
    if-nez v3, :cond_1

    #@c
    .line 383
    :goto_1
    xor-int/2addr v1, v2

    #@d
    return v1

    #@e
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    #@11
    move-result v1

    #@12
    goto :goto_0

    #@13
    .line 384
    :cond_1
    iget-object v2, p0, Lsun/misc/SoftCache$Entry;->value:Ljava/lang/Object;

    #@15
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    #@18
    move-result v2

    #@19
    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 371
    iget-object v0, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    #@2
    iget-object v1, p0, Lsun/misc/SoftCache$Entry;->ent:Ljava/util/Map$Entry;

    #@4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    iget-object v2, p0, Lsun/misc/SoftCache$Entry;->this$0:Lsun/misc/SoftCache;

    #@a
    invoke-static {v2}, Lsun/misc/SoftCache;->-get1(Lsun/misc/SoftCache;)Ljava/lang/ref/ReferenceQueue;

    #@d
    move-result-object v2

    #@e
    invoke-static {v1, p1, v2}, Lsun/misc/SoftCache$ValueCell;->-wrap2(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Lsun/misc/SoftCache$ValueCell;

    #@11
    move-result-object v1

    #@12
    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
