.class public Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
.super Ljava/lang/Object;
.source "ProgramFragmentFixedFunction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/renderscript/ProgramFragmentFixedFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;,
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;,
        Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;
    }
.end annotation


# static fields
.field private static synthetic -android_renderscript_ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues:[I = null

.field private static synthetic -android_renderscript_ProgramFragmentFixedFunction$Builder$FormatSwitchesValues:[I = null

.field public static final MAX_TEXTURE:I = 0x2


# instance fields
.field mNumTextures:I

.field mPointSpriteEnable:Z

.field mRS:Landroid/renderscript/RenderScript;

.field mShader:Ljava/lang/String;

.field mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

.field mVaryingColorEnable:Z


# direct methods
.method private static synthetic -getandroid_renderscript_ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android_renderscript_ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android_renderscript_ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->values()[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->DECAL:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    #@10
    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->MODULATE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    #@19
    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->REPLACE:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    #@22
    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    #@29
    :goto_2
    sput-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android_renderscript_ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues:[I

    #@2b
    return-object v0

    #@2c
    :catch_0
    move-exception v1

    #@2d
    goto :goto_2

    #@2e
    :catch_1
    move-exception v1

    #@2f
    goto :goto_1

    #@30
    :catch_2
    move-exception v1

    #@31
    goto :goto_0
.end method

.method private static synthetic -getandroid_renderscript_ProgramFragmentFixedFunction$Builder$FormatSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android_renderscript_ProgramFragmentFixedFunction$Builder$FormatSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android_renderscript_ProgramFragmentFixedFunction$Builder$FormatSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->values()[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ALPHA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    #@10
    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->LUMINANCE_ALPHA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    #@19
    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGB:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    #@22
    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->RGBA:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    #@2b
    invoke-virtual {v1}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    #@32
    :goto_3
    sput-object v0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-android_renderscript_ProgramFragmentFixedFunction$Builder$FormatSwitchesValues:[I

    #@34
    return-object v0

    #@35
    :catch_0
    move-exception v1

    #@36
    goto :goto_3

    #@37
    :catch_1
    move-exception v1

    #@38
    goto :goto_2

    #@39
    :catch_2
    move-exception v1

    #@3a
    goto :goto_1

    #@3b
    :catch_3
    move-exception v1

    #@3c
    goto :goto_0
.end method

.method public constructor <init>(Landroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 232
    iput-object p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@5
    .line 233
    const/4 v0, 0x2

    #@6
    new-array v0, v0, [Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    #@8
    iput-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    #@a
    .line 234
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mPointSpriteEnable:Z

    #@d
    .line 231
    return-void
.end method

.method private buildShaderString()V
    .locals 3

    #@0
    .prologue
    .line 162
    const-string/jumbo v1, "//rs_shader_internal\n"

    #@3
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@5
    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    const-string/jumbo v2, "varying lowp vec4 varColor;\n"

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@1d
    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    const-string/jumbo v2, "varying vec2 varTex0;\n"

    #@2b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@35
    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    #@37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@3a
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@3c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v1

    #@40
    const-string/jumbo v2, "void main() {\n"

    #@43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4a
    move-result-object v1

    #@4b
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@4d
    .line 167
    iget-boolean v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    #@4f
    if-eqz v1, :cond_1

    #@51
    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v1

    #@5c
    const-string/jumbo v2, "  lowp vec4 col = varColor;\n"

    #@5f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@62
    move-result-object v1

    #@63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v1

    #@67
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@69
    .line 173
    :goto_0
    iget v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    #@6b
    if-eqz v1, :cond_0

    #@6d
    .line 174
    iget-boolean v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mPointSpriteEnable:Z

    #@6f
    if-eqz v1, :cond_2

    #@71
    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@78
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v1

    #@7c
    const-string/jumbo v2, "  vec2 t0 = gl_PointCoord;\n"

    #@7f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v1

    #@83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@86
    move-result-object v1

    #@87
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@89
    .line 181
    :cond_0
    :goto_1
    const/4 v0, 0x0

    #@8a
    .local v0, "i":I
    :goto_2
    iget v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    #@8c
    if-ge v0, v1, :cond_3

    #@8e
    .line 182
    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-getandroid_renderscript_ProgramFragmentFixedFunction$Builder$EnvModeSwitchesValues()[I

    #@91
    move-result-object v1

    #@92
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    #@94
    aget-object v2, v2, v0

    #@96
    iget-object v2, v2, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->env:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;

    #@98
    invoke-virtual {v2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;->ordinal()I

    #@9b
    move-result v2

    #@9c
    aget v1, v1, v2

    #@9e
    packed-switch v1, :pswitch_data_0

    #@a1
    .line 181
    :goto_3
    add-int/lit8 v0, v0, 0x1

    #@a3
    goto :goto_2

    #@a4
    .line 170
    .end local v0    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@a6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a9
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@ab
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v1

    #@af
    const-string/jumbo v2, "  lowp vec4 col = UNI_Color;\n"

    #@b2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v1

    #@b6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v1

    #@ba
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@bc
    goto :goto_0

    #@bd
    .line 177
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@bf
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c2
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@c4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c7
    move-result-object v1

    #@c8
    const-string/jumbo v2, "  vec2 t0 = varTex0.xy;\n"

    #@cb
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v1

    #@cf
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d2
    move-result-object v1

    #@d3
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@d5
    goto :goto_1

    #@d6
    .line 184
    .restart local v0    # "i":I
    :pswitch_0
    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-getandroid_renderscript_ProgramFragmentFixedFunction$Builder$FormatSwitchesValues()[I

    #@d9
    move-result-object v1

    #@da
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    #@dc
    aget-object v2, v2, v0

    #@de
    iget-object v2, v2, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->format:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    #@e0
    invoke-virtual {v2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    #@e3
    move-result v2

    #@e4
    aget v1, v1, v2

    #@e6
    packed-switch v1, :pswitch_data_1

    #@e9
    goto :goto_3

    #@ea
    .line 186
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    #@ec
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@ef
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@f1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f4
    move-result-object v1

    #@f5
    const-string/jumbo v2, "  col.a = texture2D(UNI_Tex0, t0).a;\n"

    #@f8
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v1

    #@fc
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ff
    move-result-object v1

    #@100
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@102
    goto :goto_3

    #@103
    .line 189
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@10a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10d
    move-result-object v1

    #@10e
    const-string/jumbo v2, "  col.rgba = texture2D(UNI_Tex0, t0).rgba;\n"

    #@111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@114
    move-result-object v1

    #@115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v1

    #@119
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@11b
    goto :goto_3

    #@11c
    .line 192
    :pswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@11e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@121
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@126
    move-result-object v1

    #@127
    const-string/jumbo v2, "  col.rgb = texture2D(UNI_Tex0, t0).rgb;\n"

    #@12a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12d
    move-result-object v1

    #@12e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@131
    move-result-object v1

    #@132
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@134
    goto/16 :goto_3

    #@136
    .line 195
    :pswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    #@138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@13b
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@13d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@140
    move-result-object v1

    #@141
    const-string/jumbo v2, "  col.rgba = texture2D(UNI_Tex0, t0).rgba;\n"

    #@144
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@147
    move-result-object v1

    #@148
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14b
    move-result-object v1

    #@14c
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@14e
    goto/16 :goto_3

    #@150
    .line 200
    :pswitch_5
    invoke-static {}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->-getandroid_renderscript_ProgramFragmentFixedFunction$Builder$FormatSwitchesValues()[I

    #@153
    move-result-object v1

    #@154
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    #@156
    aget-object v2, v2, v0

    #@158
    iget-object v2, v2, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;->format:Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;

    #@15a
    invoke-virtual {v2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;->ordinal()I

    #@15d
    move-result v2

    #@15e
    aget v1, v1, v2

    #@160
    packed-switch v1, :pswitch_data_2

    #@163
    goto/16 :goto_3

    #@165
    .line 202
    :pswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    #@167
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16a
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@16c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v1

    #@170
    const-string/jumbo v2, "  col.a *= texture2D(UNI_Tex0, t0).a;\n"

    #@173
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@176
    move-result-object v1

    #@177
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17a
    move-result-object v1

    #@17b
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@17d
    goto/16 :goto_3

    #@17f
    .line 205
    :pswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    #@181
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@184
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@189
    move-result-object v1

    #@18a
    const-string/jumbo v2, "  col.rgba *= texture2D(UNI_Tex0, t0).rgba;\n"

    #@18d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@190
    move-result-object v1

    #@191
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@194
    move-result-object v1

    #@195
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@197
    goto/16 :goto_3

    #@199
    .line 208
    :pswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    #@19b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@19e
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@1a0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a3
    move-result-object v1

    #@1a4
    const-string/jumbo v2, "  col.rgb *= texture2D(UNI_Tex0, t0).rgb;\n"

    #@1a7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1aa
    move-result-object v1

    #@1ab
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1ae
    move-result-object v1

    #@1af
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@1b1
    goto/16 :goto_3

    #@1b3
    .line 211
    :pswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    #@1b5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1b8
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@1ba
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bd
    move-result-object v1

    #@1be
    const-string/jumbo v2, "  col.rgba *= texture2D(UNI_Tex0, t0).rgba;\n"

    #@1c1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v1

    #@1c5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c8
    move-result-object v1

    #@1c9
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@1cb
    goto/16 :goto_3

    #@1cd
    .line 216
    :pswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    #@1cf
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d2
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@1d4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d7
    move-result-object v1

    #@1d8
    const-string/jumbo v2, "  col = texture2D(UNI_Tex0, t0);\n"

    #@1db
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1de
    move-result-object v1

    #@1df
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e2
    move-result-object v1

    #@1e3
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@1e5
    goto/16 :goto_3

    #@1e7
    .line 221
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    #@1e9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1ec
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@1ee
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f1
    move-result-object v1

    #@1f2
    const-string/jumbo v2, "  gl_FragColor = col;\n"

    #@1f5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f8
    move-result-object v1

    #@1f9
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1fc
    move-result-object v1

    #@1fd
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@1ff
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    #@201
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@204
    iget-object v2, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@206
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@209
    move-result-object v1

    #@20a
    const-string/jumbo v2, "}\n"

    #@20d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@210
    move-result-object v1

    #@211
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@214
    move-result-object v1

    #@215
    iput-object v1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@217
    .line 161
    return-void

    #@218
    .line 182
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_5
        :pswitch_0
    .end packed-switch

    #@222
    .line 184
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    #@22e
    .line 200
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public create()Landroid/renderscript/ProgramFragmentFixedFunction;
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x2

    #@1
    const/4 v12, 0x0

    #@2
    const/high16 v11, 0x3f800000    # 1.0f

    #@4
    .line 292
    new-instance v7, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;

    #@6
    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@8
    invoke-direct {v7, v9}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;-><init>(Landroid/renderscript/RenderScript;)V

    #@b
    .line 293
    .local v7, "sb":Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;
    iput v12, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    #@d
    .line 294
    const/4 v5, 0x0

    #@e
    .local v5, "i":I
    :goto_0
    if-ge v5, v13, :cond_1

    #@10
    .line 295
    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    #@12
    aget-object v9, v9, v5

    #@14
    if-eqz v9, :cond_0

    #@16
    .line 296
    iget v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    #@18
    add-int/lit8 v9, v9, 0x1

    #@1a
    iput v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    #@1c
    .line 294
    :cond_0
    add-int/lit8 v5, v5, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 299
    :cond_1
    invoke-direct {p0}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->buildShaderString()V

    #@22
    .line 300
    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mShader:Ljava/lang/String;

    #@24
    invoke-virtual {v7, v9}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->setShader(Ljava/lang/String;)Landroid/renderscript/Program$BaseProgramBuilder;

    #@27
    .line 302
    const/4 v1, 0x0

    #@28
    .line 303
    .local v1, "constType":Landroid/renderscript/Type;
    iget-boolean v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    #@2a
    if-nez v9, :cond_2

    #@2c
    .line 304
    new-instance v0, Landroid/renderscript/Element$Builder;

    #@2e
    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@30
    invoke-direct {v0, v9}, Landroid/renderscript/Element$Builder;-><init>(Landroid/renderscript/RenderScript;)V

    #@33
    .line 305
    .local v0, "b":Landroid/renderscript/Element$Builder;
    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@35
    invoke-static {v9}, Landroid/renderscript/Element;->F32_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@38
    move-result-object v9

    #@39
    const-string/jumbo v10, "Color"

    #@3c
    invoke-virtual {v0, v9, v10}, Landroid/renderscript/Element$Builder;->add(Landroid/renderscript/Element;Ljava/lang/String;)Landroid/renderscript/Element$Builder;

    #@3f
    .line 306
    new-instance v8, Landroid/renderscript/Type$Builder;

    #@41
    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@43
    invoke-virtual {v0}, Landroid/renderscript/Element$Builder;->create()Landroid/renderscript/Element;

    #@46
    move-result-object v10

    #@47
    invoke-direct {v8, v9, v10}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    #@4a
    .line 307
    .local v8, "typeBuilder":Landroid/renderscript/Type$Builder;
    const/4 v9, 0x1

    #@4b
    invoke-virtual {v8, v9}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    #@4e
    .line 308
    invoke-virtual {v8}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    #@51
    move-result-object v1

    #@52
    .line 309
    .local v1, "constType":Landroid/renderscript/Type;
    invoke-virtual {v7, v1}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->addConstant(Landroid/renderscript/Type;)Landroid/renderscript/Program$BaseProgramBuilder;

    #@55
    .line 311
    .end local v0    # "b":Landroid/renderscript/Element$Builder;
    .end local v1    # "constType":Landroid/renderscript/Type;
    .end local v8    # "typeBuilder":Landroid/renderscript/Type$Builder;
    :cond_2
    const/4 v5, 0x0

    #@56
    :goto_1
    iget v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mNumTextures:I

    #@58
    if-ge v5, v9, :cond_3

    #@5a
    .line 312
    sget-object v9, Landroid/renderscript/Program$TextureType;->TEXTURE_2D:Landroid/renderscript/Program$TextureType;

    #@5c
    invoke-virtual {v7, v9}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->addTexture(Landroid/renderscript/Program$TextureType;)Landroid/renderscript/Program$BaseProgramBuilder;

    #@5f
    .line 311
    add-int/lit8 v5, v5, 0x1

    #@61
    goto :goto_1

    #@62
    .line 315
    :cond_3
    invoke-virtual {v7}, Landroid/renderscript/ProgramFragmentFixedFunction$InternalBuilder;->create()Landroid/renderscript/ProgramFragmentFixedFunction;

    #@65
    move-result-object v6

    #@66
    .line 316
    .local v6, "pf":Landroid/renderscript/ProgramFragmentFixedFunction;
    iput v13, v6, Landroid/renderscript/ProgramFragmentFixedFunction;->mTextureCount:I

    #@68
    .line 317
    iget-boolean v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    #@6a
    if-nez v9, :cond_4

    #@6c
    .line 318
    iget-object v9, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mRS:Landroid/renderscript/RenderScript;

    #@6e
    invoke-static {v9, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    #@71
    move-result-object v2

    #@72
    .line 319
    .local v2, "constantData":Landroid/renderscript/Allocation;
    new-instance v4, Landroid/renderscript/FieldPacker;

    #@74
    const/16 v9, 0x10

    #@76
    invoke-direct {v4, v9}, Landroid/renderscript/FieldPacker;-><init>(I)V

    #@79
    .line 320
    .local v4, "fp":Landroid/renderscript/FieldPacker;
    new-instance v3, Landroid/renderscript/Float4;

    #@7b
    invoke-direct {v3, v11, v11, v11, v11}, Landroid/renderscript/Float4;-><init>(FFFF)V

    #@7e
    .line 321
    .local v3, "f4":Landroid/renderscript/Float4;
    invoke-virtual {v4, v3}, Landroid/renderscript/FieldPacker;->addF32(Landroid/renderscript/Float4;)V

    #@81
    .line 322
    invoke-virtual {v2, v12, v4}, Landroid/renderscript/Allocation;->setFromFieldPacker(ILandroid/renderscript/FieldPacker;)V

    #@84
    .line 323
    invoke-virtual {v6, v2, v12}, Landroid/renderscript/ProgramFragmentFixedFunction;->bindConstants(Landroid/renderscript/Allocation;I)V

    #@87
    .line 325
    .end local v2    # "constantData":Landroid/renderscript/Allocation;
    .end local v3    # "f4":Landroid/renderscript/Float4;
    .end local v4    # "fp":Landroid/renderscript/FieldPacker;
    :cond_4
    return-object v6
.end method

.method public setPointSpriteTexCoordinateReplacement(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 268
    iput-boolean p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mPointSpriteEnable:Z

    #@2
    .line 269
    return-object p0
.end method

.method public setTexture(Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;I)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .locals 2
    .param p1, "env"    # Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;
    .param p2, "fmt"    # Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;
    .param p3, "slot"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 253
    if-ltz p3, :cond_0

    #@2
    const/4 v0, 0x2

    #@3
    if-lt p3, v0, :cond_1

    #@5
    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    const-string/jumbo v1, "MAX_TEXTURE exceeded."

    #@a
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 256
    :cond_1
    iget-object v0, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mSlots:[Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    #@10
    new-instance v1, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;

    #@12
    invoke-direct {v1, p0, p1, p2}, Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Slot;-><init>(Landroid/renderscript/ProgramFragmentFixedFunction$Builder;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$EnvMode;Landroid/renderscript/ProgramFragmentFixedFunction$Builder$Format;)V

    #@15
    aput-object v1, v0, p3

    #@17
    .line 257
    return-object p0
.end method

.method public setVaryingColor(Z)Landroid/renderscript/ProgramFragmentFixedFunction$Builder;
    .locals 0
    .param p1, "enable"    # Z

    #@0
    .prologue
    .line 281
    iput-boolean p1, p0, Landroid/renderscript/ProgramFragmentFixedFunction$Builder;->mVaryingColorEnable:Z

    #@2
    .line 282
    return-object p0
.end method
