.class Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;
.super Ljava/lang/Object;
.source "VoiceInteractionSessionConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AssistDataForActivity"
.end annotation


# instance fields
.field activityCount:I

.field activityIndex:I

.field data:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "data"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 103
    iput-object p1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->data:Landroid/os/Bundle;

    #@5
    .line 104
    const-string/jumbo v1, "receiverExtras"

    #@8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    #@b
    move-result-object v0

    #@c
    .line 105
    .local v0, "receiverExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    #@e
    .line 106
    const-string/jumbo v1, "index"

    #@11
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@14
    move-result v1

    #@15
    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->activityIndex:I

    #@17
    .line 107
    const-string/jumbo v1, "count"

    #@1a
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    #@1d
    move-result v1

    #@1e
    iput v1, p0, Lcom/android/server/voiceinteraction/VoiceInteractionSessionConnection$AssistDataForActivity;->activityCount:I

    #@20
    .line 102
    :cond_0
    return-void
.end method
