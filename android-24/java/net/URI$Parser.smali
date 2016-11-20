.class Ljava/net/URI$Parser;
.super Ljava/lang/Object;
.source "URI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/net/URI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Parser"
.end annotation


# instance fields
.field private input:Ljava/lang/String;

.field private ipv6byteCount:I

.field private requireServerAuthority:Z

.field final synthetic this$0:Ljava/net/URI;


# direct methods
.method constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 1
    .param p1, "this$0"    # Ljava/net/URI;
    .param p2, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2843
    iput-object p1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 2841
    iput-boolean v0, p0, Ljava/net/URI$Parser;->requireServerAuthority:Z

    #@8
    .line 3470
    iput v0, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    #@a
    .line 2844
    iput-object p2, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    #@c
    .line 2845
    invoke-static {p1, p2}, Ljava/net/URI;->-set8(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    #@f
    .line 2843
    return-void
.end method

.method private at(IIC)Z
    .locals 2
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2889
    if-ge p1, p2, :cond_0

    #@3
    invoke-direct {p0, p1}, Ljava/net/URI$Parser;->charAt(I)C

    #@6
    move-result v1

    #@7
    if-ne v1, p3, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method private at(IILjava/lang/String;)Z
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "s"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 2896
    move v1, p1

    #@2
    .line 2897
    .local v1, "p":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    #@5
    move-result v3

    #@6
    .line 2898
    .local v3, "sn":I
    sub-int v5, p2, p1

    #@8
    if-le v3, v5, :cond_0

    #@a
    .line 2899
    return v4

    #@b
    .line 2900
    :cond_0
    const/4 v0, 0x0

    #@c
    .local v0, "i":I
    move v2, v1

    #@d
    .line 2901
    .end local v1    # "p":I
    .local v2, "p":I
    :goto_0
    if-ge v0, v3, :cond_3

    #@f
    .line 2902
    add-int/lit8 v1, v2, 0x1

    #@11
    .end local v2    # "p":I
    .restart local v1    # "p":I
    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    #@14
    move-result v5

    #@15
    invoke-virtual {p3, v0}, Ljava/lang/String;->charAt(I)C

    #@18
    move-result v6

    #@19
    if-eq v5, v6, :cond_2

    #@1b
    .line 2907
    :goto_1
    if-ne v0, v3, :cond_1

    #@1d
    const/4 v4, 0x1

    #@1e
    :cond_1
    return v4

    #@1f
    .line 2905
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@21
    move v2, v1

    #@22
    .end local v1    # "p":I
    .restart local v2    # "p":I
    goto :goto_0

    #@23
    :cond_3
    move v1, v2

    #@24
    .end local v2    # "p":I
    .restart local v1    # "p":I
    goto :goto_1
.end method

.method private charAt(I)C
    .locals 1
    .param p1, "p"    # I

    #@0
    .prologue
    .line 2883
    iget-object v0, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v0

    #@6
    return v0
.end method

.method private checkChar(IJJLjava/lang/String;)V
    .locals 10
    .param p1, "p"    # I
    .param p2, "lowMask"    # J
    .param p4, "highMask"    # J
    .param p6, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 3038
    add-int/lit8 v3, p1, 0x1

    #@2
    move-object v1, p0

    #@3
    move v2, p1

    #@4
    move-wide v4, p2

    #@5
    move-wide v6, p4

    #@6
    move-object/from16 v8, p6

    #@8
    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    #@b
    .line 3036
    return-void
.end method

.method private checkChars(IIJJLjava/lang/String;)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "lowMask"    # J
    .param p5, "highMask"    # J
    .param p7, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 3026
    invoke-direct/range {p0 .. p6}, Ljava/net/URI$Parser;->scan(IIJJ)I

    #@3
    move-result v0

    #@4
    .line 3027
    .local v0, "p":I
    if-ge v0, p2, :cond_0

    #@6
    .line 3028
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Illegal character in "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    invoke-direct {p0, v1, v0}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@1d
    .line 3024
    :cond_0
    return-void
.end method

.method private fail(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 2851
    new-instance v0, Ljava/net/URISyntaxException;

    #@2
    iget-object v1, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1, p1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@7
    throw v0
.end method

.method private fail(Ljava/lang/String;I)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 2855
    new-instance v0, Ljava/net/URISyntaxException;

    #@2
    iget-object v1, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    #@4
    invoke-direct {v0, v1, p1, p2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    #@7
    throw v0
.end method

.method private failExpecting(Ljava/lang/String;I)V
    .locals 2
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 2861
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Expected "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0, p2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@17
    .line 2859
    return-void
.end method

.method private failExpecting(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "prior"    # Ljava/lang/String;
    .param p3, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 2867
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "Expected "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v0

    #@10
    const-string/jumbo v1, " following "

    #@13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    invoke-direct {p0, v0, p3}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@22
    .line 2865
    return-void
.end method

.method private parseAuthority(II)I
    .locals 13
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 3136
    move v8, p1

    #@1
    .line 3137
    .local v8, "p":I
    move v9, p1

    #@2
    .line 3138
    .local v9, "q":I
    const/4 v0, 0x0

    #@3
    .line 3143
    .local v0, "ex":Ljava/net/URISyntaxException;
    const-string/jumbo v1, ""

    #@6
    const-string/jumbo v2, "]"

    #@9
    invoke-direct {p0, p1, p2, v1, v2}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    #@c
    move-result v1

    #@d
    if-le v1, p1, :cond_5

    #@f
    .line 3145
    invoke-static {}, Ljava/net/URI;->-get22()J

    #@12
    move-result-wide v4

    #@13
    invoke-static {}, Ljava/net/URI;->-get9()J

    #@16
    move-result-wide v6

    #@17
    move-object v1, p0

    #@18
    move v2, p1

    #@19
    move v3, p2

    #@1a
    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    #@1d
    move-result v1

    #@1e
    if-ne v1, p2, :cond_4

    #@20
    const/4 v11, 0x1

    #@21
    .line 3149
    .local v11, "serverChars":Z
    :goto_0
    invoke-static {}, Ljava/net/URI;->-get19()J

    #@24
    move-result-wide v4

    #@25
    invoke-static {}, Ljava/net/URI;->-get6()J

    #@28
    move-result-wide v6

    #@29
    move-object v1, p0

    #@2a
    move v2, p1

    #@2b
    move v3, p2

    #@2c
    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    #@2f
    move-result v1

    #@30
    if-ne v1, p2, :cond_7

    #@32
    const/4 v10, 0x1

    #@33
    .line 3151
    .local v10, "regChars":Z
    :goto_1
    if-eqz v10, :cond_0

    #@35
    if-eqz v11, :cond_8

    #@37
    .line 3157
    :cond_0
    if-eqz v11, :cond_2

    #@39
    .line 3162
    :try_start_0
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->parseServer(II)I

    #@3c
    move-result v9

    #@3d
    .line 3163
    if-ge v9, p2, :cond_1

    #@3f
    .line 3164
    const-string/jumbo v1, "end of authority"

    #@42
    invoke-direct {p0, v1, v9}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    #@45
    .line 3165
    :cond_1
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@47
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    #@4a
    move-result-object v2

    #@4b
    invoke-static {v1, v2}, Ljava/net/URI;->-set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    #@4e
    .line 3184
    .end local v0    # "ex":Ljava/net/URISyntaxException;
    :cond_2
    :goto_2
    if-ge v9, p2, :cond_3

    #@50
    .line 3185
    if-eqz v10, :cond_a

    #@52
    .line 3187
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@54
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    #@57
    move-result-object v2

    #@58
    invoke-static {v1, v2}, Ljava/net/URI;->-set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    #@5b
    .line 3197
    :cond_3
    :goto_3
    return p2

    #@5c
    .line 3145
    .end local v10    # "regChars":Z
    .end local v11    # "serverChars":Z
    .restart local v0    # "ex":Ljava/net/URISyntaxException;
    :cond_4
    const/4 v11, 0x0

    #@5d
    .restart local v11    # "serverChars":Z
    goto :goto_0

    #@5e
    .line 3147
    .end local v11    # "serverChars":Z
    :cond_5
    invoke-static {}, Ljava/net/URI;->-get21()J

    #@61
    move-result-wide v4

    #@62
    invoke-static {}, Ljava/net/URI;->-get8()J

    #@65
    move-result-wide v6

    #@66
    move-object v1, p0

    #@67
    move v2, p1

    #@68
    move v3, p2

    #@69
    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    #@6c
    move-result v1

    #@6d
    if-ne v1, p2, :cond_6

    #@6f
    const/4 v11, 0x1

    #@70
    .restart local v11    # "serverChars":Z
    goto :goto_0

    #@71
    .end local v11    # "serverChars":Z
    :cond_6
    const/4 v11, 0x0

    #@72
    .restart local v11    # "serverChars":Z
    goto :goto_0

    #@73
    .line 3149
    :cond_7
    const/4 v10, 0x0

    #@74
    goto :goto_1

    #@75
    .line 3153
    .restart local v10    # "regChars":Z
    :cond_8
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@77
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    #@7a
    move-result-object v2

    #@7b
    invoke-static {v1, v2}, Ljava/net/URI;->-set0(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    #@7e
    .line 3154
    return p2

    #@7f
    .line 3166
    :catch_0
    move-exception v12

    #@80
    .line 3168
    .local v12, "x":Ljava/net/URISyntaxException;
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@82
    const/4 v2, 0x0

    #@83
    invoke-static {v1, v2}, Ljava/net/URI;->-set9(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    #@86
    .line 3169
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@88
    const/4 v2, 0x0

    #@89
    invoke-static {v1, v2}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    #@8c
    .line 3170
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@8e
    const/4 v2, -0x1

    #@8f
    invoke-static {v1, v2}, Ljava/net/URI;->-set4(Ljava/net/URI;I)I

    #@92
    .line 3171
    iget-boolean v1, p0, Ljava/net/URI$Parser;->requireServerAuthority:Z

    #@94
    if-eqz v1, :cond_9

    #@96
    .line 3174
    throw v12

    #@97
    .line 3178
    :cond_9
    move-object v0, v12

    #@98
    .line 3179
    .local v0, "ex":Ljava/net/URISyntaxException;
    move v9, p1

    #@99
    goto :goto_2

    #@9a
    .line 3188
    .end local v0    # "ex":Ljava/net/URISyntaxException;
    .end local v12    # "x":Ljava/net/URISyntaxException;
    :cond_a
    if-eqz v0, :cond_b

    #@9c
    .line 3191
    throw v0

    #@9d
    .line 3193
    :cond_b
    const-string/jumbo v1, "Illegal character in authority"

    #@a0
    invoke-direct {p0, v1, v9}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@a3
    goto :goto_3
.end method

.method private parseHierarchical(II)I
    .locals 9
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v1, 0x2f

    #@2
    .line 3099
    move v2, p1

    #@3
    .line 3100
    .local v2, "p":I
    invoke-direct {p0, p1, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    add-int/lit8 v0, p1, 0x1

    #@b
    invoke-direct {p0, v0, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 3101
    add-int/lit8 v2, p1, 0x2

    #@13
    .line 3102
    const-string/jumbo v0, ""

    #@16
    const-string/jumbo v1, "/?#"

    #@19
    invoke-direct {p0, v2, p2, v0, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    #@1c
    move-result v3

    #@1d
    .line 3103
    .local v3, "q":I
    if-le v3, v2, :cond_2

    #@1f
    .line 3104
    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->parseAuthority(II)I

    #@22
    move-result v2

    #@23
    .line 3111
    .end local v3    # "q":I
    :cond_0
    :goto_0
    const-string/jumbo v0, ""

    #@26
    const-string/jumbo v1, "?#"

    #@29
    invoke-direct {p0, v2, p2, v0, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    #@2c
    move-result v3

    #@2d
    .line 3112
    .restart local v3    # "q":I
    invoke-static {}, Ljava/net/URI;->-get18()J

    #@30
    move-result-wide v4

    #@31
    invoke-static {}, Ljava/net/URI;->-get5()J

    #@34
    move-result-wide v6

    #@35
    const-string/jumbo v8, "path"

    #@38
    move-object v1, p0

    #@39
    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    #@3c
    .line 3113
    iget-object v0, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@3e
    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    invoke-static {v0, v1}, Ljava/net/URI;->-set3(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    #@45
    .line 3114
    move v2, v3

    #@46
    .line 3115
    const/16 v0, 0x3f

    #@48
    invoke-direct {p0, v3, p2, v0}, Ljava/net/URI$Parser;->at(IIC)Z

    #@4b
    move-result v0

    #@4c
    if-eqz v0, :cond_1

    #@4e
    .line 3116
    add-int/lit8 v2, v3, 0x1

    #@50
    .line 3117
    const-string/jumbo v0, ""

    #@53
    const-string/jumbo v1, "#"

    #@56
    invoke-direct {p0, v2, p2, v0, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    #@59
    move-result v3

    #@5a
    .line 3118
    invoke-static {}, Ljava/net/URI;->-get24()J

    #@5d
    move-result-wide v4

    #@5e
    invoke-static {}, Ljava/net/URI;->-get11()J

    #@61
    move-result-wide v6

    #@62
    const-string/jumbo v8, "query"

    #@65
    move-object v1, p0

    #@66
    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    #@69
    .line 3119
    iget-object v0, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@6b
    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    #@6e
    move-result-object v1

    #@6f
    invoke-static {v0, v1}, Ljava/net/URI;->-set5(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    #@72
    .line 3120
    move v2, v3

    #@73
    .line 3122
    :cond_1
    return v2

    #@74
    .line 3105
    :cond_2
    if-lt v3, p2, :cond_0

    #@76
    .line 3109
    const-string/jumbo v0, "authority"

    #@79
    invoke-direct {p0, v0, v2}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    #@7c
    goto :goto_0
.end method

.method private parseHostname(II)I
    .locals 13
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v12, 0x2e

    #@2
    .line 3368
    move v2, p1

    #@3
    .line 3370
    .local v2, "p":I
    const/4 v0, -0x1

    #@4
    .line 3379
    .local v0, "l":I
    :cond_0
    if-ge v2, p2, :cond_5

    #@6
    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    #@9
    move-result v1

    #@a
    if-ne v1, v12, :cond_5

    #@c
    .line 3380
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v3, "URI "

    #@14
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    const-string/jumbo v3, " has empty labels in "

    #@23
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    .line 3381
    const-string/jumbo v3, "the hostname. This is malformed and will not be accepted"

    #@2a
    .line 3380
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v1

    #@2e
    .line 3382
    const-string/jumbo v3, "in future Android releases."

    #@31
    .line 3380
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    move-result-object v1

    #@35
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@38
    move-result-object v1

    #@39
    invoke-static {v1}, Ljava/lang/System;->logE(Ljava/lang/String;)V

    #@3c
    .line 3383
    add-int/lit8 v2, v2, 0x1

    #@3e
    move v4, v2

    #@3f
    .line 3410
    .local v4, "q":I
    :goto_0
    if-lt v2, p2, :cond_0

    #@41
    .line 3412
    :cond_1
    if-ge v2, p2, :cond_2

    #@43
    const/16 v1, 0x3a

    #@45
    invoke-direct {p0, v2, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    #@48
    move-result v1

    #@49
    if-eqz v1, :cond_8

    #@4b
    .line 3415
    :cond_2
    :goto_1
    if-gez v0, :cond_3

    #@4d
    .line 3416
    const-string/jumbo v1, "hostname"

    #@50
    invoke-direct {p0, v1, p1}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    #@53
    .line 3420
    :cond_3
    if-le v0, p1, :cond_4

    #@55
    invoke-direct {p0, v0}, Ljava/net/URI$Parser;->charAt(I)C

    #@58
    move-result v1

    #@59
    invoke-static {}, Ljava/net/URI;->-get0()J

    #@5c
    move-result-wide v6

    #@5d
    const-wide/16 v8, 0x0

    #@5f
    invoke-static {v1, v8, v9, v6, v7}, Ljava/net/URI;->-wrap0(CJJ)Z

    #@62
    move-result v1

    #@63
    if-eqz v1, :cond_9

    #@65
    .line 3424
    :cond_4
    :goto_2
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@67
    invoke-direct {p0, p1, v2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    #@6a
    move-result-object v3

    #@6b
    invoke-static {v1, v3}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    #@6e
    .line 3425
    return v2

    #@6f
    .line 3393
    .end local v4    # "q":I
    :cond_5
    invoke-static {}, Ljava/net/URI;->-get13()J

    #@72
    move-result-wide v4

    #@73
    invoke-static {}, Ljava/net/URI;->-get1()J

    #@76
    move-result-wide v6

    #@77
    move-object v1, p0

    #@78
    move v3, p2

    #@79
    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    #@7c
    move-result v4

    #@7d
    .line 3394
    .restart local v4    # "q":I
    if-le v4, v2, :cond_1

    #@7f
    .line 3396
    move v0, v2

    #@80
    .line 3397
    if-le v4, v2, :cond_7

    #@82
    .line 3398
    move v2, v4

    #@83
    .line 3399
    invoke-static {}, Ljava/net/URI;->-get13()J

    #@86
    move-result-wide v6

    #@87
    invoke-static {}, Ljava/net/URI;->-get14()J

    #@8a
    move-result-wide v8

    #@8b
    or-long/2addr v6, v8

    #@8c
    invoke-static {}, Ljava/net/URI;->-get23()J

    #@8f
    move-result-wide v8

    #@90
    or-long/2addr v6, v8

    #@91
    invoke-static {}, Ljava/net/URI;->-get1()J

    #@94
    move-result-wide v8

    #@95
    invoke-static {}, Ljava/net/URI;->-get2()J

    #@98
    move-result-wide v10

    #@99
    or-long/2addr v8, v10

    #@9a
    invoke-static {}, Ljava/net/URI;->-get10()J

    #@9d
    move-result-wide v10

    #@9e
    or-long/2addr v8, v10

    #@9f
    move-object v3, p0

    #@a0
    move v5, p2

    #@a1
    invoke-direct/range {v3 .. v9}, Ljava/net/URI$Parser;->scan(IIJJ)I

    #@a4
    move-result v4

    #@a5
    .line 3400
    if-le v4, v2, :cond_7

    #@a7
    .line 3401
    add-int/lit8 v1, v4, -0x1

    #@a9
    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    #@ac
    move-result v1

    #@ad
    const/16 v3, 0x2d

    #@af
    if-ne v1, v3, :cond_6

    #@b1
    .line 3402
    const-string/jumbo v1, "Illegal character in hostname"

    #@b4
    add-int/lit8 v3, v4, -0x1

    #@b6
    invoke-direct {p0, v1, v3}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@b9
    .line 3403
    :cond_6
    move v2, v4

    #@ba
    .line 3406
    :cond_7
    invoke-direct {p0, v2, p2, v12}, Ljava/net/URI$Parser;->scan(IIC)I

    #@bd
    move-result v4

    #@be
    .line 3407
    if-le v4, v2, :cond_1

    #@c0
    .line 3409
    move v2, v4

    #@c1
    goto/16 :goto_0

    #@c3
    .line 3413
    :cond_8
    const-string/jumbo v1, "Illegal character in hostname"

    #@c6
    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@c9
    goto :goto_1

    #@ca
    .line 3421
    :cond_9
    const-string/jumbo v1, "Illegal character in hostname"

    #@cd
    invoke-direct {p0, v1, v0}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@d0
    goto :goto_2
.end method

.method private parseIPv4Address(II)I
    .locals 5
    .param p1, "start"    # I
    .param p2, "n"    # I

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 3339
    const/4 v3, 0x0

    #@2
    :try_start_0
    invoke-direct {p0, p1, p2, v3}, Ljava/net/URI$Parser;->scanIPv4Address(IIZ)I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v1

    #@6
    .line 3346
    .local v1, "p":I
    if-le v1, p1, :cond_0

    #@8
    if-ge v1, p2, :cond_0

    #@a
    .line 3350
    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    #@d
    move-result v3

    #@e
    const/16 v4, 0x3a

    #@10
    if-eq v3, v4, :cond_0

    #@12
    .line 3351
    const/4 v1, -0x1

    #@13
    .line 3355
    :cond_0
    if-le v1, p1, :cond_1

    #@15
    .line 3356
    iget-object v3, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@17
    invoke-direct {p0, p1, v1}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-static {v3, v4}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    #@1e
    .line 3358
    :cond_1
    return v1

    #@1f
    .line 3342
    .end local v1    # "p":I
    :catch_0
    move-exception v0

    #@20
    .line 3343
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return v4

    #@21
    .line 3340
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v2

    #@22
    .line 3341
    .local v2, "x":Ljava/net/URISyntaxException;
    return v4
.end method

.method private parseIPv6Reference(II)I
    .locals 6
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v5, 0x10

    #@2
    .line 3475
    move v1, p1

    #@3
    .line 3477
    .local v1, "p":I
    const/4 v0, 0x0

    #@4
    .line 3479
    .local v0, "compressedZeros":Z
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->scanHexSeq(II)I

    #@7
    move-result v2

    #@8
    .line 3481
    .local v2, "q":I
    if-le v2, p1, :cond_6

    #@a
    .line 3482
    move v1, v2

    #@b
    .line 3483
    const-string/jumbo v3, "::"

    #@e
    invoke-direct {p0, v2, p2, v3}, Ljava/net/URI$Parser;->at(IILjava/lang/String;)Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_5

    #@14
    .line 3484
    const/4 v0, 0x1

    #@15
    .line 3485
    add-int/lit8 v3, v2, 0x2

    #@17
    invoke-direct {p0, v3, p2}, Ljava/net/URI$Parser;->scanHexPost(II)I

    #@1a
    move-result v1

    #@1b
    .line 3494
    :cond_0
    :goto_0
    if-ge v1, p2, :cond_1

    #@1d
    .line 3495
    const-string/jumbo v3, "Malformed IPv6 address"

    #@20
    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@23
    .line 3496
    :cond_1
    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    #@25
    if-le v3, v5, :cond_2

    #@27
    .line 3497
    const-string/jumbo v3, "IPv6 address too long"

    #@2a
    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@2d
    .line 3498
    :cond_2
    if-nez v0, :cond_3

    #@2f
    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    #@31
    if-ge v3, v5, :cond_3

    #@33
    .line 3499
    const-string/jumbo v3, "IPv6 address too short"

    #@36
    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@39
    .line 3500
    :cond_3
    if-eqz v0, :cond_4

    #@3b
    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    #@3d
    if-ne v3, v5, :cond_4

    #@3f
    .line 3501
    const-string/jumbo v3, "Malformed IPv6 address"

    #@42
    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@45
    .line 3503
    :cond_4
    return v1

    #@46
    .line 3486
    :cond_5
    const/16 v3, 0x3a

    #@48
    invoke-direct {p0, v2, p2, v3}, Ljava/net/URI$Parser;->at(IIC)Z

    #@4b
    move-result v3

    #@4c
    if-eqz v3, :cond_0

    #@4e
    .line 3487
    add-int/lit8 v3, v2, 0x1

    #@50
    const-string/jumbo v4, "IPv4 address"

    #@53
    invoke-direct {p0, v3, p2, v4}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    #@56
    move-result v1

    #@57
    .line 3488
    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    #@59
    add-int/lit8 v3, v3, 0x4

    #@5b
    iput v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    #@5d
    goto :goto_0

    #@5e
    .line 3490
    :cond_6
    const-string/jumbo v3, "::"

    #@61
    invoke-direct {p0, p1, p2, v3}, Ljava/net/URI$Parser;->at(IILjava/lang/String;)Z

    #@64
    move-result v3

    #@65
    if-eqz v3, :cond_0

    #@67
    .line 3491
    const/4 v0, 0x1

    #@68
    .line 3492
    add-int/lit8 v3, p1, 0x2

    #@6a
    invoke-direct {p0, v3, p2}, Ljava/net/URI$Parser;->scanHexPost(II)I

    #@6d
    move-result v1

    #@6e
    goto :goto_0
.end method

.method private parseServer(II)I
    .locals 11
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 3206
    move v2, p1

    #@1
    .line 3210
    .local v2, "p":I
    const-string/jumbo v1, "/?#"

    #@4
    const-string/jumbo v4, "@"

    #@7
    invoke-direct {p0, p1, p2, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    #@a
    move-result v3

    #@b
    .line 3211
    .local v3, "q":I
    if-lt v3, p1, :cond_0

    #@d
    const/16 v1, 0x40

    #@f
    invoke-direct {p0, v3, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_0

    #@15
    .line 3212
    invoke-static {}, Ljava/net/URI;->-get25()J

    #@18
    move-result-wide v4

    #@19
    invoke-static {}, Ljava/net/URI;->-get12()J

    #@1c
    move-result-wide v6

    #@1d
    const-string/jumbo v8, "user info"

    #@20
    move-object v1, p0

    #@21
    move v2, p1

    #@22
    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    #@25
    .line 3213
    .end local v2    # "p":I
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@27
    invoke-direct {p0, p1, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    #@2a
    move-result-object v4

    #@2b
    invoke-static {v1, v4}, Ljava/net/URI;->-set9(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    #@2e
    .line 3214
    add-int/lit8 v2, v3, 0x1

    #@30
    .line 3218
    .restart local v2    # "p":I
    :cond_0
    const/16 v1, 0x5b

    #@32
    invoke-direct {p0, v2, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_6

    #@38
    .line 3220
    add-int/lit8 v0, v2, 0x1

    #@3a
    .line 3221
    .end local v2    # "p":I
    .local v0, "p":I
    const-string/jumbo v1, "/?#"

    #@3d
    const-string/jumbo v4, "]"

    #@40
    invoke-direct {p0, v0, p2, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    #@43
    move-result v3

    #@44
    .line 3222
    if-le v3, v0, :cond_5

    #@46
    const/16 v1, 0x5d

    #@48
    invoke-direct {p0, v3, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    #@4b
    move-result v1

    #@4c
    if-eqz v1, :cond_5

    #@4e
    .line 3224
    const-string/jumbo v1, ""

    #@51
    const-string/jumbo v4, "%"

    #@54
    invoke-direct {p0, v0, v3, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    #@57
    move-result v9

    #@58
    .line 3225
    .local v9, "r":I
    if-le v9, v0, :cond_4

    #@5a
    .line 3226
    invoke-direct {p0, v0, v9}, Ljava/net/URI$Parser;->parseIPv6Reference(II)I

    #@5d
    .line 3227
    add-int/lit8 v1, v9, 0x1

    #@5f
    if-ne v1, v3, :cond_1

    #@61
    .line 3228
    const-string/jumbo v1, "scope id expected"

    #@64
    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;)V

    #@67
    .line 3230
    :cond_1
    add-int/lit8 v2, v9, 0x1

    #@69
    invoke-static {}, Ljava/net/URI;->-get13()J

    #@6c
    move-result-wide v4

    #@6d
    invoke-static {}, Ljava/net/URI;->-get1()J

    #@70
    move-result-wide v6

    #@71
    .line 3231
    const-string/jumbo v8, "scope id"

    #@74
    move-object v1, p0

    #@75
    .line 3230
    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    #@78
    .line 3235
    :goto_0
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@7a
    add-int/lit8 v4, v0, -0x1

    #@7c
    add-int/lit8 v5, v3, 0x1

    #@7e
    invoke-direct {p0, v4, v5}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    invoke-static {v1, v4}, Ljava/net/URI;->-set2(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    #@85
    .line 3236
    add-int/lit8 v2, v3, 0x1

    #@87
    .line 3248
    .end local v0    # "p":I
    .end local v9    # "r":I
    .restart local v2    # "p":I
    :goto_1
    const/16 v1, 0x3a

    #@89
    invoke-direct {p0, v2, p2, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    #@8c
    move-result v1

    #@8d
    if-eqz v1, :cond_2

    #@8f
    .line 3249
    add-int/lit8 v2, v2, 0x1

    #@91
    .line 3250
    const-string/jumbo v1, ""

    #@94
    const-string/jumbo v4, "/"

    #@97
    invoke-direct {p0, v2, p2, v1, v4}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    #@9a
    move-result v3

    #@9b
    .line 3251
    if-le v3, v2, :cond_2

    #@9d
    .line 3252
    invoke-static {}, Ljava/net/URI;->-get15()J

    #@a0
    move-result-wide v4

    #@a1
    const-string/jumbo v8, "port number"

    #@a4
    const-wide/16 v6, 0x0

    #@a6
    move-object v1, p0

    #@a7
    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    #@aa
    .line 3254
    :try_start_0
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@ac
    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    #@af
    move-result-object v4

    #@b0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@b3
    move-result v4

    #@b4
    invoke-static {v1, v4}, Ljava/net/URI;->-set4(Ljava/net/URI;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@b7
    .line 3258
    :goto_2
    move v2, v3

    #@b8
    .line 3261
    :cond_2
    if-ge v2, p2, :cond_3

    #@ba
    .line 3262
    const-string/jumbo v1, "port number"

    #@bd
    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    #@c0
    .line 3264
    :cond_3
    return v2

    #@c1
    .line 3233
    .end local v2    # "p":I
    .restart local v0    # "p":I
    .restart local v9    # "r":I
    :cond_4
    invoke-direct {p0, v0, v3}, Ljava/net/URI$Parser;->parseIPv6Reference(II)I

    #@c4
    goto :goto_0

    #@c5
    .line 3238
    .end local v9    # "r":I
    :cond_5
    const-string/jumbo v1, "closing bracket for IPv6 address"

    #@c8
    invoke-direct {p0, v1, v3}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    #@cb
    move v2, v0

    #@cc
    .end local v0    # "p":I
    .restart local v2    # "p":I
    goto :goto_1

    #@cd
    .line 3241
    :cond_6
    invoke-direct {p0, v2, p2}, Ljava/net/URI$Parser;->parseIPv4Address(II)I

    #@d0
    move-result v3

    #@d1
    .line 3242
    if-gt v3, v2, :cond_7

    #@d3
    .line 3243
    invoke-direct {p0, v2, p2}, Ljava/net/URI$Parser;->parseHostname(II)I

    #@d6
    move-result v3

    #@d7
    .line 3244
    :cond_7
    move v2, v3

    #@d8
    goto :goto_1

    #@d9
    .line 3255
    :catch_0
    move-exception v10

    #@da
    .line 3256
    .local v10, "x":Ljava/lang/NumberFormatException;
    const-string/jumbo v1, "Malformed port number"

    #@dd
    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@e0
    goto :goto_2
.end method

.method private scan(IIC)I
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "c"    # C

    #@0
    .prologue
    .line 2942
    if-ge p1, p2, :cond_0

    #@2
    invoke-direct {p0, p1}, Ljava/net/URI$Parser;->charAt(I)C

    #@5
    move-result v0

    #@6
    if-ne v0, p3, :cond_0

    #@8
    .line 2943
    add-int/lit8 v0, p1, 0x1

    #@a
    return v0

    #@b
    .line 2944
    :cond_0
    return p1
.end method

.method private scan(IIJJ)I
    .locals 9
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "lowMask"    # J
    .param p5, "highMask"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 3000
    move v1, p1

    #@1
    .line 3001
    .local v1, "p":I
    :goto_0
    if-ge v1, p2, :cond_1

    #@3
    .line 3002
    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    #@6
    move-result v0

    #@7
    .line 3003
    .local v0, "c":C
    invoke-static {v0, p3, p4, p5, p6}, Ljava/net/URI;->-wrap0(CJJ)Z

    #@a
    move-result v3

    #@b
    if-eqz v3, :cond_0

    #@d
    .line 3004
    add-int/lit8 v1, v1, 0x1

    #@f
    .line 3005
    goto :goto_0

    #@10
    .line 3007
    :cond_0
    const-wide/16 v4, 0x1

    #@12
    and-long/2addr v4, p3

    #@13
    const-wide/16 v6, 0x0

    #@15
    cmp-long v3, v4, v6

    #@17
    if-eqz v3, :cond_1

    #@19
    .line 3008
    invoke-direct {p0, v1, p2, v0}, Ljava/net/URI$Parser;->scanEscape(IIC)I

    #@1c
    move-result v2

    #@1d
    .line 3009
    .local v2, "q":I
    if-le v2, v1, :cond_1

    #@1f
    .line 3010
    move v1, v2

    #@20
    .line 3011
    goto :goto_0

    #@21
    .line 3016
    .end local v0    # "c":C
    .end local v2    # "q":I
    :cond_1
    return v1
.end method

.method private scan(IILjava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "err"    # Ljava/lang/String;
    .param p4, "stop"    # Ljava/lang/String;

    #@0
    .prologue
    .line 2955
    move v1, p1

    #@1
    .line 2956
    .local v1, "p":I
    :goto_0
    if-ge v1, p2, :cond_1

    #@3
    .line 2957
    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    #@6
    move-result v0

    #@7
    .line 2958
    .local v0, "c":C
    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    #@a
    move-result v2

    #@b
    if-ltz v2, :cond_0

    #@d
    .line 2959
    const/4 v2, -0x1

    #@e
    return v2

    #@f
    .line 2960
    :cond_0
    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    #@12
    move-result v2

    #@13
    if-ltz v2, :cond_2

    #@15
    .line 2964
    .end local v0    # "c":C
    :cond_1
    return v1

    #@16
    .line 2962
    .restart local v0    # "c":C
    :cond_2
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0
.end method

.method private scanByte(II)I
    .locals 9
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 3272
    move v0, p1

    #@1
    .line 3273
    .local v0, "p":I
    invoke-static {}, Ljava/net/URI;->-get15()J

    #@4
    move-result-wide v4

    #@5
    const-wide/16 v6, 0x0

    #@7
    move-object v1, p0

    #@8
    move v2, p1

    #@9
    move v3, p2

    #@a
    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    #@d
    move-result v8

    #@e
    .line 3274
    .local v8, "q":I
    if-gt v8, p1, :cond_0

    #@10
    return v8

    #@11
    .line 3275
    :cond_0
    invoke-direct {p0, p1, v8}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@18
    move-result v1

    #@19
    const/16 v2, 0xff

    #@1b
    if-le v1, v2, :cond_1

    #@1d
    return p1

    #@1e
    .line 3276
    :cond_1
    return v8
.end method

.method private scanEscape(IIC)I
    .locals 8
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "first"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 2976
    move v1, p1

    #@1
    .line 2977
    .local v1, "p":I
    move v0, p3

    #@2
    .line 2978
    .local v0, "c":C
    const/16 v2, 0x25

    #@4
    if-ne p3, v2, :cond_2

    #@6
    .line 2980
    add-int/lit8 v2, p1, 0x3

    #@8
    if-gt v2, p2, :cond_0

    #@a
    .line 2981
    add-int/lit8 v2, p1, 0x1

    #@c
    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    #@f
    move-result v2

    #@10
    invoke-static {}, Ljava/net/URI;->-get17()J

    #@13
    move-result-wide v4

    #@14
    invoke-static {}, Ljava/net/URI;->-get4()J

    #@17
    move-result-wide v6

    #@18
    invoke-static {v2, v4, v5, v6, v7}, Ljava/net/URI;->-wrap0(CJJ)Z

    #@1b
    move-result v2

    #@1c
    .line 2980
    if-eqz v2, :cond_0

    #@1e
    .line 2982
    add-int/lit8 v2, p1, 0x2

    #@20
    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    #@23
    move-result v2

    #@24
    invoke-static {}, Ljava/net/URI;->-get17()J

    #@27
    move-result-wide v4

    #@28
    invoke-static {}, Ljava/net/URI;->-get4()J

    #@2b
    move-result-wide v6

    #@2c
    invoke-static {v2, v4, v5, v6, v7}, Ljava/net/URI;->-wrap0(CJJ)Z

    #@2f
    move-result v2

    #@30
    .line 2980
    if-eqz v2, :cond_0

    #@32
    .line 2983
    add-int/lit8 v2, p1, 0x3

    #@34
    return v2

    #@35
    .line 2985
    :cond_0
    const-string/jumbo v2, "Malformed escape pair"

    #@38
    invoke-direct {p0, v2, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@3b
    .line 2992
    :cond_1
    return p1

    #@3c
    .line 2986
    :cond_2
    const/16 v2, 0x80

    #@3e
    if-le p3, v2, :cond_1

    #@40
    .line 2987
    invoke-static {p3}, Ljava/lang/Character;->isSpaceChar(C)Z

    #@43
    move-result v2

    #@44
    if-nez v2, :cond_1

    #@46
    .line 2988
    invoke-static {p3}, Ljava/lang/Character;->isISOControl(C)Z

    #@49
    move-result v2

    #@4a
    if-nez v2, :cond_1

    #@4c
    .line 2990
    add-int/lit8 v2, p1, 0x1

    #@4e
    return v2
.end method

.method private scanHexPost(II)I
    .locals 3
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 3509
    move v0, p1

    #@1
    .line 3512
    .local v0, "p":I
    if-ne p1, p2, :cond_0

    #@3
    .line 3513
    return p1

    #@4
    .line 3515
    :cond_0
    invoke-direct {p0, p1, p2}, Ljava/net/URI$Parser;->scanHexSeq(II)I

    #@7
    move-result v1

    #@8
    .line 3516
    .local v1, "q":I
    if-le v1, p1, :cond_2

    #@a
    .line 3517
    move v0, v1

    #@b
    .line 3518
    const/16 v2, 0x3a

    #@d
    invoke-direct {p0, v1, p2, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 3519
    add-int/lit8 v0, v1, 0x1

    #@15
    .line 3520
    const-string/jumbo v2, "hex digits or IPv4 address"

    #@18
    invoke-direct {p0, v0, p2, v2}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    #@1b
    move-result v0

    #@1c
    .line 3521
    iget v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    #@1e
    add-int/lit8 v2, v2, 0x4

    #@20
    iput v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    #@22
    .line 3527
    :cond_1
    :goto_0
    return v0

    #@23
    .line 3524
    :cond_2
    const-string/jumbo v2, "hex digits or IPv4 address"

    #@26
    invoke-direct {p0, p1, p2, v2}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    #@29
    move-result v0

    #@2a
    .line 3525
    iget v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    #@2c
    add-int/lit8 v2, v2, 0x4

    #@2e
    iput v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    #@30
    goto :goto_0
.end method

.method private scanHexSeq(II)I
    .locals 11
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v10, 0x3a

    #@2
    const/16 v9, 0x2e

    #@4
    const/4 v8, -0x1

    #@5
    .line 3535
    move v2, p1

    #@6
    .line 3538
    .local v2, "p":I
    invoke-static {}, Ljava/net/URI;->-get17()J

    #@9
    move-result-wide v4

    #@a
    invoke-static {}, Ljava/net/URI;->-get4()J

    #@d
    move-result-wide v6

    #@e
    move-object v1, p0

    #@f
    move v2, p1

    #@10
    move v3, p2

    #@11
    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    #@14
    .end local v2    # "p":I
    move-result v0

    #@15
    .line 3539
    .local v0, "q":I
    if-gt v0, p1, :cond_0

    #@17
    .line 3540
    return v8

    #@18
    .line 3541
    :cond_0
    invoke-direct {p0, v0, p2, v9}, Ljava/net/URI$Parser;->at(IIC)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_1

    #@1e
    .line 3542
    return v8

    #@1f
    .line 3543
    :cond_1
    add-int/lit8 v1, p1, 0x4

    #@21
    if-le v0, v1, :cond_2

    #@23
    .line 3544
    const-string/jumbo v1, "IPv6 hexadecimal digit sequence too long"

    #@26
    invoke-direct {p0, v1, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@29
    .line 3545
    :cond_2
    iget v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    #@2b
    add-int/lit8 v1, v1, 0x2

    #@2d
    iput v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    #@2f
    .line 3546
    move v2, v0

    #@30
    .line 3547
    .restart local v2    # "p":I
    :goto_0
    if-ge v2, p2, :cond_3

    #@32
    .line 3548
    invoke-direct {p0, v2, p2, v10}, Ljava/net/URI$Parser;->at(IIC)Z

    #@35
    move-result v1

    #@36
    if-nez v1, :cond_4

    #@38
    .line 3566
    :cond_3
    :goto_1
    return v2

    #@39
    .line 3550
    :cond_4
    add-int/lit8 v1, v2, 0x1

    #@3b
    invoke-direct {p0, v1, p2, v10}, Ljava/net/URI$Parser;->at(IIC)Z

    #@3e
    move-result v1

    #@3f
    if-nez v1, :cond_3

    #@41
    .line 3552
    add-int/lit8 v2, v2, 0x1

    #@43
    .line 3553
    invoke-static {}, Ljava/net/URI;->-get17()J

    #@46
    move-result-wide v4

    #@47
    invoke-static {}, Ljava/net/URI;->-get4()J

    #@4a
    move-result-wide v6

    #@4b
    move-object v1, p0

    #@4c
    move v3, p2

    #@4d
    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    #@50
    move-result v0

    #@51
    .line 3554
    if-gt v0, v2, :cond_5

    #@53
    .line 3555
    const-string/jumbo v1, "digits for an IPv6 address"

    #@56
    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    #@59
    .line 3556
    :cond_5
    invoke-direct {p0, v0, p2, v9}, Ljava/net/URI$Parser;->at(IIC)Z

    #@5c
    move-result v1

    #@5d
    if-eqz v1, :cond_6

    #@5f
    .line 3557
    add-int/lit8 v2, v2, -0x1

    #@61
    .line 3558
    goto :goto_1

    #@62
    .line 3560
    :cond_6
    add-int/lit8 v1, v2, 0x4

    #@64
    if-le v0, v1, :cond_7

    #@66
    .line 3561
    const-string/jumbo v1, "IPv6 hexadecimal digit sequence too long"

    #@69
    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@6c
    .line 3562
    :cond_7
    iget v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    #@6e
    add-int/lit8 v1, v1, 0x2

    #@70
    iput v1, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    #@72
    .line 3563
    move v2, v0

    #@73
    goto :goto_0
.end method

.method private scanIPv4Address(IIZ)I
    .locals 11
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 3297
    move v8, p1

    #@1
    .line 3299
    .local v8, "p":I
    invoke-static {}, Ljava/net/URI;->-get15()J

    #@4
    move-result-wide v2

    #@5
    invoke-static {}, Ljava/net/URI;->-get16()J

    #@8
    move-result-wide v4

    #@9
    or-long/2addr v4, v2

    #@a
    invoke-static {}, Ljava/net/URI;->-get3()J

    #@d
    move-result-wide v2

    #@e
    const-wide/16 v6, 0x0

    #@10
    or-long/2addr v6, v2

    #@11
    move-object v1, p0

    #@12
    move v2, p1

    #@13
    move v3, p2

    #@14
    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    #@17
    move-result v0

    #@18
    .line 3300
    .local v0, "m":I
    if-le v0, p1, :cond_0

    #@1a
    if-eqz p3, :cond_1

    #@1c
    if-eq v0, p2, :cond_1

    #@1e
    .line 3301
    :cond_0
    const/4 v1, -0x1

    #@1f
    return v1

    #@20
    .line 3305
    :cond_1
    invoke-direct {p0, p1, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    #@23
    move-result v9

    #@24
    .local v9, "q":I
    if-gt v9, p1, :cond_3

    #@26
    .line 3315
    :cond_2
    :goto_0
    const-string/jumbo v1, "Malformed IPv4 address"

    #@29
    invoke-direct {p0, v1, v9}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@2c
    .line 3316
    const/4 v1, -0x1

    #@2d
    return v1

    #@2e
    .line 3305
    :cond_3
    move v8, v9

    #@2f
    .line 3306
    const/16 v1, 0x2e

    #@31
    invoke-direct {p0, v9, v0, v1}, Ljava/net/URI$Parser;->scan(IIC)I

    #@34
    move-result v10

    #@35
    .end local v9    # "q":I
    .local v10, "q":I
    if-gt v10, v9, :cond_4

    #@37
    move v9, v10

    #@38
    .end local v10    # "q":I
    .restart local v9    # "q":I
    goto :goto_0

    #@39
    .end local v9    # "q":I
    .restart local v10    # "q":I
    :cond_4
    move v8, v10

    #@3a
    .line 3307
    invoke-direct {p0, v10, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    #@3d
    move-result v9

    #@3e
    .end local v10    # "q":I
    .restart local v9    # "q":I
    if-le v9, v10, :cond_2

    #@40
    move v8, v9

    #@41
    .line 3308
    const/16 v1, 0x2e

    #@43
    invoke-direct {p0, v9, v0, v1}, Ljava/net/URI$Parser;->scan(IIC)I

    #@46
    move-result v10

    #@47
    .end local v9    # "q":I
    .restart local v10    # "q":I
    if-gt v10, v9, :cond_5

    #@49
    move v9, v10

    #@4a
    .end local v10    # "q":I
    .restart local v9    # "q":I
    goto :goto_0

    #@4b
    .end local v9    # "q":I
    .restart local v10    # "q":I
    :cond_5
    move v8, v10

    #@4c
    .line 3309
    invoke-direct {p0, v10, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    #@4f
    move-result v9

    #@50
    .end local v10    # "q":I
    .restart local v9    # "q":I
    if-le v9, v10, :cond_2

    #@52
    move v8, v9

    #@53
    .line 3310
    const/16 v1, 0x2e

    #@55
    invoke-direct {p0, v9, v0, v1}, Ljava/net/URI$Parser;->scan(IIC)I

    #@58
    move-result v10

    #@59
    .end local v9    # "q":I
    .restart local v10    # "q":I
    if-gt v10, v9, :cond_6

    #@5b
    move v9, v10

    #@5c
    .end local v10    # "q":I
    .restart local v9    # "q":I
    goto :goto_0

    #@5d
    .end local v9    # "q":I
    .restart local v10    # "q":I
    :cond_6
    move v8, v10

    #@5e
    .line 3311
    invoke-direct {p0, v10, v0}, Ljava/net/URI$Parser;->scanByte(II)I

    #@61
    move-result v9

    #@62
    .end local v10    # "q":I
    .restart local v9    # "q":I
    if-le v9, v10, :cond_2

    #@64
    move v8, v9

    #@65
    .line 3312
    if-lt v9, v0, :cond_2

    #@67
    .line 3313
    return v9
.end method

.method private substring(II)Ljava/lang/String;
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    #@0
    .prologue
    .line 2876
    iget-object v0, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    #@2
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private takeIPv4Address(IILjava/lang/String;)I
    .locals 2
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 3325
    const/4 v1, 0x1

    #@1
    invoke-direct {p0, p1, p2, v1}, Ljava/net/URI$Parser;->scanIPv4Address(IIZ)I

    #@4
    move-result v0

    #@5
    .line 3326
    .local v0, "p":I
    if-gt v0, p1, :cond_0

    #@7
    .line 3327
    invoke-direct {p0, p3, p1}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    #@a
    .line 3328
    :cond_0
    return v0
.end method


# virtual methods
.method parse(Z)V
    .locals 18
    .param p1, "rsa"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    #@0
    .prologue
    .line 3047
    move/from16 v0, p1

    #@2
    move-object/from16 v1, p0

    #@4
    iput-boolean v0, v1, Ljava/net/URI$Parser;->requireServerAuthority:Z

    #@6
    .line 3049
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    #@a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@d
    move-result v15

    #@e
    .line 3050
    .local v15, "n":I
    const-string/jumbo v2, "/?#"

    #@11
    const-string/jumbo v3, ":"

    #@14
    const/4 v6, 0x0

    #@15
    move-object/from16 v0, p0

    #@17
    invoke-direct {v0, v6, v15, v2, v3}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    #@1a
    move-result v16

    #@1b
    .line 3051
    .local v16, "p":I
    if-ltz v16, :cond_5

    #@1d
    const/16 v2, 0x3a

    #@1f
    move-object/from16 v0, p0

    #@21
    move/from16 v1, v16

    #@23
    invoke-direct {v0, v1, v15, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    #@26
    move-result v2

    #@27
    if-eqz v2, :cond_5

    #@29
    .line 3052
    if-nez v16, :cond_0

    #@2b
    .line 3053
    const-string/jumbo v2, "scheme name"

    #@2e
    const/4 v3, 0x0

    #@2f
    move-object/from16 v0, p0

    #@31
    invoke-direct {v0, v2, v3}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    #@34
    .line 3054
    :cond_0
    invoke-static {}, Ljava/net/URI;->-get0()J

    #@37
    move-result-wide v6

    #@38
    const-string/jumbo v8, "scheme name"

    #@3b
    const/4 v3, 0x0

    #@3c
    const-wide/16 v4, 0x0

    #@3e
    move-object/from16 v2, p0

    #@40
    invoke-direct/range {v2 .. v8}, Ljava/net/URI$Parser;->checkChar(IJJLjava/lang/String;)V

    #@43
    .line 3055
    invoke-static {}, Ljava/net/URI;->-get20()J

    #@46
    move-result-wide v6

    #@47
    invoke-static {}, Ljava/net/URI;->-get7()J

    #@4a
    move-result-wide v8

    #@4b
    const-string/jumbo v10, "scheme name"

    #@4e
    const/4 v4, 0x1

    #@4f
    move-object/from16 v3, p0

    #@51
    move/from16 v5, v16

    #@53
    invoke-direct/range {v3 .. v10}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    #@56
    .line 3056
    move-object/from16 v0, p0

    #@58
    iget-object v2, v0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@5a
    const/4 v3, 0x0

    #@5b
    move-object/from16 v0, p0

    #@5d
    move/from16 v1, v16

    #@5f
    invoke-direct {v0, v3, v1}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    #@62
    move-result-object v3

    #@63
    invoke-static {v2, v3}, Ljava/net/URI;->-set6(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    #@66
    .line 3057
    add-int/lit8 v4, v16, 0x1

    #@68
    .line 3058
    .end local v16    # "p":I
    .local v4, "p":I
    move/from16 v17, v4

    #@6a
    .line 3059
    .local v17, "ssp":I
    const/16 v2, 0x2f

    #@6c
    move-object/from16 v0, p0

    #@6e
    invoke-direct {v0, v4, v15, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    #@71
    move-result v2

    #@72
    if-eqz v2, :cond_3

    #@74
    .line 3060
    move-object/from16 v0, p0

    #@76
    invoke-direct {v0, v4, v15}, Ljava/net/URI$Parser;->parseHierarchical(II)I

    #@79
    move-result v4

    #@7a
    .line 3072
    :goto_0
    move-object/from16 v0, p0

    #@7c
    iget-object v2, v0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@7e
    move-object/from16 v0, p0

    #@80
    move/from16 v1, v17

    #@82
    invoke-direct {v0, v1, v4}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    #@85
    move-result-object v3

    #@86
    invoke-static {v2, v3}, Ljava/net/URI;->-set7(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    #@89
    .line 3073
    const/16 v2, 0x23

    #@8b
    move-object/from16 v0, p0

    #@8d
    invoke-direct {v0, v4, v15, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    #@90
    move-result v2

    #@91
    if-eqz v2, :cond_1

    #@93
    .line 3074
    add-int/lit8 v8, v4, 0x1

    #@95
    invoke-static {}, Ljava/net/URI;->-get24()J

    #@98
    move-result-wide v10

    #@99
    invoke-static {}, Ljava/net/URI;->-get11()J

    #@9c
    move-result-wide v12

    #@9d
    const-string/jumbo v14, "fragment"

    #@a0
    move-object/from16 v7, p0

    #@a2
    move v9, v15

    #@a3
    invoke-direct/range {v7 .. v14}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    #@a6
    .line 3075
    move-object/from16 v0, p0

    #@a8
    iget-object v2, v0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    #@aa
    add-int/lit8 v3, v4, 0x1

    #@ac
    move-object/from16 v0, p0

    #@ae
    invoke-direct {v0, v3, v15}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    #@b1
    move-result-object v3

    #@b2
    invoke-static {v2, v3}, Ljava/net/URI;->-set1(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    #@b5
    .line 3076
    move v4, v15

    #@b6
    .line 3078
    :cond_1
    if-ge v4, v15, :cond_2

    #@b8
    .line 3079
    const-string/jumbo v2, "end of URI"

    #@bb
    move-object/from16 v0, p0

    #@bd
    invoke-direct {v0, v2, v4}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    #@c0
    .line 3046
    :cond_2
    return-void

    #@c1
    .line 3062
    :cond_3
    const-string/jumbo v2, ""

    #@c4
    const-string/jumbo v3, "#"

    #@c7
    move-object/from16 v0, p0

    #@c9
    invoke-direct {v0, v4, v15, v2, v3}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    #@cc
    move-result v5

    #@cd
    .line 3063
    .local v5, "q":I
    if-gt v5, v4, :cond_4

    #@cf
    .line 3064
    const-string/jumbo v2, "scheme-specific part"

    #@d2
    move-object/from16 v0, p0

    #@d4
    invoke-direct {v0, v2, v4}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    #@d7
    .line 3065
    :cond_4
    invoke-static {}, Ljava/net/URI;->-get24()J

    #@da
    move-result-wide v6

    #@db
    invoke-static {}, Ljava/net/URI;->-get11()J

    #@de
    move-result-wide v8

    #@df
    const-string/jumbo v10, "opaque part"

    #@e2
    move-object/from16 v3, p0

    #@e4
    invoke-direct/range {v3 .. v10}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    #@e7
    .line 3066
    move v4, v5

    #@e8
    goto :goto_0

    #@e9
    .line 3069
    .end local v4    # "p":I
    .end local v5    # "q":I
    .end local v17    # "ssp":I
    .restart local v16    # "p":I
    :cond_5
    const/16 v17, 0x0

    #@eb
    .line 3070
    .restart local v17    # "ssp":I
    const/4 v2, 0x0

    #@ec
    move-object/from16 v0, p0

    #@ee
    invoke-direct {v0, v2, v15}, Ljava/net/URI$Parser;->parseHierarchical(II)I

    #@f1
    move-result v4

    #@f2
    .end local v16    # "p":I
    .restart local v4    # "p":I
    goto :goto_0
.end method
