.class public Lorg/apache/xml/utils/res/CharArrayWrapper;
.super Ljava/lang/Object;
.source "CharArrayWrapper.java"


# instance fields
.field private greylist m_char:[C


# direct methods
.method public constructor greylist <init>([C)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/xml/utils/res/CharArrayWrapper;->m_char:[C

    return-void
.end method


# virtual methods
.method public greylist getChar(I)C
    .registers 2

    .line 36
    iget-object p0, p0, Lorg/apache/xml/utils/res/CharArrayWrapper;->m_char:[C

    aget-char p0, p0, p1

    return p0
.end method

.method public greylist getLength()I
    .registers 1

    .line 40
    iget-object p0, p0, Lorg/apache/xml/utils/res/CharArrayWrapper;->m_char:[C

    array-length p0, p0

    return p0
.end method
