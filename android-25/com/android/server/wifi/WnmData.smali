.class public Lcom/android/server/wifi/WnmData;
.super Ljava/lang/Object;
.source "WnmData.java"


# static fields
.field private static final ESS:I = 0x1


# instance fields
.field private final mBssid:J

.field private final mDeauthEvent:Z

.field private final mDelay:I

.field private final mEss:Z

.field private final mMethod:I

.field private final mUrl:Ljava/lang/String;


# direct methods
.method private constructor <init>(JLjava/lang/String;I)V
    .locals 3
    .param p1, "bssid"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "method"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 72
    iput-wide p1, p0, Lcom/android/server/wifi/WnmData;->mBssid:J

    #@6
    .line 73
    iput-object p3, p0, Lcom/android/server/wifi/WnmData;->mUrl:Ljava/lang/String;

    #@8
    .line 74
    iput p4, p0, Lcom/android/server/wifi/WnmData;->mMethod:I

    #@a
    .line 75
    iput-boolean v1, p0, Lcom/android/server/wifi/WnmData;->mEss:Z

    #@c
    .line 76
    const/4 v0, -0x1

    #@d
    iput v0, p0, Lcom/android/server/wifi/WnmData;->mDelay:I

    #@f
    .line 77
    iput-boolean v1, p0, Lcom/android/server/wifi/WnmData;->mDeauthEvent:Z

    #@11
    .line 71
    return-void
.end method

.method private constructor <init>(JLjava/lang/String;ZI)V
    .locals 1
    .param p1, "bssid"    # J
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "ess"    # Z
    .param p5, "delay"    # I

    #@0
    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 81
    iput-wide p1, p0, Lcom/android/server/wifi/WnmData;->mBssid:J

    #@5
    .line 82
    iput-object p3, p0, Lcom/android/server/wifi/WnmData;->mUrl:Ljava/lang/String;

    #@7
    .line 83
    iput-boolean p4, p0, Lcom/android/server/wifi/WnmData;->mEss:Z

    #@9
    .line 84
    iput p5, p0, Lcom/android/server/wifi/WnmData;->mDelay:I

    #@b
    .line 85
    const/4 v0, -0x1

    #@c
    iput v0, p0, Lcom/android/server/wifi/WnmData;->mMethod:I

    #@e
    .line 86
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Lcom/android/server/wifi/WnmData;->mDeauthEvent:Z

    #@11
    .line 80
    return-void
.end method

.method public static buildWnmData(Ljava/lang/String;)Lcom/android/server/wifi/WnmData;
    .locals 10
    .param p0, "event"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x4

    #@1
    const/4 v9, 0x3

    #@2
    const/4 v8, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v6, 0x0

    #@5
    .line 39
    const-string/jumbo v1, " "

    #@8
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@b
    move-result-object v7

    #@c
    .line 40
    .local v7, "segments":[Ljava/lang/String;
    array-length v1, v7

    #@d
    if-ge v1, v8, :cond_0

    #@f
    .line 41
    new-instance v1, Ljava/io/IOException;

    #@11
    const-string/jumbo v2, "Short event"

    #@14
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@17
    throw v1

    #@18
    .line 44
    :cond_0
    aget-object v1, v7, v5

    #@1a
    const-string/jumbo v2, "HS20-SUBSCRIPTION-REMEDIATION"

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@20
    move-result v2

    #@21
    if-eqz v2, :cond_1

    #@23
    .line 46
    array-length v1, v7

    #@24
    if-eq v1, v4, :cond_2

    #@26
    .line 47
    new-instance v1, Ljava/io/IOException;

    #@28
    const-string/jumbo v2, "Expected 4 segments"

    #@2b
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v1

    #@2f
    .line 44
    :cond_1
    const-string/jumbo v2, "HS20-DEAUTH-IMMINENT-NOTICE"

    #@32
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@35
    move-result v1

    #@36
    if-eqz v1, :cond_7

    #@38
    .line 54
    array-length v1, v7

    #@39
    const/4 v2, 0x5

    #@3a
    if-eq v1, v2, :cond_3

    #@3c
    .line 55
    new-instance v1, Ljava/io/IOException;

    #@3e
    const-string/jumbo v2, "Expected 5 segments"

    #@41
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@44
    throw v1

    #@45
    .line 49
    :cond_2
    new-instance v1, Lcom/android/server/wifi/WnmData;

    #@47
    aget-object v2, v7, v6

    #@49
    const/16 v3, 0x10

    #@4b
    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@4e
    move-result-wide v2

    #@4f
    .line 50
    aget-object v4, v7, v9

    #@51
    .line 51
    aget-object v5, v7, v8

    #@53
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@56
    move-result v5

    #@57
    .line 49
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wifi/WnmData;-><init>(JLjava/lang/String;I)V

    #@5a
    return-object v1

    #@5b
    .line 57
    :cond_3
    aget-object v1, v7, v8

    #@5d
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@60
    move-result v0

    #@61
    .line 58
    .local v0, "codeID":I
    if-ltz v0, :cond_4

    #@63
    if-le v0, v5, :cond_5

    #@65
    .line 59
    :cond_4
    new-instance v1, Ljava/io/IOException;

    #@67
    const-string/jumbo v2, "Unknown code"

    #@6a
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v1

    #@6e
    .line 61
    :cond_5
    new-instance v1, Lcom/android/server/wifi/WnmData;

    #@70
    aget-object v2, v7, v6

    #@72
    const/16 v3, 0x10

    #@74
    invoke-static {v2, v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    #@77
    move-result-wide v2

    #@78
    .line 62
    aget-object v4, v7, v4

    #@7a
    .line 63
    if-ne v0, v5, :cond_6

    #@7c
    .line 64
    :goto_0
    aget-object v6, v7, v9

    #@7e
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@81
    move-result v6

    #@82
    .line 61
    invoke-direct/range {v1 .. v6}, Lcom/android/server/wifi/WnmData;-><init>(JLjava/lang/String;ZI)V

    #@85
    return-object v1

    #@86
    :cond_6
    move v5, v6

    #@87
    .line 63
    goto :goto_0

    #@88
    .line 67
    .end local v0    # "codeID":I
    :cond_7
    new-instance v1, Ljava/io/IOException;

    #@8a
    const-string/jumbo v2, "Unknown event type"

    #@8d
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@90
    throw v1
.end method


# virtual methods
.method public getBssid()J
    .locals 2

    #@0
    .prologue
    .line 90
    iget-wide v0, p0, Lcom/android/server/wifi/WnmData;->mBssid:J

    #@2
    return-wide v0
.end method

.method public getDelay()I
    .locals 1

    #@0
    .prologue
    .line 110
    iget v0, p0, Lcom/android/server/wifi/WnmData;->mDelay:I

    #@2
    return v0
.end method

.method public getMethod()I
    .locals 1

    #@0
    .prologue
    .line 102
    iget v0, p0, Lcom/android/server/wifi/WnmData;->mMethod:I

    #@2
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/server/wifi/WnmData;->mUrl:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isDeauthEvent()Z
    .locals 1

    #@0
    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/server/wifi/WnmData;->mDeauthEvent:Z

    #@2
    return v0
.end method

.method public isEss()Z
    .locals 1

    #@0
    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/server/wifi/WnmData;->mEss:Z

    #@2
    return v0
.end method
