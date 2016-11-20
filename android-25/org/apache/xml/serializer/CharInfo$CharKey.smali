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
.field private m_char:C


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 767
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(C)V
    .locals 0
    .param p1, "key"    # C

    #@0
    .prologue
    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 759
    iput-char p1, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    #@5
    .line 757
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 802
    check-cast p1, Lorg/apache/xml/serializer/CharInfo$CharKey;

    #@2
    .end local p1    # "obj":Ljava/lang/Object;
    iget-char v0, p1, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    #@4
    iget-char v1, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    #@6
    if-ne v0, v1, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x0

    #@b
    goto :goto_0
.end method

.method public final hashCode()I
    .locals 1

    #@0
    .prologue
    .line 790
    iget-char v0, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    #@2
    return v0
.end method

.method public final setChar(C)V
    .locals 0
    .param p1, "c"    # C

    #@0
    .prologue
    .line 778
    iput-char p1, p0, Lorg/apache/xml/serializer/CharInfo$CharKey;->m_char:C

    #@2
    .line 776
    return-void
.end method
