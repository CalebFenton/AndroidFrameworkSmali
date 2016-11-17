.class Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;
.super Ljava/lang/Object;
.source "ExpatParser.java"

# interfaces
.implements Lorg/xml/sax/Locator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExpatLocator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xml/ExpatParser;


# direct methods
.method private constructor <init>(Lorg/apache/harmony/xml/ExpatParser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/harmony/xml/ExpatParser;

    #@0
    .prologue
    .line 669
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/harmony/xml/ExpatParser;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;-><init>(Lorg/apache/harmony/xml/ExpatParser;)V

    #@3
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 1

    #@0
    .prologue
    .line 684
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #@2
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-wrap0(Lorg/apache/harmony/xml/ExpatParser;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLineNumber()I
    .locals 1

    #@0
    .prologue
    .line 680
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #@2
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-wrap1(Lorg/apache/harmony/xml/ExpatParser;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 672
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #@2
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-get4(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 676
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #@2
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-get5(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Locator[publicId: "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #@e
    invoke-static {v1}, Lorg/apache/harmony/xml/ExpatParser;->-get4(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    const-string/jumbo v1, ", systemId: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #@1f
    invoke-static {v1}, Lorg/apache/harmony/xml/ExpatParser;->-get5(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 690
    const-string/jumbo v1, ", line: "

    #@2a
    .line 689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v0

    #@2e
    .line 690
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->getLineNumber()I

    #@31
    move-result v1

    #@32
    .line 689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v0

    #@36
    .line 691
    const-string/jumbo v1, ", column: "

    #@39
    .line 689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 691
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->getColumnNumber()I

    #@40
    move-result v1

    #@41
    .line 689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v0

    #@45
    .line 691
    const-string/jumbo v1, "]"

    #@48
    .line 689
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v0

    #@4c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v0

    #@50
    return-object v0
.end method
