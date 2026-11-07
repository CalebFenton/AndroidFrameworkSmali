.class Lorg/apache/xml/serializer/CharInfo$CharKey;
.super Ljava/lang/Object;
.source "CharInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/CharInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharKey"
.end annotation


# instance fields
.field private greylist m_char:C


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor greylist <init>(C)V
    .registers 2

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-char p1, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2

    .line 802
    check-cast p1, Lorg/apache/xml/serializer/CharInfo$CharKey;

    iget-char p1, p1, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    iget-char p0, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    if-ne p1, p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public final whitelist test-api hashCode()I
    .registers 1

    .line 790
    iget-char p0, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    return p0
.end method

.method public final greylist setChar(C)V
    .registers 2

    .line 778
    iput-char p1, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    return-void
.end method
