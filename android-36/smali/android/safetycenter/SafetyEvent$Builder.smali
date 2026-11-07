.class public final Landroid/safetycenter/SafetyEvent$Builder;
.super Ljava/lang/Object;
.source "SafetyEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetyEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mRefreshBroadcastId:Ljava/lang/String;

.field private blacklist mSafetySourceIssueActionId:Ljava/lang/String;

.field private blacklist mSafetySourceIssueId:Ljava/lang/String;

.field private final blacklist mType:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "type"    # I

    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 236
    invoke-static {p1}, Landroid/safetycenter/SafetyEvent;->-$$Nest$smvalidateType(I)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyEvent$Builder;->mType:I

    .line 237
    return-void
.end method

.method public constructor whitelist <init>(Landroid/safetycenter/SafetyEvent;)V
    .registers 4
    .param p1, "safetyEvent"    # Landroid/safetycenter/SafetyEvent;

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    invoke-static {}, Landroid/permission/jarjar/com/android/modules/utils/build/SdkLevel;->isAtLeastU()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 246
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-static {p1}, Landroid/safetycenter/SafetyEvent;->-$$Nest$fgetmType(Landroid/safetycenter/SafetyEvent;)I

    move-result v0

    iput v0, p0, Landroid/safetycenter/SafetyEvent$Builder;->mType:I

    .line 248
    invoke-static {p1}, Landroid/safetycenter/SafetyEvent;->-$$Nest$fgetmRefreshBroadcastId(Landroid/safetycenter/SafetyEvent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyEvent$Builder;->mRefreshBroadcastId:Ljava/lang/String;

    .line 249
    invoke-static {p1}, Landroid/safetycenter/SafetyEvent;->-$$Nest$fgetmSafetySourceIssueId(Landroid/safetycenter/SafetyEvent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyEvent$Builder;->mSafetySourceIssueId:Ljava/lang/String;

    .line 250
    invoke-static {p1}, Landroid/safetycenter/SafetyEvent;->-$$Nest$fgetmSafetySourceIssueActionId(Landroid/safetycenter/SafetyEvent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetyEvent$Builder;->mSafetySourceIssueActionId:Ljava/lang/String;

    .line 251
    return-void

    .line 243
    :cond_25
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Method not supported on versions lower than UPSIDE_DOWN_CAKE"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist build()Landroid/safetycenter/SafetyEvent;
    .registers 9

    .line 304
    iget v0, p0, Landroid/safetycenter/SafetyEvent$Builder;->mType:I

    sparse-switch v0, :sswitch_data_62

    goto :goto_52

    .line 313
    :sswitch_6
    iget-object v0, p0, Landroid/safetycenter/SafetyEvent$Builder;->mSafetySourceIssueId:Ljava/lang/String;

    if-eqz v0, :cond_2a

    .line 317
    iget-object v0, p0, Landroid/safetycenter/SafetyEvent$Builder;->mSafetySourceIssueActionId:Ljava/lang/String;

    if-eqz v0, :cond_f

    goto :goto_52

    .line 318
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing issue action id for resolving action safety event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/safetycenter/SafetyEvent$Builder;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing issue id for resolving action safety event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/safetycenter/SafetyEvent$Builder;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :sswitch_45
    iget-object v0, p0, Landroid/safetycenter/SafetyEvent$Builder;->mRefreshBroadcastId:Ljava/lang/String;

    if-eqz v0, :cond_4a

    goto :goto_52

    .line 307
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing refresh broadcast id for refresh requested safety event"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 328
    :goto_52
    new-instance v2, Landroid/safetycenter/SafetyEvent;

    iget v3, p0, Landroid/safetycenter/SafetyEvent$Builder;->mType:I

    iget-object v4, p0, Landroid/safetycenter/SafetyEvent$Builder;->mRefreshBroadcastId:Ljava/lang/String;

    iget-object v5, p0, Landroid/safetycenter/SafetyEvent$Builder;->mSafetySourceIssueId:Ljava/lang/String;

    iget-object v6, p0, Landroid/safetycenter/SafetyEvent$Builder;->mSafetySourceIssueActionId:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Landroid/safetycenter/SafetyEvent;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/safetycenter/SafetyEvent-IA;)V

    return-object v2

    nop

    :sswitch_data_62
    .sparse-switch
        0xc8 -> :sswitch_45
        0x12c -> :sswitch_6
        0x190 -> :sswitch_6
    .end sparse-switch
.end method

.method public whitelist setRefreshBroadcastId(Ljava/lang/String;)Landroid/safetycenter/SafetyEvent$Builder;
    .registers 2
    .param p1, "refreshBroadcastId"    # Ljava/lang/String;

    .line 264
    iput-object p1, p0, Landroid/safetycenter/SafetyEvent$Builder;->mRefreshBroadcastId:Ljava/lang/String;

    .line 265
    return-object p0
.end method

.method public whitelist setSafetySourceIssueActionId(Ljava/lang/String;)Landroid/safetycenter/SafetyEvent$Builder;
    .registers 2
    .param p1, "safetySourceIssueActionId"    # Ljava/lang/String;

    .line 297
    iput-object p1, p0, Landroid/safetycenter/SafetyEvent$Builder;->mSafetySourceIssueActionId:Ljava/lang/String;

    .line 298
    return-object p0
.end method

.method public whitelist setSafetySourceIssueId(Ljava/lang/String;)Landroid/safetycenter/SafetyEvent$Builder;
    .registers 2
    .param p1, "safetySourceIssueId"    # Ljava/lang/String;

    .line 280
    iput-object p1, p0, Landroid/safetycenter/SafetyEvent$Builder;->mSafetySourceIssueId:Ljava/lang/String;

    .line 281
    return-object p0
.end method
