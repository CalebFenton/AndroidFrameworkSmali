.class Lgov/nist/javax/sip/parser/Pipeline$Buffer;
.super Ljava/lang/Object;
.source "Pipeline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/parser/Pipeline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Buffer"
.end annotation


# instance fields
.field greylist bytes:[B

.field greylist length:I

.field greylist ptr:I


# direct methods
.method public constructor greylist <init>(Lgov/nist/javax/sip/parser/Pipeline;[BI)V
    .registers 5
    .param p1, "this$0"    # Lgov/nist/javax/sip/parser/Pipeline;
    .param p2, "bytes"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    .line 95
    iput p3, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->length:I

    .line 96
    iput-object p2, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->bytes:[B

    .line 97
    return-void
.end method


# virtual methods
.method public greylist getNextByte()I
    .registers 4

    .line 100
    iget-object v0, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->bytes:[B

    iget v1, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    .line 101
    .local v0, "retval":I
    return v0
.end method
