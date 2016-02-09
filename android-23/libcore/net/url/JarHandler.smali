.class public Llibcore/net/url/JarHandler;
.super Ljava/net/URLStreamHandler;
.source "JarHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/net/URLStreamHandler;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 1
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 42
    new-instance v0, Llibcore/net/url/JarURLConnectionImpl;

    #@2
    invoke-direct {v0, p1}, Llibcore/net/url/JarURLConnectionImpl;-><init>(Ljava/net/URL;)V

    #@5
    return-object v0
.end method

.method protected parseURL(Ljava/net/URL;Ljava/lang/String;II)V
    .locals 15
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "spec"    # Ljava/lang/String;
    .param p3, "start"    # I
    .param p4, "limit"    # I

    #@0
    .prologue
    .line 58
    invoke-virtual/range {p1 .. p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@3
    move-result-object v9

    #@4
    .line 59
    .local v9, "file":Ljava/lang/String;
    if-nez v9, :cond_0

    #@6
    .line 60
    const-string/jumbo v9, ""

    #@9
    .line 62
    :cond_0
    move/from16 v0, p4

    #@b
    move/from16 v1, p3

    #@d
    if-le v0, v1, :cond_1

    #@f
    .line 63
    invoke-virtual/range {p2 .. p4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@12
    move-result-object p2

    #@13
    .line 67
    :goto_0
    const-string/jumbo v2, "!/"

    #@16
    move-object/from16 v0, p2

    #@18
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@1b
    move-result v2

    #@1c
    const/4 v3, -0x1

    #@1d
    if-ne v2, v3, :cond_2

    #@1f
    const-string/jumbo v2, "!/"

    #@22
    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@25
    move-result v2

    #@26
    const/4 v3, -0x1

    #@27
    if-ne v2, v3, :cond_2

    #@29
    .line 68
    new-instance v2, Ljava/lang/NullPointerException;

    #@2b
    const-string/jumbo v3, "Cannot find \"!/\""

    #@2e
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@31
    throw v2

    #@32
    .line 65
    :cond_1
    const-string/jumbo p2, ""

    #@35
    goto :goto_0

    #@36
    .line 70
    :cond_2
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    #@39
    move-result v2

    #@3a
    if-eqz v2, :cond_3

    #@3c
    .line 71
    move-object/from16 v9, p2

    #@3e
    .line 82
    :goto_1
    :try_start_0
    new-instance v2, Ljava/net/URL;

    #@40
    invoke-direct {v2, v9}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 86
    const-string/jumbo v4, "jar"

    #@46
    const-string/jumbo v5, ""

    #@49
    const/4 v6, -0x1

    #@4a
    const/4 v7, 0x0

    #@4b
    const/4 v8, 0x0

    #@4c
    const/4 v10, 0x0

    #@4d
    const/4 v11, 0x0

    #@4e
    move-object v2, p0

    #@4f
    move-object/from16 v3, p1

    #@51
    invoke-virtual/range {v2 .. v11}, Llibcore/net/url/JarHandler;->setURL(Ljava/net/URL;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@54
    .line 57
    return-void

    #@55
    .line 72
    :cond_3
    const/4 v2, 0x0

    #@56
    move-object/from16 v0, p2

    #@58
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@5b
    move-result v2

    #@5c
    const/16 v3, 0x2f

    #@5e
    if-ne v2, v3, :cond_4

    #@60
    .line 73
    new-instance v2, Ljava/lang/StringBuilder;

    #@62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@65
    const/16 v3, 0x21

    #@67
    invoke-virtual {v9, v3}, Ljava/lang/String;->indexOf(I)I

    #@6a
    move-result v3

    #@6b
    add-int/lit8 v3, v3, 0x1

    #@6d
    const/4 v4, 0x0

    #@6e
    invoke-virtual {v9, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@71
    move-result-object v3

    #@72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    move-object/from16 v0, p2

    #@78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v9

    #@80
    goto :goto_1

    #@81
    .line 75
    :cond_4
    const/16 v2, 0x21

    #@83
    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(I)I

    #@86
    move-result v13

    #@87
    .line 76
    .local v13, "idx":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    add-int/lit8 v3, v13, 0x1

    #@8e
    const/16 v4, 0x2f

    #@90
    invoke-virtual {v9, v4}, Ljava/lang/String;->lastIndexOf(I)I

    #@93
    move-result v4

    #@94
    add-int/lit8 v4, v4, 0x1

    #@96
    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@99
    move-result-object v3

    #@9a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v2

    #@9e
    move-object/from16 v0, p2

    #@a0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v2

    #@a4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v14

    #@a8
    .line 77
    .local v14, "tmpFile":Ljava/lang/String;
    const/4 v2, 0x1

    #@a9
    invoke-static {v14, v2}, Llibcore/net/url/UrlUtils;->canonicalizePath(Ljava/lang/String;Z)Ljava/lang/String;

    #@ac
    move-result-object v14

    #@ad
    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    #@af
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@b2
    add-int/lit8 v3, v13, 0x1

    #@b4
    const/4 v4, 0x0

    #@b5
    invoke-virtual {v9, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@b8
    move-result-object v3

    #@b9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v2

    #@bd
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c0
    move-result-object v2

    #@c1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c4
    move-result-object v9

    #@c5
    goto/16 :goto_1

    #@c7
    .line 83
    .end local v13    # "idx":I
    .end local v14    # "tmpFile":Ljava/lang/String;
    :catch_0
    move-exception v12

    #@c8
    .line 84
    .local v12, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/NullPointerException;

    #@ca
    invoke-virtual {v12}, Ljava/net/MalformedURLException;->toString()Ljava/lang/String;

    #@cd
    move-result-object v3

    #@ce
    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d1
    throw v2
.end method

.method protected toExternalForm(Ljava/net/URL;)Ljava/lang/String;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 99
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "jar:"

    #@8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    .line 100
    invoke-virtual {p1}, Ljava/net/URL;->getFile()Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    .line 101
    invoke-virtual {p1}, Ljava/net/URL;->getRef()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .line 102
    .local v0, "ref":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@18
    .line 103
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 105
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v2

    #@1f
    return-object v2
.end method
