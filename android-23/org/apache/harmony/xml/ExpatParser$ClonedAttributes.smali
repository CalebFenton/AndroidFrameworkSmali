.class Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;
.super Lorg/apache/harmony/xml/ExpatAttributes;
.source "ExpatParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/xml/ExpatParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClonedAttributes"
.end annotation


# static fields
.field private static final EMPTY:Lorg/xml/sax/Attributes;


# instance fields
.field private final length:I

.field private final parserPointer:J

.field private pointer:J


# direct methods
.method static synthetic -get0()Lorg/xml/sax/Attributes;
    .locals 1

    #@0
    sget-object v0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->EMPTY:Lorg/xml/sax/Attributes;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 622
    new-instance v1, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;

    #@4
    const/4 v6, 0x0

    #@5
    move-wide v4, v2

    #@6
    invoke-direct/range {v1 .. v6}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(JJI)V

    #@9
    sput-object v1, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->EMPTY:Lorg/xml/sax/Attributes;

    #@b
    .line 620
    return-void
.end method

.method private constructor <init>(JJI)V
    .locals 1
    .param p1, "parserPointer"    # J
    .param p3, "pointer"    # J
    .param p5, "length"    # I

    #@0
    .prologue
    .line 636
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatAttributes;-><init>()V

    #@3
    .line 637
    iput-wide p1, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->parserPointer:J

    #@5
    .line 638
    iput-wide p3, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J

    #@7
    .line 639
    iput p5, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->length:I

    #@9
    .line 636
    return-void
.end method

.method synthetic constructor <init>(JJILorg/apache/harmony/xml/ExpatParser$ClonedAttributes;)V
    .locals 1
    .param p1, "parserPointer"    # J
    .param p3, "pointer"    # J
    .param p5, "length"    # I

    #@0
    .prologue
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(JJI)V

    #@3
    return-void
.end method


# virtual methods
.method protected declared-synchronized finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    monitor-enter p0

    #@3
    .line 659
    :try_start_0
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J

    #@5
    cmp-long v0, v0, v2

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 660
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J

    #@b
    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->freeAttributes(J)V

    #@e
    .line 661
    const-wide/16 v0, 0x0

    #@10
    iput-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    .line 664
    :cond_0
    :try_start_1
    invoke-super {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->finalize()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@15
    monitor-exit p0

    #@16
    .line 657
    return-void

    #@17
    .line 663
    :catchall_0
    move-exception v0

    #@18
    .line 664
    :try_start_2
    invoke-super {p0}, Lorg/apache/harmony/xml/ExpatAttributes;->finalize()V

    #@1b
    .line 663
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@1c
    :catchall_1
    move-exception v0

    #@1d
    monitor-exit p0

    #@1e
    throw v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 654
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->length:I

    #@2
    return v0
.end method

.method public getParserPointer()J
    .locals 2

    #@0
    .prologue
    .line 644
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->parserPointer:J

    #@2
    return-wide v0
.end method

.method public getPointer()J
    .locals 2

    #@0
    .prologue
    .line 649
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J

    #@2
    return-wide v0
.end method
