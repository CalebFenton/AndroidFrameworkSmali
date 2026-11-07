.class public Landroid/net/wifi/ScanResult$RadioChainInfo;
.super Ljava/lang/Object;
.source "ScanResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RadioChainInfo"
.end annotation


# instance fields
.field public greylist-max-o id:I

.field public greylist-max-o level:I


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObj"    # Ljava/lang/Object;

    .line 696
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 697
    return v0

    .line 699
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/ScanResult$RadioChainInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 700
    return v2

    .line 702
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/ScanResult$RadioChainInfo;

    .line 703
    .local v1, "other":Landroid/net/wifi/ScanResult$RadioChainInfo;
    iget v3, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    iget v4, v1, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    if-ne v3, v4, :cond_1a

    iget v3, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    iget v4, v1, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    if-ne v3, v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 708
    iget v0, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadioChainInfo: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/wifi/ScanResult$RadioChainInfo;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
