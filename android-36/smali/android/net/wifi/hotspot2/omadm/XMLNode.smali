.class public Landroid/net/wifi/hotspot2/omadm/XMLNode;
.super Ljava/lang/Object;
.source "XMLNode.java"


# instance fields
.field private final greylist-max-o mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/omadm/XMLNode;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mParent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

.field private final greylist-max-o mTag:Ljava/lang/String;

.field private greylist-max-o mText:Ljava/lang/String;

.field private greylist-max-o mTextBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/net/wifi/hotspot2/omadm/XMLNode;Ljava/lang/String;)V
    .registers 4
    .param p1, "parent"    # Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .param p2, "tag"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mParent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public greylist-max-o addChild(Landroid/net/wifi/hotspot2/omadm/XMLNode;)V
    .registers 3
    .param p1, "child"    # Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 61
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    return-void
.end method

.method public greylist-max-o addText(Ljava/lang/String;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/String;

    .line 52
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    return-void
.end method

.method public greylist-max-o close()V
    .registers 2

    .line 70
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTextBuilder:Ljava/lang/StringBuilder;

    .line 72
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "thatObject"    # Ljava/lang/Object;

    .line 92
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 93
    return v0

    .line 95
    :cond_4
    instance-of v1, p1, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 96
    return v2

    .line 98
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/net/wifi/hotspot2/omadm/XMLNode;

    .line 100
    .local v1, "that":Landroid/net/wifi/hotspot2/omadm/XMLNode;
    iget-object v3, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    .line 101
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2c

    iget-object v3, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    iget-object v4, v1, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    .line 102
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    .line 100
    :goto_2d
    return v0
.end method

.method public greylist-max-o getChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/hotspot2/omadm/XMLNode;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public greylist-max-o getParent()Landroid/net/wifi/hotspot2/omadm/XMLNode;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mParent:Landroid/net/wifi/hotspot2/omadm/XMLNode;

    return-object v0
.end method

.method public greylist-max-o getTag()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getText()Ljava/lang/String;
    .registers 2

    .line 83
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 107
    iget-object v0, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mTag:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mText:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/omadm/XMLNode;->mChildren:Ljava/util/List;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
