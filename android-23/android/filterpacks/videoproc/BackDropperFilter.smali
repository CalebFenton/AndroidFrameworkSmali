.class public Landroid/filterpacks/videoproc/BackDropperFilter;
.super Landroid/filterfw/core/Filter;
.source "BackDropperFilter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_ACCEPT_STDDEV:F = 0.85f

.field private static final DEFAULT_ADAPT_RATE_BG:F = 0.0f

.field private static final DEFAULT_ADAPT_RATE_FG:F = 0.0f

.field private static final DEFAULT_AUTO_WB_SCALE:Ljava/lang/String; = "0.25"

.field private static final DEFAULT_BG_FIT_TRANSFORM:[F

.field private static final DEFAULT_EXPOSURE_CHANGE:F = 1.0f

.field private static final DEFAULT_HIER_LRG_EXPONENT:I = 0x3

.field private static final DEFAULT_HIER_LRG_SCALE:F = 0.7f

.field private static final DEFAULT_HIER_MID_EXPONENT:I = 0x2

.field private static final DEFAULT_HIER_MID_SCALE:F = 0.6f

.field private static final DEFAULT_HIER_SML_EXPONENT:I = 0x0

.field private static final DEFAULT_HIER_SML_SCALE:F = 0.5f

.field private static final DEFAULT_LEARNING_ADAPT_RATE:F = 0.2f

.field private static final DEFAULT_LEARNING_DONE_THRESHOLD:I = 0x14

.field private static final DEFAULT_LEARNING_DURATION:I = 0x28

.field private static final DEFAULT_LEARNING_VERIFY_DURATION:I = 0xa

.field private static final DEFAULT_MASK_BLEND_BG:F = 0.65f

.field private static final DEFAULT_MASK_BLEND_FG:F = 0.95f

.field private static final DEFAULT_MASK_HEIGHT_EXPONENT:I = 0x8

.field private static final DEFAULT_MASK_VERIFY_RATE:F = 0.25f

.field private static final DEFAULT_MASK_WIDTH_EXPONENT:I = 0x8

.field private static final DEFAULT_UV_SCALE_FACTOR:F = 1.35f

.field private static final DEFAULT_WHITE_BALANCE_BLUE_CHANGE:F = 0.0f

.field private static final DEFAULT_WHITE_BALANCE_RED_CHANGE:F = 0.0f

.field private static final DEFAULT_WHITE_BALANCE_TOGGLE:I = 0x0

.field private static final DEFAULT_Y_SCALE_FACTOR:F = 0.4f

.field private static final DISTANCE_STORAGE_SCALE:Ljava/lang/String; = "0.6"

.field private static final MASK_SMOOTH_EXPONENT:Ljava/lang/String; = "2.0"

.field private static final MIN_VARIANCE:Ljava/lang/String; = "3.0"

.field private static final RGB_TO_YUV_MATRIX:Ljava/lang/String; = "0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 "

.field private static final TAG:Ljava/lang/String; = "BackDropperFilter"

.field private static final VARIANCE_STORAGE_SCALE:Ljava/lang/String; = "5.0"

.field private static final mAutomaticWhiteBalance:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float pyramid_depth;\nuniform bool autowb_toggle;\nvarying vec2 v_texcoord;\nvoid main() {\n   vec4 mean_video = texture2D(tex_sampler_0, v_texcoord, pyramid_depth);\n   vec4 mean_bg = texture2D(tex_sampler_1, v_texcoord, pyramid_depth);\n   float green_normalizer = mean_video.g / mean_bg.g;\n   vec4 adjusted_value = vec4(mean_bg.r / mean_video.r * green_normalizer, 1., \n                         mean_bg.b / mean_video.b * green_normalizer, 1.) * auto_wb_scale; \n   gl_FragColor = autowb_toggle ? adjusted_value : vec4(auto_wb_scale);\n}\n"

.field private static final mBgDistanceShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n\n  float dist_y = gauss_dist_y(fg.r, mean.r, variance.r);\n  float dist_uv = gauss_dist_uv(fg.gb, mean.gb, variance.gb);\n  gl_FragColor = vec4(0.5*fg.rg, dist_scale*dist_y, dist_scale*dist_uv);\n}\n"

.field private static final mBgMaskShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform float accept_variance;\nuniform vec2 yuv_weights;\nuniform float scale_lrg;\nuniform float scale_mid;\nuniform float scale_sml;\nuniform float exp_lrg;\nuniform float exp_mid;\nuniform float exp_sml;\nvarying vec2 v_texcoord;\nbool is_fg(vec2 dist_yc, float accept_variance) {\n  return ( dot(yuv_weights, dist_yc) >= accept_variance );\n}\nvoid main() {\n  vec4 dist_lrg_sc = texture2D(tex_sampler_0, v_texcoord, exp_lrg);\n  vec4 dist_mid_sc = texture2D(tex_sampler_0, v_texcoord, exp_mid);\n  vec4 dist_sml_sc = texture2D(tex_sampler_0, v_texcoord, exp_sml);\n  vec2 dist_lrg = inv_dist_scale * dist_lrg_sc.ba;\n  vec2 dist_mid = inv_dist_scale * dist_mid_sc.ba;\n  vec2 dist_sml = inv_dist_scale * dist_sml_sc.ba;\n  vec2 norm_dist = 0.75 * dist_sml / accept_variance;\n  bool is_fg_lrg = is_fg(dist_lrg, accept_variance * scale_lrg);\n  bool is_fg_mid = is_fg_lrg || is_fg(dist_mid, accept_variance * scale_mid);\n  float is_fg_sml =\n      float(is_fg_mid || is_fg(dist_sml, accept_variance * scale_sml));\n  float alpha = 0.5 * is_fg_sml + 0.3 * float(is_fg_mid) + 0.2 * float(is_fg_lrg);\n  gl_FragColor = vec4(alpha, norm_dist, is_fg_sml);\n}\n"

.field private static final mBgSubtractForceShader:Ljava/lang/String; = "  vec4 ghost_rgb = (fg_adjusted * 0.7 + vec4(0.3,0.3,0.4,0.))*0.65 + \n                   0.35*bg_rgb;\n  float glow_start = 0.75 * mask_blend_bg; \n  float glow_max   = mask_blend_bg; \n  gl_FragColor = mask.a < glow_start ? bg_rgb : \n                 mask.a < glow_max ? mix(bg_rgb, vec4(0.9,0.9,1.0,1.0), \n                                     (mask.a - glow_start) / (glow_max - glow_start) ) : \n                 mask.a < mask_blend_fg ? mix(vec4(0.9,0.9,1.0,1.0), ghost_rgb, \n                                    (mask.a - glow_max) / (mask_blend_fg - glow_max) ) : \n                 ghost_rgb;\n}\n"

.field private static final mBgSubtractShader:Ljava/lang/String; = "uniform mat3 bg_fit_transform;\nuniform float mask_blend_bg;\nuniform float mask_blend_fg;\nuniform float exposure_change;\nuniform float whitebalancered_change;\nuniform float whitebalanceblue_change;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 bg_texcoord = (bg_fit_transform * vec3(v_texcoord, 1.)).xy;\n  vec4 bg_rgb = texture2D(tex_sampler_1, bg_texcoord);\n  vec4 wb_auto_scale = texture2D(tex_sampler_3, v_texcoord) * exposure_change / auto_wb_scale;\n  vec4 wb_manual_scale = vec4(1. + whitebalancered_change, 1., 1. + whitebalanceblue_change, 1.);\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord);\n  vec4 fg_adjusted = fg_rgb * wb_manual_scale * wb_auto_scale;\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n  float alpha = smoothstep(mask_blend_bg, mask_blend_fg, mask.a);\n  gl_FragColor = mix(bg_rgb, fg_adjusted, alpha);\n"

.field private static final mDebugOutputNames:[Ljava/lang/String;

.field private static final mInputNames:[Ljava/lang/String;

.field private static final mMaskVerifyShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float verify_rate;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 lastmask = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  float newmask = mix(lastmask.a, mask.a, verify_rate);\n  gl_FragColor = vec4(0., 0., 0., newmask);\n}\n"

.field private static final mOutputNames:[Ljava/lang/String;

.field private static mSharedUtilShader:Ljava/lang/String; = null

.field private static final mUpdateBgModelMeanShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 new_mean = mix(mean, fg, alpha);\n  gl_FragColor = new_mean;\n}\n"

.field private static final mUpdateBgModelVarianceShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_3, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 cur_variance = (fg-mean)*(fg-mean);\n  vec4 new_variance = mix(variance, cur_variance, alpha);\n  new_variance = max(new_variance, vec4(min_variance));\n  gl_FragColor = var_scale * new_variance;\n}\n"


# instance fields
.field private final BACKGROUND_FILL_CROP:I

.field private final BACKGROUND_FIT:I

.field private final BACKGROUND_STRETCH:I

.field private copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

.field private isOpen:Z

.field private mAcceptStddev:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "acceptStddev"
    .end annotation
.end field

.field private mAdaptRateBg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "adaptRateBg"
    .end annotation
.end field

.field private mAdaptRateFg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "adaptRateFg"
    .end annotation
.end field

.field private mAdaptRateLearning:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningAdaptRate"
    .end annotation
.end field

.field private mAutoWB:Landroid/filterfw/core/GLFrame;

.field private mAutoWBToggle:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "autowbToggle"
    .end annotation
.end field

.field private mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

.field private mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mBackgroundFitMode:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "backgroundFitMode"
    .end annotation
.end field

.field private mBackgroundFitModeChanged:Z

.field private mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

.field private mBgInput:Landroid/filterfw/core/GLFrame;

.field private mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

