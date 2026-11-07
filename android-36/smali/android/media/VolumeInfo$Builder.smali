.class public final Landroid/media/VolumeInfo$Builder;
.super Ljava/lang/Object;
.source "VolumeInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/VolumeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mHasMuteCommand:Z

.field private blacklist mIsMuted:Z

.field private blacklist mMaxVolIndex:I

.field private blacklist mMinVolIndex:I

.field private blacklist mStreamType:I

.field private blacklist mUsesStreamType:Z

.field private blacklist mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

.field private blacklist mVolIndex:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 5
    .param p1, "streamType"    # I

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    .line 194
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    .line 195
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/VolumeInfo$Builder;->mHasMuteCommand:Z

    .line 196
    iput-boolean v1, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    .line 197
    const/16 v1, -0x64

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    .line 198
    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    .line 199
    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    .line 206
    invoke-static {p1}, Landroid/media/AudioManager;->isPublicStreamType(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 209
    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    .line 210
    iput p1, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    .line 211
    return-void

    .line 207
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid public stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Landroid/media/VolumeInfo;)V
    .registers 3
    .param p1, "info"    # Landroid/media/VolumeInfo;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    .line 194
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mHasMuteCommand:Z

    .line 196
    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    .line 197
    const/16 v0, -0x64

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    .line 198
    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    .line 199
    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    .line 228
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmUsesStreamType(Landroid/media/VolumeInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    .line 230
    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmStreamType(Landroid/media/VolumeInfo;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    .line 231
    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmHasMuteCommand(Landroid/media/VolumeInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mHasMuteCommand:Z

    .line 232
    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmIsMuted(Landroid/media/VolumeInfo;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    .line 233
    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmVolIndex(Landroid/media/VolumeInfo;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    .line 234
    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmMinVolIndex(Landroid/media/VolumeInfo;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    .line 235
    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmMaxVolIndex(Landroid/media/VolumeInfo;)I

    move-result v0

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    .line 236
    invoke-static {p1}, Landroid/media/VolumeInfo;->-$$Nest$fgetmVolGroup(Landroid/media/VolumeInfo;)Landroid/media/audiopolicy/AudioVolumeGroup;

    move-result-object v0

    iput-object v0, p0, Landroid/media/VolumeInfo$Builder;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 237
    return-void
.end method

.method public constructor whitelist <init>(Landroid/media/audiopolicy/AudioVolumeGroup;)V
    .registers 4
    .param p1, "volGroup"    # Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    .line 194
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    .line 195
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mHasMuteCommand:Z

    .line 196
    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    .line 197
    const/16 v1, -0x64

    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    .line 198
    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    .line 199
    iput v1, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    .line 217
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    .line 219
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    .line 220
    iput-object p1, p0, Landroid/media/VolumeInfo$Builder;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    .line 221
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/media/VolumeInfo;
    .registers 13

    .line 294
    iget v0, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    const-string v1, " greater than max index:"

    const/16 v2, -0x64

    if-eq v0, v2, :cond_68

    .line 295
    iget v0, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    const-string v3, "Volume index:"

    if-eq v0, v2, :cond_3a

    iget v0, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    iget v4, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    if-lt v0, v4, :cond_15

    goto :goto_3a

    .line 296
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lower than min index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 299
    :cond_3a
    :goto_3a
    iget v0, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    if-eq v0, v2, :cond_68

    iget v0, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    iget v4, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    if-gt v0, v4, :cond_45

    goto :goto_68

    .line 300
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :cond_68
    :goto_68
    iget v0, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    if-eq v0, v2, :cond_9c

    iget v0, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    if-eq v0, v2, :cond_9c

    iget v0, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    iget v2, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    if-gt v0, v2, :cond_77

    goto :goto_9c

    .line 306
    :cond_77
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Min volume index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :cond_9c
    :goto_9c
    new-instance v2, Landroid/media/VolumeInfo;

    iget-boolean v3, p0, Landroid/media/VolumeInfo$Builder;->mUsesStreamType:Z

    iget-boolean v4, p0, Landroid/media/VolumeInfo$Builder;->mHasMuteCommand:Z

    iget-boolean v5, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    iget v6, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    iget v7, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    iget v8, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    iget-object v9, p0, Landroid/media/VolumeInfo$Builder;->mVolGroup:Landroid/media/audiopolicy/AudioVolumeGroup;

    iget v10, p0, Landroid/media/VolumeInfo$Builder;->mStreamType:I

    const/4 v11, 0x0

    invoke-direct/range {v2 .. v11}, Landroid/media/VolumeInfo;-><init>(ZZZIIILandroid/media/audiopolicy/AudioVolumeGroup;ILandroid/media/VolumeInfo-IA;)V

    return-object v2
.end method

.method public whitelist setMaxVolumeIndex(I)Landroid/media/VolumeInfo$Builder;
    .registers 4
    .param p1, "maxIndex"    # I

    .line 282
    const/16 v0, -0x64

    if-eq p1, v0, :cond_f

    if-ltz p1, :cond_7

    goto :goto_f

    .line 283
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Max volume index cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 285
    :cond_f
    :goto_f
    iput p1, p0, Landroid/media/VolumeInfo$Builder;->mMaxVolIndex:I

    .line 286
    return-object p0
.end method

.method public whitelist setMinVolumeIndex(I)Landroid/media/VolumeInfo$Builder;
    .registers 4
    .param p1, "minIndex"    # I

    .line 269
    const/16 v0, -0x64

    if-eq p1, v0, :cond_f

    if-ltz p1, :cond_7

    goto :goto_f

    .line 270
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Min volume index cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_f
    :goto_f
    iput p1, p0, Landroid/media/VolumeInfo$Builder;->mMinVolIndex:I

    .line 273
    return-object p0
.end method

.method public whitelist setMuted(Z)Landroid/media/VolumeInfo$Builder;
    .registers 3
    .param p1, "isMuted"    # Z

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/VolumeInfo$Builder;->mHasMuteCommand:Z

    .line 246
    iput-boolean p1, p0, Landroid/media/VolumeInfo$Builder;->mIsMuted:Z

    .line 247
    return-object p0
.end method

.method public whitelist setVolumeIndex(I)Landroid/media/VolumeInfo$Builder;
    .registers 4
    .param p1, "volIndex"    # I

    .line 256
    const/16 v0, -0x64

    if-eq p1, v0, :cond_f

    if-ltz p1, :cond_7

    goto :goto_f

    .line 257
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Volume index cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_f
    :goto_f
    iput p1, p0, Landroid/media/VolumeInfo$Builder;->mVolIndex:I

    .line 260
    return-object p0
.end method
