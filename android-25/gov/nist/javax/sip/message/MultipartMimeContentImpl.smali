.class public Lgov/nist/javax/sip/message/MultipartMimeContentImpl;
.super Ljava/lang/Object;
.source "MultipartMimeContentImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/message/MultipartMimeContent;


# static fields
.field public static BOUNDARY:Ljava/lang/String;


# instance fields
.field private boundary:Ljava/lang/String;

.field private contentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lgov/nist/javax/sip/message/Content;",
            ">;"
        }
    .end annotation
.end field

.field private multipartMimeContentTypeHeader:Ljavax/sip/header/ContentTypeHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    const-string/jumbo v0, "boundary"

    #@3
    sput-object v0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->BOUNDARY:Ljava/lang/String;

    #@5
    .line 26
    return-void
.end method

.method public constructor <init>(Ljavax/sip/header/ContentTypeHeader;)V
    .locals 1
    .param p1, "contentTypeHeader"    # Ljavax/sip/header/ContentTypeHeader;

    #@0
    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 27
    new-instance v0, Ljava/util/LinkedList;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@8
    iput-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    #@a
    .line 39
    iput-object p1, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->multipartMimeContentTypeHeader:Ljavax/sip/header/ContentTypeHeader;

    #@c
    .line 40
    sget-object v0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->BOUNDARY:Ljava/lang/String;

    #@e
    invoke-interface {p1, v0}, Ljavax/sip/header/ContentTypeHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->boundary:Ljava/lang/String;

    #@14
    .line 38
    return-void
.end method


# virtual methods
.method public add(Lgov/nist/javax/sip/message/Content;)Z
    .locals 1
    .param p1, "content"    # Lgov/nist/javax/sip/message/Content;

    #@0
    .prologue
    .line 50
    iget-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    #@2
    check-cast p1, Lgov/nist/javax/sip/message/ContentImpl;

    #@4
    .end local p1    # "content":Lgov/nist/javax/sip/message/Content;
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public addContent(Lgov/nist/javax/sip/message/Content;)V
    .locals 0
    .param p1, "content"    # Lgov/nist/javax/sip/message/Content;

    #@0
    .prologue
    .line 178
    invoke-virtual {p0, p1}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->add(Lgov/nist/javax/sip/message/Content;)Z

    #@3
    .line 177
    return-void
.end method

