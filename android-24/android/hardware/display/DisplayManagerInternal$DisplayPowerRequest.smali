.class public final Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
.super Ljava/lang/Object;
.source "DisplayManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/display/DisplayManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DisplayPowerRequest"
.end annotation


# static fields
.field public static final POLICY_BRIGHT:I = 0x3

.field public static final POLICY_DIM:I = 0x2

.field public static final POLICY_DOZE:I = 0x1

.field public static final POLICY_OFF:I


# instance fields
.field public blockScreenOn:Z

.field public boostScreenBrightness:Z

.field public brightnessSetByUser:Z

.field public dozeScreenBrightness:I

.field public dozeScreenState:I

.field public lowPowerMode:Z

.field public policy:I

.field public screenAutoBrightnessAdjustment:F

.field public screenBrightness:I

.field public useAutoBrightness:Z

.field public useProximitySensor:Z

.field public useTwilight:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 218
    const/4 v0, 0x3

    #@5
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@7
    .line 219
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    #@9
    .line 220
    const/16 v0, 0xff

    #@b
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    #@d
    .line 221
    const/4 v0, 0x0

    #@e
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    #@10
    .line 222
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    #@12
    .line 223
    iput-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    #@14
    .line 224
    const/4 v0, -0x1

    #@15
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    #@17
    .line 225
    iput v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@19
    .line 217
    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 0
    .param p1, "other"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@0
    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 229
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V

    #@6
    .line 228
    return-void
.end method

.method public static policyToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "policy"    # I

    #@0
    .prologue
    .line 295
    packed-switch p0, :pswitch_data_0

    #@3
    .line 305
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0

    #@8
    .line 297
    :pswitch_0
    const-string/jumbo v0, "OFF"

    #@b
    return-object v0

    #@c
    .line 299
    :pswitch_1
    const-string/jumbo v0, "DOZE"

    #@f
    return-object v0

    #@10
    .line 301
    :pswitch_2
    const-string/jumbo v0, "DIM"

    #@13
    return-object v0

    #@14
    .line 303
    :pswitch_3
    const-string/jumbo v0, "BRIGHT"

    #@17
    return-object v0

    #@18
    .line 295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public copyFrom(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)V
    .locals 1
    .param p1, "other"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@0
    .prologue
    .line 237
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@2
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@4
    .line 238
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    #@6
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    #@8
    .line 239
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    #@a
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    #@c
    .line 240
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    #@e
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    #@10
    .line 241
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    #@12
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    #@14
    .line 242
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    #@16
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    #@18
    .line 243
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    #@1a
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    #@1c
    .line 244
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    #@1e
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    #@20
    .line 245
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    #@22
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    #@24
    .line 246
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    #@26
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    #@28
    .line 247
    iget v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@2a
    iput v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@2c
    .line 248
    iget-boolean v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTwilight:Z

    #@2e
    iput-boolean v0, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTwilight:Z

    #@30
    .line 236
    return-void
.end method

.method public equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z
    .locals 3
    .param p1, "other"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 258
    if-eqz p1, :cond_0

    #@3
    .line 259
    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@5
    iget v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@7
    if-ne v1, v2, :cond_0

    #@9
    .line 260
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    #@b
    iget-boolean v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    #@d
    if-ne v1, v2, :cond_0

    #@f
    .line 261
    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    #@11
    iget v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    #@13
    if-ne v1, v2, :cond_0

    #@15
    .line 262
    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    #@17
    iget v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    #@19
    cmpl-float v1, v1, v2

    #@1b
    if-nez v1, :cond_0

    #@1d
    .line 263
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    #@1f
    iget-boolean v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    #@21
    if-ne v1, v2, :cond_0

    #@23
    .line 264
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    #@25
    iget-boolean v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    #@27
    if-ne v1, v2, :cond_0

    #@29
    .line 265
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    #@2b
    iget-boolean v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    #@2d
    if-ne v1, v2, :cond_0

    #@2f
    .line 266
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    #@31
    iget-boolean v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    #@33
    if-ne v1, v2, :cond_0

    #@35
    .line 267
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    #@37
    iget-boolean v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    #@39
    if-ne v1, v2, :cond_0

    #@3b
    .line 268
    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    #@3d
    iget v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    #@3f
    if-ne v1, v2, :cond_0

    #@41
    .line 269
    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@43
    iget v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@45
    if-ne v1, v2, :cond_0

    #@47
    .line 270
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTwilight:Z

    #@49
    iget-boolean v2, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTwilight:Z

    #@4b
    if-ne v1, v2, :cond_0

    #@4d
    const/4 v0, 0x1

    #@4e
    .line 258
    :cond_0
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 253
    instance-of v0, p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 254
    check-cast p1, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;

    #@6
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->equals(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Z

    #@9
    move-result v0

    #@a
    .line 253
    :goto_0
    return v0

    #@b
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 275
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public isBrightOrDim()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 233
    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@3
    const/4 v2, 0x3

    #@4
    if-eq v1, v2, :cond_0

    #@6
    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@8
    const/4 v2, 0x2

    #@9
    if-ne v1, v2, :cond_1

    #@b
    :cond_0
    :goto_0
    return v0

    #@c
    :cond_1
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "policy="

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policy:I

    #@e
    invoke-static {v1}, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->policyToString(I)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v0

    #@16
    .line 281
    const-string/jumbo v1, ", useProximitySensor="

    #@19
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v0

    #@1d
    .line 281
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useProximitySensor:Z

    #@1f
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@22
    move-result-object v0

    #@23
    .line 282
    const-string/jumbo v1, ", screenBrightness="

    #@26
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v0

    #@2a
    .line 282
    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenBrightness:I

    #@2c
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v0

    #@30
    .line 283
    const-string/jumbo v1, ", screenAutoBrightnessAdjustment="

    #@33
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    .line 283
    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    #@39
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v0

    #@3d
    .line 284
    const-string/jumbo v1, ", brightnessSetByUser="

    #@40
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v0

    #@44
    .line 284
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->brightnessSetByUser:Z

    #@46
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    .line 285
    const-string/jumbo v1, ", useAutoBrightness="

    #@4d
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v0

    #@51
    .line 285
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useAutoBrightness:Z

    #@53
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@56
    move-result-object v0

    #@57
    .line 286
    const-string/jumbo v1, ", blockScreenOn="

    #@5a
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v0

    #@5e
    .line 286
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->blockScreenOn:Z

    #@60
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    .line 287
    const-string/jumbo v1, ", lowPowerMode="

    #@67
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v0

    #@6b
    .line 287
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->lowPowerMode:Z

    #@6d
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@70
    move-result-object v0

    #@71
    .line 288
    const-string/jumbo v1, ", boostScreenBrightness="

    #@74
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@77
    move-result-object v0

    #@78
    .line 288
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->boostScreenBrightness:Z

    #@7a
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v0

    #@7e
    .line 289
    const-string/jumbo v1, ", dozeScreenBrightness="

    #@81
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@84
    move-result-object v0

    #@85
    .line 289
    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenBrightness:I

    #@87
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v0

    #@8b
    .line 290
    const-string/jumbo v1, ", dozeScreenState="

    #@8e
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v0

    #@92
    .line 290
    iget v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->dozeScreenState:I

    #@94
    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    #@97
    move-result-object v1

    #@98
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    .line 291
    const-string/jumbo v1, ", useTwilight="

    #@9f
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v0

    #@a3
    .line 291
    iget-boolean v1, p0, Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;->useTwilight:Z

    #@a5
    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v0

    #@a9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v0

    #@ad
    return-object v0
.end method
