.class Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecLocalDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveSource"
.end annotation


# instance fields
.field logicalAddress:I

.field physicalAddress:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->invalidate()V

    #@6
    .line 67
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "logical"    # I
    .param p2, "physical"    # I

    #@0
    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@5
    .line 72
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@7
    .line 70
    return-void
.end method

.method public static of(II)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .locals 1
    .param p0, "logical"    # I
    .param p1, "physical"    # I

    #@0
    .prologue
    .line 78
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@2
    invoke-direct {v0, p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>(II)V

    #@5
    return-object v0
.end method

.method public static of(Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;)Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    .locals 3
    .param p0, "source"    # Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@0
    .prologue
    .line 75
    new-instance v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@2
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@4
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@6
    invoke-direct {v0, v1, v2}, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;-><init>(II)V

    #@9
    return-object v0
.end method


# virtual methods
.method public equals(II)Z
    .locals 2
    .param p1, "logical"    # I
    .param p2, "physical"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 88
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@3
    if-ne v1, p1, :cond_0

    #@5
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@7
    if-ne v1, p2, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 92
    instance-of v2, p1, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@3
    if-eqz v2, :cond_1

    #@5
    move-object v0, p1

    #@6
    .line 93
    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;

    #@8
    .line 94
    .local v0, "that":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    iget v2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@a
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 95
    iget v2, v0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@10
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@12
    if-ne v2, v3, :cond_0

    #@14
    const/4 v1, 0x1

    #@15
    .line 94
    :cond_0
    return v1

    #@16
    .line 97
    .end local v0    # "that":Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 101
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@2
    mul-int/lit8 v0, v0, 0x1d

    #@4
    iget v1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@6
    add-int/2addr v0, v1

    #@7
    return v0
.end method

.method public invalidate()V
    .locals 1

    #@0
    .prologue
    .line 84
    const/4 v0, -0x1

    #@1
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@3
    .line 85
    const v0, 0xffff

    #@6
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@8
    .line 83
    return-void
.end method

.method public isValid()Z
    .locals 1

    #@0
    .prologue
    .line 81
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@2
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->isValidAddress(I)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 105
    new-instance v2, Ljava/lang/StringBuffer;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@7
    .line 106
    .local v2, "s":Ljava/lang/StringBuffer;
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@9
    const/4 v4, -0x1

    #@a
    if-ne v3, v4, :cond_0

    #@c
    .line 107
    const-string/jumbo v0, "invalid"

    #@f
    .line 108
    .local v0, "logicalAddressString":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "("

    #@12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@19
    .line 109
    iget v3, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@1b
    const v4, 0xffff

    #@1e
    if-ne v3, v4, :cond_1

    #@20
    .line 110
    const-string/jumbo v1, "invalid"

    #@23
    .line 111
    .local v1, "physicalAddressString":Ljava/lang/String;
    :goto_1
    const-string/jumbo v3, ", "

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d
    move-result-object v3

    #@2e
    const-string/jumbo v4, ")"

    #@31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@34
    .line 112
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@37
    move-result-object v3

    #@38
    return-object v3

    #@39
    .line 107
    .end local v0    # "logicalAddressString":Ljava/lang/String;
    .end local v1    # "physicalAddressString":Ljava/lang/String;
    :cond_0
    const-string/jumbo v3, "0x%02x"

    #@3c
    new-array v4, v7, [Ljava/lang/Object;

    #@3e
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->logicalAddress:I

    #@40
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@43
    move-result-object v5

    #@44
    aput-object v5, v4, v6

    #@46
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@49
    move-result-object v0

    #@4a
    .restart local v0    # "logicalAddressString":Ljava/lang/String;
    goto :goto_0

    #@4b
    .line 110
    :cond_1
    const-string/jumbo v3, "0x%04x"

    #@4e
    new-array v4, v7, [Ljava/lang/Object;

    #@50
    iget v5, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$ActiveSource;->physicalAddress:I

    #@52
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@55
    move-result-object v5

    #@56
    aput-object v5, v4, v6

    #@58
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5b
    move-result-object v1

    #@5c
    .restart local v1    # "physicalAddressString":Ljava/lang/String;
    goto :goto_1
.end method
