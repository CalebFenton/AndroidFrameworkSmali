.class Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;
.super Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
.source "PpsMoParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/omadm/PpsMoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LeafNode"
.end annotation


# instance fields
.field private final greylist-max-o mValue:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "nodeName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 329
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;-><init>(Ljava/lang/String;)V

    .line 330
    iput-object p2, p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;->mValue:Ljava/lang/String;

    .line 331
    return-void
.end method


# virtual methods
.method public greylist-max-o getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ">;"
        }
    .end annotation

    .line 340
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getValue()Ljava/lang/String;
    .registers 2

    .line 335
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$LeafNode;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o isLeaf()Z
    .registers 2

    .line 345
    const/4 v0, 0x1

    return v0
.end method
