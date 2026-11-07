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
.field private static final blacklist EMPTY:Lorg/xml/sax/Attributes;


# instance fields
.field private final blacklist length:I

.field private final blacklist parserPointer:J

.field private blacklist pointer:J


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetEMPTY()Lorg/xml/sax/Attributes;
    .registers 1

    sget-object v0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->EMPTY:Lorg/xml/sax/Attributes;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 640
    new-instance v0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    const-wide/16 v1, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(JJI)V

    sput-object v0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->EMPTY:Lorg/xml/sax/Attributes;

    return-void
.end method

.method private constructor blacklist <init>(JJI)V
    .registers 6
    .param p1, "parserPointer"    # J
    .param p3, "pointer"    # J
    .param p5, "length"    # I

    .line 654
    invoke-direct {p0}, Lorg/apache/harmony/xml/ExpatAttributes;-><init>()V

    .line 655
    iput-wide p1, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->parserPointer:J

    .line 656
    iput-wide p3, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J

    .line 657
    iput p5, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->length:I

    .line 658
    return-void
.end method

.method synthetic constructor blacklist <init>(JJILorg/apache/harmony/xml/ExpatParser-IA;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;-><init>(JJI)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    monitor-enter p0

    .line 677
    :try_start_1
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_19

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    .line 678
    :try_start_9
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->freeAttributes(J)V

    .line 679
    iput-wide v2, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_11

    goto :goto_13

    .line 682
    :catchall_11
    move-exception v0

    goto :goto_1a

    :cond_13
    :goto_13
    :try_start_13
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1e

    .line 683
    nop

    .line 684
    monitor-exit p0

    return-void

    .line 682
    .end local p0    # "this":Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;
    :catchall_19
    move-exception v0

    :goto_1a
    :try_start_1a
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 683
    throw v0

    .line 676
    :catchall_1e
    move-exception v0

    monitor-exit p0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public whitelist test-api getLength()I
    .registers 2

    .line 672
    iget v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->length:I

    return v0
.end method

.method public blacklist getParserPointer()J
    .registers 3

    .line 662
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->parserPointer:J

    return-wide v0
.end method

.method public blacklist getPointer()J
    .registers 3

    .line 667
    iget-wide v0, p0, Lorg/apache/harmony/xml/ExpatParser$ClonedAttributes;->pointer:J

    return-wide v0
.end method
