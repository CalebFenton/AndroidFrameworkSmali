.class Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;
.super Ljava/io/Writer;
.source "ToStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/ToStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WritertoStringBuffer"
.end annotation


# instance fields
.field private final m_stringbuf:Ljava/lang/StringBuffer;

.field final synthetic this$0:Lorg/apache/xml/serializer/ToStream;


# direct methods
.method constructor <init>(Lorg/apache/xml/serializer/ToStream;Ljava/lang/StringBuffer;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/xml/serializer/ToStream;
    .param p2, "sb"    # Ljava/lang/StringBuffer;

    #@0
    .prologue
    .line 3196
    iput-object p1, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->this$0:Lorg/apache/xml/serializer/ToStream;

    #@2
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    #@5
    .line 3198
    iput-object p2, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    #@7
    .line 3196
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3214
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3208
    return-void
.end method

.method public write(I)V
    .locals 2
    .param p1, "i"    # I

    #@0
    .prologue
    .line 3220
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    #@2
    int-to-char v1, p1

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    #@6
    .line 3218
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3225
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5
    .line 3223
    return-void
.end method

.method public write([CII)V
    .locals 1
    .param p1, "arg0"    # [C
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 3203
    iget-object v0, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    #@5
    .line 3201
    return-void
.end method
