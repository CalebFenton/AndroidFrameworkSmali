.class public Lorg/apache/xml/utils/res/IntArrayWrapper;
.super Ljava/lang/Object;
.source "IntArrayWrapper.java"


# instance fields
.field private greylist m_int:[I


# direct methods
.method public constructor greylist <init>([I)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/xml/utils/res/IntArrayWrapper;->m_int:[I

    return-void
.end method


# virtual methods
.method public greylist getInt(I)I
    .registers 2

    .line 36
    iget-object p0, p0, Lorg/apache/xml/utils/res/IntArrayWrapper;->m_int:[I

    aget p0, p0, p1

    return p0
.end method

.method public greylist getLength()I
    .registers 1

    .line 40
    iget-object p0, p0, Lorg/apache/xml/utils/res/IntArrayWrapper;->m_int:[I

    array-length p0, p0

    return p0
.end method
