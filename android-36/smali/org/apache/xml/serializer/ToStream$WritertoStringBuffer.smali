.class Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;
.super Ljava/io/Writer;
.source "ToStream.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xml/serializer/ToStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WritertoStringBuffer"
.end annotation


# instance fields
.field private final greylist m_stringbuf:Ljava/lang/StringBuffer;


# direct methods
.method constructor greylist <init>(Lorg/apache/xml/serializer/ToStream;Ljava/lang/StringBuffer;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 3197
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 3198
    iput-object p2, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api flush()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 0
    return-void
.end method

.method public whitelist test-api write(I)V
    .registers 2

    .line 3220
    iget-object p0, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    return-void
.end method

.method public whitelist test-api write(Ljava/lang/String;)V
    .registers 2

    .line 3225
    iget-object p0, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method public whitelist test-api write([CII)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3203
    iget-object p0, p0, Lorg/apache/xml/serializer/ToStream$WritertoStringBuffer;->m_stringbuf:Ljava/lang/StringBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    return-void
.end method
