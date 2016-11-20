.class public Lorg/apache/xml/utils/res/IntArrayWrapper;
.super Ljava/lang/Object;
.source "IntArrayWrapper.java"


# instance fields
.field private m_int:[I


# direct methods
.method public constructor <init>([I)V
    .locals 0
    .param p1, "arg"    # [I

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lorg/apache/xml/utils/res/IntArrayWrapper;->m_int:[I

    #@5
    .line 31
    return-void
.end method


# virtual methods
.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/xml/utils/res/IntArrayWrapper;->m_int:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/xml/utils/res/IntArrayWrapper;->m_int:[I

    #@2
    array-length v0, v0

    #@3
    return v0
.end method
