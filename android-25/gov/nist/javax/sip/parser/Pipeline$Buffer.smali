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
.field bytes:[B

.field length:I

.field ptr:I

.field final synthetic this$0:Lgov/nist/javax/sip/parser/Pipeline;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/parser/Pipeline;[BI)V
    .locals 1
    .param p1, "this$0"    # Lgov/nist/javax/sip/parser/Pipeline;
    .param p2, "bytes"    # [B
    .param p3, "length"    # I

    #@0
    .prologue
    .line 93
    iput-object p1, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->this$0:Lgov/nist/javax/sip/parser/Pipeline;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 94
    const/4 v0, 0x0

    #@6
    iput v0, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    #@8
    .line 95
    iput p3, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->length:I

    #@a
    .line 96
    iput-object p2, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->bytes:[B

    #@c
    .line 93
    return-void
.end method


# virtual methods
.method public getNextByte()I
    .locals 4

    #@0
    .prologue
    .line 100
    iget-object v1, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->bytes:[B

    #@2
    iget v2, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    #@4
    add-int/lit8 v3, v2, 0x1

    #@6
    iput v3, p0, Lgov/nist/javax/sip/parser/Pipeline$Buffer;->ptr:I

    #@8
    aget-byte v1, v1, v2

    #@a
    and-int/lit16 v0, v1, 0xff

    #@c
    .line 101
    .local v0, "retval":I
    return v0
.end method
