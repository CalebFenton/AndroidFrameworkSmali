.class public Lcom/android/location/provider/ActivityRecognitionEvent;
.super Ljava/lang/Object;
.source "ActivityRecognitionEvent.java"


# instance fields
.field private final mActivity:Ljava/lang/String;

.field private final mEventType:I

.field private final mTimestampNs:J


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1
    .param p1, "activity"    # Ljava/lang/String;
    .param p2, "eventType"    # I
    .param p3, "timestampNs"    # J

    #@0
    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 28
    iput-object p1, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    #@5
    .line 29
    iput p2, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mEventType:I

    #@7
    .line 30
    iput-wide p3, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mTimestampNs:J

    #@9
    .line 27
    return-void
.end method


# virtual methods
.method public getActivity()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getEventType()I
    .locals 1

    #@0
    .prologue
    .line 38
    iget v0, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mEventType:I

    #@2
    return v0
.end method

.method public getTimestampNs()J
    .locals 2

    #@0
    .prologue
    .line 42
    iget-wide v0, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mTimestampNs:J

    #@2
    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 48
    iget v1, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mEventType:I

    #@2
    packed-switch v1, :pswitch_data_0

    #@5
    .line 59
    const-string/jumbo v0, "<Invalid>"

    #@8
    .line 64
    .local v0, "eventString":Ljava/lang/String;
    :goto_0
    const-string/jumbo v1, "Activity=\'%s\', EventType=%s(%s), TimestampNs=%s"

    #@b
    .line 63
    const/4 v2, 0x4

    #@c
    new-array v2, v2, [Ljava/lang/Object;

    #@e
    .line 65
    iget-object v3, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mActivity:Ljava/lang/String;

    #@10
    const/4 v4, 0x0

    #@11
    aput-object v3, v2, v4

    #@13
    .line 66
    const/4 v3, 0x1

    #@14
    aput-object v0, v2, v3

    #@16
    .line 67
    iget v3, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mEventType:I

    #@18
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v3

    #@1c
    const/4 v4, 0x2

    #@1d
    aput-object v3, v2, v4

    #@1f
    .line 68
    iget-wide v4, p0, Lcom/android/location/provider/ActivityRecognitionEvent;->mTimestampNs:J

    #@21
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@24
    move-result-object v3

    #@25
    const/4 v4, 0x3

    #@26
    aput-object v3, v2, v4

    #@28
    .line 63
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    return-object v1

    #@2d
    .line 50
    .end local v0    # "eventString":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "Enter"

    #@30
    .restart local v0    # "eventString":Ljava/lang/String;
    goto :goto_0

    #@31
    .line 53
    .end local v0    # "eventString":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "Exit"

    #@34
    .restart local v0    # "eventString":Ljava/lang/String;
    goto :goto_0

    #@35
    .line 56
    .end local v0    # "eventString":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "FlushComplete"

    #@38
    .restart local v0    # "eventString":Ljava/lang/String;
    goto :goto_0

    #@39
    .line 48
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
