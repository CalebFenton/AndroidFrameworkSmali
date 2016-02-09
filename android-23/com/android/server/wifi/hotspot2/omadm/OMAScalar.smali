.class public Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;
.super Lcom/android/server/wifi/hotspot2/omadm/OMANode;
.source "OMAScalar.java"


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "parent"    # Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Ljava/lang/String;
    .param p4, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/hotspot2/omadm/OMANode;-><init>(Lcom/android/server/wifi/hotspot2/omadm/OMANode;Ljava/lang/String;Ljava/lang/String;)V

    #@3
    .line 15
    iput-object p4, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->mValue:Ljava/lang/String;

    #@5
    .line 13
    return-void
.end method


# virtual methods
.method public addChild(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 50
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getChild(Ljava/lang/String;)Lcom/android/server/wifi/hotspot2/omadm/OMANode;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getChildren()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/server/wifi/hotspot2/omadm/OMANode;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 34
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getListValue(Ljava/util/Iterator;)Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/wifi/hotspot2/omadm/OMAConstructed;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 24
    .local p1, "path":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/wifi/hotspot2/omadm/OMAException;

    #@2
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "Scalar encountered in list path: "

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getPathString()Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {v0, v1}, Lcom/android/server/wifi/hotspot2/omadm/OMAException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v0
.end method

.method public getScalarValue(Ljava/util/Iterator;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/wifi/hotspot2/omadm/OMAException;
        }
    .end annotation

    #@0
    .prologue
    .line 19
    .local p1, "path":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->mValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->mValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isLeaf()Z
    .locals 1

    #@0
    .prologue
    .line 29
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public marshal(Ljava/io/OutputStream;I)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "level"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 64
    invoke-static {p2, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->indent(ILjava/io/OutputStream;)V

    #@3
    .line 65
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    invoke-static {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    #@a
    .line 66
    const/16 v0, 0x3d

    #@c
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    #@f
    .line 67
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getValue()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-static {v0, p1}, Lcom/android/server/wifi/hotspot2/omadm/OMAConstants;->serializeString(Ljava/lang/String;Ljava/io/OutputStream;)V

    #@16
    .line 68
    const/16 v0, 0xa

    #@18
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    #@1b
    .line 63
    return-void
.end method

.method public toString(Ljava/lang/StringBuilder;I)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "level"    # I

    #@0
    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getPathString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7
    move-result-object v0

    #@8
    const/16 v1, 0x3d

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@d
    move-result-object v0

    #@e
    iget-object v1, p0, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->mValue:Ljava/lang/String;

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    .line 56
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getContext()Ljava/lang/String;

    #@16
    move-result-object v0

    #@17
    if-eqz v0, :cond_0

    #@19
    .line 57
    const-string/jumbo v0, " ("

    #@1c
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/omadm/OMAScalar;->getContext()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    const/16 v1, 0x29

    #@2a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@2d
    .line 59
    :cond_0
    const/16 v0, 0xa

    #@2f
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@32
    .line 54
    return-void
.end method
