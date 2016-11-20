.class public Landroid/net/rtp/AudioCodec;
.super Ljava/lang/Object;
.source "AudioCodec.java"


# static fields
.field public static final AMR:Landroid/net/rtp/AudioCodec;

.field public static final GSM:Landroid/net/rtp/AudioCodec;

.field public static final GSM_EFR:Landroid/net/rtp/AudioCodec;

.field public static final PCMA:Landroid/net/rtp/AudioCodec;

.field public static final PCMU:Landroid/net/rtp/AudioCodec;

.field private static final sCodecs:[Landroid/net/rtp/AudioCodec;


# instance fields
.field public final fmtp:Ljava/lang/String;

.field public final rtpmap:Ljava/lang/String;

.field public final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x3

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 56
    new-instance v0, Landroid/net/rtp/AudioCodec;

    #@5
    const-string/jumbo v1, "PCMU/8000"

    #@8
    invoke-direct {v0, v4, v1, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@b
    sput-object v0, Landroid/net/rtp/AudioCodec;->PCMU:Landroid/net/rtp/AudioCodec;

    #@d
    .line 61
    new-instance v0, Landroid/net/rtp/AudioCodec;

    #@f
    const-string/jumbo v1, "PCMA/8000"

    #@12
    const/16 v2, 0x8

    #@14
    invoke-direct {v0, v2, v1, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@17
    sput-object v0, Landroid/net/rtp/AudioCodec;->PCMA:Landroid/net/rtp/AudioCodec;

    #@19
    .line 67
    new-instance v0, Landroid/net/rtp/AudioCodec;

    #@1b
    const-string/jumbo v1, "GSM/8000"

    #@1e
    invoke-direct {v0, v5, v1, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@21
    sput-object v0, Landroid/net/rtp/AudioCodec;->GSM:Landroid/net/rtp/AudioCodec;

    #@23
    .line 73
    new-instance v0, Landroid/net/rtp/AudioCodec;

    #@25
    const-string/jumbo v1, "GSM-EFR/8000"

    #@28
    const/16 v2, 0x60

    #@2a
    invoke-direct {v0, v2, v1, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@2d
    sput-object v0, Landroid/net/rtp/AudioCodec;->GSM_EFR:Landroid/net/rtp/AudioCodec;

    #@2f
    .line 80
    new-instance v0, Landroid/net/rtp/AudioCodec;

    #@31
    const-string/jumbo v1, "AMR/8000"

    #@34
    const/16 v2, 0x61

    #@36
    invoke-direct {v0, v2, v1, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@39
    sput-object v0, Landroid/net/rtp/AudioCodec;->AMR:Landroid/net/rtp/AudioCodec;

    #@3b
    .line 82
    const/4 v0, 0x5

    #@3c
    new-array v0, v0, [Landroid/net/rtp/AudioCodec;

    #@3e
    sget-object v1, Landroid/net/rtp/AudioCodec;->GSM_EFR:Landroid/net/rtp/AudioCodec;

    #@40
    aput-object v1, v0, v4

    #@42
    sget-object v1, Landroid/net/rtp/AudioCodec;->AMR:Landroid/net/rtp/AudioCodec;

    #@44
    const/4 v2, 0x1

    #@45
    aput-object v1, v0, v2

    #@47
    sget-object v1, Landroid/net/rtp/AudioCodec;->GSM:Landroid/net/rtp/AudioCodec;

    #@49
    const/4 v2, 0x2

    #@4a
    aput-object v1, v0, v2

    #@4c
    sget-object v1, Landroid/net/rtp/AudioCodec;->PCMU:Landroid/net/rtp/AudioCodec;

    #@4e
    aput-object v1, v0, v5

    #@50
    sget-object v1, Landroid/net/rtp/AudioCodec;->PCMA:Landroid/net/rtp/AudioCodec;

    #@52
    const/4 v2, 0x4

    #@53
    aput-object v1, v0, v2

    #@55
    sput-object v0, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    #@57
    .line 37
    return-void
.end method

.method private constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "rtpmap"    # Ljava/lang/String;
    .param p3, "fmtp"    # Ljava/lang/String;

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 85
    iput p1, p0, Landroid/net/rtp/AudioCodec;->type:I

    #@5
    .line 86
    iput-object p2, p0, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    #@7
    .line 87
    iput-object p3, p0, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    #@9
    .line 84
    return-void
.end method

.method public static getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;
    .locals 9
    .param p0, "type"    # I
    .param p1, "rtpmap"    # Ljava/lang/String;
    .param p2, "fmtp"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v8, 0x0

    #@2
    .line 108
    if-ltz p0, :cond_0

    #@4
    const/16 v5, 0x7f

    #@6
    if-le p0, v5, :cond_1

    #@8
    .line 109
    :cond_0
    return-object v8

    #@9
    .line 112
    :cond_1
    const/4 v3, 0x0

    #@a
    .line 113
    .local v3, "hint":Landroid/net/rtp/AudioCodec;
    if-eqz p1, :cond_5

    #@c
    .line 114
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@f
    move-result-object v5

    #@10
    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@13
    move-result-object v1

    #@14
    .line 115
    .local v1, "clue":Ljava/lang/String;
    sget-object v5, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    #@16
    array-length v6, v5

    #@17
    :goto_0
    if-ge v4, v6, :cond_3

    #@19
    aget-object v2, v5, v4

    #@1b
    .line 116
    .local v2, "codec":Landroid/net/rtp/AudioCodec;
    iget-object v7, v2, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    #@1d
    invoke-virtual {v1, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@20
    move-result v7

    #@21
    if-eqz v7, :cond_4

    #@23
    .line 117
    iget-object v4, v2, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    #@25
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@28
    move-result v4

    #@29
    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .line 118
    .local v0, "channels":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@30
    move-result v4

    #@31
    if-eqz v4, :cond_2

    #@33
    const-string/jumbo v4, "/1"

    #@36
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@39
    move-result v4

    #@3a
    if-eqz v4, :cond_3

    #@3c
    .line 119
    :cond_2
    move-object v3, v2

    #@3d
    .line 134
    .end local v0    # "channels":Ljava/lang/String;
    .end local v1    # "clue":Ljava/lang/String;
    .end local v2    # "codec":Landroid/net/rtp/AudioCodec;
    .end local v3    # "hint":Landroid/net/rtp/AudioCodec;
    :cond_3
    :goto_1
    if-nez v3, :cond_7

    #@3f
    .line 135
    return-object v8

    #@40
    .line 115
    .restart local v1    # "clue":Ljava/lang/String;
    .restart local v2    # "codec":Landroid/net/rtp/AudioCodec;
    .restart local v3    # "hint":Landroid/net/rtp/AudioCodec;
    :cond_4
    add-int/lit8 v4, v4, 0x1

    #@42
    goto :goto_0

    #@43
    .line 124
    .end local v1    # "clue":Ljava/lang/String;
    .end local v2    # "codec":Landroid/net/rtp/AudioCodec;
    :cond_5
    const/16 v5, 0x60

    #@45
    if-ge p0, v5, :cond_3

    #@47
    .line 125
    sget-object v5, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    #@49
    array-length v6, v5

    #@4a
    :goto_2
    if-ge v4, v6, :cond_3

    #@4c
    aget-object v2, v5, v4

    #@4e
    .line 126
    .restart local v2    # "codec":Landroid/net/rtp/AudioCodec;
    iget v7, v2, Landroid/net/rtp/AudioCodec;->type:I

    #@50
    if-ne p0, v7, :cond_6

    #@52
    .line 127
    move-object v3, v2

    #@53
    .line 128
    .local v3, "hint":Landroid/net/rtp/AudioCodec;
    iget-object p1, v2, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    #@55
    goto :goto_1

    #@56
    .line 125
    .local v3, "hint":Landroid/net/rtp/AudioCodec;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    #@58
    goto :goto_2

    #@59
    .line 137
    .end local v2    # "codec":Landroid/net/rtp/AudioCodec;
    .end local v3    # "hint":Landroid/net/rtp/AudioCodec;
    :cond_7
    sget-object v4, Landroid/net/rtp/AudioCodec;->AMR:Landroid/net/rtp/AudioCodec;

    #@5b
    if-ne v3, v4, :cond_9

    #@5d
    if-eqz p2, :cond_9

    #@5f
    .line 138
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    #@62
    move-result-object v1

    #@63
    .line 139
    .restart local v1    # "clue":Ljava/lang/String;
    const-string/jumbo v4, "crc=1"

    #@66
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@69
    move-result v4

    #@6a
    if-nez v4, :cond_8

    #@6c
    const-string/jumbo v4, "robust-sorting=1"

    #@6f
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@72
    move-result v4

    #@73
    if-nez v4, :cond_8

    #@75
    .line 140
    const-string/jumbo v4, "interleaving="

    #@78
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    #@7b
    move-result v4

    #@7c
    .line 139
    if-eqz v4, :cond_9

    #@7e
    .line 141
    :cond_8
    return-object v8

    #@7f
    .line 144
    .end local v1    # "clue":Ljava/lang/String;
    :cond_9
    new-instance v4, Landroid/net/rtp/AudioCodec;

    #@81
    invoke-direct {v4, p0, p1, p2}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    #@84
    return-object v4
.end method

.method public static getCodecs()[Landroid/net/rtp/AudioCodec;
    .locals 2

    #@0
    .prologue
    .line 94
    sget-object v0, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    #@2
    sget-object v1, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    #@4
    array-length v1, v1

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, [Landroid/net/rtp/AudioCodec;

    #@b
    return-object v0
.end method
