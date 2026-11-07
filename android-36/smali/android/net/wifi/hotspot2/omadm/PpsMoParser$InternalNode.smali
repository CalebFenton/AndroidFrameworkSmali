.class Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;
.super Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
.source "PpsMoParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/omadm/PpsMoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalNode"
.end annotation


# instance fields
.field private final greylist-max-o mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "nodeName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ">;)V"
        }
    .end annotation

    .line 355
    .local p2, "children":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;>;"
    invoke-direct {p0, p1}, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;-><init>(Ljava/lang/String;)V

    .line 356
    iput-object p2, p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;->mChildren:Ljava/util/List;

    .line 357
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

    .line 366
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$InternalNode;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getValue()Ljava/lang/String;
    .registers 2

    .line 361
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o isLeaf()Z
    .registers 2

    .line 371
    const/4 v0, 0x0

    return v0
.end method
