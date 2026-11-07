.class public interface abstract Lcom/android/internal/app/ChooserActivityLogger;
.super Ljava/lang/Object;
.source "ChooserActivityLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;,
        Lcom/android/internal/app/ChooserActivityLogger$SharesheetTargetSelectedEvent;,
        Lcom/android/internal/app/ChooserActivityLogger$SharesheetStartedEvent;
    }
.end annotation


# virtual methods
.method public abstract blacklist getInstanceId()Lcom/android/internal/logging/InstanceId;
.end method

.method public abstract blacklist log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V
.end method

.method public abstract blacklist logShareStarted(ILjava/lang/String;Ljava/lang/String;IIZILjava/lang/String;)V
.end method

.method public abstract blacklist logShareTargetSelected(ILjava/lang/String;IZ)V
.end method

.method public blacklist logShareheetProfileChanged()V
    .registers 3

    .line 69
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_PROFILE_CHANGED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 70
    return-void
.end method

.method public blacklist logSharesheetAppLoadComplete()V
    .registers 3

    .line 47
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_APP_LOAD_COMPLETE:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 48
    return-void
.end method

.method public blacklist logSharesheetAppShareRankingTimeout()V
    .registers 3

    .line 82
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_APP_SHARE_RANKING_TIMEOUT:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 83
    return-void
.end method

.method public blacklist logSharesheetDirectLoadComplete()V
    .registers 3

    .line 54
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_DIRECT_LOAD_COMPLETE:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 55
    return-void
.end method

.method public blacklist logSharesheetDirectLoadTimeout()V
    .registers 3

    .line 61
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_DIRECT_LOAD_TIMEOUT:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 62
    return-void
.end method

.method public blacklist logSharesheetEmptyDirectShareRow()V
    .registers 3

    .line 89
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_EMPTY_DIRECT_SHARE_ROW:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 90
    return-void
.end method

.method public blacklist logSharesheetExpansionChanged(Z)V
    .registers 4
    .param p1, "isCollapsed"    # Z

    .line 74
    if-eqz p1, :cond_5

    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_COLLAPSED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    goto :goto_7

    .line 75
    :cond_5
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_EXPANDED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    :goto_7
    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    .line 74
    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 76
    return-void
.end method

.method public blacklist logSharesheetTriggered()V
    .registers 3

    .line 42
    sget-object v0, Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;->SHARESHEET_TRIGGERED:Lcom/android/internal/app/ChooserActivityLogger$SharesheetStandardEvent;

    invoke-interface {p0}, Lcom/android/internal/app/ChooserActivityLogger;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/android/internal/app/ChooserActivityLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    .line 43
    return-void
.end method

.method public blacklist typeFromIntentString(Ljava/lang/String;)I
    .registers 10
    .param p1, "intent"    # Ljava/lang/String;

    .line 222
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 223
    return v0

    .line 225
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch v1, :sswitch_data_66

    :cond_11
    goto :goto_58

    :sswitch_12
    const-string v1, "android.intent.action.SENDTO"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v5

    goto :goto_59

    :sswitch_1c
    const-string v1, "android.intent.action.SEND_MULTIPLE"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v4

    goto :goto_59

    :sswitch_26
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v0

    goto :goto_59

    :sswitch_30
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v6

    goto :goto_59

    :sswitch_3a
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v2

    goto :goto_59

    :sswitch_44
    const-string v1, "android.intent.action.EDIT"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v7

    goto :goto_59

    :sswitch_4e
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v1, v3

    goto :goto_59

    :goto_58
    const/4 v1, -0x1

    :goto_59
    packed-switch v1, :pswitch_data_84

    .line 243
    return v0

    .line 241
    :pswitch_5d
    const/4 v0, 0x7

    return v0

    .line 238
    :pswitch_5f
    return v2

    .line 235
    :pswitch_60
    return v3

    .line 233
    :pswitch_61
    return v4

    .line 231
    :pswitch_62
    return v5

    .line 229
    :pswitch_63
    return v6

    .line 227
    :pswitch_64
    return v7

    nop

    :sswitch_data_66
    .sparse-switch
        -0x74de9aed -> :sswitch_4e
        -0x45f4fbb1 -> :sswitch_44
        -0x45f16402 -> :sswitch_3a
        -0x45ee9a33 -> :sswitch_30
        -0x45ed2f16 -> :sswitch_26
        -0x37c67be -> :sswitch_1c
        0x7b4f3108 -> :sswitch_12
    .end sparse-switch

    :pswitch_data_84
    .packed-switch 0x0
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5d
    .end packed-switch
.end method

.method public blacklist typeFromPreviewInt(I)I
    .registers 3
    .param p1, "previewType"    # I

    .line 205
    packed-switch p1, :pswitch_data_a

    .line 212
    const/4 v0, 0x0

    return v0

    .line 209
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 207
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method
