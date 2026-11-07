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

    .line 716
    iput-object p1, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatAttributes;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lorg/apache/harmony/xml/ExpatParser;Lorg/apache/harmony/xml/ExpatParser-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;-><init>(Lorg/apache/harmony/xml/ExpatParser;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api getLength()I
    .registers 3

    .line 733
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-$$Nest$fgetinStartElement(Lorg/apache/harmony/xml/ExpatParser;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 736
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-$$Nest$fgetattributeCount(Lorg/apache/harmony/xml/ExpatParser;)I

    move-result v0

    return v0

    .line 734
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attributes can only be used within the scope of startElement()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getParserPointer()J
    .registers 3

    .line 720
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-$$Nest$fgetpointer(Lorg/apache/harmony/xml/ExpatParser;)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getPointer()J
    .registers 3

    .line 725
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-$$Nest$fgetinStartElement(Lorg/apache/harmony/xml/ExpatParser;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 728
    iget-object v0, p0, Lorg/apache/harmony/xml/ExpatParser$CurrentAttributes;->this$0:Lorg/apache/harmony/xml/ExpatParser;

    invoke-static {v0}, Lorg/apache/harmony/xml/ExpatParser;->-$$Nest$fgetattributePointer(Lorg/apache/harmony/xml/ExpatParser;)J

    move-result-wide v0

    return-wide v0

    .line 726
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attributes can only be used within the scope of startElement()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