.field private mBgMean:[Landroid/filterfw/core/GLFrame;

.field private mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

.field private mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

.field private mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

.field private mBgVariance:[Landroid/filterfw/core/GLFrame;

.field private mChromaScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "chromaScale"
    .end annotation
.end field

.field private mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

.field private mDistance:Landroid/filterfw/core/GLFrame;

.field private mExposureChange:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "exposureChange"
    .end annotation
.end field

.field private mFrameCount:I

.field private mHierarchyLrgExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierLrgExp"
    .end annotation
.end field

.field private mHierarchyLrgScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierLrgScale"
    .end annotation
.end field

.field private mHierarchyMidExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierMidExp"
    .end annotation
.end field

.field private mHierarchyMidScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierMidScale"
    .end annotation
.end field

.field private mHierarchySmlExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierSmlExp"
    .end annotation
.end field

.field private mHierarchySmlScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierSmlScale"
    .end annotation
.end field

.field private mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningDoneListener"
    .end annotation
.end field

.field private mLearningDuration:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningDuration"
    .end annotation
.end field

.field private mLearningVerifyDuration:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningVerifyDuration"
    .end annotation
.end field

.field private final mLogVerbose:Z

.field private mLumScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "lumScale"
    .end annotation
.end field

.field private mMask:Landroid/filterfw/core/GLFrame;

.field private mMaskAverage:Landroid/filterfw/core/GLFrame;

.field private mMaskBg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskBg"
    .end annotation
.end field

.field private mMaskFg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskFg"
    .end annotation
.end field

.field private mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mMaskHeightExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskHeightExp"
    .end annotation
.end field

.field private mMaskVerify:[Landroid/filterfw/core/GLFrame;

.field private mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

.field private mMaskWidthExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskWidthExp"
    .end annotation
.end field

.field private mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mMirrorBg:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "mirrorBg"
    .end annotation
.end field

.field private mOrientation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientation"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private mPingPong:Z

.field private mProvideDebugOutputs:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "provideDebugOutputs"
    .end annotation
.end field

.field private mPyramidDepth:I

.field private mRelativeAspect:F

.field private mStartLearning:Z

.field private mSubsampleLevel:I

.field private mUseTheForce:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "useTheForce"
    .end annotation
.end field

.field private mVerifyRate:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskVerifyRate"
    .end annotation
.end field

.field private mVideoInput:Landroid/filterfw/core/GLFrame;

.field private mWhiteBalanceBlueChange:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "whitebalanceblueChange"
    .end annotation
.end field

.field private mWhiteBalanceRedChange:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "whitebalanceredChange"
    .end annotation
.end field

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 178
    const/16 v0, 0x9

    #@5
    new-array v0, v0, [F

    #@7
    fill-array-data v0, :array_0

    #@a
    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->DEFAULT_BG_FIT_TRANSFORM:[F

    #@c
    .line 203
    new-array v0, v4, [Ljava/lang/String;

    #@e
    const-string/jumbo v1, "video"

    #@11
    aput-object v1, v0, v2

    #@13
    .line 204
    const-string/jumbo v1, "background"

    #@16
    aput-object v1, v0, v3

    #@18
    .line 203
    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mInputNames:[Ljava/lang/String;

    #@1a
    .line 206
    new-array v0, v3, [Ljava/lang/String;

    #@1c
    const-string/jumbo v1, "video"

    #@1f
    aput-object v1, v0, v2

    #@21
    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOutputNames:[Ljava/lang/String;

    #@23
    .line 208
    new-array v0, v4, [Ljava/lang/String;

    #@25
    const-string/jumbo v1, "debug1"

    #@28
    aput-object v1, v0, v2

    #@2a
    .line 209
    const-string/jumbo v1, "debug2"

    #@2d
    aput-object v1, v0, v3

    #@2f
    .line 208
    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDebugOutputNames:[Ljava/lang/String;

    #@31
    .line 225
    const-string/jumbo v0, "precision mediump float;\nuniform float fg_adapt_rate;\nuniform float bg_adapt_rate;\nconst mat4 coeff_yuv = mat4(0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 );\nconst float dist_scale = 0.6;\nconst float inv_dist_scale = 1. / dist_scale;\nconst float var_scale=5.0;\nconst float inv_var_scale = 1. / var_scale;\nconst float min_variance = inv_var_scale *3.0/ 256.;\nconst float auto_wb_scale = 0.25;\n\nfloat gauss_dist_y(float y, float mean, float variance) {\n  float dist = (y - mean) * (y - mean) / variance;\n  return dist;\n}\nfloat gauss_dist_uv(vec2 uv, vec2 mean, vec2 variance) {\n  vec2 dist = (uv - mean) * (uv - mean) / variance;\n  return dist.r + dist.g;\n}\nfloat local_adapt_rate(float alpha) {\n  return mix(bg_adapt_rate, fg_adapt_rate, alpha);\n}\n\n"

    #@34
    .line 224
    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    #@36
    .line 41
    return-void

    #@37
    .line 178
    nop

    #@38
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/16 v6, 0x8

    #@2
    const/4 v5, 0x2

    #@3
    const/4 v4, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    .line 509
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@8
    .line 44
    iput v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->BACKGROUND_STRETCH:I

    #@a
    .line 45
    const/4 v2, 0x1

    #@b
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->BACKGROUND_FIT:I

    #@d
    .line 46
    iput v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->BACKGROUND_FILL_CROP:I

    #@f
    .line 49
    iput v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitMode:I

    #@11
    .line 51
    const/16 v2, 0x28

    #@13
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    #@15
    .line 53
    const/16 v2, 0xa

    #@17
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    #@19
    .line 55
    const v2, 0x3f59999a    # 0.85f

    #@1c
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    #@1e
    .line 57
    const v2, 0x3f333333    # 0.7f

    #@21
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgScale:F

    #@23
    .line 59
    const v2, 0x3f19999a    # 0.6f

    #@26
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidScale:F

    #@28
    .line 61
    const/high16 v2, 0x3f000000    # 0.5f

    #@2a
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlScale:F

    #@2c
    .line 66
    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    #@2e
    .line 68
    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    #@30
    .line 73
    const/4 v2, 0x3

    #@31
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgExp:I

    #@33
    .line 75
    iput v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidExp:I

    #@35
    .line 77
    iput v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlExp:I

    #@37
    .line 80
    const v2, 0x3ecccccd    # 0.4f

    #@3a
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLumScale:F

    #@3c
    .line 82
    const v2, 0x3faccccd    # 1.35f

    #@3f
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mChromaScale:F

    #@41
    .line 84
    const v2, 0x3f266666    # 0.65f

    #@44
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskBg:F

    #@46
    .line 86
    const v2, 0x3f733333    # 0.95f

    #@49
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFg:F

    #@4b
    .line 88
    const/high16 v2, 0x3f800000    # 1.0f

    #@4d
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mExposureChange:F

    #@4f
    .line 90
    iput v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceRedChange:F

    #@51
    .line 92
    iput v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceBlueChange:F

    #@53
    .line 94
    iput v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWBToggle:I

    #@55
    .line 98
    const v2, 0x3e4ccccd    # 0.2f

    #@58
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    #@5a
    .line 100
    iput v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    #@5c
    .line 102
    iput v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    #@5e
    .line 104
    const/high16 v2, 0x3e800000    # 0.25f

    #@60
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVerifyRate:F

    #@62
    .line 106
    const/4 v2, 0x0

    #@63
    iput-object v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    #@65
    .line 109
    iput-boolean v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mUseTheForce:Z

    #@67
    .line 112
    iput-boolean v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mProvideDebugOutputs:Z

    #@69
    .line 117
    iput-boolean v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMirrorBg:Z

    #@6b
    .line 122
    iput v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOrientation:I

    #@6d
    .line 860
    const-wide/16 v2, -0x1

    #@6f
    iput-wide v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    #@71
    .line 511
    const-string/jumbo v2, "BackDropperFilter"

    #@74
    invoke-static {v2, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@77
    move-result v2

    #@78
    iput-boolean v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    #@7a
    .line 513
    const-string/jumbo v2, "ro.media.effect.bgdropper.adj"

    #@7d
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@80
    move-result-object v0

    #@81
    .line 514
    .local v0, "adjStr":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@84
    move-result v2

    #@85
    if-lez v2, :cond_0

    #@87
    .line 516
    :try_start_0
    iget v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    #@89
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    #@8c
    move-result v3

    #@8d
    add-float/2addr v2, v3

    #@8e
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    #@90
    .line 517
    iget-boolean v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    #@92
    if-eqz v2, :cond_0

    #@94
    .line 518
    const-string/jumbo v2, "BackDropperFilter"

    #@97
    new-instance v3, Ljava/lang/StringBuilder;

    #@99
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@9c
    const-string/jumbo v4, "Adjusting accept threshold by "

    #@9f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a2
    move-result-object v3

    #@a3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v3

    #@a7
    .line 519
    const-string/jumbo v4, ", now "

    #@aa
    .line 518
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v3

    #@ae
    .line 519
    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    #@b0
    .line 518
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@b3
    move-result-object v3

    #@b4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b7
    move-result-object v3

    #@b8
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@bb
    .line 508
    :cond_0
    :goto_0
    return-void

    #@bc
    .line 521
    :catch_0
    move-exception v1

    #@bd
    .line 522
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v2, "BackDropperFilter"

    #@c0
    .line 523
    new-instance v3, Ljava/lang/StringBuilder;

    #@c2
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@c5
    const-string/jumbo v4, "Badly formatted property ro.media.effect.bgdropper.adj: "

    #@c8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cb
    move-result-object v3

    #@cc
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v3

    #@d0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@d3
    move-result-object v3

    #@d4
    .line 522
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@d7
    goto :goto_0
.end method

.method private allocateFrames(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FilterContext;)V
    .locals 13
    .param p1, "inputFormat"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 608
    invoke-direct {p0, p1}, Landroid/filterpacks/videoproc/BackDropperFilter;->createMemoryFormat(Landroid/filterfw/core/FrameFormat;)Z

    #@6
    move-result v6

    #@7
    if-nez v6, :cond_0

    #@9
    .line 609
    return-void

    #@a
    .line 611
    :cond_0
    iget-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    #@c
    if-eqz v6, :cond_1

    #@e
    const-string/jumbo v6, "BackDropperFilter"

    #@11
    const-string/jumbo v7, "Allocating BackDropperFilter frames"

    #@14
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@17
    .line 614
    :cond_1
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@19
    invoke-virtual {v6}, Landroid/filterfw/core/MutableFrameFormat;->getSize()I

    #@1c
    move-result v4

    #@1d
    .line 615
    .local v4, "numBytes":I
    new-array v1, v4, [B

    #@1f
    .line 616
    .local v1, "initialBgMean":[B
    new-array v2, v4, [B

    #@21
    .line 617
    .local v2, "initialBgVariance":[B
    new-array v3, v4, [B

    #@23
    .line 618
    .local v3, "initialMaskVerify":[B
    const/4 v0, 0x0

    #@24
    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_2

    #@26
    .line 619
    const/16 v6, -0x80

    #@28
    aput-byte v6, v1, v0

    #@2a
    .line 620
    const/16 v6, 0xa

    #@2c
    aput-byte v6, v2, v0

    #@2e
    .line 621
    aput-byte v10, v3, v0

    #@30
    .line 618
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_0

    #@33
    .line 625
    :cond_2
    const/4 v0, 0x0

    #@34
    :goto_1
    if-ge v0, v12, :cond_3

    #@36
    .line 626
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    #@38
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@3b
    move-result-object v6

    #@3c
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@3e
    invoke-virtual {v6, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@41
    move-result-object v6

    #@42
    check-cast v6, Landroid/filterfw/core/GLFrame;

    #@44
    aput-object v6, v7, v0

    #@46
    .line 627
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    #@48
    aget-object v6, v6, v0

    #@4a
    invoke-virtual {v6, v1, v10, v4}, Landroid/filterfw/core/GLFrame;->setData([BII)V

    #@4d
    .line 629
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    #@4f
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@52
    move-result-object v6

    #@53
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@55
    invoke-virtual {v6, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@58
    move-result-object v6

    #@59
    check-cast v6, Landroid/filterfw/core/GLFrame;

    #@5b
    aput-object v6, v7, v0

    #@5d
    .line 630
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    #@5f
    aget-object v6, v6, v0

    #@61
    invoke-virtual {v6, v2, v10, v4}, Landroid/filterfw/core/GLFrame;->setData([BII)V

    #@64
    .line 632
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    #@66
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@69
    move-result-object v6

    #@6a
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@6c
    invoke-virtual {v6, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@6f
    move-result-object v6

    #@70
    check-cast v6, Landroid/filterfw/core/GLFrame;

    #@72
    aput-object v6, v7, v0

    #@74
    .line 633
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    #@76
    aget-object v6, v6, v0

    #@78
    invoke-virtual {v6, v3, v10, v4}, Landroid/filterfw/core/GLFrame;->setData([BII)V

    #@7b
    .line 625
    add-int/lit8 v0, v0, 0x1

    #@7d
    goto :goto_1

    #@7e
    .line 637
    :cond_3
    iget-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    #@80
    if-eqz v6, :cond_4

    #@82
    const-string/jumbo v6, "BackDropperFilter"

    #@85
    const-string/jumbo v7, "Done allocating texture for Mean and Variance objects!"

    #@88
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@8b
    .line 639
    :cond_4
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@8e
    move-result-object v6

    #@8f
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@91
    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@94
    move-result-object v6

    #@95
    check-cast v6, Landroid/filterfw/core/GLFrame;

    #@97
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    #@99
    .line 640
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@9c
    move-result-object v6

    #@9d
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@9f
    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@a2
    move-result-object v6

    #@a3
    check-cast v6, Landroid/filterfw/core/GLFrame;

    #@a5
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    #@a7
    .line 641
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@aa
    move-result-object v6

    #@ab
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@ad
    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@b0
    move-result-object v6

    #@b1
    check-cast v6, Landroid/filterfw/core/GLFrame;

    #@b3
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    #@b5
    .line 642
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@b8
    move-result-object v6

    #@b9
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@bb
    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@be
    move-result-object v6

    #@bf
    check-cast v6, Landroid/filterfw/core/GLFrame;

    #@c1
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    #@c3
    .line 643
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@c6
    move-result-object v6

    #@c7
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@c9
    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@cc
    move-result-object v6

    #@cd
    check-cast v6, Landroid/filterfw/core/GLFrame;

    #@cf
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    #@d1
    .line 644
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@d4
    move-result-object v6

    #@d5
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@d7
    invoke-virtual {v6, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@da
    move-result-object v6

    #@db
    check-cast v6, Landroid/filterfw/core/GLFrame;

    #@dd
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    #@df
    .line 647
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    #@e1
    new-instance v7, Ljava/lang/StringBuilder;

    #@e3
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@e6
    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    #@e8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@eb
    move-result-object v7

    #@ec
    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n\n  float dist_y = gauss_dist_y(fg.r, mean.r, variance.r);\n  float dist_uv = gauss_dist_uv(fg.gb, mean.gb, variance.gb);\n  gl_FragColor = vec4(0.5*fg.rg, dist_scale*dist_y, dist_scale*dist_uv);\n}\n"

    #@ef
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v7

    #@f3
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v7

    #@f7
    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@fa
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

    #@fc
    .line 648
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

    #@fe
    const-string/jumbo v7, "subsample_level"

    #@101
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    #@103
    int-to-float v8, v8

    #@104
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@107
    move-result-object v8

    #@108
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@10b
    .line 650
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    #@10d
    new-instance v7, Ljava/lang/StringBuilder;

    #@10f
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@112
    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    #@114
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@117
    move-result-object v7

    #@118
    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform float accept_variance;\nuniform vec2 yuv_weights;\nuniform float scale_lrg;\nuniform float scale_mid;\nuniform float scale_sml;\nuniform float exp_lrg;\nuniform float exp_mid;\nuniform float exp_sml;\nvarying vec2 v_texcoord;\nbool is_fg(vec2 dist_yc, float accept_variance) {\n  return ( dot(yuv_weights, dist_yc) >= accept_variance );\n}\nvoid main() {\n  vec4 dist_lrg_sc = texture2D(tex_sampler_0, v_texcoord, exp_lrg);\n  vec4 dist_mid_sc = texture2D(tex_sampler_0, v_texcoord, exp_mid);\n  vec4 dist_sml_sc = texture2D(tex_sampler_0, v_texcoord, exp_sml);\n  vec2 dist_lrg = inv_dist_scale * dist_lrg_sc.ba;\n  vec2 dist_mid = inv_dist_scale * dist_mid_sc.ba;\n  vec2 dist_sml = inv_dist_scale * dist_sml_sc.ba;\n  vec2 norm_dist = 0.75 * dist_sml / accept_variance;\n  bool is_fg_lrg = is_fg(dist_lrg, accept_variance * scale_lrg);\n  bool is_fg_mid = is_fg_lrg || is_fg(dist_mid, accept_variance * scale_mid);\n  float is_fg_sml =\n      float(is_fg_mid || is_fg(dist_sml, accept_variance * scale_sml));\n  float alpha = 0.5 * is_fg_sml + 0.3 * float(is_fg_mid) + 0.2 * float(is_fg_lrg);\n  gl_FragColor = vec4(alpha, norm_dist, is_fg_sml);\n}\n"

    #@11b
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11e
    move-result-object v7

    #@11f
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@122
    move-result-object v7

    #@123
    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@126
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@128
    .line 651
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@12a
    const-string/jumbo v7, "accept_variance"

    #@12d
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    #@12f
    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    #@131
    mul-float/2addr v8, v9

    #@132
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@135
    move-result-object v8

    #@136
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@139
    .line 652
    new-array v5, v12, [F

    #@13b
    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLumScale:F

    #@13d
    aput v6, v5, v10

    #@13f
    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mChromaScale:F

    #@141
    aput v6, v5, v11

    #@143
    .line 653
    .local v5, "yuvWeights":[F
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@145
    const-string/jumbo v7, "yuv_weights"

    #@148
    invoke-virtual {v6, v7, v5}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@14b
    .line 654
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@14d
    const-string/jumbo v7, "scale_lrg"

    #@150
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgScale:F

    #@152
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@155
    move-result-object v8

    #@156
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@159
    .line 655
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@15b
    const-string/jumbo v7, "scale_mid"

    #@15e
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidScale:F

    #@160
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@163
    move-result-object v8

    #@164
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@167
    .line 656
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@169
    const-string/jumbo v7, "scale_sml"

    #@16c
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlScale:F

    #@16e
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@171
    move-result-object v8

    #@172
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@175
    .line 657
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@177
    const-string/jumbo v7, "exp_lrg"

    #@17a
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    #@17c
    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgExp:I

    #@17e
    add-int/2addr v8, v9

    #@17f
    int-to-float v8, v8

    #@180
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@183
    move-result-object v8

    #@184
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@187
    .line 658
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@189
    const-string/jumbo v7, "exp_mid"

    #@18c
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    #@18e
    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidExp:I

    #@190
    add-int/2addr v8, v9

    #@191
    int-to-float v8, v8

    #@192
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@195
    move-result-object v8

    #@196
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@199
    .line 659
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@19b
    const-string/jumbo v7, "exp_sml"

    #@19e
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    #@1a0
    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlExp:I

    #@1a2
    add-int/2addr v8, v9

    #@1a3
    int-to-float v8, v8

    #@1a4
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1a7
    move-result-object v8

    #@1a8
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@1ab
    .line 661
    iget-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mUseTheForce:Z

    #@1ad
    if-eqz v6, :cond_6

    #@1af
    .line 662
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    #@1b1
    new-instance v7, Ljava/lang/StringBuilder;

    #@1b3
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@1b6
    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    #@1b8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v7

    #@1bc
    const-string/jumbo v8, "uniform mat3 bg_fit_transform;\nuniform float mask_blend_bg;\nuniform float mask_blend_fg;\nuniform float exposure_change;\nuniform float whitebalancered_change;\nuniform float whitebalanceblue_change;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 bg_texcoord = (bg_fit_transform * vec3(v_texcoord, 1.)).xy;\n  vec4 bg_rgb = texture2D(tex_sampler_1, bg_texcoord);\n  vec4 wb_auto_scale = texture2D(tex_sampler_3, v_texcoord) * exposure_change / auto_wb_scale;\n  vec4 wb_manual_scale = vec4(1. + whitebalancered_change, 1., 1. + whitebalanceblue_change, 1.);\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord);\n  vec4 fg_adjusted = fg_rgb * wb_manual_scale * wb_auto_scale;\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n  float alpha = smoothstep(mask_blend_bg, mask_blend_fg, mask.a);\n  gl_FragColor = mix(bg_rgb, fg_adjusted, alpha);\n"

    #@1bf
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v7

    #@1c3
    const-string/jumbo v8, "  vec4 ghost_rgb = (fg_adjusted * 0.7 + vec4(0.3,0.3,0.4,0.))*0.65 + \n                   0.35*bg_rgb;\n  float glow_start = 0.75 * mask_blend_bg; \n  float glow_max   = mask_blend_bg; \n  gl_FragColor = mask.a < glow_start ? bg_rgb : \n                 mask.a < glow_max ? mix(bg_rgb, vec4(0.9,0.9,1.0,1.0), \n                                     (mask.a - glow_start) / (glow_max - glow_start) ) : \n                 mask.a < mask_blend_fg ? mix(vec4(0.9,0.9,1.0,1.0), ghost_rgb, \n                                    (mask.a - glow_max) / (mask_blend_fg - glow_max) ) : \n                 ghost_rgb;\n}\n"

    #@1c6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c9
    move-result-object v7

    #@1ca
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1cd
    move-result-object v7

    #@1ce
    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@1d1
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    #@1d3
    .line 666
    :goto_2
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    #@1d5
    const-string/jumbo v7, "bg_fit_transform"

    #@1d8
    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->DEFAULT_BG_FIT_TRANSFORM:[F

    #@1da
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@1dd
    .line 667
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    #@1df
    const-string/jumbo v7, "mask_blend_bg"

    #@1e2
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskBg:F

    #@1e4
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1e7
    move-result-object v8

    #@1e8
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@1eb
    .line 668
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    #@1ed
    const-string/jumbo v7, "mask_blend_fg"

    #@1f0
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFg:F

    #@1f2
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@1f5
    move-result-object v8

    #@1f6
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@1f9
    .line 669
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    #@1fb
    const-string/jumbo v7, "exposure_change"

    #@1fe
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mExposureChange:F

    #@200
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@203
    move-result-object v8

    #@204
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@207
    .line 670
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    #@209
    const-string/jumbo v7, "whitebalanceblue_change"

    #@20c
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceBlueChange:F

    #@20e
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@211
    move-result-object v8

    #@212
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@215
    .line 671
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    #@217
    const-string/jumbo v7, "whitebalancered_change"

    #@21a
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceRedChange:F

    #@21c
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@21f
    move-result-object v8

    #@220
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@223
    .line 674
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    #@225
    new-instance v7, Ljava/lang/StringBuilder;

    #@227
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@22a
    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    #@22c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22f
    move-result-object v7

    #@230
    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 new_mean = mix(mean, fg, alpha);\n  gl_FragColor = new_mean;\n}\n"

    #@233
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@236
    move-result-object v7

    #@237
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23a
    move-result-object v7

    #@23b
    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@23e
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    #@240
    .line 675
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    #@242
    const-string/jumbo v7, "subsample_level"

    #@245
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    #@247
    int-to-float v8, v8

    #@248
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@24b
    move-result-object v8

    #@24c
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@24f
    .line 677
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    #@251
    new-instance v7, Ljava/lang/StringBuilder;

    #@253
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@256
    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    #@258
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25b
    move-result-object v7

    #@25c
    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_3, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 cur_variance = (fg-mean)*(fg-mean);\n  vec4 new_variance = mix(variance, cur_variance, alpha);\n  new_variance = max(new_variance, vec4(min_variance));\n  gl_FragColor = var_scale * new_variance;\n}\n"

    #@25f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@262
    move-result-object v7

    #@263
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@266
    move-result-object v7

    #@267
    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@26a
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    #@26c
    .line 678
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    #@26e
    const-string/jumbo v7, "subsample_level"

    #@271
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    #@273
    int-to-float v8, v8

    #@274
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@277
    move-result-object v8

    #@278
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@27b
    .line 680
    invoke-static {p2}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@27e
    move-result-object v6

    #@27f
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

    #@281
    .line 682
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    #@283
    new-instance v7, Ljava/lang/StringBuilder;

    #@285
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@288
    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    #@28a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28d
    move-result-object v7

    #@28e
    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float pyramid_depth;\nuniform bool autowb_toggle;\nvarying vec2 v_texcoord;\nvoid main() {\n   vec4 mean_video = texture2D(tex_sampler_0, v_texcoord, pyramid_depth);\n   vec4 mean_bg = texture2D(tex_sampler_1, v_texcoord, pyramid_depth);\n   float green_normalizer = mean_video.g / mean_bg.g;\n   vec4 adjusted_value = vec4(mean_bg.r / mean_video.r * green_normalizer, 1., \n                         mean_bg.b / mean_video.b * green_normalizer, 1.) * auto_wb_scale; \n   gl_FragColor = autowb_toggle ? adjusted_value : vec4(auto_wb_scale);\n}\n"

    #@291
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@294
    move-result-object v7

    #@295
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@298
    move-result-object v7

    #@299
    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@29c
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    #@29e
    .line 683
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    #@2a0
    const-string/jumbo v7, "pyramid_depth"

    #@2a3
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    #@2a5
    int-to-float v8, v8

    #@2a6
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2a9
    move-result-object v8

    #@2aa
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2ad
    .line 684
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    #@2af
    const-string/jumbo v7, "autowb_toggle"

    #@2b2
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWBToggle:I

    #@2b4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2b7
    move-result-object v8

    #@2b8
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2bb
    .line 686
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    #@2bd
    new-instance v7, Ljava/lang/StringBuilder;

    #@2bf
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2c2
    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    #@2c4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c7
    move-result-object v7

    #@2c8
    const-string/jumbo v8, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float verify_rate;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 lastmask = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  float newmask = mix(lastmask.a, mask.a, verify_rate);\n  gl_FragColor = vec4(0., 0., 0., newmask);\n}\n"

    #@2cb
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2ce
    move-result-object v7

    #@2cf
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d2
    move-result-object v7

    #@2d3
    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@2d6
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

    #@2d8
    .line 687
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

    #@2da
    const-string/jumbo v7, "verify_rate"

    #@2dd
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVerifyRate:F

    #@2df
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@2e2
    move-result-object v8

    #@2e3
    invoke-virtual {v6, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2e6
    .line 689
    iget-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    #@2e8
    if-eqz v6, :cond_5

    #@2ea
    const-string/jumbo v6, "BackDropperFilter"

    #@2ed
    new-instance v7, Ljava/lang/StringBuilder;

    #@2ef
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2f2
    const-string/jumbo v8, "Shader width set to "

    #@2f5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f8
    move-result-object v7

    #@2f9
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@2fb
    invoke-virtual {v8}, Landroid/filterfw/core/MutableFrameFormat;->getWidth()I

    #@2fe
    move-result v8

    #@2ff
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@302
    move-result-object v7

    #@303
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@306
    move-result-object v7

    #@307
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30a
    .line 691
    :cond_5
    const/high16 v6, 0x3f800000    # 1.0f

    #@30c
    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    #@30e
    .line 693
    iput v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    #@310
    .line 694
    iput-boolean v11, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    #@312
    .line 607
    return-void

    #@313
    .line 664
    :cond_6
    new-instance v6, Landroid/filterfw/core/ShaderProgram;

    #@315
    new-instance v7, Ljava/lang/StringBuilder;

    #@317
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@31a
    sget-object v8, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    #@31c
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31f
    move-result-object v7

    #@320
    const-string/jumbo v8, "uniform mat3 bg_fit_transform;\nuniform float mask_blend_bg;\nuniform float mask_blend_fg;\nuniform float exposure_change;\nuniform float whitebalancered_change;\nuniform float whitebalanceblue_change;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 bg_texcoord = (bg_fit_transform * vec3(v_texcoord, 1.)).xy;\n  vec4 bg_rgb = texture2D(tex_sampler_1, bg_texcoord);\n  vec4 wb_auto_scale = texture2D(tex_sampler_3, v_texcoord) * exposure_change / auto_wb_scale;\n  vec4 wb_manual_scale = vec4(1. + whitebalancered_change, 1., 1. + whitebalanceblue_change, 1.);\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord);\n  vec4 fg_adjusted = fg_rgb * wb_manual_scale * wb_auto_scale;\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n  float alpha = smoothstep(mask_blend_bg, mask_blend_fg, mask.a);\n  gl_FragColor = mix(bg_rgb, fg_adjusted, alpha);\n"

    #@323
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@326
    move-result-object v7

    #@327
    const-string/jumbo v8, "}\n"

    #@32a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32d
    move-result-object v7

    #@32e
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@331
    move-result-object v7

    #@332
    invoke-direct {v6, p2, v7}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    #@335
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    #@337
    goto/16 :goto_2
.end method

.method private createMemoryFormat(Landroid/filterfw/core/FrameFormat;)Z
    .locals 11
    .param p1, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    #@4
    .line 563
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@6
    if-eqz v6, :cond_0

    #@8
    .line 564
    return v7

    #@9
    .line 567
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@c
    move-result v6

    #@d
    if-eqz v6, :cond_1

    #@f
    .line 568
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@12
    move-result v6

    #@13
    if-nez v6, :cond_2

    #@15
    .line 569
    :cond_1
    new-instance v6, Ljava/lang/RuntimeException;

    #@17
    const-string/jumbo v7, "Attempting to process input frame with unknown size"

    #@1a
    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v6

    #@1e
    .line 572
    :cond_2
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@21
    move-result-object v6

    #@22
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@24
    .line 573
    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    #@26
    int-to-double v6, v6

    #@27
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@2a
    move-result-wide v6

    #@2b
    double-to-int v2, v6

    #@2c
    .line 574
    .local v2, "maskWidth":I
    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    #@2e
    int-to-double v6, v6

    #@2f
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@32
    move-result-wide v6

    #@33
    double-to-int v1, v6

    #@34
    .line 575
    .local v1, "maskHeight":I
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@36
    invoke-virtual {v6, v2, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@39
    .line 577
    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    #@3b
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    #@3d
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@40
    move-result v6

    #@41
    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    #@43
    .line 578
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@45
    invoke-virtual {v6}, Landroid/filterfw/core/MutableFrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@48
    move-result-object v6

    #@49
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@4b
    .line 579
    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    #@4d
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@50
    move-result v7

    #@51
    invoke-direct {p0, v7}, Landroid/filterpacks/videoproc/BackDropperFilter;->pyramidLevel(I)I

    #@54
    move-result v7

    #@55
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@58
    move-result v5

    #@59
    .line 580
    .local v5, "widthExp":I
    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    #@5b
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@5e
    move-result v7

    #@5f
    invoke-direct {p0, v7}, Landroid/filterpacks/videoproc/BackDropperFilter;->pyramidLevel(I)I

    #@62
    move-result v7

    #@63
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    #@66
    move-result v0

    #@67
    .line 581
    .local v0, "heightExp":I
    invoke-static {v5, v0}, Ljava/lang/Math;->max(II)I

    #@6a
    move-result v6

    #@6b
    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    #@6d
    .line 582
    int-to-double v6, v5

    #@6e
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@71
    move-result-wide v6

    #@72
    double-to-int v6, v6

    #@73
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    #@76
    move-result v4

    #@77
    .line 583
    .local v4, "memWidth":I
    int-to-double v6, v0

    #@78
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    #@7b
    move-result-wide v6

    #@7c
    double-to-int v6, v6

    #@7d
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    #@80
    move-result v3

    #@81
    .line 584
    .local v3, "memHeight":I
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@83
    invoke-virtual {v6, v4, v3}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@86
    .line 585
    iget v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    #@88
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    #@8a
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    #@8c
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    #@8f
    move-result v7

    #@90
    sub-int/2addr v6, v7

    #@91
    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    #@93
    .line 587
    iget-boolean v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    #@95
    if-eqz v6, :cond_3

    #@97
    .line 588
    const-string/jumbo v6, "BackDropperFilter"

    #@9a
    new-instance v7, Ljava/lang/StringBuilder;

    #@9c
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@9f
    const-string/jumbo v8, "Mask frames size "

    #@a2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v7

    #@a6
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a9
    move-result-object v7

    #@aa
    const-string/jumbo v8, " x "

    #@ad
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v7

    #@b1
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v7

    #@b5
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v7

    #@b9
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@bc
    .line 589
    const-string/jumbo v6, "BackDropperFilter"

    #@bf
    new-instance v7, Ljava/lang/StringBuilder;

    #@c1
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@c4
    const-string/jumbo v8, "Pyramid levels "

    #@c7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ca
    move-result-object v7

    #@cb
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ce
    move-result-object v7

    #@cf
    const-string/jumbo v8, " x "

    #@d2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v7

    #@d6
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d9
    move-result-object v7

    #@da
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@dd
    move-result-object v7

    #@de
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e1
    .line 590
    const-string/jumbo v6, "BackDropperFilter"

    #@e4
    new-instance v7, Ljava/lang/StringBuilder;

    #@e6
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@e9
    const-string/jumbo v8, "Memory frames size "

    #@ec
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v7

    #@f0
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v7

    #@f4
    const-string/jumbo v8, " x "

    #@f7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fa
    move-result-object v7

    #@fb
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@fe
    move-result-object v7

    #@ff
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@102
    move-result-object v7

    #@103
    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@106
    .line 593
    :cond_3
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@109
    move-result-object v6

    #@10a
    iput-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@10c
    .line 594
    iget-object v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@10e
    invoke-virtual {v6, v10, v10}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@111
    .line 595
    return v10
.end method

.method private pyramidLevel(I)I
    .locals 4
    .param p1, "size"    # I

    #@0
    .prologue
    .line 995
    int-to-double v0, p1

    #@1
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    #@4
    move-result-wide v0

    #@5
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    #@7
    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    #@a
    move-result-wide v2

    #@b
    div-double/2addr v0, v2

    #@c
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    #@f
    move-result-wide v0

    #@10
    double-to-int v0, v0

    #@11
    add-int/lit8 v0, v0, -0x1

    #@13
    return v0
.end method

.method private updateBgScaling(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;Z)V
    .locals 11
    .param p1, "video"    # Landroid/filterfw/core/Frame;
    .param p2, "background"    # Landroid/filterfw/core/Frame;
    .param p3, "fitModeChanged"    # Z

    #@0
    .prologue
    .line 927
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v8

    #@4
    invoke-virtual {v8}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@7
    move-result v8

    #@8
    int-to-float v8, v8

    #@9
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@c
    move-result-object v9

    #@d
    invoke-virtual {v9}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@10
    move-result v9

    #@11
    int-to-float v9, v9

    #@12
    div-float v3, v8, v9

    #@14
    .line 928
    .local v3, "foregroundAspect":F
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@17
    move-result-object v8

    #@18
    invoke-virtual {v8}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@1b
    move-result v8

    #@1c
    int-to-float v8, v8

    #@1d
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@20
    move-result-object v9

    #@21
    invoke-virtual {v9}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@24
    move-result v9

    #@25
    int-to-float v9, v9

    #@26
    div-float v0, v8, v9

    #@28
    .line 929
    .local v0, "backgroundAspect":F
    div-float v2, v3, v0

    #@2a
    .line 930
    .local v2, "currentRelativeAspect":F
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    #@2c
    cmpl-float v8, v2, v8

    #@2e
    if-nez v8, :cond_0

    #@30
    if-eqz p3, :cond_5

    #@32
    .line 931
    :cond_0
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    #@34
    .line 932
    const/4 v4, 0x0

    #@35
    .local v4, "xMin":F
    const/high16 v5, 0x3f800000    # 1.0f

    #@37
    .local v5, "xWidth":F
    const/4 v6, 0x0

    #@38
    .local v6, "yMin":F
    const/high16 v7, 0x3f800000    # 1.0f

    #@3a
    .line 933
    .local v7, "yWidth":F
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitMode:I

    #@3c
    packed-switch v8, :pswitch_data_0

    #@3f
    .line 971
    :goto_0
    :pswitch_0
    iget-boolean v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMirrorBg:Z

    #@41
    if-eqz v8, :cond_3

    #@43
    .line 972
    iget-boolean v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    #@45
    if-eqz v8, :cond_1

    #@47
    const-string/jumbo v8, "BackDropperFilter"

    #@4a
    const-string/jumbo v9, "Mirroring the background!"

    #@4d
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@50
    .line 974
    :cond_1
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOrientation:I

    #@52
    if-eqz v8, :cond_2

    #@54
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOrientation:I

    #@56
    const/16 v9, 0xb4

    #@58
    if-ne v8, v9, :cond_8

    #@5a
    .line 975
    :cond_2
    neg-float v5, v5

    #@5b
    .line 976
    const/high16 v8, 0x3f800000    # 1.0f

    #@5d
    sub-float v4, v8, v4

    #@5f
    .line 983
    :cond_3
    :goto_1
    iget-boolean v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    #@61
    if-eqz v8, :cond_4

    #@63
    const-string/jumbo v8, "BackDropperFilter"

    #@66
    new-instance v9, Ljava/lang/StringBuilder;

    #@68
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@6b
    const-string/jumbo v10, "bgTransform: xMin, yMin, xWidth, yWidth : "

    #@6e
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@71
    move-result-object v9

    #@72
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@75
    move-result-object v9

    #@76
    .line 984
    const-string/jumbo v10, ", "

    #@79
    .line 983
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v9

    #@7d
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@80
    move-result-object v9

    #@81
    .line 984
    const-string/jumbo v10, ", "

    #@84
    .line 983
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@87
    move-result-object v9

    #@88
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@8b
    move-result-object v9

    #@8c
    .line 984
    const-string/jumbo v10, ", "

    #@8f
    .line 983
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v9

    #@93
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@96
    move-result-object v9

    #@97
    .line 985
    const-string/jumbo v10, ", mRelAspRatio = "

    #@9a
    .line 983
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9d
    move-result-object v9

    #@9e
    .line 985
    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    #@a0
    .line 983
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@a3
    move-result-object v9

    #@a4
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a7
    move-result-object v9

    #@a8
    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@ab
    .line 987
    :cond_4
    const/16 v8, 0x9

    #@ad
    new-array v1, v8, [F

    #@af
    const/4 v8, 0x0

    #@b0
    aput v5, v1, v8

    #@b2
    const/4 v8, 0x0

    #@b3
    const/4 v9, 0x1

    #@b4
    aput v8, v1, v9

    #@b6
    const/4 v8, 0x0

    #@b7
    const/4 v9, 0x2

    #@b8
    aput v8, v1, v9

    #@ba
    .line 988
    const/4 v8, 0x0

    #@bb
    const/4 v9, 0x3

    #@bc
    aput v8, v1, v9

    #@be
    const/4 v8, 0x4

    #@bf
    aput v7, v1, v8

    #@c1
    const/4 v8, 0x0

    #@c2
    const/4 v9, 0x5

    #@c3
    aput v8, v1, v9

    #@c5
    .line 989
    const/4 v8, 0x6

    #@c6
    aput v4, v1, v8

    #@c8
    const/4 v8, 0x7

    #@c9
    aput v6, v1, v8

    #@cb
    const/high16 v8, 0x3f800000    # 1.0f

    #@cd
    const/16 v9, 0x8

    #@cf
    aput v8, v1, v9

    #@d1
    .line 990
    .local v1, "bgTransform":[F
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    #@d3
    const-string/jumbo v9, "bg_fit_transform"

    #@d6
    invoke-virtual {v8, v9, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@d9
    .line 926
    .end local v1    # "bgTransform":[F
    .end local v4    # "xMin":F
    .end local v5    # "xWidth":F
    .end local v6    # "yMin":F
    .end local v7    # "yWidth":F
    :cond_5
    return-void

    #@da
    .line 938
    .restart local v4    # "xMin":F
    .restart local v5    # "xWidth":F
    .restart local v6    # "yMin":F
    .restart local v7    # "yWidth":F
    :pswitch_1
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    #@dc
    const/high16 v9, 0x3f800000    # 1.0f

    #@de
    cmpl-float v8, v8, v9

    #@e0
    if-lez v8, :cond_6

    #@e2
    .line 941
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    #@e4
    const/high16 v9, 0x3f000000    # 0.5f

    #@e6
    mul-float/2addr v8, v9

    #@e7
    const/high16 v9, 0x3f000000    # 0.5f

    #@e9
    sub-float v4, v9, v8

    #@eb
    .line 942
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    #@ed
    const/high16 v9, 0x3f800000    # 1.0f

    #@ef
    mul-float v5, v9, v8

    #@f1
    goto/16 :goto_0

    #@f3
    .line 946
    :cond_6
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    #@f5
    const/high16 v9, 0x3f000000    # 0.5f

    #@f7
    div-float v8, v9, v8

    #@f9
    const/high16 v9, 0x3f000000    # 0.5f

    #@fb
    sub-float v6, v9, v8

    #@fd
    .line 947
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    #@ff
    const/high16 v9, 0x3f800000    # 1.0f

    #@101
    div-float v7, v9, v8

    #@103
    goto/16 :goto_0

    #@105
    .line 951
    :pswitch_2
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    #@107
    const/high16 v9, 0x3f800000    # 1.0f

    #@109
    cmpl-float v8, v8, v9

    #@10b
    if-lez v8, :cond_7

    #@10d
    .line 954
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    #@10f
    const/high16 v9, 0x3f000000    # 0.5f

    #@111
    div-float v8, v9, v8

    #@113
    const/high16 v9, 0x3f000000    # 0.5f

    #@115
    sub-float v6, v9, v8

    #@117
    .line 955
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    #@119
    const/high16 v9, 0x3f800000    # 1.0f

    #@11b
    div-float v7, v9, v8

    #@11d
    goto/16 :goto_0

    #@11f
    .line 959
    :cond_7
    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    #@121
    const/high16 v9, 0x3f000000    # 0.5f

    #@123
    mul-float/2addr v8, v9

    #@124
    const/high16 v9, 0x3f000000    # 0.5f

    #@126
    sub-float v4, v9, v8

    #@128
    .line 960
    iget v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    #@12a
    goto/16 :goto_0

    #@12c
    .line 979
    :cond_8
    neg-float v7, v7

    #@12d
    .line 980
    const/high16 v8, 0x3f800000    # 1.0f

    #@12f
    sub-float v6, v8, v6

    #@131
    goto/16 :goto_1

    #@133
    .line 933
    nop

    #@134
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public close(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 863
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 864
    return-void

    #@6
    .line 867
    :cond_0
    iget-boolean v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    #@8
    if-eqz v1, :cond_1

    #@a
    const-string/jumbo v1, "BackDropperFilter"

    #@d
    const-string/jumbo v2, "Filter Closing!"

    #@10
    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@13
    .line 868
    :cond_1
    const/4 v0, 0x0

    #@14
    .local v0, "i":I
    :goto_0
    const/4 v1, 0x2

    #@15
    if-ge v0, v1, :cond_2

    #@17
    .line 869
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    #@19
    aget-object v1, v1, v0

    #@1b
    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@1e
    .line 870
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    #@20
    aget-object v1, v1, v0

    #@22
    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@25
    .line 871
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    #@27
    aget-object v1, v1, v0

    #@29
    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@2c
    .line 868
    add-int/lit8 v0, v0, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 873
    :cond_2
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    #@31
    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@34
    .line 874
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    #@36
    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@39
    .line 875
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    #@3b
    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@3e
    .line 876
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    #@40
    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@43
    .line 877
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    #@45
    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@48
    .line 878
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    #@4a
    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@4d
    .line 880
    iput-object v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@4f
    .line 862
    return-void
.end method

.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 892
    const-string/jumbo v1, "backgroundFitMode"

    #@4
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_1

    #@a
    .line 893
    iput-boolean v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitModeChanged:Z

    #@c
    .line 890
    :cond_0
    :goto_0
    return-void

    #@d
    .line 894
    :cond_1
    const-string/jumbo v1, "acceptStddev"

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_2

    #@16
    .line 895
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@18
    const-string/jumbo v2, "accept_variance"

    #@1b
    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    #@1d
    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    #@1f
    mul-float/2addr v3, v4

    #@20
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@27
    goto :goto_0

    #@28
    .line 896
    :cond_2
    const-string/jumbo v1, "hierLrgScale"

    #@2b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v1

    #@2f
    if-eqz v1, :cond_3

    #@31
    .line 897
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@33
    const-string/jumbo v2, "scale_lrg"

    #@36
    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgScale:F

    #@38
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@3f
    goto :goto_0

    #@40
    .line 898
    :cond_3
    const-string/jumbo v1, "hierMidScale"

    #@43
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v1

    #@47
    if-eqz v1, :cond_4

    #@49
    .line 899
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@4b
    const-string/jumbo v2, "scale_mid"

    #@4e
    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidScale:F

    #@50
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@53
    move-result-object v3

    #@54
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@57
    goto :goto_0

    #@58
    .line 900
    :cond_4
    const-string/jumbo v1, "hierSmlScale"

    #@5b
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5e
    move-result v1

    #@5f
    if-eqz v1, :cond_5

    #@61
    .line 901
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@63
    const-string/jumbo v2, "scale_sml"

    #@66
    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlScale:F

    #@68
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@6b
    move-result-object v3

    #@6c
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@6f
    goto :goto_0

    #@70
    .line 902
    :cond_5
    const-string/jumbo v1, "hierLrgExp"

    #@73
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@76
    move-result v1

    #@77
    if-eqz v1, :cond_6

    #@79
    .line 903
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@7b
    const-string/jumbo v2, "exp_lrg"

    #@7e
    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    #@80
    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgExp:I

    #@82
    add-int/2addr v3, v4

    #@83
    int-to-float v3, v3

    #@84
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@87
    move-result-object v3

    #@88
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@8b
    goto :goto_0

    #@8c
    .line 904
    :cond_6
    const-string/jumbo v1, "hierMidExp"

    #@8f
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@92
    move-result v1

    #@93
    if-eqz v1, :cond_7

    #@95
    .line 905
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@97
    const-string/jumbo v2, "exp_mid"

    #@9a
    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    #@9c
    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidExp:I

    #@9e
    add-int/2addr v3, v4

    #@9f
    int-to-float v3, v3

    #@a0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@a3
    move-result-object v3

    #@a4
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@a7
    goto/16 :goto_0

    #@a9
    .line 906
    :cond_7
    const-string/jumbo v1, "hierSmlExp"

    #@ac
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@af
    move-result v1

    #@b0
    if-eqz v1, :cond_8

    #@b2
    .line 907
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@b4
    const-string/jumbo v2, "exp_sml"

    #@b7
    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    #@b9
    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlExp:I

    #@bb
    add-int/2addr v3, v4

    #@bc
    int-to-float v3, v3

    #@bd
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@c0
    move-result-object v3

    #@c1
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@c4
    goto/16 :goto_0

    #@c6
    .line 908
    :cond_8
    const-string/jumbo v1, "lumScale"

    #@c9
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@cc
    move-result v1

    #@cd
    if-nez v1, :cond_9

    #@cf
    const-string/jumbo v1, "chromaScale"

    #@d2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d5
    move-result v1

    #@d6
    if-eqz v1, :cond_a

    #@d8
    .line 909
    :cond_9
    const/4 v1, 0x2

    #@d9
    new-array v0, v1, [F

    #@db
    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLumScale:F

    #@dd
    const/4 v2, 0x0

    #@de
    aput v1, v0, v2

    #@e0
    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mChromaScale:F

    #@e2
    aput v1, v0, v3

    #@e4
    .line 910
    .local v0, "yuvWeights":[F
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@e6
    const-string/jumbo v2, "yuv_weights"

    #@e9
    invoke-virtual {v1, v2, v0}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@ec
    goto/16 :goto_0

    #@ee
    .line 911
    .end local v0    # "yuvWeights":[F
    :cond_a
    const-string/jumbo v1, "maskBg"

    #@f1
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f4
    move-result v1

    #@f5
    if-eqz v1, :cond_b

    #@f7
    .line 912
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    #@f9
    const-string/jumbo v2, "mask_blend_bg"

    #@fc
    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskBg:F

    #@fe
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@101
    move-result-object v3

    #@102
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@105
    goto/16 :goto_0

    #@107
    .line 913
    :cond_b
    const-string/jumbo v1, "maskFg"

    #@10a
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10d
    move-result v1

    #@10e
    if-eqz v1, :cond_c

    #@110
    .line 914
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    #@112
    const-string/jumbo v2, "mask_blend_fg"

    #@115
    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFg:F

    #@117
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@11a
    move-result-object v3

    #@11b
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@11e
    goto/16 :goto_0

    #@120
    .line 915
    :cond_c
    const-string/jumbo v1, "exposureChange"

    #@123
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@126
    move-result v1

    #@127
    if-eqz v1, :cond_d

    #@129
    .line 916
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    #@12b
    const-string/jumbo v2, "exposure_change"

    #@12e
    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mExposureChange:F

    #@130
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@133
    move-result-object v3

    #@134
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@137
    goto/16 :goto_0

    #@139
    .line 917
    :cond_d
    const-string/jumbo v1, "whitebalanceredChange"

    #@13c
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@13f
    move-result v1

    #@140
    if-eqz v1, :cond_e

    #@142
    .line 918
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    #@144
    const-string/jumbo v2, "whitebalancered_change"

    #@147
    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceRedChange:F

    #@149
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@14c
    move-result-object v3

    #@14d
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@150
    goto/16 :goto_0

    #@152
    .line 919
    :cond_e
    const-string/jumbo v1, "whitebalanceblueChange"

    #@155
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@158
    move-result v1

    #@159
    if-eqz v1, :cond_f

    #@15b
    .line 920
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    #@15d
    const-string/jumbo v2, "whitebalanceblue_change"

    #@160
    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceBlueChange:F

    #@162
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@165
    move-result-object v3

    #@166
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@169
    goto/16 :goto_0

    #@16b
    .line 921
    :cond_f
    const-string/jumbo v1, "autowbToggle"

    #@16e
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@171
    move-result v1

    #@172
    if-eqz v1, :cond_0

    #@174
    .line 922
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    #@176
    const-string/jumbo v2, "autowb_toggle"

    #@179
    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWBToggle:I

    #@17b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@17e
    move-result-object v3

    #@17f
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@182
    goto/16 :goto_0
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 553
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@4
    move-result-object v0

    #@5
    .line 555
    .local v0, "format":Landroid/filterfw/core/MutableFrameFormat;
    sget-object v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mOutputNames:[Ljava/lang/String;

    #@7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 556
    invoke-virtual {v0, v2, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@14
    .line 558
    :cond_0
    return-object v0
.end method

.method public prepare(Landroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 599
    iget-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    const-string/jumbo v0, "BackDropperFilter"

    #@8
    const-string/jumbo v1, "Preparing BackDropperFilter!"

    #@b
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@e
    .line 601
    :cond_0
    new-array v0, v2, [Landroid/filterfw/core/GLFrame;

    #@10
    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    #@12
    .line 602
    new-array v0, v2, [Landroid/filterfw/core/GLFrame;

    #@14
    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    #@16
    .line 603
    new-array v0, v2, [Landroid/filterfw/core/GLFrame;

    #@18
    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    #@1a
    .line 604
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    #@20
    .line 598
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 30
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 699
    const-string/jumbo v22, "video"

    #@3
    move-object/from16 v0, p0

    #@5
    move-object/from16 v1, v22

    #@7
    invoke-virtual {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@a
    move-result-object v21

    #@b
    .line 700
    .local v21, "video":Landroid/filterfw/core/Frame;
    const-string/jumbo v22, "background"

    #@e
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, v22

    #@12
    invoke-virtual {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@15
    move-result-object v5

    #@16
    .line 701
    .local v5, "background":Landroid/filterfw/core/Frame;
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@19
    move-result-object v22

    #@1a
    move-object/from16 v0, p0

    #@1c
    move-object/from16 v1, v22

    #@1e
    move-object/from16 v2, p1

    #@20
    invoke-direct {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->allocateFrames(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FilterContext;)V

    #@23
    .line 704
    move-object/from16 v0, p0

    #@25
    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    #@27
    move/from16 v22, v0

    #@29
    if-eqz v22, :cond_1

    #@2b
    .line 705
    move-object/from16 v0, p0

    #@2d
    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    #@2f
    move/from16 v22, v0

    #@31
    if-eqz v22, :cond_0

    #@33
    const-string/jumbo v22, "BackDropperFilter"

    #@36
    const-string/jumbo v23, "Starting learning"

    #@39
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@3c
    .line 706
    :cond_0
    move-object/from16 v0, p0

    #@3e
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    #@40
    move-object/from16 v22, v0

    #@42
    const-string/jumbo v23, "bg_adapt_rate"

    #@45
    move-object/from16 v0, p0

    #@47
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    #@49
    move/from16 v24, v0

    #@4b
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@4e
    move-result-object v24

    #@4f
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@52
    .line 707
    move-object/from16 v0, p0

    #@54
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    #@56
    move-object/from16 v22, v0

    #@58
    const-string/jumbo v23, "fg_adapt_rate"

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    #@5f
    move/from16 v24, v0

    #@61
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@64
    move-result-object v24

    #@65
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@68
    .line 708
    move-object/from16 v0, p0

    #@6a
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    #@6c
    move-object/from16 v22, v0

    #@6e
    const-string/jumbo v23, "bg_adapt_rate"

    #@71
    move-object/from16 v0, p0

    #@73
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    #@75
    move/from16 v24, v0

    #@77
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@7a
    move-result-object v24

    #@7b
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@7e
    .line 709
    move-object/from16 v0, p0

    #@80
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    #@82
    move-object/from16 v22, v0

    #@84
    const-string/jumbo v23, "fg_adapt_rate"

    #@87
    move-object/from16 v0, p0

    #@89
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    #@8b
    move/from16 v24, v0

    #@8d
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@90
    move-result-object v24

    #@91
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@94
    .line 710
    const/16 v22, 0x0

    #@96
    move/from16 v0, v22

    #@98
    move-object/from16 v1, p0

    #@9a
    iput v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    #@9c
    .line 714
    :cond_1
    move-object/from16 v0, p0

    #@9e
    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    #@a0
    move/from16 v22, v0

    #@a2
    if-eqz v22, :cond_a

    #@a4
    const/4 v12, 0x0

    #@a5
    .line 715
    .local v12, "inputIndex":I
    :goto_0
    move-object/from16 v0, p0

    #@a7
    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    #@a9
    move/from16 v22, v0

    #@ab
    if-eqz v22, :cond_b

    #@ad
    const/16 v18, 0x1

    #@af
    .line 716
    .local v18, "outputIndex":I
    :goto_1
    move-object/from16 v0, p0

    #@b1
    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    #@b3
    move/from16 v22, v0

    #@b5
    if-eqz v22, :cond_c

    #@b7
    const/16 v22, 0x0

    #@b9
    :goto_2
    move/from16 v0, v22

    #@bb
    move-object/from16 v1, p0

    #@bd
    iput-boolean v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    #@bf
    .line 719
    move-object/from16 v0, p0

    #@c1
    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitModeChanged:Z

    #@c3
    move/from16 v22, v0

    #@c5
    move-object/from16 v0, p0

    #@c7
    move-object/from16 v1, v21

    #@c9
    move/from16 v2, v22

    #@cb
    invoke-direct {v0, v1, v5, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->updateBgScaling(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;Z)V

    #@ce
    .line 720
    const/16 v22, 0x0

    #@d0
    move/from16 v0, v22

    #@d2
    move-object/from16 v1, p0

    #@d4
    iput-boolean v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitModeChanged:Z

    #@d6
    .line 724
    move-object/from16 v0, p0

    #@d8
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    #@da
    move-object/from16 v22, v0

    #@dc
    move-object/from16 v0, p0

    #@de
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    #@e0
    move-object/from16 v23, v0

    #@e2
    move-object/from16 v0, v22

    #@e4
    move-object/from16 v1, v21

    #@e6
    move-object/from16 v2, v23

    #@e8
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@eb
    .line 725
    move-object/from16 v0, p0

    #@ed
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    #@ef
    move-object/from16 v22, v0

    #@f1
    move-object/from16 v0, p0

    #@f3
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    #@f5
    move-object/from16 v23, v0

    #@f7
    move-object/from16 v0, v22

    #@f9
    move-object/from16 v1, v23

    #@fb
    invoke-virtual {v0, v5, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@fe
    .line 727
    move-object/from16 v0, p0

    #@100
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    #@102
    move-object/from16 v22, v0

    #@104
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    #@107
    .line 728
    move-object/from16 v0, p0

    #@109
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    #@10b
    move-object/from16 v22, v0

    #@10d
    const/16 v23, 0x2801

    #@10f
    .line 729
    const/16 v24, 0x2701

    #@111
    .line 728
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    #@114
    .line 731
    move-object/from16 v0, p0

    #@116
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    #@118
    move-object/from16 v22, v0

    #@11a
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    #@11d
    .line 732
    move-object/from16 v0, p0

    #@11f
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    #@121
    move-object/from16 v22, v0

    #@123
    const/16 v23, 0x2801

    #@125
    .line 733
    const/16 v24, 0x2701

    #@127
    .line 732
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    #@12a
    .line 735
    move-object/from16 v0, p0

    #@12c
    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    #@12e
    move/from16 v22, v0

    #@130
    if-eqz v22, :cond_2

    #@132
    .line 736
    move-object/from16 v0, p0

    #@134
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    #@136
    move-object/from16 v22, v0

    #@138
    move-object/from16 v0, p0

    #@13a
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    #@13c
    move-object/from16 v23, v0

    #@13e
    move-object/from16 v0, p0

    #@140
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    #@142
    move-object/from16 v24, v0

    #@144
    aget-object v24, v24, v12

    #@146
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@149
    .line 737
    const/16 v22, 0x0

    #@14b
    move/from16 v0, v22

    #@14d
    move-object/from16 v1, p0

    #@14f
    iput-boolean v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    #@151
    .line 741
    :cond_2
    const/16 v22, 0x3

    #@153
    move/from16 v0, v22

    #@155
    new-array v9, v0, [Landroid/filterfw/core/Frame;

    #@157
    move-object/from16 v0, p0

    #@159
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    #@15b
    move-object/from16 v22, v0

    #@15d
    const/16 v23, 0x0

    #@15f
    aput-object v22, v9, v23

    #@161
    move-object/from16 v0, p0

    #@163
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    #@165
    move-object/from16 v22, v0

    #@167
    aget-object v22, v22, v12

    #@169
    const/16 v23, 0x1

    #@16b
    aput-object v22, v9, v23

    #@16d
    move-object/from16 v0, p0

    #@16f
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    #@171
    move-object/from16 v22, v0

    #@173
    aget-object v22, v22, v12

    #@175
    const/16 v23, 0x2

    #@177
    aput-object v22, v9, v23

    #@179
    .line 742
    .local v9, "distInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@17b
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

    #@17d
    move-object/from16 v22, v0

    #@17f
    move-object/from16 v0, p0

    #@181
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    #@183
    move-object/from16 v23, v0

    #@185
    move-object/from16 v0, v22

    #@187
    move-object/from16 v1, v23

    #@189
    invoke-virtual {v0, v9, v1}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@18c
    .line 743
    move-object/from16 v0, p0

    #@18e
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    #@190
    move-object/from16 v22, v0

    #@192
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    #@195
    .line 744
    move-object/from16 v0, p0

    #@197
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    #@199
    move-object/from16 v22, v0

    #@19b
    const/16 v23, 0x2801

    #@19d
    .line 745
    const/16 v24, 0x2701

    #@19f
    .line 744
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    #@1a2
    .line 747
    move-object/from16 v0, p0

    #@1a4
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    #@1a6
    move-object/from16 v22, v0

    #@1a8
    move-object/from16 v0, p0

    #@1aa
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    #@1ac
    move-object/from16 v23, v0

    #@1ae
    move-object/from16 v0, p0

    #@1b0
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    #@1b2
    move-object/from16 v24, v0

    #@1b4
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@1b7
    .line 748
    move-object/from16 v0, p0

    #@1b9
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    #@1bb
    move-object/from16 v22, v0

    #@1bd
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    #@1c0
    .line 749
    move-object/from16 v0, p0

    #@1c2
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    #@1c4
    move-object/from16 v22, v0

    #@1c6
    const/16 v23, 0x2801

    #@1c8
    .line 750
    const/16 v24, 0x2701

    #@1ca
    .line 749
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    #@1cd
    .line 752
    const/16 v22, 0x2

    #@1cf
    move/from16 v0, v22

    #@1d1
    new-array v4, v0, [Landroid/filterfw/core/Frame;

    #@1d3
    move-object/from16 v0, p0

    #@1d5
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    #@1d7
    move-object/from16 v22, v0

    #@1d9
    const/16 v23, 0x0

    #@1db
    aput-object v22, v4, v23

    #@1dd
    move-object/from16 v0, p0

    #@1df
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    #@1e1
    move-object/from16 v22, v0

    #@1e3
    const/16 v23, 0x1

    #@1e5
    aput-object v22, v4, v23

    #@1e7
    .line 753
    .local v4, "autoWBInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@1e9
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    #@1eb
    move-object/from16 v22, v0

    #@1ed
    move-object/from16 v0, p0

    #@1ef
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    #@1f1
    move-object/from16 v23, v0

    #@1f3
    move-object/from16 v0, v22

    #@1f5
    move-object/from16 v1, v23

    #@1f7
    invoke-virtual {v0, v4, v1}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@1fa
    .line 755
    move-object/from16 v0, p0

    #@1fc
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    #@1fe
    move/from16 v22, v0

    #@200
    move-object/from16 v0, p0

    #@202
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    #@204
    move/from16 v23, v0

    #@206
    move/from16 v0, v22

    #@208
    move/from16 v1, v23

    #@20a
    if-gt v0, v1, :cond_10

    #@20c
    .line 757
    const-string/jumbo v22, "video"

    #@20f
    move-object/from16 v0, p0

    #@211
    move-object/from16 v1, v22

    #@213
    move-object/from16 v2, v21

    #@215
    invoke-virtual {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@218
    .line 759
    move-object/from16 v0, p0

    #@21a
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    #@21c
    move/from16 v22, v0

    #@21e
    move-object/from16 v0, p0

    #@220
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    #@222
    move/from16 v23, v0

    #@224
    move-object/from16 v0, p0

    #@226
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    #@228
    move/from16 v24, v0

    #@22a
    sub-int v23, v23, v24

    #@22c
    move/from16 v0, v22

    #@22e
    move/from16 v1, v23

    #@230
    if-ne v0, v1, :cond_d

    #@232
    .line 760
    move-object/from16 v0, p0

    #@234
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    #@236
    move-object/from16 v22, v0

    #@238
    move-object/from16 v0, p0

    #@23a
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    #@23c
    move-object/from16 v23, v0

    #@23e
    move-object/from16 v0, p0

    #@240
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    #@242
    move-object/from16 v24, v0

    #@244
    aget-object v24, v24, v18

    #@246
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@249
    .line 762
    move-object/from16 v0, p0

    #@24b
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    #@24d
    move-object/from16 v22, v0

    #@24f
    const-string/jumbo v23, "bg_adapt_rate"

    #@252
    move-object/from16 v0, p0

    #@254
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    #@256
    move/from16 v24, v0

    #@258
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@25b
    move-result-object v24

    #@25c
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@25f
    .line 763
    move-object/from16 v0, p0

    #@261
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    #@263
    move-object/from16 v22, v0

    #@265
    const-string/jumbo v23, "fg_adapt_rate"

    #@268
    move-object/from16 v0, p0

    #@26a
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    #@26c
    move/from16 v24, v0

    #@26e
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@271
    move-result-object v24

    #@272
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@275
    .line 764
    move-object/from16 v0, p0

    #@277
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    #@279
    move-object/from16 v22, v0

    #@27b
    const-string/jumbo v23, "bg_adapt_rate"

    #@27e
    move-object/from16 v0, p0

    #@280
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    #@282
    move/from16 v24, v0

    #@284
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@287
    move-result-object v24

    #@288
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@28b
    .line 765
    move-object/from16 v0, p0

    #@28d
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    #@28f
    move-object/from16 v22, v0

    #@291
    const-string/jumbo v23, "fg_adapt_rate"

    #@294
    move-object/from16 v0, p0

    #@296
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    #@298
    move/from16 v24, v0

    #@29a
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    #@29d
    move-result-object v24

    #@29e
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@2a1
    .line 778
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    #@2a3
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    #@2a5
    move/from16 v22, v0

    #@2a7
    move-object/from16 v0, p0

    #@2a9
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    #@2ab
    move/from16 v23, v0

    #@2ad
    move/from16 v0, v22

    #@2af
    move/from16 v1, v23

    #@2b1
    if-ne v0, v1, :cond_5

    #@2b3
    .line 781
    move-object/from16 v0, p0

    #@2b5
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    #@2b7
    move-object/from16 v22, v0

    #@2b9
    move-object/from16 v0, p0

    #@2bb
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    #@2bd
    move-object/from16 v23, v0

    #@2bf
    aget-object v23, v23, v18

    #@2c1
    move-object/from16 v0, p0

    #@2c3
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    #@2c5
    move-object/from16 v24, v0

    #@2c7
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@2ca
    .line 782
    move-object/from16 v0, p0

    #@2cc
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    #@2ce
    move-object/from16 v22, v0

    #@2d0
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->getData()Ljava/nio/ByteBuffer;

    #@2d3
    move-result-object v13

    #@2d4
    .line 783
    .local v13, "mMaskAverageByteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v13}, Ljava/nio/ByteBuffer;->array()[B

    #@2d7
    move-result-object v15

    #@2d8
    .line 784
    .local v15, "mask_average":[B
    const/16 v22, 0x3

    #@2da
    aget-byte v22, v15, v22

    #@2dc
    move/from16 v0, v22

    #@2de
    and-int/lit16 v6, v0, 0xff

    #@2e0
    .line 786
    .local v6, "bi":I
    move-object/from16 v0, p0

    #@2e2
    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    #@2e4
    move/from16 v22, v0

    #@2e6
    if-eqz v22, :cond_4

    #@2e8
    .line 787
    const-string/jumbo v22, "BackDropperFilter"

    #@2eb
    .line 788
    const-string/jumbo v23, "Mask_average is %d, threshold is %d"

    #@2ee
    const/16 v24, 0x2

    #@2f0
    move/from16 v0, v24

    #@2f2
    new-array v0, v0, [Ljava/lang/Object;

    #@2f4
    move-object/from16 v24, v0

    #@2f6
    .line 789
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@2f9
    move-result-object v25

    #@2fa
    const/16 v26, 0x0

    #@2fc
    aput-object v25, v24, v26

    #@2fe
    const/16 v25, 0x14

    #@300
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@303
    move-result-object v25

    #@304
    const/16 v26, 0x1

    #@306
    aput-object v25, v24, v26

    #@308
    .line 788
    invoke-static/range {v23 .. v24}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@30b
    move-result-object v23

    #@30c
    .line 787
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@30f
    .line 792
    :cond_4
    const/16 v22, 0x14

    #@311
    move/from16 v0, v22

    #@313
    if-lt v6, v0, :cond_e

    #@315
    .line 793
    const/16 v22, 0x1

    #@317
    move/from16 v0, v22

    #@319
    move-object/from16 v1, p0

    #@31b
    iput-boolean v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    #@31d
    .line 810
    .end local v6    # "bi":I
    .end local v13    # "mMaskAverageByteBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "mask_average":[B
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    #@31f
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    #@321
    move/from16 v22, v0

    #@323
    move-object/from16 v0, p0

    #@325
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    #@327
    move/from16 v23, v0

    #@329
    move-object/from16 v0, p0

    #@32b
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    #@32d
    move/from16 v24, v0

    #@32f
    sub-int v23, v23, v24

    #@331
    move/from16 v0, v22

    #@333
    move/from16 v1, v23

    #@335
    if-lt v0, v1, :cond_6

    #@337
    .line 811
    move-object/from16 v0, p0

    #@339
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    #@33b
    move/from16 v22, v0

    #@33d
    move/from16 v0, v22

    #@33f
    float-to-double v0, v0

    #@340
    move-wide/from16 v22, v0

    #@342
    const-wide/16 v24, 0x0

    #@344
    cmpl-double v22, v22, v24

    #@346
    if-lez v22, :cond_11

    #@348
    .line 812
    :cond_6
    :goto_5
    const/16 v22, 0x3

    #@34a
    move/from16 v0, v22

    #@34c
    new-array v0, v0, [Landroid/filterfw/core/Frame;

    #@34e
    move-object/from16 v16, v0

    #@350
    move-object/from16 v0, p0

    #@352
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    #@354
    move-object/from16 v22, v0

    #@356
    const/16 v23, 0x0

    #@358
    aput-object v22, v16, v23

    #@35a
    move-object/from16 v0, p0

    #@35c
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    #@35e
    move-object/from16 v22, v0

    #@360
    aget-object v22, v22, v12

    #@362
    const/16 v23, 0x1

    #@364
    aput-object v22, v16, v23

    #@366
    move-object/from16 v0, p0

    #@368
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    #@36a
    move-object/from16 v22, v0

    #@36c
    const/16 v23, 0x2

    #@36e
    aput-object v22, v16, v23

    #@370
    .line 813
    .local v16, "meanUpdateInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@372
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    #@374
    move-object/from16 v22, v0

    #@376
    move-object/from16 v0, p0

    #@378
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    #@37a
    move-object/from16 v23, v0

    #@37c
    aget-object v23, v23, v18

    #@37e
    move-object/from16 v0, v22

    #@380
    move-object/from16 v1, v16

    #@382
    move-object/from16 v2, v23

    #@384
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@387
    .line 814
    move-object/from16 v0, p0

    #@389
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    #@38b
    move-object/from16 v22, v0

    #@38d
    aget-object v22, v22, v18

    #@38f
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    #@392
    .line 815
    move-object/from16 v0, p0

    #@394
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    #@396
    move-object/from16 v22, v0

    #@398
    aget-object v22, v22, v18

    #@39a
    const/16 v23, 0x2801

    #@39c
    .line 816
    const/16 v24, 0x2701

    #@39e
    .line 815
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    #@3a1
    .line 818
    const/16 v22, 0x4

    #@3a3
    move/from16 v0, v22

    #@3a5
    new-array v0, v0, [Landroid/filterfw/core/Frame;

    #@3a7
    move-object/from16 v20, v0

    #@3a9
    .line 819
    move-object/from16 v0, p0

    #@3ab
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    #@3ad
    move-object/from16 v22, v0

    #@3af
    const/16 v23, 0x0

    #@3b1
    aput-object v22, v20, v23

    #@3b3
    move-object/from16 v0, p0

    #@3b5
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    #@3b7
    move-object/from16 v22, v0

    #@3b9
    aget-object v22, v22, v12

    #@3bb
    const/16 v23, 0x1

    #@3bd
    aput-object v22, v20, v23

    #@3bf
    move-object/from16 v0, p0

    #@3c1
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    #@3c3
    move-object/from16 v22, v0

    #@3c5
    aget-object v22, v22, v12

    #@3c7
    const/16 v23, 0x2

    #@3c9
    aput-object v22, v20, v23

    #@3cb
    move-object/from16 v0, p0

    #@3cd
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    #@3cf
    move-object/from16 v22, v0

    #@3d1
    const/16 v23, 0x3

    #@3d3
    aput-object v22, v20, v23

    #@3d5
    .line 821
    .local v20, "varianceUpdateInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@3d7
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    #@3d9
    move-object/from16 v22, v0

    #@3db
    move-object/from16 v0, p0

    #@3dd
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    #@3df
    move-object/from16 v23, v0

    #@3e1
    aget-object v23, v23, v18

    #@3e3
    move-object/from16 v0, v22

    #@3e5
    move-object/from16 v1, v20

    #@3e7
    move-object/from16 v2, v23

    #@3e9
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@3ec
    .line 822
    move-object/from16 v0, p0

    #@3ee
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    #@3f0
    move-object/from16 v22, v0

    #@3f2
    aget-object v22, v22, v18

    #@3f4
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    #@3f7
    .line 823
    move-object/from16 v0, p0

    #@3f9
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    #@3fb
    move-object/from16 v22, v0

    #@3fd
    aget-object v22, v22, v18

    #@3ff
    const/16 v23, 0x2801

    #@401
    .line 824
    const/16 v24, 0x2701

    #@403
    .line 823
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    #@406
    .line 828
    .end local v16    # "meanUpdateInputs":[Landroid/filterfw/core/Frame;
    .end local v20    # "varianceUpdateInputs":[Landroid/filterfw/core/Frame;
    :cond_7
    move-object/from16 v0, p0

    #@408
    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mProvideDebugOutputs:Z

    #@40a
    move/from16 v22, v0

    #@40c
    if-eqz v22, :cond_8

    #@40e
    .line 829
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@411
    move-result-object v22

    #@412
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@415
    move-result-object v23

    #@416
    invoke-virtual/range {v22 .. v23}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@419
    move-result-object v7

    #@41a
    .line 830
    .local v7, "dbg1":Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@41c
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

    #@41e
    move-object/from16 v22, v0

    #@420
    move-object/from16 v0, v22

    #@422
    move-object/from16 v1, v21

    #@424
    invoke-virtual {v0, v1, v7}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@427
    .line 831
    const-string/jumbo v22, "debug1"

    #@42a
    move-object/from16 v0, p0

    #@42c
    move-object/from16 v1, v22

    #@42e
    invoke-virtual {v0, v1, v7}, Landroid/filterpacks/videoproc/BackDropperFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@431
    .line 832
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@434
    .line 834
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@437
    move-result-object v22

    #@438
    move-object/from16 v0, p0

    #@43a
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    #@43c
    move-object/from16 v23, v0

    #@43e
    invoke-virtual/range {v22 .. v23}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@441
    move-result-object v8

    #@442
    .line 835
    .local v8, "dbg2":Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@444
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

    #@446
    move-object/from16 v22, v0

    #@448
    move-object/from16 v0, p0

    #@44a
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    #@44c
    move-object/from16 v23, v0

    #@44e
    move-object/from16 v0, v22

    #@450
    move-object/from16 v1, v23

    #@452
    invoke-virtual {v0, v1, v8}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@455
    .line 836
    const-string/jumbo v22, "debug2"

    #@458
    move-object/from16 v0, p0

    #@45a
    move-object/from16 v1, v22

    #@45c
    invoke-virtual {v0, v1, v8}, Landroid/filterpacks/videoproc/BackDropperFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@45f
    .line 837
    invoke-virtual {v8}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@462
    .line 840
    .end local v7    # "dbg1":Landroid/filterfw/core/Frame;
    .end local v8    # "dbg2":Landroid/filterfw/core/Frame;
    :cond_8
    move-object/from16 v0, p0

    #@464
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    #@466
    move/from16 v22, v0

    #@468
    add-int/lit8 v22, v22, 0x1

    #@46a
    move/from16 v0, v22

    #@46c
    move-object/from16 v1, p0

    #@46e
    iput v0, v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    #@470
    .line 842
    move-object/from16 v0, p0

    #@472
    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    #@474
    move/from16 v22, v0

    #@476
    if-eqz v22, :cond_9

    #@478
    .line 843
    move-object/from16 v0, p0

    #@47a
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    #@47c
    move/from16 v22, v0

    #@47e
    rem-int/lit8 v22, v22, 0x1e

    #@480
    if-nez v22, :cond_9

    #@482
    .line 844
    move-object/from16 v0, p0

    #@484
    iget-wide v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    #@486
    move-wide/from16 v22, v0

    #@488
    const-wide/16 v24, -0x1

    #@48a
    cmp-long v22, v22, v24

    #@48c
    if-nez v22, :cond_12

    #@48e
    .line 845
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@491
    move-result-object v22

    #@492
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLEnvironment;->activate()V

    #@495
    .line 846
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    #@498
    .line 847
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@49b
    move-result-wide v22

    #@49c
    move-wide/from16 v0, v22

    #@49e
    move-object/from16 v2, p0

    #@4a0
    iput-wide v0, v2, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    #@4a2
    .line 697
    :cond_9
    :goto_6
    return-void

    #@4a3
    .line 714
    .end local v4    # "autoWBInputs":[Landroid/filterfw/core/Frame;
    .end local v9    # "distInputs":[Landroid/filterfw/core/Frame;
    .end local v12    # "inputIndex":I
    .end local v18    # "outputIndex":I
    :cond_a
    const/4 v12, 0x1

    #@4a4
    .restart local v12    # "inputIndex":I
    goto/16 :goto_0

    #@4a6
    .line 715
    :cond_b
    const/16 v18, 0x0

    #@4a8
    .restart local v18    # "outputIndex":I
    goto/16 :goto_1

    #@4aa
    .line 716
    :cond_c
    const/16 v22, 0x1

    #@4ac
    goto/16 :goto_2

    #@4ae
    .line 768
    .restart local v4    # "autoWBInputs":[Landroid/filterfw/core/Frame;
    .restart local v9    # "distInputs":[Landroid/filterfw/core/Frame;
    :cond_d
    move-object/from16 v0, p0

    #@4b0
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    #@4b2
    move/from16 v22, v0

    #@4b4
    move-object/from16 v0, p0

    #@4b6
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    #@4b8
    move/from16 v23, v0

    #@4ba
    move-object/from16 v0, p0

    #@4bc
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    #@4be
    move/from16 v24, v0

    #@4c0
    sub-int v23, v23, v24

    #@4c2
    move/from16 v0, v22

    #@4c4
    move/from16 v1, v23

    #@4c6
    if-le v0, v1, :cond_3

    #@4c8
    .line 771
    const/16 v22, 0x2

    #@4ca
    move/from16 v0, v22

    #@4cc
    new-array v14, v0, [Landroid/filterfw/core/Frame;

    #@4ce
    move-object/from16 v0, p0

    #@4d0
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    #@4d2
    move-object/from16 v22, v0

    #@4d4
    aget-object v22, v22, v12

    #@4d6
    const/16 v23, 0x0

    #@4d8
    aput-object v22, v14, v23

    #@4da
    move-object/from16 v0, p0

    #@4dc
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    #@4de
    move-object/from16 v22, v0

    #@4e0
    const/16 v23, 0x1

    #@4e2
    aput-object v22, v14, v23

    #@4e4
    .line 772
    .local v14, "maskVerifyInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@4e6
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

    #@4e8
    move-object/from16 v22, v0

    #@4ea
    move-object/from16 v0, p0

    #@4ec
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    #@4ee
    move-object/from16 v23, v0

    #@4f0
    aget-object v23, v23, v18

    #@4f2
    move-object/from16 v0, v22

    #@4f4
    move-object/from16 v1, v23

    #@4f6
    invoke-virtual {v0, v14, v1}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@4f9
    .line 773
    move-object/from16 v0, p0

    #@4fb
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    #@4fd
    move-object/from16 v22, v0

    #@4ff
    aget-object v22, v22, v18

    #@501
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    #@504
    .line 774
    move-object/from16 v0, p0

    #@506
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    #@508
    move-object/from16 v22, v0

    #@50a
    aget-object v22, v22, v18

    #@50c
    const/16 v23, 0x2801

    #@50e
    .line 775
    const/16 v24, 0x2701

    #@510
    .line 774
    invoke-virtual/range {v22 .. v24}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    #@513
    goto/16 :goto_3

    #@515
    .line 795
    .end local v14    # "maskVerifyInputs":[Landroid/filterfw/core/Frame;
    .restart local v6    # "bi":I
    .restart local v13    # "mMaskAverageByteBuffer":Ljava/nio/ByteBuffer;
    .restart local v15    # "mask_average":[B
    :cond_e
    move-object/from16 v0, p0

    #@517
    iget-boolean v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    #@519
    move/from16 v22, v0

    #@51b
    if-eqz v22, :cond_f

    #@51d
    const-string/jumbo v22, "BackDropperFilter"

    #@520
    const-string/jumbo v23, "Learning done"

    #@523
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@526
    .line 796
    :cond_f
    move-object/from16 v0, p0

    #@528
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    #@52a
    move-object/from16 v22, v0

    #@52c
    if-eqz v22, :cond_5

    #@52e
    .line 797
    move-object/from16 v0, p0

    #@530
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    #@532
    move-object/from16 v22, v0

    #@534
    move-object/from16 v0, v22

    #@536
    move-object/from16 v1, p0

    #@538
    invoke-interface {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;->onLearningDone(Landroid/filterpacks/videoproc/BackDropperFilter;)V

    #@53b
    goto/16 :goto_4

    #@53d
    .line 802
    .end local v6    # "bi":I
    .end local v13    # "mMaskAverageByteBuffer":Ljava/nio/ByteBuffer;
    .end local v15    # "mask_average":[B
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@540
    move-result-object v22

    #@541
    invoke-virtual/range {v21 .. v21}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@544
    move-result-object v23

    #@545
    invoke-virtual/range {v22 .. v23}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@548
    move-result-object v17

    #@549
    .line 803
    .local v17, "output":Landroid/filterfw/core/Frame;
    const/16 v22, 0x4

    #@54b
    move/from16 v0, v22

    #@54d
    new-array v0, v0, [Landroid/filterfw/core/Frame;

    #@54f
    move-object/from16 v19, v0

    #@551
    const/16 v22, 0x0

    #@553
    aput-object v21, v19, v22

    #@555
    const/16 v22, 0x1

    #@557
    aput-object v5, v19, v22

    #@559
    move-object/from16 v0, p0

    #@55b
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    #@55d
    move-object/from16 v22, v0

    #@55f
    const/16 v23, 0x2

    #@561
    aput-object v22, v19, v23

    #@563
    move-object/from16 v0, p0

    #@565
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    #@567
    move-object/from16 v22, v0

    #@569
    const/16 v23, 0x3

    #@56b
    aput-object v22, v19, v23

    #@56d
    .line 804
    .local v19, "subtractInputs":[Landroid/filterfw/core/Frame;
    move-object/from16 v0, p0

    #@56f
    iget-object v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    #@571
    move-object/from16 v22, v0

    #@573
    move-object/from16 v0, v22

    #@575
    move-object/from16 v1, v19

    #@577
    move-object/from16 v2, v17

    #@579
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@57c
    .line 805
    const-string/jumbo v22, "video"

    #@57f
    move-object/from16 v0, p0

    #@581
    move-object/from16 v1, v22

    #@583
    move-object/from16 v2, v17

    #@585
    invoke-virtual {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@588
    .line 806
    invoke-virtual/range {v17 .. v17}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@58b
    goto/16 :goto_4

    #@58d
    .line 811
    .end local v17    # "output":Landroid/filterfw/core/Frame;
    .end local v19    # "subtractInputs":[Landroid/filterfw/core/Frame;
    :cond_11
    move-object/from16 v0, p0

    #@58f
    iget v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    #@591
    move/from16 v22, v0

    #@593
    move/from16 v0, v22

    #@595
    float-to-double v0, v0

    #@596
    move-wide/from16 v22, v0

    #@598
    const-wide/16 v24, 0x0

    #@59a
    cmpl-double v22, v22, v24

    #@59c
    if-lez v22, :cond_7

    #@59e
    goto/16 :goto_5

    #@5a0
    .line 849
    :cond_12
    invoke-virtual/range {p1 .. p1}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    #@5a3
    move-result-object v22

    #@5a4
    invoke-virtual/range {v22 .. v22}, Landroid/filterfw/core/GLEnvironment;->activate()V

    #@5a7
    .line 850
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    #@5aa
    .line 851
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@5ad
    move-result-wide v10

    #@5ae
    .line 852
    .local v10, "endTime":J
    const-string/jumbo v22, "BackDropperFilter"

    #@5b1
    new-instance v23, Ljava/lang/StringBuilder;

    #@5b3
    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    #@5b6
    const-string/jumbo v24, "Avg. frame duration: "

    #@5b9
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5bc
    move-result-object v23

    #@5bd
    const-string/jumbo v24, "%.2f"

    #@5c0
    const/16 v25, 0x1

    #@5c2
    move/from16 v0, v25

    #@5c4
    new-array v0, v0, [Ljava/lang/Object;

    #@5c6
    move-object/from16 v25, v0

    #@5c8
    move-object/from16 v0, p0

    #@5ca
    iget-wide v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    #@5cc
    move-wide/from16 v26, v0

    #@5ce
    sub-long v26, v10, v26

    #@5d0
    move-wide/from16 v0, v26

    #@5d2
    long-to-double v0, v0

    #@5d3
    move-wide/from16 v26, v0

    #@5d5
    const-wide/high16 v28, 0x403e000000000000L    # 30.0

    #@5d7
    div-double v26, v26, v28

    #@5d9
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@5dc
    move-result-object v26

    #@5dd
    const/16 v27, 0x0

    #@5df
    aput-object v26, v25, v27

    #@5e1
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@5e4
    move-result-object v24

    #@5e5
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e8
    move-result-object v23

    #@5e9
    .line 853
    const-string/jumbo v24, " ms. Avg. fps: "

    #@5ec
    .line 852
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5ef
    move-result-object v23

    #@5f0
    .line 853
    const-string/jumbo v24, "%.2f"

    #@5f3
    const/16 v25, 0x1

    #@5f5
    move/from16 v0, v25

    #@5f7
    new-array v0, v0, [Ljava/lang/Object;

    #@5f9
    move-object/from16 v25, v0

    #@5fb
    move-object/from16 v0, p0

    #@5fd
    iget-wide v0, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    #@5ff
    move-wide/from16 v26, v0

    #@601
    sub-long v26, v10, v26

    #@603
    move-wide/from16 v0, v26

    #@605
    long-to-double v0, v0

    #@606
    move-wide/from16 v26, v0

    #@608
    const-wide/high16 v28, 0x403e000000000000L    # 30.0

    #@60a
    div-double v26, v26, v28

    #@60c
    const-wide v28, 0x408f400000000000L    # 1000.0

    #@611
    div-double v26, v28, v26

    #@613
    invoke-static/range {v26 .. v27}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@616
    move-result-object v26

    #@617
    const/16 v27, 0x0

    #@619
    aput-object v26, v25, v27

    #@61b
    invoke-static/range {v24 .. v25}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@61e
    move-result-object v24

    #@61f
    .line 852
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@622
    move-result-object v23

    #@623
    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@626
    move-result-object v23

    #@627
    invoke-static/range {v22 .. v23}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    #@62a
    .line 854
    move-object/from16 v0, p0

    #@62c
    iput-wide v10, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    #@62e
    goto/16 :goto_6
.end method

.method public declared-synchronized relearn()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 886
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 884
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public setupPorts()V
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 532
    const/4 v4, 0x3

    #@2
    invoke-static {v4, v3}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@5
    move-result-object v0

    #@6
    .line 534
    .local v0, "imageFormat":Landroid/filterfw/core/FrameFormat;
    sget-object v5, Landroid/filterpacks/videoproc/BackDropperFilter;->mInputNames:[Ljava/lang/String;

    #@8
    array-length v6, v5

    #@9
    move v4, v3

    #@a
    :goto_0
    if-ge v4, v6, :cond_0

    #@c
    aget-object v1, v5, v4

    #@e
    .line 535
    .local v1, "inputName":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/videoproc/BackDropperFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@11
    .line 534
    add-int/lit8 v4, v4, 0x1

    #@13
    goto :goto_0

    #@14
    .line 538
    .end local v1    # "inputName":Ljava/lang/String;
    :cond_0
    sget-object v5, Landroid/filterpacks/videoproc/BackDropperFilter;->mOutputNames:[Ljava/lang/String;

    #@16
    array-length v6, v5

    #@17
    move v4, v3

    #@18
    :goto_1
    if-ge v4, v6, :cond_1

    #@1a
    aget-object v2, v5, v4

    #@1c
    .line 539
    .local v2, "outputName":Ljava/lang/String;
    const-string/jumbo v7, "video"

    #@1f
    invoke-virtual {p0, v2, v7}, Landroid/filterpacks/videoproc/BackDropperFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@22
    .line 538
    add-int/lit8 v4, v4, 0x1

    #@24
    goto :goto_1

    #@25
    .line 543
    .end local v2    # "outputName":Ljava/lang/String;
    :cond_1
    iget-boolean v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mProvideDebugOutputs:Z

    #@27
    if-eqz v4, :cond_2

    #@29
    .line 544
    sget-object v4, Landroid/filterpacks/videoproc/BackDropperFilter;->mDebugOutputNames:[Ljava/lang/String;

    #@2b
    array-length v5, v4

    #@2c
    :goto_2
    if-ge v3, v5, :cond_2

    #@2e
    aget-object v2, v4, v3

    #@30
    .line 545
    .restart local v2    # "outputName":Ljava/lang/String;
    const-string/jumbo v6, "video"

    #@33
    invoke-virtual {p0, v2, v6}, Landroid/filterpacks/videoproc/BackDropperFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@36
    .line 544
    add-int/lit8 v3, v3, 0x1

    #@38
    goto :goto_2

    #@39
    .line 529
    .end local v2    # "outputName":Ljava/lang/String;
    :cond_2
    return-void
.end method
