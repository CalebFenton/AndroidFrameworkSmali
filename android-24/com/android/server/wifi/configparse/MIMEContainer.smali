.class public Lcom/android/server/wifi/configparse/MIMEContainer;
.super Ljava/lang/Object;
.source "MIMEContainer.java"


# static fields
.field private static final Boundary:Ljava/lang/String; = "boundary="

.field private static final CharsetTag:Ljava/lang/String; = "charset="

.field private static final Encoding:Ljava/lang/String; = "Content-Transfer-Encoding"

.field private static final Type:Ljava/lang/String; = "Content-Type"


# instance fields
.field private final mBase64:Z

.field private final mCharset:Ljava/nio/charset/Charset;

.field private final mContentType:Ljava/lang/String;

.field private final mLast:Z

.field private final mMimeContainers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/configparse/MIMEContainer;",
            ">;"
        }
    .end annotation
.end field

.field private final mMixed:Z

.field private final mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/LineNumberReader;Ljava/lang/String;)V
    .locals 24
    .param p1, "in"    # Ljava/io/LineNumberReader;
    .param p2, "boundary"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 43
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 44
    invoke-static/range {p1 .. p1}, Lcom/android/server/wifi/configparse/MIMEContainer;->parseHeader(Ljava/io/LineNumberReader;)Ljava/util/Map;

    #@6
    move-result-object v10

    #@7
    .line 46
    .local v10, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string/jumbo v19, "Content-Type"

    #@a
    move-object/from16 v0, v19

    #@c
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v18

    #@10
    check-cast v18, Ljava/util/List;

    #@12
    .line 47
    .local v18, "type":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v18, :cond_0

    #@14
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->isEmpty()Z

    #@17
    move-result v19

    #@18
    if-eqz v19, :cond_1

    #@1a
    .line 48
    :cond_0
    new-instance v19, Ljava/io/IOException;

    #@1c
    new-instance v20, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v21, "Missing Content-Type @ "

    #@24
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v20

    #@28
    invoke-virtual/range {p1 .. p1}, Ljava/io/LineNumberReader;->getLineNumber()I

    #@2b
    move-result v21

    #@2c
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v20

    #@30
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v20

    #@34
    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@37
    throw v19

    #@38
    .line 51
    :cond_1
    const/4 v13, 0x0

    #@39
    .line 52
    .local v13, "multiPart":Z
    const/4 v12, 0x0

    #@3a
    .line 53
    .local v12, "mixed":Z
    const/4 v15, 0x0

    #@3b
    .line 54
    .local v15, "subBoundary":Ljava/lang/String;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@3d
    .line 56
    .local v6, "charset":Ljava/nio/charset/Charset;
    const/16 v19, 0x0

    #@3f
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@42
    move-result-object v19

    #@43
    check-cast v19, Ljava/lang/String;

    #@45
    move-object/from16 v0, v19

    #@47
    move-object/from16 v1, p0

    #@49
    iput-object v0, v1, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    #@4b
    .line 58
    move-object/from16 v0, p0

    #@4d
    iget-object v0, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    #@4f
    move-object/from16 v19, v0

    #@51
    const-string/jumbo v20, "multipart/"

    #@54
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@57
    move-result v19

    #@58
    if-eqz v19, :cond_6

    #@5a
    .line 59
    const/4 v13, 0x1

    #@5b
    .line 61
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@5e
    move-result-object v4

    #@5f
    .end local v15    # "subBoundary":Ljava/lang/String;
    .local v4, "attribute$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@62
    move-result v19

    #@63
    if-eqz v19, :cond_3

    #@65
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@68
    move-result-object v3

    #@69
    check-cast v3, Ljava/lang/String;

    #@6b
    .line 62
    .local v3, "attribute":Ljava/lang/String;
    const-string/jumbo v19, "boundary="

    #@6e
    move-object/from16 v0, v19

    #@70
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@73
    move-result v19

    #@74
    if-eqz v19, :cond_2

    #@76
    .line 63
    const-string/jumbo v19, "boundary="

    #@79
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    #@7c
    move-result v19

    #@7d
    move/from16 v0, v19

    #@7f
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@82
    move-result-object v19

    #@83
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/hotspot2/Utils;->unquote(Ljava/lang/String;)Ljava/lang/String;

    #@86
    move-result-object v15

    #@87
    .local v15, "subBoundary":Ljava/lang/String;
    goto :goto_0

    #@88
    .line 67
    .end local v3    # "attribute":Ljava/lang/String;
    .end local v15    # "subBoundary":Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    #@8a
    iget-object v0, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    #@8c
    move-object/from16 v19, v0

    #@8e
    const-string/jumbo v20, "/mixed"

    #@91
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@94
    move-result v19

    #@95
    if-eqz v19, :cond_4

    #@97
    .line 68
    const/4 v12, 0x1

    #@98
    .line 79
    .end local v4    # "attribute$iterator":Ljava/util/Iterator;
    :cond_4
    move-object/from16 v0, p0

    #@9a
    iput-boolean v12, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMixed:Z

    #@9c
    .line 80
    move-object/from16 v0, p0

    #@9e
    iput-object v6, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mCharset:Ljava/nio/charset/Charset;

    #@a0
    .line 82
    if-eqz v13, :cond_c

    #@a2
    if-eqz v15, :cond_c

    #@a4
    .line 84
    :cond_5
    invoke-virtual/range {p1 .. p1}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    #@a7
    move-result-object v11

    #@a8
    .line 85
    .local v11, "line":Ljava/lang/String;
    if-nez v11, :cond_8

    #@aa
    .line 86
    new-instance v19, Ljava/io/IOException;

    #@ac
    new-instance v20, Ljava/lang/StringBuilder;

    #@ae
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@b1
    const-string/jumbo v21, "Unexpected EOF before first boundary @ "

    #@b4
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v20

    #@b8
    .line 87
    invoke-virtual/range {p1 .. p1}, Ljava/io/LineNumberReader;->getLineNumber()I

    #@bb
    move-result v21

    #@bc
    .line 86
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bf
    move-result-object v20

    #@c0
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c3
    move-result-object v20

    #@c4
    invoke-direct/range {v19 .. v20}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c7
    throw v19

    #@c8
    .line 71
    .end local v11    # "line":Ljava/lang/String;
    .local v15, "subBoundary":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    #@ca
    iget-object v0, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    #@cc
    move-object/from16 v19, v0

    #@ce
    const-string/jumbo v20, "text/"

    #@d1
    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@d4
    move-result v19

    #@d5
    if-eqz v19, :cond_4

    #@d7
    .line 72
    invoke-interface/range {v18 .. v18}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@da
    move-result-object v4

    #@db
    .restart local v4    # "attribute$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@de
    move-result v19

    #@df
    if-eqz v19, :cond_4

    #@e1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@e4
    move-result-object v3

    #@e5
    check-cast v3, Ljava/lang/String;

    #@e7
    .line 73
    .restart local v3    # "attribute":Ljava/lang/String;
    const-string/jumbo v19, "charset="

    #@ea
    move-object/from16 v0, v19

    #@ec
    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@ef
    move-result v19

    #@f0
    if-eqz v19, :cond_7

    #@f2
    .line 74
    const-string/jumbo v19, "charset="

    #@f5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    #@f8
    move-result v19

    #@f9
    move/from16 v0, v19

    #@fb
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@fe
    move-result-object v19

    #@ff
    invoke-static/range {v19 .. v19}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    #@102
    move-result-object v6

    #@103
    goto :goto_1

    #@104
    .line 89
    .end local v3    # "attribute":Ljava/lang/String;
    .end local v4    # "attribute$iterator":Ljava/util/Iterator;
    .end local v15    # "subBoundary":Ljava/lang/String;
    .restart local v11    # "line":Ljava/lang/String;
    :cond_8
    const-string/jumbo v19, "--"

    #@107
    move-object/from16 v0, v19

    #@109
    invoke-virtual {v11, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@10c
    move-result v19

    #@10d
    if-eqz v19, :cond_5

    #@10f
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    #@112
    move-result v19

    #@113
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@116
    move-result v20

    #@117
    add-int/lit8 v20, v20, 0x2

    #@119
    move/from16 v0, v19

    #@11b
    move/from16 v1, v20

    #@11d
    if-ne v0, v1, :cond_5

    #@11f
    .line 90
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    #@122
    move-result v19

    #@123
    const/16 v20, 0x2

    #@125
    const/16 v21, 0x0

    #@127
    move/from16 v0, v20

    #@129
    move/from16 v1, v21

    #@12b
    move/from16 v2, v19

    #@12d
    invoke-virtual {v11, v0, v15, v1, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@130
    move-result v19

    #@131
    .line 89
    if-eqz v19, :cond_5

    #@133
    .line 95
    new-instance v19, Ljava/util/ArrayList;

    #@135
    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    #@138
    move-object/from16 v0, v19

    #@13a
    move-object/from16 v1, p0

    #@13c
    iput-object v0, v1, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    #@13e
    .line 97
    :cond_9
    new-instance v7, Lcom/android/server/wifi/configparse/MIMEContainer;

    #@140
    move-object/from16 v0, p1

    #@142
    invoke-direct {v7, v0, v15}, Lcom/android/server/wifi/configparse/MIMEContainer;-><init>(Ljava/io/LineNumberReader;Ljava/lang/String;)V

    #@145
    .line 98
    .local v7, "container":Lcom/android/server/wifi/configparse/MIMEContainer;
    move-object/from16 v0, p0

    #@147
    iget-object v0, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    #@149
    move-object/from16 v19, v0

    #@14b
    move-object/from16 v0, v19

    #@14d
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@150
    .line 99
    invoke-direct {v7}, Lcom/android/server/wifi/configparse/MIMEContainer;->isLast()Z

    #@153
    move-result v19

    #@154
    if-eqz v19, :cond_9

    #@156
    .line 108
    .end local v7    # "container":Lcom/android/server/wifi/configparse/MIMEContainer;
    .end local v11    # "line":Ljava/lang/String;
    :goto_2
    const-string/jumbo v19, "Content-Transfer-Encoding"

    #@159
    move-object/from16 v0, v19

    #@15b
    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@15e
    move-result-object v8

    #@15f
    check-cast v8, Ljava/util/List;

    #@161
    .line 109
    .local v8, "encoding":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v14, 0x0

    #@162
    .line 110
    .local v14, "quoted":Z
    const/4 v5, 0x0

    #@163
    .line 111
    .local v5, "base64":Z
    if-eqz v8, :cond_b

    #@165
    .line 112
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@168
    move-result-object v17

    #@169
    .local v17, "text$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    #@16c
    move-result v19

    #@16d
    if-eqz v19, :cond_b

    #@16f
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@172
    move-result-object v16

    #@173
    check-cast v16, Ljava/lang/String;

    #@175
    .line 113
    .local v16, "text":Ljava/lang/String;
    const-string/jumbo v19, "quoted-printable"

    #@178
    move-object/from16 v0, v16

    #@17a
    move-object/from16 v1, v19

    #@17c
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@17f
    move-result v19

    #@180
    if-eqz v19, :cond_d

    #@182
    .line 114
    const/4 v14, 0x1

    #@183
    .line 123
    .end local v16    # "text":Ljava/lang/String;
    .end local v17    # "text$iterator":Ljava/util/Iterator;
    :cond_b
    :goto_3
    move-object/from16 v0, p0

    #@185
    iput-boolean v5, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mBase64:Z

    #@187
    .line 125
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wifi/configparse/MIMEContainer;->getClass()Ljava/lang/Class;

    #@18a
    move-result-object v19

    #@18b
    invoke-static/range {v19 .. v19}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@18e
    move-result-object v20

    #@18f
    .line 126
    const-string/jumbo v21, "%s MIME container, boundary \'%s\', type \'%s\', encoding %s"

    #@192
    const/16 v19, 0x4

    #@194
    move/from16 v0, v19

    #@196
    new-array v0, v0, [Ljava/lang/Object;

    #@198
    move-object/from16 v22, v0

    #@19a
    .line 127
    if-eqz v13, :cond_e

    #@19c
    const-string/jumbo v19, "multipart"

    #@19f
    :goto_4
    const/16 v23, 0x0

    #@1a1
    aput-object v19, v22, v23

    #@1a3
    const/16 v19, 0x1

    #@1a5
    aput-object p2, v22, v19

    #@1a7
    move-object/from16 v0, p0

    #@1a9
    iget-object v0, v0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    #@1ab
    move-object/from16 v19, v0

    #@1ad
    const/16 v23, 0x2

    #@1af
    aput-object v19, v22, v23

    #@1b1
    const/16 v19, 0x3

    #@1b3
    aput-object v8, v22, v19

    #@1b5
    .line 126
    invoke-static/range {v21 .. v22}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@1b8
    move-result-object v19

    #@1b9
    .line 125
    move-object/from16 v0, v20

    #@1bb
    move-object/from16 v1, v19

    #@1bd
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@1c0
    .line 129
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    #@1c2
    invoke-direct {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    #@1c5
    .line 130
    .local v9, "eof":Ljava/util/concurrent/atomic/AtomicBoolean;
    move-object/from16 v0, p1

    #@1c7
    move-object/from16 v1, p2

    #@1c9
    invoke-static {v0, v1, v14, v9}, Lcom/android/server/wifi/configparse/MIMEContainer;->getBody(Ljava/io/LineNumberReader;Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/String;

    #@1cc
    move-result-object v19

    #@1cd
    move-object/from16 v0, v19

    #@1cf
    invoke-static {v0, v6}, Lcom/android/server/wifi/configparse/MIMEContainer;->recode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    #@1d2
    move-result-object v19

    #@1d3
    move-object/from16 v0, v19

    #@1d5
    move-object/from16 v1, p0

    #@1d7
    iput-object v0, v1, Lcom/android/server/wifi/configparse/MIMEContainer;->mText:Ljava/lang/String;

    #@1d9
    .line 131
    invoke-virtual {v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    #@1dc
    move-result v19

    #@1dd
    move/from16 v0, v19

    #@1df
    move-object/from16 v1, p0

    #@1e1
    iput-boolean v0, v1, Lcom/android/server/wifi/configparse/MIMEContainer;->mLast:Z

    #@1e3
    .line 43
    return-void

    #@1e4
    .line 105
    .end local v5    # "base64":Z
    .end local v8    # "encoding":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v9    # "eof":Ljava/util/concurrent/atomic/AtomicBoolean;
    .end local v14    # "quoted":Z
    :cond_c
    const/16 v19, 0x0

    #@1e6
    move-object/from16 v0, v19

    #@1e8
    move-object/from16 v1, p0

    #@1ea
    iput-object v0, v1, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    #@1ec
    goto/16 :goto_2

    #@1ee
    .line 117
    .restart local v5    # "base64":Z
    .restart local v8    # "encoding":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "quoted":Z
    .restart local v16    # "text":Ljava/lang/String;
    .restart local v17    # "text$iterator":Ljava/util/Iterator;
    :cond_d
    const-string/jumbo v19, "base64"

    #@1f1
    move-object/from16 v0, v16

    #@1f3
    move-object/from16 v1, v19

    #@1f5
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    #@1f8
    move-result v19

    #@1f9
    if-eqz v19, :cond_a

    #@1fb
    .line 118
    const/4 v5, 0x1

    #@1fc
    .line 119
    goto :goto_3

    #@1fd
    .line 127
    .end local v16    # "text":Ljava/lang/String;
    .end local v17    # "text$iterator":Ljava/util/Iterator;
    :cond_e
    const-string/jumbo v19, "plain"

    #@200
    goto :goto_4
.end method

.method private static boundaryCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .param p0, "line"    # Ljava/lang/String;
    .param p1, "boundary"    # Ljava/lang/String;

    #@0
    .prologue
    .line 298
    const-string/jumbo v0, "--"

    #@3
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_1

    #@9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@c
    move-result v0

    #@d
    const/4 v1, 0x2

    #@e
    const/4 v2, 0x0

    #@f
    invoke-virtual {p0, v1, p1, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@18
    move-result v0

    #@19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@1c
    move-result v1

    #@1d
    add-int/lit8 v1, v1, 0x2

    #@1f
    if-ne v0, v1, :cond_0

    #@21
    .line 300
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    #@23
    return-object v0

    #@24
    .line 302
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@27
    move-result v0

    #@28
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@2b
    move-result v1

    #@2c
    add-int/lit8 v1, v1, 0x4

    #@2e
    if-ne v0, v1, :cond_1

    #@30
    const-string/jumbo v0, "--"

    #@33
    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_1

    #@39
    .line 303
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    #@3b
    return-object v0

    #@3c
    .line 306
    :cond_1
    const/4 v0, 0x0

    #@3d
    return-object v0
.end method

.method private static fromStrictHex(C)I
    .locals 1
    .param p0, "ch"    # C

    #@0
    .prologue
    .line 335
    const/16 v0, 0x30

    #@2
    if-lt p0, v0, :cond_0

    #@4
    const/16 v0, 0x39

    #@6
    if-gt p0, v0, :cond_0

    #@8
    .line 336
    add-int/lit8 v0, p0, -0x30

    #@a
    return v0

    #@b
    .line 338
    :cond_0
    const/16 v0, 0x41

    #@d
    if-lt p0, v0, :cond_1

    #@f
    const/16 v0, 0x46

    #@11
    if-gt p0, v0, :cond_1

    #@13
    .line 339
    add-int/lit8 v0, p0, -0x41

    #@15
    add-int/lit8 v0, v0, 0xa

    #@17
    return v0

    #@18
    .line 342
    :cond_1
    const/4 v0, -0x1

    #@19
    return v0
.end method

.method private static getBody(Ljava/io/LineNumberReader;Ljava/lang/String;ZLjava/util/concurrent/atomic/AtomicBoolean;)Ljava/lang/String;
    .locals 6
    .param p0, "in"    # Ljava/io/LineNumberReader;
    .param p1, "boundary"    # Ljava/lang/String;
    .param p2, "quoted"    # Z
    .param p3, "eof"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 258
    .local v2, "text":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    .line 259
    .local v1, "line":Ljava/lang/String;
    if-nez v1, :cond_1

    #@b
    .line 260
    if-eqz p1, :cond_0

    #@d
    .line 261
    new-instance v3, Ljava/io/IOException;

    #@f
    new-instance v4, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v5, "Unexpected EOF file in body @ "

    #@17
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    #@1e
    move-result v5

    #@1f
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v4

    #@27
    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v3

    #@2b
    .line 264
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v3

    #@2f
    return-object v3

    #@30
    .line 267
    :cond_1
    invoke-static {v1, p1}, Lcom/android/server/wifi/configparse/MIMEContainer;->boundaryCheck(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    #@33
    move-result-object v0

    #@34
    .line 268
    .local v0, "end":Ljava/lang/Boolean;
    if-eqz v0, :cond_2

    #@36
    .line 269
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    #@39
    move-result v3

    #@3a
    invoke-virtual {p3, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    #@3d
    .line 271
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    return-object v3

    #@42
    .line 274
    :cond_2
    if-eqz p2, :cond_4

    #@44
    .line 275
    const-string/jumbo v3, "="

    #@47
    invoke-virtual {v1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@4a
    move-result v3

    #@4b
    if-eqz v3, :cond_3

    #@4d
    .line 276
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@50
    move-result v3

    #@51
    add-int/lit8 v3, v3, -0x1

    #@53
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    #@5a
    move-result v4

    #@5b
    invoke-static {v3, v4}, Lcom/android/server/wifi/configparse/MIMEContainer;->unescape(Ljava/lang/String;I)Ljava/lang/String;

    #@5e
    move-result-object v3

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    goto :goto_0

    #@63
    .line 279
    :cond_3
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    #@66
    move-result v3

    #@67
    invoke-static {v1, v3}, Lcom/android/server/wifi/configparse/MIMEContainer;->unescape(Ljava/lang/String;I)Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    goto :goto_0

    #@6f
    .line 283
    :cond_4
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    goto :goto_0
.end method

.method private isLast()Z
    .locals 1

    #@0
    .prologue
    .line 155
    iget-boolean v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mLast:Z

    #@2
    return v0
.end method

.method private static parseHeader(Ljava/io/LineNumberReader;)Ljava/util/Map;
    .locals 13
    .param p0, "in"    # Ljava/io/LineNumberReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/LineNumberReader;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v12, 0x20

    #@2
    const/4 v8, 0x0

    #@3
    .line 198
    const/4 v5, 0x0

    #@4
    .line 199
    .local v5, "value":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@5
    .line 201
    .local v0, "header":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    #@7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@a
    .line 204
    .end local v0    # "header":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/StringBuilder;
    .local v1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :goto_0
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    #@d
    move-result-object v2

    #@e
    .line 205
    .local v2, "line":Ljava/lang/String;
    if-nez v2, :cond_0

    #@10
    .line 206
    new-instance v8, Ljava/io/IOException;

    #@12
    new-instance v9, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v10, "Missing body @ "

    #@1a
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v9

    #@1e
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    #@21
    move-result v10

    #@22
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v9

    #@26
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v9

    #@2a
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v8

    #@2e
    .line 208
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@31
    move-result v9

    #@32
    if-nez v9, :cond_1

    #@34
    .line 240
    if-eqz v0, :cond_8

    #@36
    .line 241
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v9

    #@3a
    const-string/jumbo v10, ";"

    #@3d
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@40
    move-result-object v7

    #@41
    .line 242
    .local v7, "values":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    #@43
    array-length v9, v7

    #@44
    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    #@47
    .line 243
    .local v6, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v9, v7

    #@48
    :goto_1
    if-ge v8, v9, :cond_7

    #@4a
    aget-object v4, v7, v8

    #@4c
    .line 244
    .local v4, "segment":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@4f
    move-result-object v10

    #@50
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@53
    .line 243
    add-int/lit8 v8, v8, 0x1

    #@55
    goto :goto_1

    #@56
    .line 212
    .end local v4    # "segment":Ljava/lang/String;
    .end local v6    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    #@59
    move-result v9

    #@5a
    if-gt v9, v12, :cond_3

    #@5c
    .line 213
    if-nez v5, :cond_2

    #@5e
    .line 214
    new-instance v8, Ljava/io/IOException;

    #@60
    new-instance v9, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const-string/jumbo v10, "Illegal blank prefix in header line \'"

    #@68
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v9

    #@6c
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v9

    #@70
    const-string/jumbo v10, "\' @ "

    #@73
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v9

    #@77
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    #@7a
    move-result v10

    #@7b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v9

    #@7f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v9

    #@83
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@86
    throw v8

    #@87
    .line 216
    :cond_2
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v9

    #@8b
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@8e
    move-result-object v10

    #@8f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    goto/16 :goto_0

    #@94
    .line 220
    :cond_3
    const/16 v9, 0x3a

    #@96
    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    #@99
    move-result v3

    #@9a
    .line 221
    .local v3, "nameEnd":I
    if-gez v3, :cond_4

    #@9c
    .line 222
    new-instance v8, Ljava/io/IOException;

    #@9e
    new-instance v9, Ljava/lang/StringBuilder;

    #@a0
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a3
    const-string/jumbo v10, "Bad header line: \'"

    #@a6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v9

    #@aa
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v9

    #@ae
    const-string/jumbo v10, "\' @ "

    #@b1
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v9

    #@b5
    invoke-virtual {p0}, Ljava/io/LineNumberReader;->getLineNumber()I

    #@b8
    move-result v10

    #@b9
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v9

    #@bd
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v9

    #@c1
    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@c4
    throw v8

    #@c5
    .line 225
    :cond_4
    if-eqz v0, :cond_6

    #@c7
    .line 226
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ca
    move-result-object v9

    #@cb
    const-string/jumbo v10, ";"

    #@ce
    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@d1
    move-result-object v7

    #@d2
    .line 227
    .restart local v7    # "values":[Ljava/lang/String;
    new-instance v6, Ljava/util/ArrayList;

    #@d4
    array-length v9, v7

    #@d5
    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    #@d8
    .line 228
    .restart local v6    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v10, v7

    #@d9
    move v9, v8

    #@da
    :goto_2
    if-ge v9, v10, :cond_5

    #@dc
    aget-object v4, v7, v9

    #@de
    .line 229
    .restart local v4    # "segment":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@e1
    move-result-object v11

    #@e2
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@e5
    .line 228
    add-int/lit8 v9, v9, 0x1

    #@e7
    goto :goto_2

    #@e8
    .line 231
    .end local v4    # "segment":Ljava/lang/String;
    :cond_5
    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@eb
    .line 235
    .end local v6    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :cond_6
    invoke-virtual {v2, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@ee
    move-result-object v0

    #@ef
    .line 236
    .local v0, "header":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    #@f1
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@f4
    .line 237
    .local v5, "value":Ljava/lang/StringBuilder;
    add-int/lit8 v9, v3, 0x1

    #@f6
    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@f9
    move-result-object v9

    #@fa
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@fd
    move-result-object v9

    #@fe
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@101
    goto/16 :goto_0

    #@103
    .line 246
    .end local v0    # "header":Ljava/lang/String;
    .end local v3    # "nameEnd":I
    .end local v5    # "value":Ljava/lang/StringBuilder;
    .restart local v6    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "values":[Ljava/lang/String;
    :cond_7
    invoke-interface {v1, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@106
    .line 250
    .end local v6    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "values":[Ljava/lang/String;
    :cond_8
    return-object v1
.end method

.method private static recode(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    #@0
    .prologue
    .line 289
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@2
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    #@5
    move-result v1

    #@6
    if-nez v1, :cond_0

    #@8
    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    #@a
    invoke-virtual {p1, v1}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v1

    #@e
    if-eqz v1, :cond_1

    #@10
    .line 290
    :cond_0
    return-object p0

    #@11
    .line 293
    :cond_1
    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    #@13
    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    #@16
    move-result-object v0

    #@17
    .line 294
    .local v0, "octets":[B
    new-instance v1, Ljava/lang/String;

    #@19
    invoke-direct {v1, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    #@1c
    return-object v1
.end method

.method private toString(Ljava/lang/StringBuilder;I)V
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "nesting"    # I

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    .line 159
    mul-int/lit8 v3, p2, 0x4

    #@4
    new-array v0, v3, [C

    #@6
    .line 160
    .local v0, "indent":[C
    const/16 v3, 0x20

    #@8
    invoke-static {v0, v3}, Ljava/util/Arrays;->fill([CC)V

    #@b
    .line 161
    iget-boolean v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mBase64:Z

    #@d
    if-eqz v3, :cond_0

    #@f
    .line 162
    const-string/jumbo v3, "base64, type "

    #@12
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v3

    #@16
    iget-object v4, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1f
    .line 175
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    #@21
    if-eqz v3, :cond_3

    #@23
    .line 176
    iget-object v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    #@25
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@28
    move-result-object v2

    #@29
    .local v2, "mimeContainer$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@2c
    move-result v3

    #@2d
    if-eqz v3, :cond_3

    #@2f
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@32
    move-result-object v1

    #@33
    check-cast v1, Lcom/android/server/wifi/configparse/MIMEContainer;

    #@35
    .line 177
    .local v1, "mimeContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    add-int/lit8 v3, p2, 0x1

    #@37
    invoke-direct {v1, p1, v3}, Lcom/android/server/wifi/configparse/MIMEContainer;->toString(Ljava/lang/StringBuilder;I)V

    #@3a
    goto :goto_1

    #@3b
    .line 164
    .end local v1    # "mimeContainer":Lcom/android/server/wifi/configparse/MIMEContainer;
    .end local v2    # "mimeContainer$iterator":Ljava/util/Iterator;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    #@3d
    if-eqz v3, :cond_2

    #@3f
    .line 165
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@42
    move-result-object v3

    #@43
    const-string/jumbo v4, "multipart/"

    #@46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v4

    #@4a
    iget-boolean v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMixed:Z

    #@4c
    if-eqz v3, :cond_1

    #@4e
    const-string/jumbo v3, "mixed"

    #@51
    :goto_2
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@58
    goto :goto_0

    #@59
    :cond_1
    const-string/jumbo v3, "other"

    #@5c
    goto :goto_2

    #@5d
    .line 168
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@60
    move-result-object v3

    #@61
    .line 169
    const-string/jumbo v4, "%s, type %s"

    #@64
    const/4 v5, 0x2

    #@65
    new-array v5, v5, [Ljava/lang/Object;

    #@67
    .line 170
    iget-object v6, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mCharset:Ljava/nio/charset/Charset;

    #@69
    const/4 v7, 0x0

    #@6a
    aput-object v6, v5, v7

    #@6c
    .line 171
    iget-object v6, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    #@6e
    const/4 v7, 0x1

    #@6f
    aput-object v6, v5, v7

    #@71
    .line 169
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@74
    move-result-object v4

    #@75
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    move-result-object v3

    #@79
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7c
    goto :goto_0

    #@7d
    .line 180
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    const-string/jumbo v4, "Text: "

    #@84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    .line 181
    iget-object v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mText:Ljava/lang/String;

    #@89
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@8c
    move-result v3

    #@8d
    const v4, 0x186a0

    #@90
    if-ge v3, v4, :cond_4

    #@92
    .line 182
    const-string/jumbo v3, "\'"

    #@95
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@98
    move-result-object v3

    #@99
    iget-object v4, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mText:Ljava/lang/String;

    #@9b
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9e
    move-result-object v3

    #@9f
    const-string/jumbo v4, "\'\n"

    #@a2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    .line 158
    :goto_3
    return-void

    #@a6
    .line 185
    :cond_4
    iget-object v3, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mText:Ljava/lang/String;

    #@a8
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@ab
    move-result v3

    #@ac
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@af
    move-result-object v3

    #@b0
    const-string/jumbo v4, " chars\n"

    #@b3
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b6
    goto :goto_3
.end method

.method private static unescape(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "line"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 311
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    #@6
    .local v3, "n":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@9
    move-result v5

    #@a
    if-ge v3, v5, :cond_3

    #@c
    .line 312
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v0

    #@10
    .line 313
    .local v0, "ch":C
    const/16 v5, 0x7f

    #@12
    if-le v0, v5, :cond_0

    #@14
    .line 314
    new-instance v5, Ljava/io/IOException;

    #@16
    new-instance v6, Ljava/lang/StringBuilder;

    #@18
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@1b
    const-string/jumbo v7, "Bad codepoint "

    #@1e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v6

    #@22
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v6

    #@26
    const-string/jumbo v7, " in quoted printable @ "

    #@29
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v6

    #@2d
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@30
    move-result-object v6

    #@31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@34
    move-result-object v6

    #@35
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@38
    throw v5

    #@39
    .line 316
    :cond_0
    const/16 v5, 0x3d

    #@3b
    if-ne v0, v5, :cond_2

    #@3d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@40
    move-result v5

    #@41
    add-int/lit8 v5, v5, -0x2

    #@43
    if-ge v3, v5, :cond_2

    #@45
    .line 317
    add-int/lit8 v5, v3, 0x1

    #@47
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@4a
    move-result v5

    #@4b
    invoke-static {v5}, Lcom/android/server/wifi/configparse/MIMEContainer;->fromStrictHex(C)I

    #@4e
    move-result v1

    #@4f
    .line 318
    .local v1, "h1":I
    add-int/lit8 v5, v3, 0x2

    #@51
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    #@54
    move-result v5

    #@55
    invoke-static {v5}, Lcom/android/server/wifi/configparse/MIMEContainer;->fromStrictHex(C)I

    #@58
    move-result v2

    #@59
    .line 319
    .local v2, "h2":I
    if-ltz v1, :cond_1

    #@5b
    if-ltz v2, :cond_1

    #@5d
    .line 320
    shl-int/lit8 v5, v1, 0x4

    #@5f
    or-int/2addr v5, v2

    #@60
    int-to-char v5, v5

    #@61
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@64
    .line 321
    add-int/lit8 v3, v3, 0x2

    #@66
    .line 311
    .end local v1    # "h1":I
    .end local v2    # "h2":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    #@68
    goto :goto_0

    #@69
    .line 324
    .restart local v1    # "h1":I
    .restart local v2    # "h2":I
    :cond_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6c
    goto :goto_1

    #@6d
    .line 328
    .end local v1    # "h1":I
    .end local v2    # "h2":I
    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@70
    goto :goto_1

    #@71
    .line 331
    .end local v0    # "ch":C
    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@74
    move-result-object v5

    #@75
    return-object v5
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mContentType:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getMimeContainers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/configparse/MIMEContainer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMimeContainers:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mText:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isBase64()Z
    .locals 1

    #@0
    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mBase64:Z

    #@2
    return v0
.end method

.method public isMixed()Z
    .locals 1

    #@0
    .prologue
    .line 143
    iget-boolean v0, p0, Lcom/android/server/wifi/configparse/MIMEContainer;->mMixed:Z

    #@2
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 192
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    #@6
    invoke-direct {p0, v0, v1}, Lcom/android/server/wifi/configparse/MIMEContainer;->toString(Ljava/lang/StringBuilder;I)V

    #@9
    .line 193
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    return-object v1
.end method
