.class public Landroid/net/rtp/AudioCodec;
.super Ljava/lang/Object;
.source "AudioCodec.java"


# static fields
.field public static final whitelist AMR:Landroid/net/rtp/AudioCodec;

.field public static final whitelist GSM:Landroid/net/rtp/AudioCodec;

.field public static final whitelist GSM_EFR:Landroid/net/rtp/AudioCodec;

.field public static final whitelist PCMA:Landroid/net/rtp/AudioCodec;

.field public static final whitelist PCMU:Landroid/net/rtp/AudioCodec;

.field private static final greylist-max-o sCodecs:[Landroid/net/rtp/AudioCodec;


# instance fields
.field public final whitelist fmtp:Ljava/lang/String;

.field public final whitelist rtpmap:Ljava/lang/String;

.field public final whitelist type:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 59
    new-instance v0, Landroid/net/rtp/AudioCodec;

    const/4 v1, 0x0

    const-string v2, "PCMU/8000"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/rtp/AudioCodec;->PCMU:Landroid/net/rtp/AudioCodec;

    .line 64
    new-instance v0, Landroid/net/rtp/AudioCodec;

    const/16 v1, 0x8

    const-string v2, "PCMA/8000"

    invoke-direct {v0, v1, v2, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/rtp/AudioCodec;->PCMA:Landroid/net/rtp/AudioCodec;

    .line 70
    new-instance v0, Landroid/net/rtp/AudioCodec;

    const/4 v1, 0x3

    const-string v2, "GSM/8000"

    invoke-direct {v0, v1, v2, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/rtp/AudioCodec;->GSM:Landroid/net/rtp/AudioCodec;

    .line 76
    new-instance v0, Landroid/net/rtp/AudioCodec;

    const/16 v1, 0x60

    const-string v2, "GSM-EFR/8000"

    invoke-direct {v0, v1, v2, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/rtp/AudioCodec;->GSM_EFR:Landroid/net/rtp/AudioCodec;

    .line 83
    new-instance v0, Landroid/net/rtp/AudioCodec;

    const/16 v1, 0x61

    const-string v2, "AMR/8000"

    invoke-direct {v0, v1, v2, v3}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Landroid/net/rtp/AudioCodec;->AMR:Landroid/net/rtp/AudioCodec;

    .line 85
    sget-object v0, Landroid/net/rtp/AudioCodec;->GSM_EFR:Landroid/net/rtp/AudioCodec;

    sget-object v1, Landroid/net/rtp/AudioCodec;->AMR:Landroid/net/rtp/AudioCodec;

    sget-object v2, Landroid/net/rtp/AudioCodec;->GSM:Landroid/net/rtp/AudioCodec;

    sget-object v3, Landroid/net/rtp/AudioCodec;->PCMU:Landroid/net/rtp/AudioCodec;

    sget-object v4, Landroid/net/rtp/AudioCodec;->PCMA:Landroid/net/rtp/AudioCodec;

    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/net/rtp/AudioCodec;

    move-result-object v0

    sput-object v0, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    return-void
.end method

.method private constructor greylist-max-o <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # I
    .param p2, "rtpmap"    # Ljava/lang/String;
    .param p3, "fmtp"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput p1, p0, Landroid/net/rtp/AudioCodec;->type:I

    .line 89
    iput-object p2, p0, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Landroid/net/rtp/AudioCodec;->fmtp:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public static whitelist getCodec(ILjava/lang/String;Ljava/lang/String;)Landroid/net/rtp/AudioCodec;
    .registers 11
    .param p0, "type"    # I
    .param p1, "rtpmap"    # Ljava/lang/String;
    .param p2, "fmtp"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    if-ltz p0, :cond_84

    const/16 v1, 0x7f

    if-le p0, v1, :cond_9

    goto/16 :goto_84

    .line 115
    :cond_9
    const/4 v1, 0x0

    .line 116
    .local v1, "hint":Landroid/net/rtp/AudioCodec;
    const/4 v2, 0x0

    if-eqz p1, :cond_42

    .line 117
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "clue":Ljava/lang/String;
    sget-object v4, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    array-length v5, v4

    :goto_18
    if-ge v2, v5, :cond_41

    aget-object v6, v4, v2

    .line 119
    .local v6, "codec":Landroid/net/rtp/AudioCodec;
    iget-object v7, v6, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3e

    .line 120
    iget-object v2, v6, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "channels":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3c

    const-string v4, "/1"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    .line 122
    :cond_3c
    move-object v1, v6

    goto :goto_41

    .line 118
    .end local v2    # "channels":Ljava/lang/String;
    .end local v6    # "codec":Landroid/net/rtp/AudioCodec;
    :cond_3e
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 127
    .end local v3    # "clue":Ljava/lang/String;
    :cond_41
    :goto_41
    goto :goto_58

    :cond_42
    const/16 v3, 0x60

    if-ge p0, v3, :cond_41

    .line 128
    sget-object v3, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    array-length v4, v3

    :goto_49
    if-ge v2, v4, :cond_58

    aget-object v5, v3, v2

    .line 129
    .local v5, "codec":Landroid/net/rtp/AudioCodec;
    iget v6, v5, Landroid/net/rtp/AudioCodec;->type:I

    if-ne p0, v6, :cond_55

    .line 130
    move-object v1, v5

    .line 131
    iget-object p1, v5, Landroid/net/rtp/AudioCodec;->rtpmap:Ljava/lang/String;

    .line 132
    goto :goto_58

    .line 128
    .end local v5    # "codec":Landroid/net/rtp/AudioCodec;
    :cond_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 137
    :cond_58
    :goto_58
    if-nez v1, :cond_5b

    .line 138
    return-object v0

    .line 140
    :cond_5b
    sget-object v2, Landroid/net/rtp/AudioCodec;->AMR:Landroid/net/rtp/AudioCodec;

    if-ne v1, v2, :cond_7e

    if-eqz p2, :cond_7e

    .line 141
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 142
    .local v2, "clue":Ljava/lang/String;
    const-string v3, "crc=1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7d

    const-string v3, "robust-sorting=1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7d

    .line 143
    const-string v3, "interleaving="

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 144
    :cond_7d
    return-object v0

    .line 147
    .end local v2    # "clue":Ljava/lang/String;
    :cond_7e
    new-instance v0, Landroid/net/rtp/AudioCodec;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/rtp/AudioCodec;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 112
    .end local v1    # "hint":Landroid/net/rtp/AudioCodec;
    :cond_84
    :goto_84
    return-object v0
.end method

.method public static whitelist getCodecs()[Landroid/net/rtp/AudioCodec;
    .registers 2

    .line 97
    sget-object v0, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    sget-object v1, Landroid/net/rtp/AudioCodec;->sCodecs:[Landroid/net/rtp/AudioCodec;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/rtp/AudioCodec;

    return-object v0
.end method
