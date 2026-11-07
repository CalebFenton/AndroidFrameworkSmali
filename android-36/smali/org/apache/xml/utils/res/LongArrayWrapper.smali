.class public Lorg/apache/xml/utils/res/LongArrayWrapper;
.super Ljava/lang/Object;
.source "LongArrayWrapper.java"


# instance fields
.field private greylist m_long:[J


# direct methods
.method public constructor greylist <init>([J)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/xml/utils/res/LongArrayWrapper;->m_long:[J

    return-void
.end method


# virtual methods
.method public greylist getLength()I
    .registers 1

    .line 40
    iget-object p0, p0, Lorg/apache/xml/utils/res/LongArrayWrapper;->m_long:[J

    array-length p0, p0

    return p0
.end method

.method public greylist getLong(I)J
    .registers 2

    .line 36
    iget-object p0, p0, Lorg/apache/xml/utils/res/LongArrayWrapper;->m_long:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method
