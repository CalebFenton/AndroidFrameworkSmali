.class Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;
.super Lorg/apache/harmony/xml/ExpatAttributes;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CurrentAttributes"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/harmony/xml/ExpatParser;


# direct methods
.method private constructor <init>(Lorg/apache/harmony/xml/ExpatParser;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/harmony/xml/ExpatParser;

    #@0
    .prologue
    .line 698
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #@2
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatAttributes;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/harmony/xml/ExpatParser;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;-><init>(Lorg/apache/harmony/xml/ExpatParser;)V

    #@3
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 2

    #@0
    .prologue
    .line 715
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #@2
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-get2(Lorg/apache/harmony/xml/ExpatParser;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 716
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Attributes can only be used within the scope of startElement()."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 718
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #@13
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-get0(Lorg/apache/harmony/xml/ExpatParser;)I

    #@16
    move-result v0

    #@17
    return v0
.end method

.method public getParserPointer()J
    .locals 2

    #@0
    .prologue
    .line 702
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #@2
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-get3(Lorg/apache/harmony/xml/ExpatParser;)J

    #@5
    move-result-wide v0

    #@6
    return-wide v0
.end method

.method public getPointer()J
    .locals 2

    #@0
    .prologue
    .line 707
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #@2
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-get2(Lorg/apache/harmony/xml/ExpatParser;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 708
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Attributes can only be used within the scope of startElement()."

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 710
    :cond_0
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    #@13
    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-get1(Lorg/apache/harmony/xml/ExpatParser;)J

    #@16
    move-result-wide v0

    #@17
    return-wide v0
.end method
