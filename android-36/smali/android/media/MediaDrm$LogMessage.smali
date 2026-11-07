.class public final Landroid/media/MediaDrm$LogMessage;
.super Ljava/lang/Object;
.source "MediaDrm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaDrm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LogMessage"
.end annotation


# instance fields
.field private final blacklist message:Ljava/lang/String;

.field private final blacklist priority:I

.field private final blacklist timestampMillis:J


# direct methods
.method private constructor blacklist <init>(JILjava/lang/String;)V
    .registers 8
    .param p1, "timestampMillis"    # J
    .param p3, "priority"    # I
    .param p4, "message"    # Ljava/lang/String;

    .line 3143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3144
    iput-wide p1, p0, Landroid/media/MediaDrm$LogMessage;->timestampMillis:J

    .line 3145
    const/4 v0, 0x2

    if-lt p3, v0, :cond_10

    const/4 v0, 0x7

    if-gt p3, v0, :cond_10

    .line 3148
    iput p3, p0, Landroid/media/MediaDrm$LogMessage;->priority:I

    .line 3149
    iput-object p4, p0, Landroid/media/MediaDrm$LogMessage;->message:Ljava/lang/String;

    .line 3150
    return-void

    .line 3146
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid log priority "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist logPriorityChar()C
    .registers 2

    .line 3153
    iget v0, p0, Landroid/media/MediaDrm$LogMessage;->priority:I

    packed-switch v0, :pswitch_data_1a

    .line 3168
    const/16 v0, 0x55

    return v0

    .line 3165
    :pswitch_8
    const/16 v0, 0x46

    return v0

    .line 3163
    :pswitch_b
    const/16 v0, 0x45

    return v0

    .line 3161
    :pswitch_e
    const/16 v0, 0x57

    return v0

    .line 3159
    :pswitch_11
    const/16 v0, 0x49

    return v0

    .line 3157
    :pswitch_14
    const/16 v0, 0x44

    return v0

    .line 3155
    :pswitch_17
    const/16 v0, 0x56

    return v0

    :pswitch_data_1a
    .packed-switch 0x2
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public final whitelist getMessage()Ljava/lang/String;
    .registers 2

    .line 3141
    iget-object v0, p0, Landroid/media/MediaDrm$LogMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final whitelist getPriority()I
    .registers 2

    .line 3135
    iget v0, p0, Landroid/media/MediaDrm$LogMessage;->priority:I

    return v0
.end method

.method public final whitelist getTimestampMillis()J
    .registers 3

    .line 3119
    iget-wide v0, p0, Landroid/media/MediaDrm$LogMessage;->timestampMillis:J

    return-wide v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 3173
    iget-wide v0, p0, Landroid/media/MediaDrm$LogMessage;->timestampMillis:J

    .line 3174
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    invoke-direct {p0}, Landroid/media/MediaDrm$LogMessage;->logPriorityChar()C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaDrm$LogMessage;->message:Ljava/lang/String;

    filled-new-array {v0, v1, v2}, [Ljava/lang/Object;

    move-result-object v0

    .line 3173
    const-string v1, "LogMessage{%s %c %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
