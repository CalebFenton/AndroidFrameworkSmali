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
.field final synthetic blacklist this$0:Lorg/apache/harmony/xml/ExpatParser;


# direct methods
.method private constructor blacklist <init>(Lorg/apache/harmony/xml/ExpatParser;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 687
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;-><init>(Lorg/apache/harmony/xml/ExpatParser;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getColumnNumber()I
    .registers 2

    .line 702
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-$$Nest$mcolumn(Lorg/apache/harmony/xml/ExpatParser;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getLineNumber()I
    .registers 2

    .line 698
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-$$Nest$mline(Lorg/apache/harmony/xml/ExpatParser;)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getPublicId()Ljava/lang/String;
    .registers 2

    .line 690
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-$$Nest$fgetpublicId(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getSystemId()Ljava/lang/String;
    .registers 2

    .line 694
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-$$Nest$fgetsystemId(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 707
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Locator[publicId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    invoke-static {v1}, Lorg/apache/harmony/xml/ExpatParser;->-$$Nest$fgetpublicId(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", systemId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    invoke-static {v1}, Lorg/apache/harmony/xml/ExpatParser;->-$$Nest$fgetsystemId(Lorg/apache/harmony/xml/ExpatParser;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", line: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 708
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", column: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 709
    invoke-virtual {p0}, Lorg/apache/harmony/xml/ExpatParser$ExpatLocator;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 707
    return-object v0
.end method
