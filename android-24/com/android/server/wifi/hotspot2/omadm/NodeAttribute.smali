.class public Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;
.super Ljava/lang/Object;
.source "NodeAttribute.java"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mType:Ljava/lang/String;

.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 9
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mName:Ljava/lang/String;

    #@5
    .line 10
    iput-object p2, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mType:Ljava/lang/String;

    #@7
    .line 11
    iput-object p3, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mValue:Ljava/lang/String;

    #@9
    .line 8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "thatObject"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 28
    if-ne p0, p1, :cond_0

    #@3
    .line 29
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 31
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    .line 32
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 35
    check-cast v0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;

    #@15
    .line 36
    .local v0, "that":Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mName:Ljava/lang/String;

    #@17
    iget-object v3, v0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mName:Ljava/lang/String;

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_3

    #@1f
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mType:Ljava/lang/String;

    #@21
    iget-object v3, v0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mType:Ljava/lang/String;

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_3

    #@29
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mValue:Ljava/lang/String;

    #@2b
    iget-object v2, v0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mValue:Ljava/lang/String;

    #@2d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    :cond_3
    return v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 41
    const-string/jumbo v0, "%s (%s) = \'%s\'"

    #@3
    const/4 v1, 0x3

    #@4
    new-array v1, v1, [Ljava/lang/Object;

    #@6
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mName:Ljava/lang/String;

    #@8
    const/4 v3, 0x0

    #@9
    aput-object v2, v1, v3

    #@b
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mType:Ljava/lang/String;

    #@d
    const/4 v3, 0x1

    #@e
    aput-object v2, v1, v3

    #@10
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/omadm/NodeAttribute;->mValue:Ljava/lang/String;

    #@12
    const/4 v3, 0x2

    #@13
    aput-object v2, v1, v3

    #@15
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method