.method public createContentList(Ljava/lang/String;)V
    .locals 21
    .param p1, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    :try_start_0
    new-instance v9, Lgov/nist/javax/sip/header/HeaderFactoryImpl;

    #@2
    invoke-direct {v9}, Lgov/nist/javax/sip/header/HeaderFactoryImpl;-><init>()V

    #@5
    .line 87
    .local v9, "headerFactory":Lgov/nist/javax/sip/header/HeaderFactoryExt;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    #@8
    move-result-object v16

    #@9
    sget-object v17, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->BOUNDARY:Ljava/lang/String;

    #@b
    invoke-interface/range {v16 .. v17}, Ljavax/sip/header/ContentTypeHeader;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    .line 89
    .local v3, "delimiter":Ljava/lang/String;
    if-nez v3, :cond_0

    #@11
    .line 90
    new-instance v16, Ljava/util/LinkedList;

    #@13
    invoke-direct/range {v16 .. v16}, Ljava/util/LinkedList;-><init>()V

    #@16
    move-object/from16 v0, v16

    #@18
    move-object/from16 v1, p0

    #@1a
    iput-object v0, v1, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    #@1c
    .line 91
    new-instance v2, Lgov/nist/javax/sip/message/ContentImpl;

    #@1e
    move-object/from16 v0, p1

    #@20
    invoke-direct {v2, v0, v3}, Lgov/nist/javax/sip/message/ContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@23
    .line 92
    .local v2, "content":Lgov/nist/javax/sip/message/ContentImpl;
    invoke-virtual/range {p0 .. p0}, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    #@26
    move-result-object v16

    #@27
    move-object/from16 v0, v16

    #@29
    invoke-virtual {v2, v0}, Lgov/nist/javax/sip/message/ContentImpl;->setContentTypeHeader(Ljavax/sip/header/ContentTypeHeader;)V

    #@2c
    .line 93
    move-object/from16 v0, p0

    #@2e
    iget-object v0, v0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    #@30
    move-object/from16 v16, v0

    #@32
    move-object/from16 v0, v16

    #@34
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@37
    .line 94
    return-void

    #@38
    .line 97
    .end local v2    # "content":Lgov/nist/javax/sip/message/ContentImpl;
    :cond_0
    new-instance v16, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v17, "--"

    #@40
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v16

    #@44
    move-object/from16 v0, v16

    #@46
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v16

    #@4a
    const-string/jumbo v17, "\r\n"

    #@4d
    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v16

    #@51
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@54
    move-result-object v16

    #@55
    move-object/from16 v0, p1

    #@57
    move-object/from16 v1, v16

    #@59
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@5c
    move-result-object v5

    #@5d
    .line 100
    .local v5, "fragments":[Ljava/lang/String;
    const/16 v16, 0x0

    #@5f
    array-length v0, v5

    #@60
    move/from16 v18, v0

    #@62
    move/from16 v17, v16

    #@64
    :goto_0
    move/from16 v0, v17

    #@66
    move/from16 v1, v18

    #@68
    if-ge v0, v1, :cond_b

    #@6a
    aget-object v11, v5, v17

    #@6c
    .line 103
    .local v11, "nextPart":Ljava/lang/String;
    if-nez v11, :cond_1

    #@6e
    .line 104
    return-void

    #@6f
    .line 106
    :cond_1
    new-instance v15, Ljava/lang/StringBuffer;

    #@71
    invoke-direct {v15, v11}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    #@74
    .line 107
    .local v15, "strbuf":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    #@77
    move-result v16

    #@78
    if-lez v16, :cond_3

    #@7a
    .line 108
    const/16 v16, 0x0

    #@7c
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->charAt(I)C

    #@7f
    move-result v16

    #@80
    const/16 v19, 0xd

    #@82
    move/from16 v0, v16

    #@84
    move/from16 v1, v19

    #@86
    if-eq v0, v1, :cond_2

    #@88
    const/16 v16, 0x0

    #@8a
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->charAt(I)C

    #@8d
    move-result v16

    #@8e
    const/16 v19, 0xa

    #@90
    move/from16 v0, v16

    #@92
    move/from16 v1, v19

    #@94
    if-ne v0, v1, :cond_3

    #@96
    .line 109
    :cond_2
    const/16 v16, 0x0

    #@98
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@9b
    goto :goto_1

    #@9c
    .line 144
    .end local v3    # "delimiter":Ljava/lang/String;
    .end local v5    # "fragments":[Ljava/lang/String;
    .end local v9    # "headerFactory":Lgov/nist/javax/sip/header/HeaderFactoryExt;
    .end local v11    # "nextPart":Ljava/lang/String;
    .end local v15    # "strbuf":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v4

    #@9d
    .line 145
    .local v4, "ex":Ljava/lang/StringIndexOutOfBoundsException;
    new-instance v16, Ljava/text/ParseException;

    #@9f
    const-string/jumbo v17, "Invalid Multipart mime format"

    #@a2
    const/16 v18, 0x0

    #@a4
    invoke-direct/range {v16 .. v18}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@a7
    throw v16

    #@a8
    .line 111
    .end local v4    # "ex":Ljava/lang/StringIndexOutOfBoundsException;
    .restart local v3    # "delimiter":Ljava/lang/String;
    .restart local v5    # "fragments":[Ljava/lang/String;
    .restart local v9    # "headerFactory":Lgov/nist/javax/sip/header/HeaderFactoryExt;
    .restart local v11    # "nextPart":Ljava/lang/String;
    .restart local v15    # "strbuf":Ljava/lang/StringBuffer;
    :cond_3
    :try_start_1
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->length()I

    #@ab
    move-result v16

    #@ac
    if-nez v16, :cond_5

    #@ae
    .line 100
    :cond_4
    add-int/lit8 v16, v17, 0x1

    #@b0
    move/from16 v17, v16

    #@b2
    goto :goto_0

    #@b3
    .line 113
    :cond_5
    invoke-virtual {v15}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@b6
    move-result-object v11

    #@b7
    .line 114
    const-string/jumbo v16, "\r\n\r\n"

    #@ba
    move-object/from16 v0, v16

    #@bc
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@bf
    move-result v13

    #@c0
    .line 115
    .local v13, "position":I
    const/4 v12, 0x4

    #@c1
    .line 116
    .local v12, "off":I
    const/16 v16, -0x1

    #@c3
    move/from16 v0, v16

    #@c5
    if-ne v13, v0, :cond_6

    #@c7
    .line 117
    const-string/jumbo v16, "\n"

    #@ca
    move-object/from16 v0, v16

    #@cc
    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@cf
    move-result v13

    #@d0
    .line 118
    const/4 v12, 0x2

    #@d1
    .line 120
    :cond_6
    const/16 v16, -0x1

    #@d3
    move/from16 v0, v16

    #@d5
    if-ne v13, v0, :cond_7

    #@d7
    .line 121
    new-instance v16, Ljava/text/ParseException;

    #@d9
    new-instance v17, Ljava/lang/StringBuilder;

    #@db
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@de
    const-string/jumbo v18, "no content type header found in "

    #@e1
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e4
    move-result-object v17

    #@e5
    move-object/from16 v0, v17

    #@e7
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ea
    move-result-object v17

    #@eb
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ee
    move-result-object v17

    #@ef
    const/16 v18, 0x0

    #@f1
    invoke-direct/range {v16 .. v18}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@f4
    throw v16

    #@f5
    .line 122
    :cond_7
    add-int v16, v13, v12

    #@f7
    move/from16 v0, v16

    #@f9
    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@fc
    move-result-object v14

    #@fd
    .line 124
    .local v14, "rest":Ljava/lang/String;
    if-nez v14, :cond_8

    #@ff
    .line 125
    new-instance v16, Ljava/text/ParseException;

    #@101
    new-instance v17, Ljava/lang/StringBuilder;

    #@103
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@106
    const-string/jumbo v18, "No content ["

    #@109
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10c
    move-result-object v17

    #@10d
    move-object/from16 v0, v17

    #@10f
    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v17

    #@113
    const-string/jumbo v18, "]"

    #@116
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@119
    move-result-object v17

    #@11a
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@11d
    move-result-object v17

    #@11e
    const/16 v18, 0x0

    #@120
    invoke-direct/range {v16 .. v18}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@123
    throw v16

    #@124
    .line 127
    :cond_8
    const/16 v16, 0x0

    #@126
    move/from16 v0, v16

    #@128
    invoke-virtual {v11, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@12b
    move-result-object v10

    #@12c
    .line 128
    .local v10, "headers":Ljava/lang/String;
    new-instance v2, Lgov/nist/javax/sip/message/ContentImpl;

    #@12e
    move-object/from16 v0, p0

    #@130
    iget-object v0, v0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->boundary:Ljava/lang/String;

    #@132
    move-object/from16 v16, v0

    #@134
    move-object/from16 v0, v16

    #@136
    invoke-direct {v2, v14, v0}, Lgov/nist/javax/sip/message/ContentImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@139
    .line 130
    .restart local v2    # "content":Lgov/nist/javax/sip/message/ContentImpl;
    const-string/jumbo v16, "\r\n"

    #@13c
    move-object/from16 v0, v16

    #@13e
    invoke-virtual {v10, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@141
    move-result-object v8

    #@142
    .line 131
    .local v8, "headerArray":[Ljava/lang/String;
    const/16 v16, 0x0

    #@144
    array-length v0, v8

    #@145
    move/from16 v19, v0

    #@147
    :goto_2
    move/from16 v0, v16

    #@149
    move/from16 v1, v19

    #@14b
    if-ge v0, v1, :cond_4

    #@14d
    aget-object v6, v8, v16

    #@14f
    .line 132
    .local v6, "hdr":Ljava/lang/String;
    invoke-interface {v9, v6}, Lgov/nist/javax/sip/header/HeaderFactoryExt;->createHeader(Ljava/lang/String;)Ljavax/sip/header/Header;

    #@152
    move-result-object v7

    #@153
    .line 133
    .local v7, "header":Ljavax/sip/header/Header;
    instance-of v0, v7, Ljavax/sip/header/ContentTypeHeader;

    #@155
    move/from16 v20, v0

    #@157
    if-eqz v20, :cond_9

    #@159
    .line 134
    check-cast v7, Ljavax/sip/header/ContentTypeHeader;

    #@15b
    .end local v7    # "header":Ljavax/sip/header/Header;
    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/message/ContentImpl;->setContentTypeHeader(Ljavax/sip/header/ContentTypeHeader;)V

    #@15e
    .line 140
    :goto_3
    move-object/from16 v0, p0

    #@160
    iget-object v0, v0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    #@162
    move-object/from16 v20, v0

    #@164
    move-object/from16 v0, v20

    #@166
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@169
    .line 131
    add-int/lit8 v16, v16, 0x1

    #@16b
    goto :goto_2

    #@16c
    .line 135
    .restart local v7    # "header":Ljavax/sip/header/Header;
    :cond_9
    instance-of v0, v7, Ljavax/sip/header/ContentDispositionHeader;

    #@16e
    move/from16 v20, v0

    #@170
    if-eqz v20, :cond_a

    #@172
    .line 136
    check-cast v7, Ljavax/sip/header/ContentDispositionHeader;

    #@174
    .end local v7    # "header":Ljavax/sip/header/Header;
    invoke-virtual {v2, v7}, Lgov/nist/javax/sip/message/ContentImpl;->setContentDispositionHeader(Ljavax/sip/header/ContentDispositionHeader;)V

    #@177
    goto :goto_3

    #@178
    .line 138
    .restart local v7    # "header":Ljavax/sip/header/Header;
    :cond_a
    new-instance v16, Ljava/text/ParseException;

    #@17a
    new-instance v17, Ljava/lang/StringBuilder;

    #@17c
    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    #@17f
    const-string/jumbo v18, "Unexpected header type "

    #@182
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@185
    move-result-object v17

    #@186
    invoke-interface {v7}, Ljavax/sip/header/Header;->getName()Ljava/lang/String;

    #@189
    move-result-object v18

    #@18a
    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18d
    move-result-object v17

    #@18e
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@191
    move-result-object v17

    #@192
    const/16 v18, 0x0

    #@194
    invoke-direct/range {v16 .. v18}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    #@197
    throw v16
    :try_end_1
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    #@198
    .line 84
    .end local v2    # "content":Lgov/nist/javax/sip/message/ContentImpl;
    .end local v6    # "hdr":Ljava/lang/String;
    .end local v7    # "header":Ljavax/sip/header/Header;
    .end local v8    # "headerArray":[Ljava/lang/String;
    .end local v10    # "headers":Ljava/lang/String;
    .end local v11    # "nextPart":Ljava/lang/String;
    .end local v12    # "off":I
    .end local v13    # "position":I
    .end local v14    # "rest":Ljava/lang/String;
    .end local v15    # "strbuf":Ljava/lang/StringBuffer;
    :cond_b
    return-void
.end method

.method public getContentByType(Ljava/lang/String;Ljava/lang/String;)Lgov/nist/javax/sip/message/Content;
    .locals 5
    .param p1, "contentType"    # Ljava/lang/String;
    .param p2, "contentSubtype"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 156
    const/4 v2, 0x0

    #@2
    .line 157
    .local v2, "retval":Lgov/nist/javax/sip/message/Content;
    iget-object v3, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    #@4
    if-nez v3, :cond_0

    #@6
    .line 158
    return-object v4

    #@7
    .line 159
    :cond_0
    iget-object v3, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    #@9
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@c
    move-result-object v1

    #@d
    .local v1, "content$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_2

    #@13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@16
    move-result-object v0

    #@17
    check-cast v0, Lgov/nist/javax/sip/message/Content;

    #@19
    .line 160
    .local v0, "content":Lgov/nist/javax/sip/message/Content;
    invoke-interface {v0}, Lgov/nist/javax/sip/message/Content;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {v3}, Ljavax/sip/header/ContentTypeHeader;->getContentType()Ljava/lang/String;

    #@20
    move-result-object v3

    #@21
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@24
    move-result v3

    #@25
    if-eqz v3, :cond_1

    #@27
    .line 161
    invoke-interface {v0}, Lgov/nist/javax/sip/message/Content;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    #@2a
    move-result-object v3

    #@2b
    invoke-interface {v3}, Ljavax/sip/header/ContentTypeHeader;->getContentSubType()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    invoke-virtual {v3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@32
    move-result v3

    #@33
    .line 160
    if-eqz v3, :cond_1

    #@35
    .line 163
    move-object v2, v0

    #@36
    .line 168
    .end local v0    # "content":Lgov/nist/javax/sip/message/Content;
    .end local v2    # "retval":Lgov/nist/javax/sip/message/Content;
    :cond_2
    return-object v2
.end method

.method public getContentCount()I
    .locals 1

    #@0
    .prologue
    .line 187
    iget-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;
    .locals 1

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->multipartMimeContentTypeHeader:Ljavax/sip/header/ContentTypeHeader;

    #@2
    return-object v0
.end method

.method public getContents()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lgov/nist/javax/sip/message/Content;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 182
    iget-object v0, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 69
    new-instance v2, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 71
    .local v2, "stringBuffer":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lgov/nist/javax/sip/message/MultipartMimeContentImpl;->contentList:Ljava/util/List;

    #@7
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "content$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v3

    #@f
    if-eqz v3, :cond_0

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lgov/nist/javax/sip/message/Content;

    #@17
    .line 72
    .local v0, "content":Lgov/nist/javax/sip/message/Content;
    invoke-interface {v0}, Lgov/nist/javax/sip/message/Content;->toString()Ljava/lang/String;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1e
    goto :goto_0

    #@1f
    .line 74
    .end local v0    # "content":Lgov/nist/javax/sip/message/Content;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    return-object v3
.end method
