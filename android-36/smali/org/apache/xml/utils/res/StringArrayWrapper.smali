.class public Lorg/apache/xml/utils/res/StringArrayWrapper;
.super Ljava/lang/Object;
.source "StringArrayWrapper.java"


# instance fields
.field private greylist m_string:[Ljava/lang/String;


# direct methods
.method public constructor greylist <init>([Ljava/lang/String;)V
    .registers 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/xml/utils/res/StringArrayWrapper;->m_string:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public greylist getLength()I
    .registers 1

    .line 40
    iget-object p0, p0, Lorg/apache/xml/utils/res/StringArrayWrapper;->m_string:[Ljava/lang/String;

    array-length p0, p0

    return p0
.end method

.method public greylist getString(I)Ljava/lang/String;
    .registers 2

    .line 36
    iget-object p0, p0, Lorg/apache/xml/utils/res/StringArrayWrapper;->m_string:[Ljava/lang/String;

    aget-object p0, p0, p1

    return-object p0
.end method
