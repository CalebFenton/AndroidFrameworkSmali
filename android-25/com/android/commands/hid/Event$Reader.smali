.class public Lcom/android/commands/hid/Event$Reader;
.super Ljava/lang/Object;
.source "Event.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/hid/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Reader"
.end annotation


# instance fields
.field private mReader:Landroid/util/JsonReader;


# direct methods
.method public constructor <init>(Ljava/io/InputStreamReader;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStreamReader;

    #@0
    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 154
    new-instance v0, Landroid/util/JsonReader;

    #@5
    invoke-direct {v0, p1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    #@8
    iput-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@a
    .line 155
    iget-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@c
    const/4 v1, 0x1

    #@d
    invoke-virtual {v0, v1}, Landroid/util/JsonReader;->setLenient(Z)V

    #@10
    .line 153
    return-void
.end method

.method private consumeRemainingElements()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 238
    :goto_0
    iget-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@2
    invoke-virtual {v0}, Landroid/util/JsonReader;->hasNext()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    .line 239
    iget-object v0, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@a
    invoke-virtual {v0}, Landroid/util/JsonReader;->skipValue()V

    #@d
    goto :goto_0

    #@e
    .line 237
    :cond_0
    return-void
.end method

.method private readData()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 209
    new-instance v1, Ljava/util/ArrayList;

    #@2
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    #@5
    .line 211
    .local v1, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_0
    iget-object v5, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@7
    invoke-virtual {v5}, Landroid/util/JsonReader;->beginArray()V

    #@a
    .line 212
    :goto_0
    iget-object v5, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@c
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    #@f
    move-result v5

    #@10
    if-eqz v5, :cond_0

    #@12
    .line 213
    iget-object v5, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@14
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    #@17
    move-result-object v5

    #@18
    invoke-static {v5}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@1b
    move-result-object v5

    #@1c
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    goto :goto_0

    #@20
    .line 216
    :catch_0
    move-exception v2

    #@21
    .line 217
    .local v2, "e":Ljava/lang/RuntimeException;
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->consumeRemainingElements()V

    #@24
    .line 218
    iget-object v5, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@26
    invoke-virtual {v5}, Landroid/util/JsonReader;->endArray()V

    #@29
    .line 219
    new-instance v5, Ljava/lang/IllegalStateException;

    #@2b
    const-string/jumbo v6, "Encountered malformed data."

    #@2e
    invoke-direct {v5, v6, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@31
    throw v5

    #@32
    .line 215
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@34
    invoke-virtual {v5}, Landroid/util/JsonReader;->endArray()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@37
    .line 221
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@3a
    move-result v5

    #@3b
    new-array v4, v5, [B

    #@3d
    .line 222
    .local v4, "rawData":[B
    const/4 v3, 0x0

    #@3e
    .local v3, "i":I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    #@41
    move-result v5

    #@42
    if-ge v3, v5, :cond_2

    #@44
    .line 223
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@47
    move-result-object v5

    #@48
    check-cast v5, Ljava/lang/Integer;

    #@4a
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    #@4d
    move-result v0

    #@4e
    .line 224
    .local v0, "d":I
    and-int/lit16 v5, v0, 0xff

    #@50
    if-eq v5, v0, :cond_1

    #@52
    .line 225
    new-instance v5, Ljava/lang/IllegalStateException;

    #@54
    const-string/jumbo v6, "Invalid data, all values must be byte-sized"

    #@57
    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v5

    #@5b
    .line 227
    :cond_1
    int-to-byte v5, v0

    #@5c
    aput-byte v5, v4, v3

    #@5e
    .line 222
    add-int/lit8 v3, v3, 0x1

    #@60
    goto :goto_1

    #@61
    .line 229
    .end local v0    # "d":I
    :cond_2
    return-object v4
.end method

.method private readInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@2
    invoke-virtual {v1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    .line 234
    .local v0, "val":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@d
    move-result v1

    #@e
    return v1
.end method


# virtual methods
.method public getNextEvent()Lcom/android/commands/hid/Event;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 159
    const/4 v0, 0x0

    #@1
    .line 160
    :goto_0
    if-nez v0, :cond_9

    #@3
    iget-object v4, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@5
    invoke-virtual {v4}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    #@8
    move-result-object v4

    #@9
    sget-object v5, Landroid/util/JsonToken;->END_DOCUMENT:Landroid/util/JsonToken;

    #@b
    if-eq v4, v5, :cond_9

    #@d
    .line 161
    new-instance v1, Lcom/android/commands/hid/Event$Builder;

    #@f
    invoke-direct {v1}, Lcom/android/commands/hid/Event$Builder;-><init>()V

    #@12
    .line 163
    .local v1, "eb":Lcom/android/commands/hid/Event$Builder;
    :try_start_0
    iget-object v4, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@14
    invoke-virtual {v4}, Landroid/util/JsonReader;->beginObject()V

    #@17
    .line 164
    :goto_1
    iget-object v4, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@19
    invoke-virtual {v4}, Landroid/util/JsonReader;->hasNext()Z

    #@1c
    move-result v4

    #@1d
    if-eqz v4, :cond_8

    #@1f
    .line 165
    iget-object v4, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@21
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    #@24
    move-result-object v3

    #@25
    .line 166
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v4, "id"

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_0

    #@2e
    .line 168
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readInt()I

    #@31
    move-result v4

    #@32
    invoke-virtual {v1, v4}, Lcom/android/commands/hid/Event$Builder;->setId(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@35
    goto :goto_1

    #@36
    .line 196
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@37
    .line 197
    .local v2, "ex":Ljava/lang/IllegalStateException;
    const-string/jumbo v4, "Error reading in object, ignoring."

    #@3a
    invoke-static {v4, v2}, Lcom/android/commands/hid/Event;->-wrap0(Ljava/lang/String;Ljava/lang/Exception;)V

    #@3d
    .line 198
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->consumeRemainingElements()V

    #@40
    .line 199
    iget-object v4, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@42
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V

    #@45
    goto :goto_0

    #@46
    .line 166
    .end local v2    # "ex":Ljava/lang/IllegalStateException;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string/jumbo v4, "command"

    #@49
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4c
    move-result v4

    #@4d
    if-eqz v4, :cond_1

    #@4f
    .line 171
    iget-object v4, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@51
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    invoke-static {v1, v4}, Lcom/android/commands/hid/Event$Builder;->-wrap0(Lcom/android/commands/hid/Event$Builder;Ljava/lang/String;)V

    #@58
    goto :goto_1

    #@59
    .line 166
    :cond_1
    const-string/jumbo v4, "descriptor"

    #@5c
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v4

    #@60
    if-eqz v4, :cond_2

    #@62
    .line 174
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readData()[B

    #@65
    move-result-object v4

    #@66
    invoke-virtual {v1, v4}, Lcom/android/commands/hid/Event$Builder;->setDescriptor([B)V

    #@69
    goto :goto_1

    #@6a
    .line 166
    :cond_2
    const-string/jumbo v4, "name"

    #@6d
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@70
    move-result v4

    #@71
    if-eqz v4, :cond_3

    #@73
    .line 177
    iget-object v4, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@75
    invoke-virtual {v4}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    #@78
    move-result-object v4

    #@79
    invoke-virtual {v1, v4}, Lcom/android/commands/hid/Event$Builder;->setName(Ljava/lang/String;)V

    #@7c
    goto :goto_1

    #@7d
    .line 166
    :cond_3
    const-string/jumbo v4, "vid"

    #@80
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@83
    move-result v4

    #@84
    if-eqz v4, :cond_4

    #@86
    .line 180
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readInt()I

    #@89
    move-result v4

    #@8a
    invoke-virtual {v1, v4}, Lcom/android/commands/hid/Event$Builder;->setVid(I)V

    #@8d
    goto :goto_1

    #@8e
    .line 166
    :cond_4
    const-string/jumbo v4, "pid"

    #@91
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@94
    move-result v4

    #@95
    if-eqz v4, :cond_5

    #@97
    .line 183
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readInt()I

    #@9a
    move-result v4

    #@9b
    invoke-virtual {v1, v4}, Lcom/android/commands/hid/Event$Builder;->setPid(I)V

    #@9e
    goto/16 :goto_1

    #@a0
    .line 166
    :cond_5
    const-string/jumbo v4, "report"

    #@a3
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a6
    move-result v4

    #@a7
    if-eqz v4, :cond_6

    #@a9
    .line 186
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readData()[B

    #@ac
    move-result-object v4

    #@ad
    invoke-virtual {v1, v4}, Lcom/android/commands/hid/Event$Builder;->setReport([B)V

    #@b0
    goto/16 :goto_1

    #@b2
    .line 166
    :cond_6
    const-string/jumbo v4, "duration"

    #@b5
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b8
    move-result v4

    #@b9
    if-eqz v4, :cond_7

    #@bb
    .line 189
    invoke-direct {p0}, Lcom/android/commands/hid/Event$Reader;->readInt()I

    #@be
    move-result v4

    #@bf
    invoke-virtual {v1, v4}, Lcom/android/commands/hid/Event$Builder;->setDuration(I)V

    #@c2
    goto/16 :goto_1

    #@c4
    .line 192
    :cond_7
    iget-object v4, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@c6
    invoke-virtual {v4}, Landroid/util/JsonReader;->skipValue()V

    #@c9
    goto/16 :goto_1

    #@cb
    .line 195
    .end local v3    # "name":Ljava/lang/String;
    :cond_8
    iget-object v4, p0, Lcom/android/commands/hid/Event$Reader;->mReader:Landroid/util/JsonReader;

    #@cd
    invoke-virtual {v4}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    #@d0
    .line 202
    invoke-virtual {v1}, Lcom/android/commands/hid/Event$Builder;->build()Lcom/android/commands/hid/Event;

    #@d3
    move-result-object v0

    #@d4
    .local v0, "e":Lcom/android/commands/hid/Event;
    goto/16 :goto_0

    #@d6
    .line 205
    .end local v0    # "e":Lcom/android/commands/hid/Event;
    .end local v1    # "eb":Lcom/android/commands/hid/Event$Builder;
    :cond_9
    return-object v0
.end method
