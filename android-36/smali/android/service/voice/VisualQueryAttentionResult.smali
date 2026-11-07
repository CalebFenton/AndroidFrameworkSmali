.class public final Landroid/service/voice/VisualQueryAttentionResult;
.super Ljava/lang/Object;
.source "VisualQueryAttentionResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/voice/VisualQueryAttentionResult$Builder;,
        Landroid/service/voice/VisualQueryAttentionResult$InteractionIntention;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/voice/VisualQueryAttentionResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist INTERACTION_INTENTION_AUDIO_VISUAL:I = 0x0

.field public static final whitelist INTERACTION_INTENTION_VISUAL_ACCESSIBILITY:I = 0x1


# instance fields
.field private final blacklist mEngagementLevel:I

.field private final blacklist mInteractionIntention:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultEngagementLevel()I
    .registers 1

    invoke-static {}, Landroid/service/voice/VisualQueryAttentionResult;->defaultEngagementLevel()I

    move-result v0

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdefaultInteractionIntention()I
    .registers 1

    invoke-static {}, Landroid/service/voice/VisualQueryAttentionResult;->defaultInteractionIntention()I

    move-result v0

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 282
    new-instance v0, Landroid/service/voice/VisualQueryAttentionResult$1;

    invoke-direct {v0}, Landroid/service/voice/VisualQueryAttentionResult$1;-><init>()V

    sput-object v0, Landroid/service/voice/VisualQueryAttentionResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(II)V
    .registers 14
    .param p1, "interactionIntention"    # I
    .param p2, "engagementLevel"    # I

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput p1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    .line 151
    iget v0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    if-eqz v0, :cond_46

    iget v0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    goto :goto_46

    .line 153
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "interactionIntention was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but must be one of: INTERACTION_INTENTION_AUDIO_VISUAL("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), INTERACTION_INTENTION_VISUAL_ACCESSIBILITY("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 159
    :cond_46
    :goto_46
    iput p2, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    .line 160
    const-class v2, Landroid/annotation/IntRange;

    iget v4, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    const-string/jumbo v8, "to"

    const-wide/16 v9, 0x64

    const/4 v3, 0x0

    const-string v5, "from"

    const-wide/16 v6, 0x1

    invoke-static/range {v2 .. v10}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 166
    return-void
.end method

.method constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 15
    .param p1, "in"    # Landroid/os/Parcel;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 261
    .local v0, "interactionIntention":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 263
    .local v1, "engagementLevel":I
    iput v0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    .line 264
    iget v2, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    if-eqz v2, :cond_4e

    iget v2, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_17

    goto :goto_4e

    .line 266
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "interactionIntention was "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but must be one of: INTERACTION_INTENTION_AUDIO_VISUAL("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "), INTERACTION_INTENTION_VISUAL_ACCESSIBILITY("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 271
    :cond_4e
    :goto_4e
    iput v1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    .line 272
    const-class v4, Landroid/annotation/IntRange;

    iget v6, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    const-string/jumbo v10, "to"

    const-wide/16 v11, 0x64

    const/4 v5, 0x0

    const-string v7, "from"

    const-wide/16 v8, 0x1

    invoke-static/range {v4 .. v12}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/IntRange;ILjava/lang/String;JLjava/lang/String;J)V

    .line 278
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 378
    return-void
.end method

.method private static blacklist defaultEngagementLevel()I
    .registers 1

    .line 84
    const/16 v0, 0x64

    return v0
.end method

.method private static blacklist defaultInteractionIntention()I
    .registers 1

    .line 65
    const/4 v0, 0x0

    return v0
.end method

.method public static blacklist interactionIntentionToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "value"    # I

    .line 136
    packed-switch p0, :pswitch_data_e

    .line 141
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :pswitch_8
    const-string v0, "INTERACTION_INTENTION_VISUAL_ACCESSIBILITY"

    return-object v0

    .line 138
    :pswitch_b
    const-string v0, "INTERACTION_INTENTION_AUDIO_VISUAL"

    return-object v0

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public blacklist buildUpon()Landroid/service/voice/VisualQueryAttentionResult$Builder;
    .registers 3

    .line 93
    new-instance v0, Landroid/service/voice/VisualQueryAttentionResult$Builder;

    invoke-direct {v0}, Landroid/service/voice/VisualQueryAttentionResult$Builder;-><init>()V

    iget v1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    .line 94
    invoke-virtual {v0, v1}, Landroid/service/voice/VisualQueryAttentionResult$Builder;->setInteractionIntention(I)Landroid/service/voice/VisualQueryAttentionResult$Builder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    .line 95
    invoke-virtual {v0, v1}, Landroid/service/voice/VisualQueryAttentionResult$Builder;->setEngagementLevel(I)Landroid/service/voice/VisualQueryAttentionResult$Builder;

    move-result-object v0

    .line 93
    return-object v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 251
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 215
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 216
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_24

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_24

    .line 218
    :cond_12
    move-object v2, p1

    check-cast v2, Landroid/service/voice/VisualQueryAttentionResult;

    .line 220
    .local v2, "that":Landroid/service/voice/VisualQueryAttentionResult;
    iget v3, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    iget v4, v2, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    if-ne v3, v4, :cond_22

    iget v3, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    iget v4, v2, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    if-ne v3, v4, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    return v0

    .line 216
    .end local v2    # "that":Landroid/service/voice/VisualQueryAttentionResult;
    :cond_24
    :goto_24
    return v1
.end method

.method public whitelist getEngagementLevel()I
    .registers 2

    .line 193
    iget v0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    return v0
.end method

.method public whitelist getInteractionIntention()I
    .registers 2

    .line 175
    iget v0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 231
    const/4 v0, 0x1

    .line 232
    .local v0, "_hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    add-int/2addr v1, v2

    .line 233
    .end local v0    # "_hash":I
    .local v1, "_hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    add-int/2addr v0, v2

    .line 234
    .end local v1    # "_hash":I
    .restart local v0    # "_hash":I
    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisualQueryAttentionResult { interactionIntention = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", engagementLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 244
    iget v0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mInteractionIntention:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    iget v0, p0, Landroid/service/voice/VisualQueryAttentionResult;->mEngagementLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 246
    return-void
.end method
