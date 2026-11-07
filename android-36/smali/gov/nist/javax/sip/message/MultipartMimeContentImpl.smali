.class public Lgov/nist/javax/sip/message/MultipartMimeContentImpl;
.super Ljava/lang/Object;
.source "MultipartMimeContentImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/message/MultipartMimeContent;


# static fields
.field public static greylist BOUNDARY:Ljava/lang/String;


# instance fields
.field private greylist boundary:Ljava/lang/String;

.field private greylist contentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgov/nist/javax/sip/message/Content;",
            ">;"
        }
    .end annotation
.end field

.field private greylist multipartMimeContentTypeHeader:Ljavax/sip/header/ContentTypeHeader;


# direct methods
.method static constructor greylist <clinit>()V
    .registers 1

    .line 33
    const-string v0, "boundary"

    sput-object v0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->BOUNDARY:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(Ljavax/sip/header/ContentTypeHeader;)V
    .registers 3
    .param p1, "contentTypeHeader"    # Ljavax/sip/header/ContentTypeHeader;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->multipartMimeContentTypeHeader:Ljavax/sip/header/ContentTypeHeader;

    .line 40
    sget-object v0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->BOUNDARY:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljavax/sip/header/ContentTypeHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->boundary:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public greylist add(Lgov/nist/javax/sip/message/Content;)Z
    .registers 4
    .param p1, "content"    # Lgov/nist/javax/sip/message/Content;

    .line 50
    iget-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Lgov/nist/javax/sip/message/ContentImpl;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist addContent(Lgov/nist/javax/sip/message/Content;)V
    .registers 2
    .param p1, "content"    # Lgov/nist/javax/sip/message/Content;

    .line 178
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->add(Lgov/nist/javax/sip/message/Content;)Z

    .line 179
    return-void
.end method

