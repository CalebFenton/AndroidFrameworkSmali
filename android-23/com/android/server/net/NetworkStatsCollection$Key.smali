.class Lcom/android/server/net/NetworkStatsCollection$Key;
.super Ljava/lang/Object;
.source "NetworkStatsCollection.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkStatsCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Key"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/server/net/NetworkStatsCollection$Key;",
        ">;"
    }
.end annotation


# instance fields
.field private final hashCode:I

.field public final ident:Lcom/android/server/net/NetworkIdentitySet;

.field public final set:I

.field public final tag:I

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkIdentitySet;III)V
    .locals 3
    .param p1, "ident"    # Lcom/android/server/net/NetworkIdentitySet;
    .param p2, "uid"    # I
    .param p3, "set"    # I
    .param p4, "tag"    # I

    #@0
    .prologue
    .line 600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 601
    iput-object p1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    #@5
    .line 602
    iput p2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@7
    .line 603
    iput p3, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    #@9
    .line 604
    iput p4, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    #@b
    .line 605
    const/4 v0, 0x4

    #@c
    new-array v0, v0, [Ljava/lang/Object;

    #@e
    const/4 v1, 0x0

    #@f
    aput-object p1, v0, v1

    #@11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@14
    move-result-object v1

    #@15
    const/4 v2, 0x1

    #@16
    aput-object v1, v0, v2

    #@18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v1

    #@1c
    const/4 v2, 0x2

    #@1d
    aput-object v1, v0, v2

    #@1f
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v1

    #@23
    const/4 v2, 0x3

    #@24
    aput-object v1, v0, v2

    #@26
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    #@29
    move-result v0

    #@2a
    iput v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->hashCode:I

    #@2c
    .line 600
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/net/NetworkStatsCollection$Key;)I
    .locals 3
    .param p1, "another"    # Lcom/android/server/net/NetworkStatsCollection$Key;

    #@0
    .prologue
    .line 625
    const/4 v0, 0x0

    #@1
    .line 626
    .local v0, "res":I
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-object v1, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 627
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    #@b
    iget-object v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    #@d
    invoke-virtual {v1, v2}, Lcom/android/server/net/NetworkIdentitySet;->compareTo(Lcom/android/server/net/NetworkIdentitySet;)I

    #@10
    move-result v0

    #@11
    .line 629
    :cond_0
    if-nez v0, :cond_1

    #@13
    .line 630
    iget v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@15
    iget v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@17
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    #@1a
    move-result v0

    #@1b
    .line 632
    :cond_1
    if-nez v0, :cond_2

    #@1d
    .line 633
    iget v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    #@1f
    iget v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    #@21
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    #@24
    move-result v0

    #@25
    .line 635
    :cond_2
    if-nez v0, :cond_3

    #@27
    .line 636
    iget v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    #@29
    iget v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    #@2b
    invoke-static {v1, v2}, Ljava/lang/Integer;->compare(II)I

    #@2e
    move-result v0

    #@2f
    .line 638
    :cond_3
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "another"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 624
    check-cast p1, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@2
    .end local p1    # "another":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkStatsCollection$Key;->compareTo(Lcom/android/server/net/NetworkStatsCollection$Key;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 615
    instance-of v2, p1, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 616
    check-cast v0, Lcom/android/server/net/NetworkStatsCollection$Key;

    #@8
    .line 617
    .local v0, "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    iget v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@a
    iget v3, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->uid:I

    #@c
    if-ne v2, v3, :cond_0

    #@e
    iget v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    #@10
    iget v3, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->set:I

    #@12
    if-ne v2, v3, :cond_0

    #@14
    iget v2, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    #@16
    iget v3, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->tag:I

    #@18
    if-ne v2, v3, :cond_0

    #@1a
    .line 618
    iget-object v1, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    #@1c
    iget-object v2, v0, Lcom/android/server/net/NetworkStatsCollection$Key;->ident:Lcom/android/server/net/NetworkIdentitySet;

    #@1e
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@21
    move-result v1

    #@22
    .line 617
    :cond_0
    return v1

    #@23
    .line 620
    .end local v0    # "key":Lcom/android/server/net/NetworkStatsCollection$Key;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 610
    iget v0, p0, Lcom/android/server/net/NetworkStatsCollection$Key;->hashCode:I

    #@2
    return v0
.end method
