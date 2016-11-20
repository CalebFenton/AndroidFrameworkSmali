.class public Lorg/apache/xml/utils/res/CharArrayWrapper;
.super Ljava/lang/Object;
.source "CharArrayWrapper.java"


# instance fields
.field private m_char:[C


# direct methods
.method public constructor <init>([C)V
    .locals 0
    .param p1, "arg"    # [C

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lorg/apache/xml/utils/res/CharArrayWrapper;->m_char:[C

    #@5
    .line 31
    return-void
.end method


# virtual methods
.method public getChar(I)C
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/xml/utils/res/CharArrayWrapper;->m_char:[C

    #@2
    aget-char v0, v0, p1

    #@4
    return v0
.end method

.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/xml/utils/res/CharArrayWrapper;->m_char:[C

    #@2
    array-length v0, v0

    #@3
    return v0
.end method
