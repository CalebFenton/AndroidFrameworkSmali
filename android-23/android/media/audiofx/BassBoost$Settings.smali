.class public Landroid/media/audiofx/BassBoost$Settings;
.super Ljava/lang/Object;
.source "BassBoost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiofx/BassBoost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# instance fields
.field public strength:S


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "settings"    # Ljava/lang/String;

    #@0
    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 226
    new-instance v2, Ljava/util/StringTokenizer;

    #@5
    const-string/jumbo v4, "=;"

    #@8
    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 227
    .local v2, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    #@e
    move-result v3

    #@f
    .line 228
    .local v3, "tokens":I
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->countTokens()I

    #@12
    move-result v4

    #@13
    const/4 v5, 0x3

    #@14
    if-eq v4, v5, :cond_0

    #@16
    .line 229
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v5, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v6, "settings: "

    #@20
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v5

    #@2c
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2f
    throw v4

    #@30
    .line 231
    :cond_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@33
    move-result-object v0

    #@34
    .line 232
    .local v0, "key":Ljava/lang/String;
    const-string/jumbo v4, "BassBoost"

    #@37
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3a
    move-result v4

    #@3b
    if-nez v4, :cond_1

    #@3d
    .line 233
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@3f
    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    #@41
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@44
    const-string/jumbo v6, "invalid settings for BassBoost: "

    #@47
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    move-result-object v5

    #@4b
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4e
    move-result-object v5

    #@4f
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@52
    move-result-object v5

    #@53
    .line 233
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@56
    throw v4

    #@57
    .line 237
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@5a
    move-result-object v0

    #@5b
    .line 238
    const-string/jumbo v4, "strength"

    #@5e
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@61
    move-result v4

    #@62
    if-nez v4, :cond_2

    #@64
    .line 239
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@66
    new-instance v5, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v6, "invalid key name: "

    #@6e
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v5

    #@72
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v5

    #@76
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@79
    move-result-object v5

    #@7a
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@7e
    .line 242
    :catch_0
    move-exception v1

    #@7f
    .line 243
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@81
    new-instance v5, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v6, "invalid value for key: "

    #@89
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v5

    #@8d
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v5

    #@91
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v5

    #@95
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@98
    throw v4

    #@99
    .line 241
    .end local v1    # "nfe":Ljava/lang/NumberFormatException;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    #@9c
    move-result-object v4

    #@9d
    invoke-static {v4}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    #@a0
    move-result v4

    #@a1
    iput-short v4, p0, Landroid/media/audiofx/BassBoost$Settings;->strength:S
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    #@a3
    .line 225
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 249
    new-instance v0, Ljava/lang/String;

    #@2
    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    const-string/jumbo v2, "BassBoost;strength="

    #@a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d
    move-result-object v1

    #@e
    .line 251
    iget-short v2, p0, Landroid/media/audiofx/BassBoost$Settings;->strength:S

    #@10
    invoke-static {v2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    #@13
    move-result-object v2

    #@14
    .line 250
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 249
    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    #@1f
    .line 253
    .local v0, "str":Ljava/lang/String;
    return-object v0
.end method
