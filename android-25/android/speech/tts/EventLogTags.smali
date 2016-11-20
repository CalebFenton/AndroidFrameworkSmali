.class public Landroid/speech/tts/EventLogTags;
.super Ljava/lang/Object;
.source "EventLogTags.java"


# static fields
.field public static final TTS_SPEAK_FAILURE:I = 0x128e2

.field public static final TTS_SPEAK_SUCCESS:I = 0x128e1

.field public static final TTS_V2_SPEAK_FAILURE:I = 0x128e4

.field public static final TTS_V2_SPEAK_SUCCESS:I = 0x128e3


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static writeTtsSpeakFailure(Ljava/lang/String;IIILjava/lang/String;II)V
    .locals 3
    .param p0, "engine"    # Ljava/lang/String;
    .param p1, "callerUid"    # I
    .param p2, "callerPid"    # I
    .param p3, "length"    # I
    .param p4, "locale"    # Ljava/lang/String;
    .param p5, "rate"    # I
    .param p6, "pitch"    # I

    #@0
    .prologue
    .line 30
    const/4 v0, 0x7

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v1

    #@11
    const/4 v2, 0x2

    #@12
    aput-object v1, v0, v2

    #@14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const/4 v1, 0x4

    #@1c
    aput-object p4, v0, v1

    #@1e
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v1

    #@22
    const/4 v2, 0x5

    #@23
    aput-object v1, v0, v2

    #@25
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@28
    move-result-object v1

    #@29
    const/4 v2, 0x6

    #@2a
    aput-object v1, v0, v2

    #@2c
    const v1, 0x128e2

    #@2f
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@32
    .line 29
    return-void
.end method

.method public static writeTtsSpeakSuccess(Ljava/lang/String;IIILjava/lang/String;IIJJJ)V
    .locals 3
    .param p0, "engine"    # Ljava/lang/String;
    .param p1, "callerUid"    # I
    .param p2, "callerPid"    # I
    .param p3, "length"    # I
    .param p4, "locale"    # Ljava/lang/String;
    .param p5, "rate"    # I
    .param p6, "pitch"    # I
    .param p7, "engineLatency"    # J
    .param p9, "engineTotal"    # J
    .param p11, "audioLatency"    # J

    #@0
    .prologue
    .line 26
    const/16 v0, 0xa

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    aput-object p0, v0, v1

    #@7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x1

    #@c
    aput-object v1, v0, v2

    #@e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v1

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    const/4 v1, 0x4

    #@1d
    aput-object p4, v0, v1

    #@1f
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@22
    move-result-object v1

    #@23
    const/4 v2, 0x5

    #@24
    aput-object v1, v0, v2

    #@26
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v1

    #@2a
    const/4 v2, 0x6

    #@2b
    aput-object v1, v0, v2

    #@2d
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@30
    move-result-object v1

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@37
    move-result-object v1

    #@38
    const/16 v2, 0x8

    #@3a
    aput-object v1, v0, v2

    #@3c
    invoke-static {p11, p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3f
    move-result-object v1

    #@40
    const/16 v2, 0x9

    #@42
    aput-object v1, v0, v2

    #@44
    const v1, 0x128e1

    #@47
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@4a
    .line 25
    return-void
.end method

.method public static writeTtsV2SpeakFailure(Ljava/lang/String;IIILjava/lang/String;I)V
    .locals 3
    .param p0, "engine"    # Ljava/lang/String;
    .param p1, "callerUid"    # I
    .param p2, "callerPid"    # I
    .param p3, "length"    # I
    .param p4, "requestConfig"    # Ljava/lang/String;
    .param p5, "statuscode"    # I

    #@0
    .prologue
    .line 38
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/Object;

    #@3
    const/4 v1, 0x0

    #@4
    aput-object p0, v0, v1

    #@6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@9
    move-result-object v1

    #@a
    const/4 v2, 0x1

    #@b
    aput-object v1, v0, v2

    #@d
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@10
    move-result-object v1

    #@11
    const/4 v2, 0x2

    #@12
    aput-object v1, v0, v2

    #@14
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17
    move-result-object v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const/4 v1, 0x4

    #@1c
    aput-object p4, v0, v1

    #@1e
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@21
    move-result-object v1

    #@22
    const/4 v2, 0x5

    #@23
    aput-object v1, v0, v2

    #@25
    const v1, 0x128e4

    #@28
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@2b
    .line 37
    return-void
.end method

.method public static writeTtsV2SpeakSuccess(Ljava/lang/String;IIILjava/lang/String;JJJ)V
    .locals 3
    .param p0, "engine"    # Ljava/lang/String;
    .param p1, "callerUid"    # I
    .param p2, "callerPid"    # I
    .param p3, "length"    # I
    .param p4, "requestConfig"    # Ljava/lang/String;
    .param p5, "engineLatency"    # J
    .param p7, "engineTotal"    # J
    .param p9, "audioLatency"    # J

    #@0
    .prologue
    .line 34
    const/16 v0, 0x8

    #@2
    new-array v0, v0, [Ljava/lang/Object;

    #@4
    const/4 v1, 0x0

    #@5
    aput-object p0, v0, v1

    #@7
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@a
    move-result-object v1

    #@b
    const/4 v2, 0x1

    #@c
    aput-object v1, v0, v2

    #@e
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@11
    move-result-object v1

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@18
    move-result-object v1

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    const/4 v1, 0x4

    #@1d
    aput-object p4, v0, v1

    #@1f
    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@22
    move-result-object v1

    #@23
    const/4 v2, 0x5

    #@24
    aput-object v1, v0, v2

    #@26
    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@29
    move-result-object v1

    #@2a
    const/4 v2, 0x6

    #@2b
    aput-object v1, v0, v2

    #@2d
    invoke-static {p9, p10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@30
    move-result-object v1

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    const v1, 0x128e3

    #@37
    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    #@3a
    .line 33
    return-void
.end method
