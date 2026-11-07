.class public Lorg/apache/xalan/transformer/DecimalToRoman;
.super Ljava/lang/Object;
.source "DecimalToRoman.java"


# instance fields
.field public greylist m_postLetter:Ljava/lang/String;

.field public greylist m_postValue:J

.field public greylist m_preLetter:Ljava/lang/String;

.field public greylist m_preValue:J


# direct methods
.method public constructor greylist <init>(JLjava/lang/String;JLjava/lang/String;)V
    .registers 7

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postValue:J

    .line 46
    iput-object p3, p0, Lorg/apache/xalan/transformer/DecimalToRoman;->m_postLetter:Ljava/lang/String;

    .line 47
    iput-wide p4, p0, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preValue:J

    .line 48
    iput-object p6, p0, Lorg/apache/xalan/transformer/DecimalToRoman;->m_preLetter:Ljava/lang/String;

    return-void
.end method
