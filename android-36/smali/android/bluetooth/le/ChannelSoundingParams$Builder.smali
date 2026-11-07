.class public final Landroid/bluetooth/le/ChannelSoundingParams$Builder;
.super Ljava/lang/Object;
.source "ChannelSoundingParams.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/ChannelSoundingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mCsSecurityLevel:I

.field private blacklist mLocationType:I

.field private blacklist mSightType:I


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/le/ChannelSoundingParams$Builder;->mSightType:I

    .line 241
    iput v0, p0, Landroid/bluetooth/le/ChannelSoundingParams$Builder;->mLocationType:I

    .line 242
    const/4 v0, 0x1

    iput v0, p0, Landroid/bluetooth/le/ChannelSoundingParams$Builder;->mCsSecurityLevel:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/bluetooth/le/ChannelSoundingParams;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 318
    new-instance v0, Landroid/bluetooth/le/ChannelSoundingParams;

    iget v1, p0, Landroid/bluetooth/le/ChannelSoundingParams$Builder;->mSightType:I

    iget v2, p0, Landroid/bluetooth/le/ChannelSoundingParams$Builder;->mLocationType:I

    iget v3, p0, Landroid/bluetooth/le/ChannelSoundingParams$Builder;->mCsSecurityLevel:I

    invoke-direct {v0, v1, v2, v3}, Landroid/bluetooth/le/ChannelSoundingParams;-><init>(III)V

    return-object v0
.end method

.method public whitelist setCsSecurityLevel(I)Landroid/bluetooth/le/ChannelSoundingParams$Builder;
    .registers 5
    .param p1, "csSecurityLevel"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 297
    packed-switch p1, :pswitch_data_20

    .line 305
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown CS security level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :pswitch_1c
    iput p1, p0, Landroid/bluetooth/le/ChannelSoundingParams$Builder;->mCsSecurityLevel:I

    .line 303
    nop

    .line 308
    return-object p0

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setLocationType(I)Landroid/bluetooth/le/ChannelSoundingParams$Builder;
    .registers 5
    .param p1, "locationType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 274
    packed-switch p1, :pswitch_data_20

    .line 281
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown location type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :pswitch_1c
    iput p1, p0, Landroid/bluetooth/le/ChannelSoundingParams$Builder;->mLocationType:I

    .line 279
    nop

    .line 283
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist setSightType(I)Landroid/bluetooth/le/ChannelSoundingParams$Builder;
    .registers 5
    .param p1, "sightType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 253
    packed-switch p1, :pswitch_data_20

    .line 260
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown sight type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :pswitch_1c
    iput p1, p0, Landroid/bluetooth/le/ChannelSoundingParams$Builder;->mSightType:I

    .line 258
    nop

    .line 262
    return-object p0

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
    .end packed-switch
.end method
