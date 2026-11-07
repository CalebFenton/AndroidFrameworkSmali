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
.field private greylist-max-o input:Ljava/lang/String;

.field private greylist-max-o ipv6byteCount:I

.field private greylist-max-o requireServerAuthority:Z

.field final synthetic blacklist this$0:Ljava/net/URI;


# direct methods
.method constructor blacklist <init>(Ljava/net/URI;Ljava/lang/String;)V
    .registers 4
    .param p2, "s"    # Ljava/lang/String;
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

    .line 2887
    iput-object p1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2885
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/net/URI$Parser;->requireServerAuthority:Z

    .line 3509
    iput v0, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 2888
    iput-object p2, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    .line 2889
    invoke-static {p1, p2}, Ljava/net/URI;->-$$Nest$fputstring(Ljava/net/URI;Ljava/lang/String;)V

    .line 2890
    return-void
.end method

.method private greylist-max-o at(IIC)Z
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "c"    # C

    .line 2933
    if-ge p1, p2, :cond_a

    invoke-direct {p0, p1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private greylist-max-o at(IILjava/lang/String;)Z
    .registers 10
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "s"    # Ljava/lang/String;

    .line 2940
    move v0, p1

    .line 2941
    .local v0, "p":I
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 2942
    .local v1, "sn":I
    sub-int v2, p2, v0

    const/4 v3, 0x0

    if-le v1, v2, :cond_b

    .line 2943
    return v3

    .line 2944
    :cond_b
    const/4 v2, 0x0

    .line 2945
    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_20

    .line 2946
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "p":I
    .local v4, "p":I
    invoke-direct {p0, v0}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v0

    invoke-virtual {p3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v0, v5, :cond_1c

    .line 2947
    move v0, v4

    goto :goto_20

    .line 2949
    :cond_1c
    add-int/lit8 v2, v2, 0x1

    move v0, v4

    goto :goto_c

    .line 2951
    .end local v4    # "p":I
    .restart local v0    # "p":I
    :cond_20
    :goto_20
    if-ne v2, v1, :cond_23

    const/4 v3, 0x1

    :cond_23
    return v3
.end method

.method private greylist-max-o charAt(I)C
    .registers 3
    .param p1, "p"    # I

    .line 2927
    iget-object v0, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0
.end method

.method private greylist-max-o checkChar(IJJLjava/lang/String;)V
    .registers 15
    .param p1, "p"    # I
    .param p2, "lowMask"    # J
    .param p4, "highMask"    # J
    .param p6, "what"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3082
    add-int/lit8 v2, p1, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    .end local p1    # "p":I
    .end local p2    # "lowMask":J
    .end local p4    # "highMask":J
    .end local p6    # "what":Ljava/lang/String;
    .local v1, "p":I
    .local v3, "lowMask":J
    .local v5, "highMask":J
    .local v7, "what":Ljava/lang/String;
    invoke-direct/range {v0 .. v7}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3083
    return-void
.end method

.method private greylist-max-o checkChars(IIJJLjava/lang/String;)V
    .registers 12
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

    .line 3070
    invoke-direct/range {p0 .. p6}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    .line 3071
    move-wide v1, p5

    move-wide p4, p3

    move p3, p2

    move p2, p1

    move-object p1, p0

    .end local p1    # "start":I
    .end local p5    # "highMask":J
    .local v0, "p":I
    .local v1, "highMask":J
    .local p2, "start":I
    .local p3, "end":I
    .local p4, "lowMask":J
    if-ge v0, p3, :cond_21

    .line 3072
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal character in "

    invoke-virtual {p6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-direct {p0, p6, v0}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3073
    :cond_21
    return-void
.end method

.method private greylist-max-o fail(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 2895
    new-instance v0, Ljava/net/URISyntaxException;

    iget-object v1, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o fail(Ljava/lang/String;I)V
    .registers 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 2899
    new-instance v0, Ljava/net/URISyntaxException;

    iget-object v1, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method private greylist-max-o failExpecting(Ljava/lang/String;I)V
    .registers 5
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 2905
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 2906
    return-void
.end method

.method private greylist-max-o failExpecting(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "prior"    # Ljava/lang/String;
    .param p3, "p"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 2911
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " following "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 2912
    return-void
.end method

.method private greylist-max-o parseAuthority(II)I
    .registers 15
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3180
    move v2, p1

    .line 3181
    .local v2, "p":I
    move v8, v2

    .line 3182
    .local v8, "q":I
    const/4 v9, 0x0

    .line 3187
    .local v9, "ex":Ljava/net/URISyntaxException;
    const-string v0, ""

    const-string v1, "]"

    invoke-direct {p0, v2, p2, v0, v1}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-le v0, v2, :cond_23

    .line 3189
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_SERVER_PERCENT()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_SERVER_PERCENT()J

    move-result-wide v6

    move-object v1, p0

    move v3, p2

    .end local p2    # "n":I
    .local v3, "n":I
    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result p2

    if-ne p2, v3, :cond_21

    move p2, v10

    goto :goto_22

    :cond_21
    move p2, v11

    .local p2, "serverChars":Z
    :goto_22
    goto :goto_36

    .line 3191
    .end local v3    # "n":I
    .local p2, "n":I
    :cond_23
    move v3, p2

    .end local p2    # "n":I
    .restart local v3    # "n":I
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_SERVER()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_SERVER()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result p2

    if-ne p2, v3, :cond_35

    move p2, v10

    goto :goto_36

    :cond_35
    move p2, v11

    .line 3193
    .local p2, "serverChars":Z
    :goto_36
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_REG_NAME()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_REG_NAME()J

    move-result-wide v6

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result v0

    if-ne v0, v3, :cond_46

    goto :goto_47

    :cond_46
    move v10, v11

    .line 3195
    .local v10, "regChars":Z
    :goto_47
    if-eqz v10, :cond_55

    if-nez p2, :cond_55

    .line 3197
    iget-object v0, v1, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/net/URI;->-$$Nest$fputauthority(Ljava/net/URI;Ljava/lang/String;)V

    .line 3198
    return v3

    .line 3201
    :cond_55
    if-eqz p2, :cond_87

    .line 3206
    :try_start_57
    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->parseServer(II)I

    move-result v0

    move v8, v0

    .line 3207
    if-ge v8, v3, :cond_63

    .line 3208
    const-string v0, "end of authority"

    invoke-direct {p0, v0, v8}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3209
    :cond_63
    iget-object v0, v1, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/net/URI;->-$$Nest$fputauthority(Ljava/net/URI;Ljava/lang/String;)V
    :try_end_6c
    .catch Ljava/net/URISyntaxException; {:try_start_57 .. :try_end_6c} :catch_6d

    .line 3225
    goto :goto_87

    .line 3210
    :catch_6d
    move-exception v0

    .line 3212
    .local v0, "x":Ljava/net/URISyntaxException;
    iget-object v4, v1, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/net/URI;->-$$Nest$fputuserInfo(Ljava/net/URI;Ljava/lang/String;)V

    .line 3213
    iget-object v4, v1, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-static {v4, v5}, Ljava/net/URI;->-$$Nest$fputhost(Ljava/net/URI;Ljava/lang/String;)V

    .line 3214
    iget-object v4, v1, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    const/4 v5, -0x1

    invoke-static {v4, v5}, Ljava/net/URI;->-$$Nest$fputport(Ljava/net/URI;I)V

    .line 3215
    iget-boolean v4, v1, Ljava/net/URI$Parser;->requireServerAuthority:Z

    if-nez v4, :cond_86

    .line 3222
    move-object v9, v0

    .line 3223
    move v8, v2

    goto :goto_87

    .line 3218
    :cond_86
    throw v0

    .line 3228
    .end local v0    # "x":Ljava/net/URISyntaxException;
    :cond_87
    :goto_87
    if-ge v8, v3, :cond_9e

    .line 3229
    if-eqz v10, :cond_95

    .line 3231
    iget-object v0, v1, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/net/URI;->-$$Nest$fputauthority(Ljava/net/URI;Ljava/lang/String;)V

    goto :goto_9e

    .line 3232
    :cond_95
    if-nez v9, :cond_9d

    .line 3237
    const-string v0, "Illegal character in authority"

    invoke-direct {p0, v0, v8}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    goto :goto_9e

    .line 3235
    :cond_9d
    throw v9

    .line 3241
    :cond_9e
    :goto_9e
    return v3
.end method

.method private greylist-max-o parseHierarchical(II)I
    .registers 12
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3143
    move v1, p1

    .line 3144
    .local v1, "p":I
    const/16 v2, 0x2f

    invoke-direct {p0, v1, p2, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v3

    const-string v8, ""

    if-eqz v3, :cond_2a

    add-int/lit8 v3, v1, 0x1

    invoke-direct {p0, v3, p2, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 3145
    add-int/lit8 v1, v1, 0x2

    .line 3146
    const-string v2, "/?#"

    invoke-direct {p0, v1, p2, v8, v2}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3147
    .local v2, "q":I
    if-le v2, v1, :cond_22

    .line 3148
    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->parseAuthority(II)I

    move-result v1

    goto :goto_2a

    .line 3149
    :cond_22
    if-ge v2, p2, :cond_25

    goto :goto_2a

    .line 3153
    :cond_25
    const-string v3, "authority"

    invoke-direct {p0, v3, v1}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3155
    .end local v2    # "q":I
    :cond_2a
    :goto_2a
    const-string v2, "?#"

    invoke-direct {p0, v1, p2, v8, v2}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3156
    .restart local v2    # "q":I
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_PATH()J

    move-result-wide v3

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_PATH()J

    move-result-wide v5

    const-string v7, "path"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3157
    iget-object v3, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/net/URI;->-$$Nest$fputpath(Ljava/net/URI;Ljava/lang/String;)V

    .line 3158
    move v1, v2

    .line 3159
    const/16 v3, 0x3f

    invoke-direct {p0, v1, p2, v3}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 3160
    add-int/lit8 v1, v1, 0x1

    .line 3161
    const-string v3, "#"

    invoke-direct {p0, v1, p2, v8, v3}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3162
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_URIC()J

    move-result-wide v3

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_URIC()J

    move-result-wide v5

    const-string v7, "query"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3163
    iget-object v3, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v1, v2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/net/URI;->-$$Nest$fputquery(Ljava/net/URI;Ljava/lang/String;)V

    .line 3164
    move v1, v2

    .line 3166
    :cond_70
    return v1
.end method

.method private greylist-max-o parseHostname(II)I
    .registers 14
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3416
    move v0, p1

    .line 3418
    .local v0, "p":I
    const/4 v1, -0x1

    move v3, v0

    .line 3430
    .end local v0    # "p":I
    .local v1, "l":I
    .local v3, "p":I
    :goto_3
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_ALPHANUM()J

    move-result-wide v5

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_ALPHANUM()J

    move-result-wide v7

    move-object v2, p0

    move v4, p2

    .end local p2    # "n":I
    .local v4, "n":I
    invoke-direct/range {v2 .. v8}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result p2

    .line 3431
    .local p2, "q":I
    const-string v0, "Illegal character in hostname"

    if-gt p2, v3, :cond_17

    .line 3432
    move-object v2, p0

    goto :goto_62

    .line 3433
    :cond_17
    move v1, v3

    .line 3434
    if-le p2, v3, :cond_55

    .line 3435
    move v5, p2

    .line 3438
    .end local v3    # "p":I
    .local v5, "p":I
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_ALPHANUM()J

    move-result-wide v2

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_DASH()J

    move-result-wide v6

    or-long/2addr v2, v6

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_UNDERSCORE()J

    move-result-wide v6

    or-long v7, v2, v6

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_ALPHANUM()J

    move-result-wide v2

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_DASH()J

    move-result-wide v9

    or-long/2addr v2, v9

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_UNDERSCORE()J

    move-result-wide v9

    or-long/2addr v9, v2

    move v6, v4

    move-object v4, p0

    .end local v4    # "n":I
    .local v6, "n":I
    invoke-direct/range {v4 .. v10}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result p2

    .line 3439
    move-object v2, v4

    move v4, v6

    .end local v6    # "n":I
    .restart local v4    # "n":I
    if-le p2, v5, :cond_53

    .line 3440
    add-int/lit8 v3, p2, -0x1

    invoke-direct {p0, v3}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v3

    const/16 v6, 0x2d

    if-ne v3, v6, :cond_51

    .line 3441
    add-int/lit8 v3, p2, -0x1

    invoke-direct {p0, v0, v3}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3442
    :cond_51
    move v3, p2

    .end local v5    # "p":I
    .restart local v3    # "p":I
    goto :goto_56

    .line 3439
    .end local v3    # "p":I
    .restart local v5    # "p":I
    :cond_53
    move v3, v5

    goto :goto_56

    .line 3434
    .end local v5    # "p":I
    .restart local v3    # "p":I
    :cond_55
    move-object v2, p0

    .line 3445
    :goto_56
    const/16 v5, 0x2e

    invoke-direct {p0, v3, v4, v5}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result p2

    .line 3446
    if-gt p2, v3, :cond_5f

    .line 3447
    goto :goto_62

    .line 3448
    :cond_5f
    move v3, p2

    .line 3449
    if-lt v3, v4, :cond_95

    .line 3451
    :goto_62
    if-ge v3, v4, :cond_6f

    const/16 v5, 0x3a

    invoke-direct {p0, v3, v4, v5}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v5

    if-nez v5, :cond_6f

    .line 3452
    invoke-direct {p0, v0, v3}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3454
    :cond_6f
    if-gez v1, :cond_76

    .line 3455
    const-string v5, "hostname"

    invoke-direct {p0, v5, p1}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3459
    :cond_76
    if-le v1, p1, :cond_8b

    invoke-direct {p0, v1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v5

    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_ALPHA()J

    move-result-wide v8

    invoke-static {v5, v6, v7, v8, v9}, Ljava/net/URI;->-$$Nest$smmatch(CJJ)Z

    move-result v5

    if-nez v5, :cond_8b

    .line 3460
    invoke-direct {p0, v0, v1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3463
    :cond_8b
    iget-object v0, v2, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Ljava/net/URI;->-$$Nest$fputhost(Ljava/net/URI;Ljava/lang/String;)V

    .line 3464
    return v3

    .line 3449
    :cond_95
    move p2, v4

    goto/16 :goto_3
.end method

.method private greylist-max-o parseIPv4Address(II)I
    .registers 6
    .param p1, "start"    # I
    .param p2, "n"    # I

    .line 3385
    const/4 v0, 0x0

    const/4 v1, -0x1

    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Ljava/net/URI$Parser;->scanIPv4Address(IIZ)I

    move-result v0
    :try_end_6
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_6} :catch_22
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_6} :catch_20

    .line 3390
    .local v0, "p":I
    nop

    .line 3392
    if-le v0, p1, :cond_14

    if-ge v0, p2, :cond_14

    .line 3396
    invoke-direct {p0, v0}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_14

    .line 3397
    const/4 v0, -0x1

    .line 3401
    :cond_14
    if-le v0, p1, :cond_1f

    .line 3402
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, p1, v0}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URI;->-$$Nest$fputhost(Ljava/net/URI;Ljava/lang/String;)V

    .line 3404
    :cond_1f
    return v0

    .line 3388
    .end local v0    # "p":I
    :catch_20
    move-exception v0

    .line 3389
    .local v0, "nfe":Ljava/lang/NumberFormatException;
    return v1

    .line 3386
    .end local v0    # "nfe":Ljava/lang/NumberFormatException;
    :catch_22
    move-exception v0

    .line 3387
    .local v0, "x":Ljava/net/URISyntaxException;
    return v1
.end method

.method private greylist-max-o parseIPv6Reference(II)I
    .registers 9
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3514
    move v0, p1

    .line 3516
    .local v0, "p":I
    const/4 v1, 0x0

    .line 3518
    .local v1, "compressedZeros":Z
    invoke-direct {p0, v0, p2}, Ljava/net/URI$Parser;->scanHexSeq(II)I

    move-result v2

    .line 3520
    .local v2, "q":I
    const-string v3, "::"

    if-le v2, v0, :cond_30

    .line 3521
    move v0, v2

    .line 3522
    invoke-direct {p0, v0, p2, v3}, Ljava/net/URI$Parser;->at(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3523
    const/4 v1, 0x1

    .line 3524
    add-int/lit8 v3, v0, 0x2

    invoke-direct {p0, v3, p2}, Ljava/net/URI$Parser;->scanHexPost(II)I

    move-result v0

    goto :goto_3d

    .line 3525
    :cond_19
    const/16 v3, 0x3a

    invoke-direct {p0, v0, p2, v3}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 3526
    add-int/lit8 v3, v0, 0x1

    const-string v4, "IPv4 address"

    invoke-direct {p0, v3, p2, v4}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    move-result v0

    .line 3527
    iget v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v3, v3, 0x4

    iput v3, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    goto :goto_3d

    .line 3529
    :cond_30
    invoke-direct {p0, v0, p2, v3}, Ljava/net/URI$Parser;->at(IILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    .line 3530
    const/4 v1, 0x1

    .line 3531
    add-int/lit8 v3, v0, 0x2

    invoke-direct {p0, v3, p2}, Ljava/net/URI$Parser;->scanHexPost(II)I

    move-result v0

    .line 3533
    :cond_3d
    :goto_3d
    const-string v3, "Malformed IPv6 address"

    if-ge v0, p2, :cond_44

    .line 3534
    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3535
    :cond_44
    iget v4, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    const/16 v5, 0x10

    if-le v4, v5, :cond_4f

    .line 3536
    const-string v4, "IPv6 address too long"

    invoke-direct {p0, v4, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3537
    :cond_4f
    if-nez v1, :cond_5a

    iget v4, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    if-ge v4, v5, :cond_5a

    .line 3538
    const-string v4, "IPv6 address too short"

    invoke-direct {p0, v4, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3539
    :cond_5a
    if-eqz v1, :cond_63

    iget v4, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    if-ne v4, v5, :cond_63

    .line 3540
    invoke-direct {p0, v3, p1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3542
    :cond_63
    return v0
.end method

.method private greylist-max-o parseServer(II)I
    .registers 14
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3250
    move v2, p1

    .line 3254
    .local v2, "p":I
    const-string v0, "@"

    const-string v9, "/?#"

    invoke-direct {p0, v2, p2, v9, v0}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3255
    .local v3, "q":I
    if-lt v3, v2, :cond_2c

    const/16 v0, 0x40

    invoke-direct {p0, v3, p2, v0}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 3256
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_USERINFO()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_USERINFO()J

    move-result-wide v6

    const-string v8, "user info"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3257
    iget-object v0, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Ljava/net/URI;->-$$Nest$fputuserInfo(Ljava/net/URI;Ljava/lang/String;)V

    .line 3258
    add-int/lit8 v2, v3, 0x1

    .line 3262
    :cond_2c
    const/16 v0, 0x5b

    invoke-direct {p0, v2, p2, v0}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v0

    const-string v10, ""

    if-eqz v0, :cond_86

    .line 3264
    add-int/lit8 v0, v2, 0x1

    .line 3265
    .end local v2    # "p":I
    .local v0, "p":I
    const-string v2, "]"

    invoke-direct {p0, v0, p2, v9, v2}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3266
    if-le v3, v0, :cond_80

    const/16 v2, 0x5d

    invoke-direct {p0, v3, p2, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_80

    .line 3268
    const-string v2, "%"

    invoke-direct {p0, v0, v3, v10, v2}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 3269
    .local v9, "r":I
    if-le v9, v0, :cond_6d

    .line 3270
    invoke-direct {p0, v0, v9}, Ljava/net/URI$Parser;->parseIPv6Reference(II)I

    .line 3271
    add-int/lit8 v2, v9, 0x1

    if-ne v2, v3, :cond_5c

    .line 3272
    const-string v2, "scope id expected"

    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;)V

    .line 3276
    :cond_5c
    add-int/lit8 v2, v9, 0x1

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_SCOPE_ID()J

    move-result-wide v4

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_SCOPE_ID()J

    move-result-wide v6

    const-string v8, "scope id"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    goto :goto_70

    .line 3279
    :cond_6d
    invoke-direct {p0, v0, v3}, Ljava/net/URI$Parser;->parseIPv6Reference(II)I

    .line 3281
    :goto_70
    iget-object v2, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    add-int/lit8 v4, v0, -0x1

    add-int/lit8 v5, v3, 0x1

    invoke-direct {p0, v4, v5}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/net/URI;->-$$Nest$fputhost(Ljava/net/URI;Ljava/lang/String;)V

    .line 3282
    add-int/lit8 v0, v3, 0x1

    .line 3283
    .end local v9    # "r":I
    goto :goto_94

    .line 3284
    :cond_80
    const-string v2, "closing bracket for IPv6 address"

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    goto :goto_94

    .line 3287
    .end local v0    # "p":I
    .restart local v2    # "p":I
    :cond_86
    invoke-direct {p0, v2, p2}, Ljava/net/URI$Parser;->parseIPv4Address(II)I

    move-result v0

    .line 3288
    .end local v3    # "q":I
    .local v0, "q":I
    if-gt v0, v2, :cond_92

    .line 3289
    invoke-direct {p0, v2, p2}, Ljava/net/URI$Parser;->parseHostname(II)I

    move-result v0

    move v3, v0

    goto :goto_93

    .line 3288
    :cond_92
    move v3, v0

    .line 3290
    .end local v0    # "q":I
    .restart local v3    # "q":I
    :goto_93
    move v0, v3

    .line 3294
    .end local v2    # "p":I
    .local v0, "p":I
    :goto_94
    const/16 v2, 0x3a

    invoke-direct {p0, v0, p2, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 3295
    add-int/lit8 v2, v0, 0x1

    .line 3296
    .end local v0    # "p":I
    .restart local v2    # "p":I
    const-string v0, "/"

    invoke-direct {p0, v2, p2, v10, v0}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 3297
    if-le v3, v2, :cond_c8

    .line 3298
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_DIGIT()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-string v8, "port number"

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3300
    :try_start_b2
    iget-object v0, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v2, v3}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v0, v4}, Ljava/net/URI;->-$$Nest$fputport(Ljava/net/URI;I)V
    :try_end_bf
    .catch Ljava/lang/NumberFormatException; {:try_start_b2 .. :try_end_bf} :catch_c0

    .line 3303
    goto :goto_c6

    .line 3301
    :catch_c0
    move-exception v0

    .line 3302
    .local v0, "x":Ljava/lang/NumberFormatException;
    const-string v4, "Malformed port number"

    invoke-direct {p0, v4, v2}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3304
    .end local v0    # "x":Ljava/lang/NumberFormatException;
    :goto_c6
    move v0, v3

    .end local v2    # "p":I
    .local v0, "p":I
    goto :goto_c9

    .line 3297
    .end local v0    # "p":I
    .restart local v2    # "p":I
    :cond_c8
    move v0, v2

    .line 3307
    .end local v2    # "p":I
    .restart local v0    # "p":I
    :cond_c9
    :goto_c9
    if-ge v0, p2, :cond_d0

    .line 3308
    const-string v2, "port number"

    invoke-direct {p0, v2, v0}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3310
    :cond_d0
    return v0
.end method

.method private greylist-max-o scan(IIC)I
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "c"    # C

    .line 2986
    if-ge p1, p2, :cond_b

    invoke-direct {p0, p1}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v0

    if-ne v0, p3, :cond_b

    .line 2987
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 2988
    :cond_b
    return p1
.end method

.method private greylist-max-o scan(IIJJ)I
    .registers 13
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "lowMask"    # J
    .param p5, "highMask"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3044
    move v0, p1

    .line 3045
    .local v0, "p":I
    :goto_1
    if-ge v0, p2, :cond_22

    .line 3046
    invoke-direct {p0, v0}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    .line 3047
    .local v1, "c":C
    invoke-static {v1, p3, p4, p5, p6}, Ljava/net/URI;->-$$Nest$smmatch(CJJ)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 3048
    add-int/lit8 v0, v0, 0x1

    .line 3049
    goto :goto_1

    .line 3051
    :cond_10
    const-wide/16 v2, 0x1

    and-long/2addr v2, p3

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_22

    .line 3052
    invoke-direct {p0, v0, p2, v1}, Ljava/net/URI$Parser;->scanEscape(IIC)I

    move-result v2

    .line 3053
    .local v2, "q":I
    if-le v2, v0, :cond_21

    .line 3054
    move v0, v2

    .line 3055
    goto :goto_1

    .line 3057
    .end local v2    # "q":I
    :cond_21
    nop

    .line 3060
    .end local v1    # "c":C
    :cond_22
    return v0
.end method

.method private greylist-max-o scan(IILjava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "err"    # Ljava/lang/String;
    .param p4, "stop"    # Ljava/lang/String;

    .line 2999
    move v0, p1

    .line 3000
    .local v0, "p":I
    :goto_1
    if-ge v0, p2, :cond_1a

    .line 3001
    invoke-direct {p0, v0}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v1

    .line 3002
    .local v1, "c":C
    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_f

    .line 3003
    const/4 v2, -0x1

    return v2

    .line 3004
    :cond_f
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_16

    .line 3005
    goto :goto_1a

    .line 3006
    :cond_16
    nop

    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    .line 3007
    goto :goto_1

    .line 3008
    :cond_1a
    :goto_1a
    return v0
.end method

.method private greylist-max-o scanByte(II)I
    .registers 10
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3318
    move v1, p1

    .line 3319
    .local v1, "p":I
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_DIGIT()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    move-object v0, p0

    move v2, p2

    .end local p2    # "n":I
    .local v2, "n":I
    invoke-direct/range {v0 .. v6}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result p2

    .line 3320
    .local p2, "q":I
    if-gt p2, v1, :cond_10

    return p2

    .line 3321
    :cond_10
    invoke-direct {p0, v1, p2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0xff

    if-le v3, v4, :cond_1d

    return v1

    .line 3322
    :cond_1d
    return p2
.end method

.method private greylist-max-o scanEscape(IIC)I
    .registers 11
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "first"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3020
    move v0, p1

    .line 3021
    .local v0, "p":I
    move v1, p3

    .line 3022
    .local v1, "c":C
    const/16 v2, 0x25

    if-ne v1, v2, :cond_3b

    .line 3024
    add-int/lit8 v2, v0, 0x3

    if-gt v2, p2, :cond_35

    add-int/lit8 v2, v0, 0x1

    .line 3025
    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v2

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_HEX()J

    move-result-wide v3

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_HEX()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Ljava/net/URI;->-$$Nest$smmatch(CJJ)Z

    move-result v2

    if-eqz v2, :cond_35

    add-int/lit8 v2, v0, 0x2

    .line 3026
    invoke-direct {p0, v2}, Ljava/net/URI$Parser;->charAt(I)C

    move-result v2

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_HEX()J

    move-result-wide v3

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_HEX()J

    move-result-wide v5

    invoke-static {v2, v3, v4, v5, v6}, Ljava/net/URI;->-$$Nest$smmatch(CJJ)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 3027
    add-int/lit8 v2, v0, 0x3

    return v2

    .line 3029
    :cond_35
    const-string v2, "Malformed escape pair"

    invoke-direct {p0, v2, v0}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    goto :goto_4e

    .line 3030
    :cond_3b
    const/16 v2, 0x80

    if-le v1, v2, :cond_4e

    .line 3031
    invoke-static {v1}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 3032
    invoke-static {v1}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-nez v2, :cond_4e

    .line 3034
    add-int/lit8 v2, v0, 0x1

    return v2

    .line 3036
    :cond_4e
    :goto_4e
    return v0
.end method

.method private greylist-max-o scanHexPost(II)I
    .registers 7
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3548
    move v0, p1

    .line 3551
    .local v0, "p":I
    if-ne v0, p2, :cond_4

    .line 3552
    return v0

    .line 3554
    :cond_4
    invoke-direct {p0, v0, p2}, Ljava/net/URI$Parser;->scanHexSeq(II)I

    move-result v1

    .line 3555
    .local v1, "q":I
    const-string v2, "hex digits or IPv4 address"

    if-le v1, v0, :cond_22

    .line 3556
    move v0, v1

    .line 3557
    const/16 v3, 0x3a

    invoke-direct {p0, v0, p2, v3}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v3

    if-eqz v3, :cond_2c

    .line 3558
    add-int/lit8 v0, v0, 0x1

    .line 3559
    invoke-direct {p0, v0, p2, v2}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    move-result v0

    .line 3560
    iget v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    goto :goto_2c

    .line 3563
    :cond_22
    invoke-direct {p0, v0, p2, v2}, Ljava/net/URI$Parser;->takeIPv4Address(IILjava/lang/String;)I

    move-result v0

    .line 3564
    iget v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 3566
    :cond_2c
    :goto_2c
    return v0
.end method

.method private greylist-max-o scanHexSeq(II)I
    .registers 15
    .param p1, "start"    # I
    .param p2, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3574
    move v1, p1

    .line 3577
    .local v1, "p":I
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_HEX()J

    move-result-wide v3

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_HEX()J

    move-result-wide v5

    move-object v0, p0

    move v2, p2

    .end local p2    # "n":I
    .local v2, "n":I
    invoke-direct/range {v0 .. v6}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result p2

    .line 3578
    .local p2, "q":I
    const/4 v9, -0x1

    if-gt p2, v1, :cond_13

    .line 3579
    return v9

    .line 3580
    :cond_13
    const/16 v10, 0x2e

    invoke-direct {p0, p2, v2, v10}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 3581
    return v9

    .line 3582
    :cond_1c
    add-int/lit8 v3, v1, 0x4

    const-string v11, "IPv6 hexadecimal digit sequence too long"

    if-le p2, v3, :cond_25

    .line 3583
    invoke-direct {p0, v11, v1}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3584
    :cond_25
    iget v3, v0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v3, v3, 0x2

    iput v3, v0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 3585
    move v1, p2

    .line 3586
    :goto_2c
    if-ge v1, v2, :cond_70

    .line 3587
    const/16 v3, 0x3a

    invoke-direct {p0, v1, v2, v3}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v4

    if-nez v4, :cond_37

    .line 3588
    goto :goto_70

    .line 3589
    :cond_37
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4, v2, v3}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 3590
    goto :goto_70

    .line 3591
    :cond_40
    add-int/lit8 v3, v1, 0x1

    .line 3592
    .end local v1    # "p":I
    .local v3, "p":I
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_HEX()J

    move-result-wide v5

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_HEX()J

    move-result-wide v7

    move v4, v2

    move-object v2, v0

    .end local v2    # "n":I
    .local v4, "n":I
    invoke-direct/range {v2 .. v8}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result p2

    .line 3593
    move v2, v4

    .end local v4    # "n":I
    .restart local v2    # "n":I
    if-gt p2, v3, :cond_58

    .line 3594
    const-string v1, "digits for an IPv6 address"

    invoke-direct {p0, v1, v3}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3595
    :cond_58
    invoke-direct {p0, p2, v2, v10}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 3596
    add-int/lit8 v1, v3, -0x1

    .line 3597
    .end local v3    # "p":I
    .restart local v1    # "p":I
    goto :goto_70

    .line 3599
    .end local v1    # "p":I
    .restart local v3    # "p":I
    :cond_61
    add-int/lit8 v1, v3, 0x4

    if-le p2, v1, :cond_68

    .line 3600
    invoke-direct {p0, v11, v3}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3601
    :cond_68
    iget v1, v0, Ljava/net/URI$Parser;->ipv6byteCount:I

    add-int/lit8 v1, v1, 0x2

    iput v1, v0, Ljava/net/URI$Parser;->ipv6byteCount:I

    .line 3602
    move v1, p2

    .end local v3    # "p":I
    .restart local v1    # "p":I
    goto :goto_2c

    .line 3605
    :cond_70
    :goto_70
    return v1
.end method

.method private greylist-max-o scanIPv4Address(IIZ)I
    .registers 13
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "strict"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3343
    move v1, p1

    .line 3345
    .local v1, "p":I
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_DIGIT()J

    move-result-wide v2

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_DOT()J

    move-result-wide v4

    or-long v3, v2, v4

    const-wide/16 v5, 0x0

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_DOT()J

    move-result-wide v7

    or-long/2addr v5, v7

    move-object v0, p0

    move v2, p2

    .end local p2    # "n":I
    .local v2, "n":I
    invoke-direct/range {v0 .. v6}, Ljava/net/URI$Parser;->scan(IIJJ)I

    move-result p2

    .line 3346
    .local p2, "m":I
    const/4 v3, -0x1

    if-le p2, v1, :cond_6a

    if-eqz p3, :cond_20

    if-eq p2, v2, :cond_20

    goto :goto_6a

    .line 3351
    :cond_20
    invoke-direct {p0, v1, p2}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v4

    move v5, v4

    .local v5, "q":I
    if-gt v4, v1, :cond_28

    goto :goto_63

    :cond_28
    move v1, v5

    .line 3352
    const/16 v4, 0x2e

    invoke-direct {p0, v1, p2, v4}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v6

    move v5, v6

    if-gt v6, v1, :cond_33

    goto :goto_63

    :cond_33
    move v1, v5

    .line 3353
    invoke-direct {p0, v1, p2}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v6

    move v5, v6

    if-gt v6, v1, :cond_3c

    goto :goto_63

    :cond_3c
    move v1, v5

    .line 3354
    invoke-direct {p0, v1, p2, v4}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v6

    move v5, v6

    if-gt v6, v1, :cond_45

    goto :goto_63

    :cond_45
    move v1, v5

    .line 3355
    invoke-direct {p0, v1, p2}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v6

    move v5, v6

    if-gt v6, v1, :cond_4e

    goto :goto_63

    :cond_4e
    move v1, v5

    .line 3356
    invoke-direct {p0, v1, p2, v4}, Ljava/net/URI$Parser;->scan(IIC)I

    move-result v4

    move v5, v4

    if-gt v4, v1, :cond_57

    goto :goto_63

    :cond_57
    move v1, v5

    .line 3357
    invoke-direct {p0, v1, p2}, Ljava/net/URI$Parser;->scanByte(II)I

    move-result v4

    move v5, v4

    if-gt v4, v1, :cond_60

    goto :goto_63

    :cond_60
    move v1, v5

    .line 3358
    if-ge v5, p2, :cond_69

    .line 3361
    :goto_63
    const-string v4, "Malformed IPv4 address"

    invoke-direct {p0, v4, v5}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3362
    return v3

    .line 3359
    :cond_69
    return v5

    .line 3347
    .end local v5    # "q":I
    :cond_6a
    :goto_6a
    return v3
.end method

.method private greylist-max-o substring(II)Ljava/lang/String;
    .registers 4
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 2920
    iget-object v0, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o takeIPv4Address(IILjava/lang/String;)I
    .registers 5
    .param p1, "start"    # I
    .param p2, "n"    # I
    .param p3, "expected"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3371
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljava/net/URI$Parser;->scanIPv4Address(IIZ)I

    move-result v0

    .line 3372
    .local v0, "p":I
    if-gt v0, p1, :cond_a

    .line 3373
    invoke-direct {p0, p3, p1}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3374
    :cond_a
    return v0
.end method


# virtual methods
.method greylist-max-o parse(Z)V
    .registers 13
    .param p1, "rsa"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .line 3091
    iput-boolean p1, p0, Ljava/net/URI$Parser;->requireServerAuthority:Z

    .line 3093
    iget-object v1, p0, Ljava/net/URI$Parser;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    .line 3094
    .local v8, "n":I
    const-string v1, "/?#"

    const-string v2, ":"

    const/4 v9, 0x0

    invoke-direct {p0, v9, v8, v1, v2}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 3095
    .local v7, "p":I
    if-ltz v7, :cond_7a

    const/16 v1, 0x3a

    invoke-direct {p0, v7, v8, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 3096
    if-nez v7, :cond_22

    .line 3097
    const-string v1, "scheme name"

    invoke-direct {p0, v1, v9}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3098
    :cond_22
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_ALPHA()J

    move-result-wide v4

    const-string v6, "scheme name"

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Ljava/net/URI$Parser;->checkChar(IJJLjava/lang/String;)V

    .line 3099
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_SCHEME()J

    move-result-wide v3

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_SCHEME()J

    move-result-wide v5

    move v2, v7

    .end local v7    # "p":I
    .local v2, "p":I
    const-string v7, "scheme name"

    const/4 v1, 0x1

    invoke-direct/range {v0 .. v7}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3100
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v9, v2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/net/URI;->-$$Nest$fputscheme(Ljava/net/URI;Ljava/lang/String;)V

    .line 3101
    add-int/lit8 v1, v2, 0x1

    .line 3102
    .end local v2    # "p":I
    .local v1, "p":I
    move v9, v1

    .line 3103
    .local v9, "ssp":I
    const/16 v2, 0x2f

    invoke-direct {p0, v1, v8, v2}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 3104
    invoke-direct {p0, v1, v8}, Ljava/net/URI$Parser;->parseHierarchical(II)I

    move-result v1

    move v10, v9

    move v9, v1

    goto :goto_82

    .line 3106
    :cond_59
    const-string v2, ""

    const-string v3, "#"

    invoke-direct {p0, v1, v8, v2, v3}, Ljava/net/URI$Parser;->scan(IILjava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 3107
    .local v2, "q":I
    if-gt v2, v1, :cond_68

    .line 3108
    const-string v3, "scheme-specific part"

    invoke-direct {p0, v3, v1}, Ljava/net/URI$Parser;->failExpecting(Ljava/lang/String;I)V

    .line 3109
    :cond_68
    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_URIC()J

    move-result-wide v3

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_URIC()J

    move-result-wide v5

    const-string v7, "opaque part"

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3110
    move v1, v2

    .line 3111
    .end local v2    # "q":I
    move v10, v9

    move v9, v1

    goto :goto_82

    .line 3095
    .end local v1    # "p":I
    .end local v9    # "ssp":I
    .restart local v7    # "p":I
    :cond_7a
    move v2, v7

    .line 3113
    .end local v7    # "p":I
    .local v2, "p":I
    const/4 v1, 0x0

    .line 3114
    .local v1, "ssp":I
    invoke-direct {p0, v9, v8}, Ljava/net/URI$Parser;->parseHierarchical(II)I

    move-result v2

    move v10, v1

    move v9, v2

    .line 3116
    .end local v1    # "ssp":I
    .end local v2    # "p":I
    .local v9, "p":I
    .local v10, "ssp":I
    :goto_82
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    invoke-direct {p0, v10, v9}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/net/URI;->-$$Nest$fputschemeSpecificPart(Ljava/net/URI;Ljava/lang/String;)V

    .line 3117
    const/16 v1, 0x23

    invoke-direct {p0, v9, v8, v1}, Ljava/net/URI$Parser;->at(IIC)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 3118
    add-int/lit8 v1, v9, 0x1

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetL_URIC()J

    move-result-wide v3

    invoke-static {}, Ljava/net/URI;->-$$Nest$sfgetH_URIC()J

    move-result-wide v5

    const-string v7, "fragment"

    move-object v0, p0

    move v2, v8

    .end local v8    # "n":I
    .local v2, "n":I
    invoke-direct/range {v0 .. v7}, Ljava/net/URI$Parser;->checkChars(IIJJLjava/lang/String;)V

    .line 3119
    iget-object v1, p0, Ljava/net/URI$Parser;->this$0:Ljava/net/URI;

    add-int/lit8 v3, v9, 0x1

    invoke-direct {p0, v3, v2}, Ljava/net/URI$Parser;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Ljava/net/URI;->-$$Nest$fputfragment(Ljava/net/URI;Ljava/lang/String;)V

    .line 3120
    move v9, v2

    goto :goto_b2

    .line 3117
    .end local v2    # "n":I
    .restart local v8    # "n":I
    :cond_b1
    move v2, v8

    .line 3122
    .end local v8    # "n":I
    .restart local v2    # "n":I
    :goto_b2
    if-ge v9, v2, :cond_b9

    .line 3123
    const-string v1, "end of URI"

    invoke-direct {p0, v1, v9}, Ljava/net/URI$Parser;->fail(Ljava/lang/String;I)V

    .line 3124
    :cond_b9
    return-void
.end method
