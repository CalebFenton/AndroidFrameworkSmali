.class public Lorg/apache/xml/utils/res/StringArrayWrapper;
.super Ljava/lang/Object;
.source "StringArrayWrapper.java"


# instance fields
.field private m_string:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "arg"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    iput-object p1, p0, Lorg/apache/xml/utils/res/StringArrayWrapper;->m_string:[Ljava/lang/String;

    #@5
    .line 31
    return-void
.end method


# virtual methods
.method public getLength()I
    .locals 1

    #@0
    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/xml/utils/res/StringArrayWrapper;->m_string:[Ljava/lang/String;

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/xml/utils/res/StringArrayWrapper;->m_string:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method
