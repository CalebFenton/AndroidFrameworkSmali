.class public Landroid/service/voice/VoiceInteractionSession$ActivityId;
.super Ljava/lang/Object;
.source "VoiceInteractionSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/voice/VoiceInteractionSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityId"
.end annotation


# instance fields
.field private final blacklist mAssistToken:Landroid/os/IBinder;

.field private final blacklist mTaskId:I


# direct methods
.method constructor blacklist <init>(ILandroid/os/IBinder;)V
    .registers 3
    .param p1, "taskId"    # I
    .param p2, "assistToken"    # Landroid/os/IBinder;

    .line 2392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2393
    iput p1, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mTaskId:I

    .line 2394
    iput-object p2, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    .line 2395
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 2411
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2412
    return v0

    .line 2414
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_30

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_30

    .line 2418
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/voice/VoiceInteractionSession$ActivityId;

    .line 2420
    .local v2, "that":Landroid/service/voice/VoiceInteractionSession$ActivityId;
    iget v3, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mTaskId:I

    iget v4, v2, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mTaskId:I

    if-eq v3, v4, :cond_1c

    .line 2421
    return v1

    .line 2423
    :cond_1c
    iget-object v3, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    if-eqz v3, :cond_29

    .line 2424
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    iget-object v1, v2, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    invoke-interface {v0, v1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2f

    .line 2425
    :cond_29
    iget-object v3, v2, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    if-nez v3, :cond_2e

    goto :goto_2f

    :cond_2e
    move v0, v1

    .line 2423
    :goto_2f
    return v0

    .line 2415
    .end local v2    # "that":Landroid/service/voice/VoiceInteractionSession$ActivityId;
    :cond_30
    :goto_30
    return v1
.end method

.method public blacklist getAssistToken()Landroid/os/IBinder;
    .registers 2

    .line 2406
    iget-object v0, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    return-object v0
.end method

.method public blacklist getTaskId()I
    .registers 2

    .line 2400
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mTaskId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 2430
    iget v0, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mTaskId:I

    .line 2431
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    if-eqz v2, :cond_f

    iget-object v2, p0, Landroid/service/voice/VoiceInteractionSession$ActivityId;->mAssistToken:Landroid/os/IBinder;

    invoke-interface {v2}, Landroid/os/IBinder;->hashCode()I

    move-result v2

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    :goto_10
    add-int/2addr v1, v2

    .line 2432
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method
