.class abstract Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;
.super Ljava/lang/Object;
.source "PpsMoParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/omadm/PpsMoParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PPSNode"
.end annotation


# instance fields
.field private final greylist-max-o mName:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    iput-object p1, p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->mName:Ljava/lang/String;

    .line 294
    return-void
.end method


# virtual methods
.method public abstract greylist-max-o getChildren()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;",
            ">;"
        }
    .end annotation
.end method

.method public greylist-max-o getName()Ljava/lang/String;
    .registers 2

    .line 300
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/PpsMoParser$PPSNode;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public abstract greylist-max-o getValue()Ljava/lang/String;
.end method

.method public abstract greylist-max-o isLeaf()Z
.end method
