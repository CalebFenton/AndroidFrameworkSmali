.class public Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
.super Ljava/lang/Object;
.source "SoundTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/SoundTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoundModel"
.end annotation


# static fields
.field public static final TYPE_KEYPHRASE:I = 0x0

.field public static final TYPE_UNKNOWN:I = -0x1


# instance fields
.field public final data:[B

.field public final type:I

.field public final uuid:Ljava/util/UUID;

.field public final vendorUuid:Ljava/util/UUID;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;I[B)V
    .locals 0
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "vendorUuid"    # Ljava/util/UUID;
    .param p3, "type"    # I
    .param p4, "data"    # [B

    #@0
    .prologue
    .line 208
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 209
    iput-object p1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    #@5
    .line 210
    iput-object p2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    #@7
    .line 211
    iput p3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    #@9
    .line 212
    iput-object p4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    #@b
    .line 208
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 228
    if-ne p0, p1, :cond_0

    #@4
    .line 229
    return v4

    #@5
    .line 230
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 231
    return v3

    #@8
    .line 232
    :cond_1
    instance-of v1, p1, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    #@a
    if-nez v1, :cond_2

    #@c
    .line 233
    return v3

    #@d
    :cond_2
    move-object v0, p1

    #@e
    .line 234
    check-cast v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;

    #@10
    .line 235
    .local v0, "other":Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    #@12
    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    #@14
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@17
    move-result v1

    #@18
    if-nez v1, :cond_3

    #@1a
    .line 236
    return v3

    #@1b
    .line 237
    :cond_3
    iget v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    #@1d
    iget v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    #@1f
    if-eq v1, v2, :cond_4

    #@21
    .line 238
    return v3

    #@22
    .line 239
    :cond_4
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    #@24
    if-nez v1, :cond_5

    #@26
    .line 240
    iget-object v1, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    #@28
    if-eqz v1, :cond_6

    #@2a
    .line 241
    return v3

    #@2b
    .line 242
    :cond_5
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    #@2d
    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    #@2f
    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@32
    move-result v1

    #@33
    if-nez v1, :cond_6

    #@35
    .line 243
    return v3

    #@36
    .line 244
    :cond_6
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    #@38
    if-nez v1, :cond_7

    #@3a
    .line 245
    iget-object v1, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    #@3c
    if-eqz v1, :cond_8

    #@3e
    .line 246
    return v3

    #@3f
    .line 247
    :cond_7
    iget-object v1, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    #@41
    iget-object v2, v0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    #@43
    invoke-virtual {v1, v2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v1

    #@47
    if-nez v1, :cond_8

    #@49
    .line 248
    return v3

    #@4a
    .line 249
    :cond_8
    return v4
.end method

.method public hashCode()I
    .locals 5

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 217
    const/16 v0, 0x1f

    #@3
    .line 219
    .local v0, "prime":I
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->data:[B

    #@5
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    #@8
    move-result v2

    #@9
    add-int/lit8 v1, v2, 0x1f

    #@b
    .line 220
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    #@d
    iget v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->type:I

    #@f
    add-int v1, v2, v4

    #@11
    .line 221
    mul-int/lit8 v4, v1, 0x1f

    #@13
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    #@15
    if-nez v2, :cond_0

    #@17
    move v2, v3

    #@18
    :goto_0
    add-int v1, v4, v2

    #@1a
    .line 222
    mul-int/lit8 v2, v1, 0x1f

    #@1c
    iget-object v4, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    #@1e
    if-nez v4, :cond_1

    #@20
    :goto_1
    add-int v1, v2, v3

    #@22
    .line 223
    return v1

    #@23
    .line 221
    :cond_0
    iget-object v2, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->uuid:Ljava/util/UUID;

    #@25
    invoke-virtual {v2}, Ljava/util/UUID;->hashCode()I

    #@28
    move-result v2

    #@29
    goto :goto_0

    #@2a
    .line 222
    :cond_1
    iget-object v3, p0, Landroid/hardware/soundtrigger/SoundTrigger$SoundModel;->vendorUuid:Ljava/util/UUID;

    #@2c
    invoke-virtual {v3}, Ljava/util/UUID;->hashCode()I

    #@2f
    move-result v3

    #@30
    goto :goto_1
.end method