.method public greylist createContentList(Ljava/lang/String;)V
    .registers 22
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 86
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "\r\n"

    const/4 v3, 0x0

    :try_start_7
    new-instance v4, Lgov/nist/javax/sip/header/HeaderFactoryImpl;

    invoke-direct {v4}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;-><init>()V

    .line 87
    .local v4, "headerFactory":Lgov/nist/javax/sip/header/HeaderFactoryExt;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    move-result-object v5

    sget-object v6, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->BOUNDARY:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljavax/sip/header/ContentTypeHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 89
    .local v5, "delimiter":Ljava/lang/String;
    if-nez v5, :cond_31

    .line 90
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, v1, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    .line 91
    new-instance v0, Lgov/nist/javax/sip/message/ContentImpl;

    invoke-direct {v0, v2, v5}, Lgov/nist/javax/sip/message/ContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .local v0, "content":Lgov/nist/javax/sip/message/ContentImpl;
    invoke-virtual {v1}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    move-result-object v6

    invoke-virtual {v0, v6}, Lgov/nist/javax/sip/message/ContentImpl;->setContentTypeHeader(Ljavax/sip/header/ContentTypeHeader;)V

    .line 93
    iget-object v6, v1, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    return-void

    .line 97
    .end local v0    # "content":Lgov/nist/javax/sip/message/ContentImpl;
    :cond_31
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 100
    .local v6, "fragments":[Ljava/lang/String;
    array-length v7, v6

    move v8, v3

    :goto_4e
    if-ge v8, v7, :cond_148

    aget-object v9, v6, v8

    .line 103
    .local v9, "nextPart":Ljava/lang/String;
    if-nez v9, :cond_55

    .line 104
    return-void

    .line 106
    :cond_55
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 107
    .local v10, "strbuf":Ljava/lang/StringBuffer;
    :goto_5a
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-lez v11, :cond_74

    .line 108
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    const/16 v12, 0xd

    if-eq v11, v12, :cond_70

    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_74

    .line 109
    :cond_70
    invoke-virtual {v10, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_5a

    .line 111
    :cond_74
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v11

    if-nez v11, :cond_7e

    .line 112
    move-object/from16 v16, v0

    goto/16 :goto_105

    .line 113
    :cond_7e
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    .line 114
    .end local v9    # "nextPart":Ljava/lang/String;
    .local v11, "nextPart":Ljava/lang/String;
    const-string v9, "\r\n\r\n"

    invoke-virtual {v11, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 115
    .local v9, "position":I
    const/4 v12, 0x4

    .line 116
    .local v12, "off":I
    const/4 v13, -0x1

    if-ne v9, v13, :cond_94

    .line 117
    const-string v14, "\n"

    invoke-virtual {v11, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    move v9, v14

    .line 118
    const/4 v12, 0x2

    .line 120
    :cond_94
    if-eq v9, v13, :cond_12e

    .line 122
    add-int v13, v9, v12

    invoke-virtual {v11, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 124
    .local v13, "rest":Ljava/lang/String;
    if-eqz v13, :cond_10e

    .line 127
    invoke-virtual {v11, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 128
    .local v14, "headers":Ljava/lang/String;
    new-instance v15, Lgov/nist/javax/sip/message/ContentImpl;

    iget-object v3, v1, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->boundary:Ljava/lang/String;

    invoke-direct {v15, v13, v3}, Lgov/nist/javax/sip/message/ContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .local v15, "content":Lgov/nist/javax/sip/message/ContentImpl;
    invoke-virtual {v14, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 131
    .local v3, "headerArray":[Ljava/lang/String;
    move-object/from16 v16, v0

    array-length v0, v3

    const/4 v2, 0x0

    :goto_b1
    if-ge v2, v0, :cond_105

    aget-object v17, v3, v2

    move-object/from16 v18, v17

    .line 132
    .local v18, "hdr":Ljava/lang/String;
    move/from16 v17, v0

    move-object/from16 v0, v18

    .end local v18    # "hdr":Ljava/lang/String;
    .local v0, "hdr":Ljava/lang/String;
    invoke-interface {v4, v0}, Lgov/nist/javax/sip/header/HeaderFactoryExt;->createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    move-result-object v18

    move-object/from16 v19, v18

    .line 133
    .local v19, "header":Ljavax/sip/header/Header;
    move-object/from16 v18, v0

    move-object/from16 v0, v19

    move/from16 v19, v2

    .end local v19    # "header":Ljavax/sip/header/Header;
    .local v0, "header":Ljavax/sip/header/Header;
    .restart local v18    # "hdr":Ljava/lang/String;
    instance-of v2, v0, Ljavax/sip/header/ContentTypeHeader;

    if-eqz v2, :cond_d2

    .line 134
    move-object v2, v0

    check-cast v2, Ljavax/sip/header/ContentTypeHeader;

    invoke-virtual {v15, v2}, Lgov/nist/javax/sip/message/ContentImpl;->setContentTypeHeader(Ljavax/sip/header/ContentTypeHeader;)V

    goto :goto_dc

    .line 135
    :cond_d2
    instance-of v2, v0, Ljavax/sip/header/ContentDispositionHeader;

    if-eqz v2, :cond_e7

    .line 136
    move-object v2, v0

    check-cast v2, Ljavax/sip/header/ContentDispositionHeader;

    invoke-virtual {v15, v2}, Lgov/nist/javax/sip/message/ContentImpl;->setContentDispositionHeader(Ljavax/sip/header/ContentDispositionHeader;)V

    .line 140
    :goto_dc
    iget-object v2, v1, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    nop

    .end local v0    # "header":Ljavax/sip/header/Header;
    .end local v18    # "hdr":Ljava/lang/String;
    add-int/lit8 v2, v19, 0x1

    move/from16 v0, v17

    goto :goto_b1

    .line 138
    .restart local v0    # "header":Ljavax/sip/header/Header;
    .restart local v18    # "hdr":Ljava/lang/String;
    :cond_e7
    new-instance v2, Ljava/text/ParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected header type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v0}, Ljavax/sip/header/Header;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-direct {v2, v7, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lgov/nist/javax/sip/message/MultipartMimeContentImpl;
    .end local p1    # "body":Ljava/lang/String;
    throw v2

    .line 100
    .end local v0    # "header":Ljavax/sip/header/Header;
    .end local v3    # "headerArray":[Ljava/lang/String;
    .end local v9    # "position":I
    .end local v10    # "strbuf":Ljava/lang/StringBuffer;
    .end local v11    # "nextPart":Ljava/lang/String;
    .end local v12    # "off":I
    .end local v13    # "rest":Ljava/lang/String;
    .end local v14    # "headers":Ljava/lang/String;
    .end local v15    # "content":Lgov/nist/javax/sip/message/ContentImpl;
    .end local v18    # "hdr":Ljava/lang/String;
    .restart local p0    # "this":Lgov/nist/javax/sip/message/MultipartMimeContentImpl;
    .restart local p1    # "body":Ljava/lang/String;
    :cond_105
    :goto_105
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v2, p1

    move-object/from16 v0, v16

    const/4 v3, 0x0

    goto/16 :goto_4e

    .line 125
    .restart local v9    # "position":I
    .restart local v10    # "strbuf":Ljava/lang/StringBuffer;
    .restart local v11    # "nextPart":Ljava/lang/String;
    .restart local v12    # "off":I
    .restart local v13    # "rest":Ljava/lang/String;
    :cond_10e
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No content ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-direct {v0, v2, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lgov/nist/javax/sip/message/MultipartMimeContentImpl;
    .end local p1    # "body":Ljava/lang/String;
    throw v0

    .line 121
    .end local v13    # "rest":Ljava/lang/String;
    .restart local p0    # "this":Lgov/nist/javax/sip/message/MultipartMimeContentImpl;
    .restart local p1    # "body":Ljava/lang/String;
    :cond_12e
    new-instance v0, Ljava/text/ParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no content type header found in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-direct {v0, v2, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    .end local p0    # "this":Lgov/nist/javax/sip/message/MultipartMimeContentImpl;
    .end local p1    # "body":Ljava/lang/String;
    throw v0
    :try_end_148
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_7 .. :try_end_148} :catch_14a

    .line 146
    .end local v4    # "headerFactory":Lgov/nist/javax/sip/header/HeaderFactoryExt;
    .end local v5    # "delimiter":Ljava/lang/String;
    .end local v6    # "fragments":[Ljava/lang/String;
    .end local v9    # "position":I
    .end local v10    # "strbuf":Ljava/lang/StringBuffer;
    .end local v11    # "nextPart":Ljava/lang/String;
    .end local v12    # "off":I
    .restart local p0    # "this":Lgov/nist/javax/sip/message/MultipartMimeContentImpl;
    .restart local p1    # "body":Ljava/lang/String;
    :cond_148
    nop

    .line 147
    return-void

    .line 144
    :catch_14a
    move-exception v0

    .line 145
    .local v0, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v2, Ljava/text/ParseException;

    const-string v3, "Invalid Multipart mime format"

    const/4 v8, 0x0

    invoke-direct {v2, v3, v8}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v2
.end method

.method public greylist getContentByType(Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/message/Content;
    .registers 7
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubtype"    # Ljava/lang/String;

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "retval":Lgov/nist/javax/sip/message/Content;
    iget-object v1, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    if-nez v1, :cond_7

    .line 158
    const/4 v1, 0x0

    return-object v1

    .line 159
    :cond_7
    iget-object v1, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/Content;

    .line 160
    .local v2, "content":Lgov/nist/javax/sip/message/Content;
    invoke-interface {v2}, Lgov/nist/javax/sip/message/Content;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/ContentTypeHeader;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 161
    invoke-interface {v2}, Lgov/nist/javax/sip/message/Content;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    move-result-object v3

    invoke-interface {v3}, Ljavax/sip/header/ContentTypeHeader;->getContentSubType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 163
    move-object v0, v2

    .line 164
    goto :goto_38

    .line 167
    .end local v2    # "content":Lgov/nist/javax/sip/message/Content;
    :cond_37
    goto :goto_d

    .line 168
    :cond_38
    :goto_38
    return-object v0
.end method

.method public greylist getContentCount()I
    .registers 2

    .line 187
    iget-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public greylist getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;
    .registers 2

    .line 59
    iget-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->multipartMimeContentTypeHeader:Ljavax/sip/header/ContentTypeHeader;

    return-object v0
.end method

.method public greylist getContents()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lgov/nist/javax/sip/message/Content;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    .local v0, "stringBuffer":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lgov/nist/javax/sip/message/Content;

    .line 72
    .local v2, "content":Lgov/nist/javax/sip/message/Content;
    invoke-interface {v2}, Lgov/nist/javax/sip/message/Content;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .end local v2    # "content":Lgov/nist/javax/sip/message/Content;
    goto :goto_b

    .line 74
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
