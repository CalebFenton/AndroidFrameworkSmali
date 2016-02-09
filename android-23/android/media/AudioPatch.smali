.class public Landroid/media/AudioPatch;
.super Ljava/lang/Object;
.source "AudioPatch.java"


# instance fields
.field private final mHandle:Landroid/media/AudioHandle;

.field private final mSinks:[Landroid/media/AudioPortConfig;

.field private final mSources:[Landroid/media/AudioPortConfig;


# direct methods
.method constructor <init>(Landroid/media/AudioHandle;[Landroid/media/AudioPortConfig;[Landroid/media/AudioPortConfig;)V
    .locals 0
    .param p1, "patchHandle"    # Landroid/media/AudioHandle;
    .param p2, "sources"    # [Landroid/media/AudioPortConfig;
    .param p3, "sinks"    # [Landroid/media/AudioPortConfig;

    #@0
    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    iput-object p1, p0, Landroid/media/AudioPatch;->mHandle:Landroid/media/AudioHandle;

    #@5
    .line 38
    iput-object p2, p0, Landroid/media/AudioPatch;->mSources:[Landroid/media/AudioPortConfig;

    #@7
    .line 39
    iput-object p3, p0, Landroid/media/AudioPatch;->mSinks:[Landroid/media/AudioPortConfig;

    #@9
    .line 36
    return-void
.end method


# virtual methods
.method public sinks()[Landroid/media/AudioPortConfig;
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Landroid/media/AudioPatch;->mSinks:[Landroid/media/AudioPortConfig;

    #@2
    return-object v0
.end method

.method public sources()[Landroid/media/AudioPortConfig;
    .locals 1

    #@0
    .prologue
    .line 46
    iget-object v0, p0, Landroid/media/AudioPatch;->mSources:[Landroid/media/AudioPortConfig;

    #@2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    .line 59
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "mHandle: "

    #@9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 60
    iget-object v4, p0, Landroid/media/AudioPatch;->mHandle:Landroid/media/AudioHandle;

    #@e
    invoke-virtual {v4}, Landroid/media/AudioHandle;->toString()Ljava/lang/String;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    .line 62
    const-string/jumbo v4, " mSources: {"

    #@18
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    .line 63
    iget-object v5, p0, Landroid/media/AudioPatch;->mSources:[Landroid/media/AudioPortConfig;

    #@1d
    array-length v6, v5

    #@1e
    move v4, v3

    #@1f
    :goto_0
    if-ge v4, v6, :cond_0

    #@21
    aget-object v2, v5, v4

    #@23
    .line 64
    .local v2, "source":Landroid/media/AudioPortConfig;
    invoke-virtual {v2}, Landroid/media/AudioPortConfig;->toString()Ljava/lang/String;

    #@26
    move-result-object v7

    #@27
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    .line 65
    const-string/jumbo v7, ", "

    #@2d
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    .line 63
    add-int/lit8 v4, v4, 0x1

    #@32
    goto :goto_0

    #@33
    .line 67
    .end local v2    # "source":Landroid/media/AudioPortConfig;
    :cond_0
    const-string/jumbo v4, "} mSinks: {"

    #@36
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    .line 68
    iget-object v4, p0, Landroid/media/AudioPatch;->mSinks:[Landroid/media/AudioPortConfig;

    #@3b
    array-length v5, v4

    #@3c
    :goto_1
    if-ge v3, v5, :cond_1

    #@3e
    aget-object v1, v4, v3

    #@40
    .line 69
    .local v1, "sink":Landroid/media/AudioPortConfig;
    invoke-virtual {v1}, Landroid/media/AudioPortConfig;->toString()Ljava/lang/String;

    #@43
    move-result-object v6

    #@44
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 70
    const-string/jumbo v6, ", "

    #@4a
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    .line 68
    add-int/lit8 v3, v3, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 72
    .end local v1    # "sink":Landroid/media/AudioPortConfig;
    :cond_1
    const-string/jumbo v3, "}"

    #@53
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@59
    move-result-object v3

    #@5a
    return-object v3
.end method
