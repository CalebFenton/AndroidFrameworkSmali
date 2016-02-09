.class public Landroid/media/audiopolicy/AudioMix$Builder;
.super Ljava/lang/Object;
.source "AudioMix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/audiopolicy/AudioMix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCallbackFlags:I

.field private mFormat:Landroid/media/AudioFormat;

.field private mRouteFlags:I

.field private mRule:Landroid/media/audiopolicy/AudioMixingRule;


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 171
    iput-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@7
    .line 172
    iput-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    #@9
    .line 173
    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@b
    .line 174
    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    #@d
    .line 180
    return-void
.end method

.method public constructor <init>(Landroid/media/audiopolicy/AudioMixingRule;)V
    .locals 2
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 171
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@7
    .line 172
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    #@9
    .line 173
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@b
    .line 174
    iput v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    #@d
    .line 190
    if-nez p1, :cond_0

    #@f
    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    const-string/jumbo v1, "Illegal null AudioMixingRule argument"

    #@14
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@17
    throw v0

    #@18
    .line 193
    :cond_0
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@1a
    .line 189
    return-void
.end method


# virtual methods
.method public build()Landroid/media/audiopolicy/AudioMix;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 272
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 273
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "Illegal null AudioMixingRule"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 275
    :cond_0
    iget v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@10
    if-nez v0, :cond_1

    #@12
    .line 277
    const/4 v0, 0x1

    #@13
    iput v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@15
    .line 279
    :cond_1
    iget-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    #@17
    if-nez v0, :cond_3

    #@19
    .line 280
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    #@1c
    move-result v6

    #@1d
    .line 281
    .local v6, "rate":I
    if-gtz v6, :cond_2

    #@1f
    .line 282
    const v6, 0xac44

    #@22
    .line 284
    :cond_2
    new-instance v0, Landroid/media/AudioFormat$Builder;

    #@24
    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    #@27
    invoke-virtual {v0, v6}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    #@2a
    move-result-object v0

    #@2b
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    #@2e
    move-result-object v0

    #@2f
    iput-object v0, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    #@31
    .line 286
    .end local v6    # "rate":I
    :cond_3
    new-instance v0, Landroid/media/audiopolicy/AudioMix;

    #@33
    iget-object v1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@35
    iget-object v2, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    #@37
    iget v3, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@39
    iget v4, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    #@3b
    invoke-direct/range {v0 .. v5}, Landroid/media/audiopolicy/AudioMix;-><init>(Landroid/media/audiopolicy/AudioMixingRule;Landroid/media/AudioFormat;IILandroid/media/audiopolicy/AudioMix;)V

    #@3e
    return-object v0
.end method

.method public setCallbackFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 3
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    if-eqz p1, :cond_0

    #@2
    and-int/lit8 v0, p1, 0x1

    #@4
    if-nez v0, :cond_0

    #@6
    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    new-instance v1, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v2, "Illegal callback flags 0x"

    #@10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    .line 222
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 224
    :cond_0
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mCallbackFlags:I

    #@2a
    .line 225
    return-object p0
.end method

.method public setFormat(Landroid/media/AudioFormat;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .param p1, "format"    # Landroid/media/AudioFormat;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 237
    if-nez p1, :cond_0

    #@2
    .line 238
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal null AudioFormat argument"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 240
    :cond_0
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mFormat:Landroid/media/AudioFormat;

    #@d
    .line 241
    return-object p0
.end method

.method public setMixingRule(Landroid/media/audiopolicy/AudioMixingRule;)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 2
    .param p1, "rule"    # Landroid/media/audiopolicy/AudioMixingRule;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 205
    if-nez p1, :cond_0

    #@2
    .line 206
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal null AudioMixingRule argument"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 208
    :cond_0
    iput-object p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRule:Landroid/media/audiopolicy/AudioMixingRule;

    #@d
    .line 209
    return-object p0
.end method

.method public setRouteFlags(I)Landroid/media/audiopolicy/AudioMix$Builder;
    .locals 3
    .param p1, "routeFlags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 254
    if-nez p1, :cond_0

    #@2
    .line 255
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v1, "Illegal empty route flags"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 257
    :cond_0
    and-int/lit8 v0, p1, 0x3

    #@d
    if-nez v0, :cond_1

    #@f
    .line 258
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@11
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Invalid route flags 0x"

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    .line 259
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    .line 259
    const-string/jumbo v2, "when creating an AudioMix"

    #@28
    .line 258
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2f
    move-result-object v1

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 261
    :cond_1
    iput p1, p0, Landroid/media/audiopolicy/AudioMix$Builder;->mRouteFlags:I

    #@36
    .line 262
    return-object p0
.end method
