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
.field private static final blacklist DEFAULT_ACCEPT_STDDEV:F = 0.85f

.field private static final blacklist DEFAULT_ADAPT_RATE_BG:F = 0.0f

.field private static final blacklist DEFAULT_ADAPT_RATE_FG:F = 0.0f

.field private static final blacklist DEFAULT_AUTO_WB_SCALE:Ljava/lang/String; = "0.25"

.field private static final blacklist DEFAULT_BG_FIT_TRANSFORM:[F

.field private static final blacklist DEFAULT_EXPOSURE_CHANGE:F = 1.0f

.field private static final blacklist DEFAULT_HIER_LRG_EXPONENT:I = 0x3

.field private static final blacklist DEFAULT_HIER_LRG_SCALE:F = 0.7f

.field private static final blacklist DEFAULT_HIER_MID_EXPONENT:I = 0x2

.field private static final blacklist DEFAULT_HIER_MID_SCALE:F = 0.6f

.field private static final blacklist DEFAULT_HIER_SML_EXPONENT:I = 0x0

.field private static final blacklist DEFAULT_HIER_SML_SCALE:F = 0.5f

.field private static final blacklist DEFAULT_LEARNING_ADAPT_RATE:F = 0.2f

.field private static final blacklist DEFAULT_LEARNING_DONE_THRESHOLD:I = 0x14

.field private static final blacklist DEFAULT_LEARNING_DURATION:I = 0x28

.field private static final blacklist DEFAULT_LEARNING_VERIFY_DURATION:I = 0xa

.field private static final blacklist DEFAULT_MASK_BLEND_BG:F = 0.65f

.field private static final blacklist DEFAULT_MASK_BLEND_FG:F = 0.95f

.field private static final blacklist DEFAULT_MASK_HEIGHT_EXPONENT:I = 0x8

.field private static final blacklist DEFAULT_MASK_VERIFY_RATE:F = 0.25f

.field private static final blacklist DEFAULT_MASK_WIDTH_EXPONENT:I = 0x8

.field private static final blacklist DEFAULT_UV_SCALE_FACTOR:F = 1.35f

.field private static final blacklist DEFAULT_WHITE_BALANCE_BLUE_CHANGE:F = 0.0f

.field private static final blacklist DEFAULT_WHITE_BALANCE_RED_CHANGE:F = 0.0f

.field private static final blacklist DEFAULT_WHITE_BALANCE_TOGGLE:I = 0x0

.field private static final blacklist DEFAULT_Y_SCALE_FACTOR:F = 0.4f

.field private static final blacklist DISTANCE_STORAGE_SCALE:Ljava/lang/String; = "0.6"

.field private static final blacklist MASK_SMOOTH_EXPONENT:Ljava/lang/String; = "2.0"

.field private static final blacklist MIN_VARIANCE:Ljava/lang/String; = "3.0"

.field private static final blacklist RGB_TO_YUV_MATRIX:Ljava/lang/String; = "0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 "

.field private static final blacklist TAG:Ljava/lang/String; = "BackDropperFilter"

.field private static final blacklist VARIANCE_STORAGE_SCALE:Ljava/lang/String; = "5.0"

.field private static final blacklist mAutomaticWhiteBalance:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float pyramid_depth;\nuniform bool autowb_toggle;\nvarying vec2 v_texcoord;\nvoid main() {\n   vec4 mean_video = texture2D(tex_sampler_0, v_texcoord, pyramid_depth);\n   vec4 mean_bg = texture2D(tex_sampler_1, v_texcoord, pyramid_depth);\n   float green_normalizer = mean_video.g / mean_bg.g;\n   vec4 adjusted_value = vec4(mean_bg.r / mean_video.r * green_normalizer, 1., \n                         mean_bg.b / mean_video.b * green_normalizer, 1.) * auto_wb_scale; \n   gl_FragColor = autowb_toggle ? adjusted_value : vec4(auto_wb_scale);\n}\n"

.field private static final blacklist mBgDistanceShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n\n  float dist_y = gauss_dist_y(fg.r, mean.r, variance.r);\n  float dist_uv = gauss_dist_uv(fg.gb, mean.gb, variance.gb);\n  gl_FragColor = vec4(0.5*fg.rg, dist_scale*dist_y, dist_scale*dist_uv);\n}\n"

.field private static final blacklist mBgMaskShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform float accept_variance;\nuniform vec2 yuv_weights;\nuniform float scale_lrg;\nuniform float scale_mid;\nuniform float scale_sml;\nuniform float exp_lrg;\nuniform float exp_mid;\nuniform float exp_sml;\nvarying vec2 v_texcoord;\nbool is_fg(vec2 dist_yc, float accept_variance) {\n  return ( dot(yuv_weights, dist_yc) >= accept_variance );\n}\nvoid main() {\n  vec4 dist_lrg_sc = texture2D(tex_sampler_0, v_texcoord, exp_lrg);\n  vec4 dist_mid_sc = texture2D(tex_sampler_0, v_texcoord, exp_mid);\n  vec4 dist_sml_sc = texture2D(tex_sampler_0, v_texcoord, exp_sml);\n  vec2 dist_lrg = inv_dist_scale * dist_lrg_sc.ba;\n  vec2 dist_mid = inv_dist_scale * dist_mid_sc.ba;\n  vec2 dist_sml = inv_dist_scale * dist_sml_sc.ba;\n  vec2 norm_dist = 0.75 * dist_sml / accept_variance;\n  bool is_fg_lrg = is_fg(dist_lrg, accept_variance * scale_lrg);\n  bool is_fg_mid = is_fg_lrg || is_fg(dist_mid, accept_variance * scale_mid);\n  float is_fg_sml =\n      float(is_fg_mid || is_fg(dist_sml, accept_variance * scale_sml));\n  float alpha = 0.5 * is_fg_sml + 0.3 * float(is_fg_mid) + 0.2 * float(is_fg_lrg);\n  gl_FragColor = vec4(alpha, norm_dist, is_fg_sml);\n}\n"

.field private static final blacklist mBgSubtractForceShader:Ljava/lang/String; = "  vec4 ghost_rgb = (fg_adjusted * 0.7 + vec4(0.3,0.3,0.4,0.))*0.65 + \n                   0.35*bg_rgb;\n  float glow_start = 0.75 * mask_blend_bg; \n  float glow_max   = mask_blend_bg; \n  gl_FragColor = mask.a < glow_start ? bg_rgb : \n                 mask.a < glow_max ? mix(bg_rgb, vec4(0.9,0.9,1.0,1.0), \n                                     (mask.a - glow_start) / (glow_max - glow_start) ) : \n                 mask.a < mask_blend_fg ? mix(vec4(0.9,0.9,1.0,1.0), ghost_rgb, \n                                    (mask.a - glow_max) / (mask_blend_fg - glow_max) ) : \n                 ghost_rgb;\n}\n"

.field private static final blacklist mBgSubtractShader:Ljava/lang/String; = "uniform mat3 bg_fit_transform;\nuniform float mask_blend_bg;\nuniform float mask_blend_fg;\nuniform float exposure_change;\nuniform float whitebalancered_change;\nuniform float whitebalanceblue_change;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 bg_texcoord = (bg_fit_transform * vec3(v_texcoord, 1.)).xy;\n  vec4 bg_rgb = texture2D(tex_sampler_1, bg_texcoord);\n  vec4 wb_auto_scale = texture2D(tex_sampler_3, v_texcoord) * exposure_change / auto_wb_scale;\n  vec4 wb_manual_scale = vec4(1. + whitebalancered_change, 1., 1. + whitebalanceblue_change, 1.);\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord);\n  vec4 fg_adjusted = fg_rgb * wb_manual_scale * wb_auto_scale;\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n  float alpha = smoothstep(mask_blend_bg, mask_blend_fg, mask.a);\n  gl_FragColor = mix(bg_rgb, fg_adjusted, alpha);\n"

.field private static final blacklist mDebugOutputNames:[Ljava/lang/String;

.field private static final blacklist mInputNames:[Ljava/lang/String;

.field private static final blacklist mMaskVerifyShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float verify_rate;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 lastmask = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  float newmask = mix(lastmask.a, mask.a, verify_rate);\n  gl_FragColor = vec4(0., 0., 0., newmask);\n}\n"

.field private static final blacklist mOutputNames:[Ljava/lang/String;

.field private static blacklist mSharedUtilShader:Ljava/lang/String; = null

.field private static final blacklist mUpdateBgModelMeanShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 new_mean = mix(mean, fg, alpha);\n  gl_FragColor = new_mean;\n}\n"

.field private static final blacklist mUpdateBgModelVarianceShader:Ljava/lang/String; = "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_3, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 cur_variance = (fg-mean)*(fg-mean);\n  vec4 new_variance = mix(variance, cur_variance, alpha);\n  new_variance = max(new_variance, vec4(min_variance));\n  gl_FragColor = var_scale * new_variance;\n}\n"


# instance fields
.field private final blacklist BACKGROUND_FILL_CROP:I

.field private final blacklist BACKGROUND_FIT:I

.field private final blacklist BACKGROUND_STRETCH:I

.field private blacklist copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

.field private blacklist isOpen:Z

.field private blacklist mAcceptStddev:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "acceptStddev"
    .end annotation
.end field

.field private blacklist mAdaptRateBg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "adaptRateBg"
    .end annotation
.end field

.field private blacklist mAdaptRateFg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "adaptRateFg"
    .end annotation
.end field

.field private blacklist mAdaptRateLearning:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningAdaptRate"
    .end annotation
.end field

.field private blacklist mAutoWB:Landroid/filterfw/core/GLFrame;

.field private blacklist mAutoWBToggle:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "autowbToggle"
    .end annotation
.end field

.field private blacklist mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private blacklist mBackgroundFitMode:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "backgroundFitMode"
    .end annotation
.end field

.field private blacklist mBackgroundFitModeChanged:Z

.field private blacklist mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mBgInput:Landroid/filterfw/core/GLFrame;

.field private blacklist mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mBgMean:[Landroid/filterfw/core/GLFrame;

.field private blacklist mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mBgVariance:[Landroid/filterfw/core/GLFrame;

.field private blacklist mChromaScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "chromaScale"
    .end annotation
.end field

.field private blacklist mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mDistance:Landroid/filterfw/core/GLFrame;

.field private blacklist mExposureChange:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "exposureChange"
    .end annotation
.end field

.field private blacklist mFrameCount:I

.field private blacklist mHierarchyLrgExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierLrgExp"
    .end annotation
.end field

.field private blacklist mHierarchyLrgScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierLrgScale"
    .end annotation
.end field

.field private blacklist mHierarchyMidExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierMidExp"
    .end annotation
.end field

.field private blacklist mHierarchyMidScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierMidScale"
    .end annotation
.end field

.field private blacklist mHierarchySmlExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierSmlExp"
    .end annotation
.end field

.field private blacklist mHierarchySmlScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "hierSmlScale"
    .end annotation
.end field

.field private blacklist mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningDoneListener"
    .end annotation
.end field

.field private blacklist mLearningDuration:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningDuration"
    .end annotation
.end field

.field private blacklist mLearningVerifyDuration:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "learningVerifyDuration"
    .end annotation
.end field

.field private final blacklist mLogVerbose:Z

.field private blacklist mLumScale:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "lumScale"
    .end annotation
.end field

.field private blacklist mMask:Landroid/filterfw/core/GLFrame;

.field private blacklist mMaskAverage:Landroid/filterfw/core/GLFrame;

.field private blacklist mMaskBg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskBg"
    .end annotation
.end field

.field private blacklist mMaskFg:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskFg"
    .end annotation
.end field

.field private blacklist mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private blacklist mMaskHeightExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskHeightExp"
    .end annotation
.end field

.field private blacklist mMaskVerify:[Landroid/filterfw/core/GLFrame;

.field private blacklist mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

.field private blacklist mMaskWidthExp:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskWidthExp"
    .end annotation
.end field

.field private blacklist mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private blacklist mMirrorBg:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "mirrorBg"
    .end annotation
.end field

.field private blacklist mOrientation:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "orientation"
    .end annotation
.end field

.field private blacklist mOutputFormat:Landroid/filterfw/core/FrameFormat;

.field private blacklist mPingPong:Z

.field private blacklist mProvideDebugOutputs:Z
    .annotation runtime Landroid/filterfw/core/GenerateFinalPort;
        hasDefault = true
        name = "provideDebugOutputs"
    .end annotation
.end field

.field private blacklist mPyramidDepth:I

.field private blacklist mRelativeAspect:F

.field private blacklist mStartLearning:Z

.field private blacklist mSubsampleLevel:I

.field private blacklist mUseTheForce:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "useTheForce"
    .end annotation
.end field

.field private blacklist mVerifyRate:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "maskVerifyRate"
    .end annotation
.end field

.field private blacklist mVideoInput:Landroid/filterfw/core/GLFrame;

.field private blacklist mWhiteBalanceBlueChange:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "whitebalanceblueChange"
    .end annotation
.end field

.field private blacklist mWhiteBalanceRedChange:F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "whitebalanceredChange"
    .end annotation
.end field

.field private blacklist startTime:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 178
    const/16 v0, 0x9

    new-array v0, v0, [F

    fill-array-data v0, :array_2a

    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->DEFAULT_BG_FIT_TRANSFORM:[F

    .line 203
    const-string v0, "background"

    const-string/jumbo v1, "video"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mInputNames:[Ljava/lang/String;

    .line 206
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOutputNames:[Ljava/lang/String;

    .line 208
    const-string v0, "debug1"

    const-string v1, "debug2"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDebugOutputNames:[Ljava/lang/String;

    .line 224
    const-string/jumbo v0, "precision mediump float;\nuniform float fg_adapt_rate;\nuniform float bg_adapt_rate;\nconst mat4 coeff_yuv = mat4(0.299, -0.168736,  0.5,      0.000, 0.587, -0.331264, -0.418688, 0.000, 0.114,  0.5,      -0.081312, 0.000, 0.000,  0.5,       0.5,      1.000 );\nconst float dist_scale = 0.6;\nconst float inv_dist_scale = 1. / dist_scale;\nconst float var_scale=5.0;\nconst float inv_var_scale = 1. / var_scale;\nconst float min_variance = inv_var_scale *3.0/ 256.;\nconst float auto_wb_scale = 0.25;\n\nfloat gauss_dist_y(float y, float mean, float variance) {\n  float dist = (y - mean) * (y - mean) / variance;\n  return dist;\n}\nfloat gauss_dist_uv(vec2 uv, vec2 mean, vec2 variance) {\n  vec2 dist = (uv - mean) * (uv - mean) / variance;\n  return dist.r + dist.g;\n}\nfloat local_adapt_rate(float alpha) {\n  return mix(bg_adapt_rate, fg_adapt_rate, alpha);\n}\n\n"

    sput-object v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    return-void

    :array_2a
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

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;

    .line 509
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->BACKGROUND_STRETCH:I

    .line 45
    const/4 v1, 0x1

    iput v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->BACKGROUND_FIT:I

    .line 46
    const/4 v1, 0x2

    iput v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->BACKGROUND_FILL_CROP:I

    .line 48
    iput v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitMode:I

    .line 50
    const/16 v2, 0x28

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    .line 52
    const/16 v2, 0xa

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    .line 54
    const v2, 0x3f59999a    # 0.85f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    .line 56
    const v2, 0x3f333333    # 0.7f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgScale:F

    .line 58
    const v2, 0x3f19999a    # 0.6f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidScale:F

    .line 60
    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlScale:F

    .line 65
    const/16 v2, 0x8

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    .line 67
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    .line 72
    const/4 v2, 0x3

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgExp:I

    .line 74
    iput v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidExp:I

    .line 76
    iput v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlExp:I

    .line 79
    const v2, 0x3ecccccd    # 0.4f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLumScale:F

    .line 81
    const v2, 0x3faccccd    # 1.35f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mChromaScale:F

    .line 83
    const v2, 0x3f266666    # 0.65f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskBg:F

    .line 85
    const v2, 0x3f733333    # 0.95f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFg:F

    .line 87
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mExposureChange:F

    .line 89
    const/4 v2, 0x0

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceRedChange:F

    .line 91
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceBlueChange:F

    .line 93
    iput v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWBToggle:I

    .line 97
    const v3, 0x3e4ccccd    # 0.2f

    iput v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    .line 99
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    .line 101
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    .line 103
    const/high16 v2, 0x3e800000    # 0.25f

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVerifyRate:F

    .line 105
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    .line 108
    iput-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mUseTheForce:Z

    .line 111
    iput-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mProvideDebugOutputs:Z

    .line 116
    iput-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMirrorBg:Z

    .line 121
    iput v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOrientation:I

    .line 860
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    .line 511
    const-string v0, "BackDropperFilter"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    .line 513
    const-string/jumbo v1, "ro.media.effect.bgdropper.adj"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 514
    .local v1, "adjStr":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_cd

    .line 516
    :try_start_86
    iget v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    .line 517
    iget-boolean v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v2, :cond_b5

    .line 518
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adjusting accept threshold by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", now "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b5
    .catch Ljava/lang/NumberFormatException; {:try_start_86 .. :try_end_b5} :catch_b6

    .line 524
    :cond_b5
    goto :goto_cd

    .line 521
    :catch_b6
    move-exception v2

    .line 522
    .local v2, "e":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Badly formatted property ro.media.effect.bgdropper.adj: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_cd
    :goto_cd
    return-void
.end method

.method private blacklist allocateFrames(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FilterContext;)V
    .registers 16
    .param p1, "inputFormat"    # Landroid/filterfw/core/FrameFormat;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 608
    invoke-direct {p0, p1}, Landroid/filterpacks/videoproc/BackDropperFilter;->createMemoryFormat(Landroid/filterfw/core/FrameFormat;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 609
    return-void

    .line 611
    :cond_7
    iget-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    const-string v1, "BackDropperFilter"

    if-eqz v0, :cond_12

    const-string v0, "Allocating BackDropperFilter frames"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_12
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v0}, Landroid/filterfw/core/MutableFrameFormat;->getSize()I

    move-result v0

    .line 615
    .local v0, "numBytes":I
    new-array v2, v0, [B

    .line 616
    .local v2, "initialBgMean":[B
    new-array v3, v0, [B

    .line 617
    .local v3, "initialBgVariance":[B
    new-array v4, v0, [B

    .line 618
    .local v4, "initialMaskVerify":[B
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    const/4 v6, 0x0

    if-ge v5, v0, :cond_2f

    .line 619
    const/16 v7, -0x80

    aput-byte v7, v2, v5

    .line 620
    const/16 v7, 0xa

    aput-byte v7, v3, v5

    .line 621
    aput-byte v6, v4, v5

    .line 618
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 625
    .end local v5    # "i":I
    :cond_2f
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_30
    const/4 v7, 0x2

    if-ge v5, v7, :cond_7b

    .line 626
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v8

    iget-object v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v8, v9}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v8

    check-cast v8, Landroid/filterfw/core/GLFrame;

    aput-object v8, v7, v5

    .line 627
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    aget-object v7, v7, v5

    invoke-virtual {v7, v2, v6, v0}, Landroid/filterfw/core/GLFrame;->setData([BII)V

    .line 629
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v8

    iget-object v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v8, v9}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v8

    check-cast v8, Landroid/filterfw/core/GLFrame;

    aput-object v8, v7, v5

    .line 630
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    aget-object v7, v7, v5

    invoke-virtual {v7, v3, v6, v0}, Landroid/filterfw/core/GLFrame;->setData([BII)V

    .line 632
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v8

    iget-object v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v8, v9}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v8

    check-cast v8, Landroid/filterfw/core/GLFrame;

    aput-object v8, v7, v5

    .line 633
    iget-object v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    aget-object v7, v7, v5

    invoke-virtual {v7, v4, v6, v0}, Landroid/filterfw/core/GLFrame;->setData([BII)V

    .line 625
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 637
    .end local v5    # "i":I
    :cond_7b
    iget-boolean v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v5, :cond_84

    const-string v5, "Done allocating texture for Mean and Variance objects!"

    invoke-static {v1, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_84
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v5, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/GLFrame;

    iput-object v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    .line 640
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v5, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/GLFrame;

    iput-object v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    .line 641
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v5, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/GLFrame;

    iput-object v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    .line 642
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v5, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/GLFrame;

    iput-object v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    .line 643
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v5, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/GLFrame;

    iput-object v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    .line 644
    invoke-virtual {p2}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v5, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v5

    check-cast v5, Landroid/filterfw/core/GLFrame;

    iput-object v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    .line 647
    new-instance v5, Landroid/filterfw/core/ShaderProgram;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n\n  float dist_y = gauss_dist_y(fg.r, mean.r, variance.r);\n  float dist_uv = gauss_dist_uv(fg.gb, mean.gb, variance.gb);\n  gl_FragColor = vec4(0.5*fg.rg, dist_scale*dist_y, dist_scale*dist_uv);\n}\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, p2, v8}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

    .line 648
    iget-object v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const-string/jumbo v9, "subsample_level"

    invoke-virtual {v5, v9, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 650
    new-instance v5, Landroid/filterfw/core/ShaderProgram;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, "uniform sampler2D tex_sampler_0;\nuniform float accept_variance;\nuniform vec2 yuv_weights;\nuniform float scale_lrg;\nuniform float scale_mid;\nuniform float scale_sml;\nuniform float exp_lrg;\nuniform float exp_mid;\nuniform float exp_sml;\nvarying vec2 v_texcoord;\nbool is_fg(vec2 dist_yc, float accept_variance) {\n  return ( dot(yuv_weights, dist_yc) >= accept_variance );\n}\nvoid main() {\n  vec4 dist_lrg_sc = texture2D(tex_sampler_0, v_texcoord, exp_lrg);\n  vec4 dist_mid_sc = texture2D(tex_sampler_0, v_texcoord, exp_mid);\n  vec4 dist_sml_sc = texture2D(tex_sampler_0, v_texcoord, exp_sml);\n  vec2 dist_lrg = inv_dist_scale * dist_lrg_sc.ba;\n  vec2 dist_mid = inv_dist_scale * dist_mid_sc.ba;\n  vec2 dist_sml = inv_dist_scale * dist_sml_sc.ba;\n  vec2 norm_dist = 0.75 * dist_sml / accept_variance;\n  bool is_fg_lrg = is_fg(dist_lrg, accept_variance * scale_lrg);\n  bool is_fg_mid = is_fg_lrg || is_fg(dist_mid, accept_variance * scale_mid);\n  float is_fg_sml =\n      float(is_fg_mid || is_fg(dist_sml, accept_variance * scale_sml));\n  float alpha = 0.5 * is_fg_sml + 0.3 * float(is_fg_mid) + 0.2 * float(is_fg_lrg);\n  gl_FragColor = vec4(alpha, norm_dist, is_fg_sml);\n}\n"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, p2, v8}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    .line 651
    iget-object v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    mul-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const-string v10, "accept_variance"

    invoke-virtual {v5, v10, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 652
    iget v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLumScale:F

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mChromaScale:F

    new-array v7, v7, [F

    aput v5, v7, v6

    const/4 v5, 0x1

    aput v8, v7, v5

    .line 653
    .local v7, "yuvWeights":[F
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v10, "yuv_weights"

    invoke-virtual {v8, v10, v7}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 654
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgScale:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string/jumbo v11, "scale_lrg"

    invoke-virtual {v8, v11, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 655
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidScale:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string/jumbo v11, "scale_mid"

    invoke-virtual {v8, v11, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 656
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlScale:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string/jumbo v11, "scale_sml"

    invoke-virtual {v8, v11, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 657
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v11, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgExp:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v11, "exp_lrg"

    invoke-virtual {v8, v11, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 658
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v11, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidExp:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v11, "exp_mid"

    invoke-virtual {v8, v11, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 659
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v11, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlExp:I

    add-int/2addr v10, v11

    int-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v11, "exp_sml"

    invoke-virtual {v8, v11, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 661
    iget-boolean v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mUseTheForce:Z

    const-string/jumbo v10, "uniform mat3 bg_fit_transform;\nuniform float mask_blend_bg;\nuniform float mask_blend_fg;\nuniform float exposure_change;\nuniform float whitebalancered_change;\nuniform float whitebalanceblue_change;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec2 bg_texcoord = (bg_fit_transform * vec3(v_texcoord, 1.)).xy;\n  vec4 bg_rgb = texture2D(tex_sampler_1, bg_texcoord);\n  vec4 wb_auto_scale = texture2D(tex_sampler_3, v_texcoord) * exposure_change / auto_wb_scale;\n  vec4 wb_manual_scale = vec4(1. + whitebalancered_change, 1., 1. + whitebalanceblue_change, 1.);\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord);\n  vec4 fg_adjusted = fg_rgb * wb_manual_scale * wb_auto_scale;\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n  float alpha = smoothstep(mask_blend_bg, mask_blend_fg, mask.a);\n  gl_FragColor = mix(bg_rgb, fg_adjusted, alpha);\n"

    if-eqz v8, :cond_1c9

    .line 662
    new-instance v8, Landroid/filterfw/core/ShaderProgram;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  vec4 ghost_rgb = (fg_adjusted * 0.7 + vec4(0.3,0.3,0.4,0.))*0.65 + \n                   0.35*bg_rgb;\n  float glow_start = 0.75 * mask_blend_bg; \n  float glow_max   = mask_blend_bg; \n  gl_FragColor = mask.a < glow_start ? bg_rgb : \n                 mask.a < glow_max ? mix(bg_rgb, vec4(0.9,0.9,1.0,1.0), \n                                     (mask.a - glow_start) / (glow_max - glow_start) ) : \n                 mask.a < mask_blend_fg ? mix(vec4(0.9,0.9,1.0,1.0), ghost_rgb, \n                                    (mask.a - glow_max) / (mask_blend_fg - glow_max) ) : \n                 ghost_rgb;\n}\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p2, v10}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    goto :goto_1ea

    .line 664
    :cond_1c9
    new-instance v8, Landroid/filterfw/core/ShaderProgram;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v12, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "}\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p2, v10}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    .line 666
    :goto_1ea
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v10, "bg_fit_transform"

    sget-object v11, Landroid/filterpacks/videoproc/BackDropperFilter;->DEFAULT_BG_FIT_TRANSFORM:[F

    invoke-virtual {v8, v10, v11}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 667
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskBg:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string/jumbo v11, "mask_blend_bg"

    invoke-virtual {v8, v11, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 668
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFg:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string/jumbo v11, "mask_blend_fg"

    invoke-virtual {v8, v11, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 669
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mExposureChange:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string v11, "exposure_change"

    invoke-virtual {v8, v11, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 670
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceBlueChange:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string/jumbo v11, "whitebalanceblue_change"

    invoke-virtual {v8, v11, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 671
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceRedChange:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const-string/jumbo v11, "whitebalancered_change"

    invoke-virtual {v8, v11, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 674
    new-instance v8, Landroid/filterfw/core/ShaderProgram;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_2, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 new_mean = mix(mean, fg, alpha);\n  gl_FragColor = new_mean;\n}\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p2, v10}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    .line 675
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    int-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 677
    new-instance v8, Landroid/filterfw/core/ShaderProgram;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform sampler2D tex_sampler_2;\nuniform sampler2D tex_sampler_3;\nuniform float subsample_level;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 fg_rgb = texture2D(tex_sampler_0, v_texcoord, subsample_level);\n  vec4 fg = coeff_yuv * vec4(fg_rgb.rgb, 1.);\n  vec4 mean = texture2D(tex_sampler_1, v_texcoord);\n  vec4 variance = inv_var_scale * texture2D(tex_sampler_2, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_3, v_texcoord, \n                      2.0);\n\n  float alpha = local_adapt_rate(mask.a);\n  vec4 cur_variance = (fg-mean)*(fg-mean);\n  vec4 new_variance = mix(variance, cur_variance, alpha);\n  new_variance = max(new_variance, vec4(min_variance));\n  gl_FragColor = var_scale * new_variance;\n}\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p2, v10}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    .line 678
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    int-to-float v10, v10

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 680
    invoke-static {p2}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v8

    iput-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

    .line 682
    new-instance v8, Landroid/filterfw/core/ShaderProgram;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float pyramid_depth;\nuniform bool autowb_toggle;\nvarying vec2 v_texcoord;\nvoid main() {\n   vec4 mean_video = texture2D(tex_sampler_0, v_texcoord, pyramid_depth);\n   vec4 mean_bg = texture2D(tex_sampler_1, v_texcoord, pyramid_depth);\n   float green_normalizer = mean_video.g / mean_bg.g;\n   vec4 adjusted_value = vec4(mean_bg.r / mean_video.r * green_normalizer, 1., \n                         mean_bg.b / mean_video.b * green_normalizer, 1.) * auto_wb_scale; \n   gl_FragColor = autowb_toggle ? adjusted_value : vec4(auto_wb_scale);\n}\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p2, v9}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    .line 683
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    int-to-float v9, v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-string/jumbo v10, "pyramid_depth"

    invoke-virtual {v8, v10, v9}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWBToggle:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "autowb_toggle"

    invoke-virtual {v8, v10, v9}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 686
    new-instance v8, Landroid/filterfw/core/ShaderProgram;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/filterpacks/videoproc/BackDropperFilter;->mSharedUtilShader:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "uniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float verify_rate;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 lastmask = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  float newmask = mix(lastmask.a, mask.a, verify_rate);\n  gl_FragColor = vec4(0., 0., 0., newmask);\n}\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p2, v9}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    iput-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

    .line 687
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

    iget v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVerifyRate:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const-string/jumbo v10, "verify_rate"

    invoke-virtual {v8, v10, v9}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 689
    iget-boolean v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v8, :cond_314

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Shader width set to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v9}, Landroid/filterfw/core/MutableFrameFormat;->getWidth()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_314
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    .line 693
    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    .line 694
    iput-boolean v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    .line 695
    return-void
.end method

.method private blacklist createMemoryFormat(Landroid/filterfw/core/FrameFormat;)Z
    .registers 12
    .param p1, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 563
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    if-eqz v0, :cond_6

    .line 564
    const/4 v0, 0x0

    return v0

    .line 567
    :cond_6
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    if-eqz v0, :cond_f8

    .line 568
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    if-eqz v0, :cond_f8

    .line 572
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 573
    iget v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 574
    .local v0, "maskWidth":I
    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    int-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-int v1, v4

    .line 575
    .local v1, "maskHeight":I
    iget-object v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v4, v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 577
    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    iget v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    .line 578
    iget-object v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v4}, Landroid/filterfw/core/MutableFrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v4

    iput-object v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 579
    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/filterpacks/videoproc/BackDropperFilter;->pyramidLevel(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 580
    .local v4, "widthExp":I
    iget v5, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/filterpacks/videoproc/BackDropperFilter;->pyramidLevel(I)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 581
    .local v5, "heightExp":I
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    .line 582
    int-to-double v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int v6, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 583
    .local v6, "memWidth":I
    int-to-double v7, v5

    invoke-static {v2, v3, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 584
    .local v2, "memHeight":I
    iget-object v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v3, v6, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 585
    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPyramidDepth:I

    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskWidthExp:I

    iget v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskHeightExp:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    sub-int/2addr v3, v7

    iput v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    .line 587
    iget-boolean v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v3, :cond_eb

    .line 588
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Mask frames size "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " x "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "BackDropperFilter"

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Pyramid levels "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Memory frames size "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_eb
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    iput-object v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 594
    iget-object v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAverageFormat:Landroid/filterfw/core/MutableFrameFormat;

    const/4 v7, 0x1

    invoke-virtual {v3, v7, v7}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 595
    return v7

    .line 569
    .end local v0    # "maskWidth":I
    .end local v1    # "maskHeight":I
    .end local v2    # "memHeight":I
    .end local v4    # "widthExp":I
    .end local v5    # "heightExp":I
    .end local v6    # "memWidth":I
    :cond_f8
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Attempting to process input frame with unknown size"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist pyramidLevel(I)I
    .registers 6
    .param p1, "size"    # I

    .line 995
    int-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private blacklist updateBgScaling(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;Z)V
    .registers 15
    .param p1, "video"    # Landroid/filterfw/core/Frame;
    .param p2, "background"    # Landroid/filterfw/core/Frame;
    .param p3, "fitModeChanged"    # Z

    .line 927
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 928
    .local v0, "foregroundAspect":F
    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 929
    .local v1, "backgroundAspect":F
    div-float v2, v0, v1

    .line 930
    .local v2, "currentRelativeAspect":F
    iget v3, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    cmpl-float v3, v2, v3

    if-nez v3, :cond_30

    if-eqz p3, :cond_100

    .line 931
    :cond_30
    iput v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    .line 932
    const/4 v3, 0x0

    .local v3, "xMin":F
    const/high16 v4, 0x3f800000    # 1.0f

    .local v4, "xWidth":F
    const/4 v5, 0x0

    .local v5, "yMin":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 933
    .local v6, "yWidth":F
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitMode:I

    const/high16 v8, 0x3f000000    # 0.5f

    const/high16 v9, 0x3f800000    # 1.0f

    packed-switch v7, :pswitch_data_102

    goto :goto_77

    .line 951
    :pswitch_42
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_53

    .line 954
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    div-float v7, v8, v7

    sub-float v5, v8, v7

    .line 955
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    div-float v6, v9, v7

    goto :goto_77

    .line 959
    :cond_53
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    mul-float/2addr v7, v8

    sub-float v3, v8, v7

    .line 960
    iget v4, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    goto :goto_77

    .line 938
    :pswitch_5b
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_6b

    .line 941
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    mul-float/2addr v7, v8

    sub-float v3, v8, v7

    .line 942
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    mul-float v4, v7, v9

    goto :goto_77

    .line 946
    :cond_6b
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    div-float v7, v8, v7

    sub-float v5, v8, v7

    .line 947
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    div-float v6, v9, v7

    .line 949
    goto :goto_77

    .line 936
    :pswitch_76
    nop

    .line 971
    :goto_77
    iget-boolean v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMirrorBg:Z

    const-string v8, "BackDropperFilter"

    if-eqz v7, :cond_98

    .line 972
    iget-boolean v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v7, :cond_86

    const-string v7, "Mirroring the background!"

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    :cond_86
    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOrientation:I

    if-eqz v7, :cond_95

    iget v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mOrientation:I

    const/16 v10, 0xb4

    if-ne v7, v10, :cond_91

    goto :goto_95

    .line 979
    :cond_91
    neg-float v6, v6

    .line 980
    sub-float v5, v9, v5

    goto :goto_98

    .line 975
    :cond_95
    :goto_95
    neg-float v4, v4

    .line 976
    sub-float v3, v9, v3

    .line 983
    :cond_98
    :goto_98
    iget-boolean v7, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v7, :cond_d8

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bgTransform: xMin, yMin, xWidth, yWidth : "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v10, ", mRelAspRatio = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v10, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mRelativeAspect:F

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    :cond_d8
    const/16 v7, 0x9

    new-array v7, v7, [F

    const/4 v8, 0x0

    aput v4, v7, v8

    const/4 v8, 0x1

    const/4 v10, 0x0

    aput v10, v7, v8

    const/4 v8, 0x2

    aput v10, v7, v8

    const/4 v8, 0x3

    aput v10, v7, v8

    const/4 v8, 0x4

    aput v6, v7, v8

    const/4 v8, 0x5

    aput v10, v7, v8

    const/4 v8, 0x6

    aput v3, v7, v8

    const/4 v8, 0x7

    aput v5, v7, v8

    const/16 v8, 0x8

    aput v9, v7, v8

    .line 990
    .local v7, "bgTransform":[F
    iget-object v8, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    const-string v9, "bg_fit_transform"

    invoke-virtual {v8, v9, v7}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 992
    .end local v3    # "xMin":F
    .end local v4    # "xWidth":F
    .end local v5    # "yMin":F
    .end local v6    # "yWidth":F
    .end local v7    # "bgTransform":[F
    :cond_100
    return-void

    nop

    :pswitch_data_102
    .packed-switch 0x0
        :pswitch_76
        :pswitch_5b
        :pswitch_42
    .end packed-switch
.end method


# virtual methods
.method public blacklist close(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 863
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    if-nez v0, :cond_5

    .line 864
    return-void

    .line 867
    :cond_5
    iget-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v0, :cond_10

    const-string v0, "BackDropperFilter"

    const-string v1, "Filter Closing!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_10
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_11
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2c

    .line 869
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 870
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 871
    iget-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 868
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 873
    .end local v0    # "i":I
    :cond_2c
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 874
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 875
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 876
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 877
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 878
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v0}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 880
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    .line 881
    return-void
.end method

.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 892
    const-string v0, "backgroundFitMode"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_d

    .line 893
    iput-boolean v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitModeChanged:Z

    goto/16 :goto_17b

    .line 894
    :cond_d
    const-string v0, "acceptStddev"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 895
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    iget v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAcceptStddev:F

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "accept_variance"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_17b

    .line 896
    :cond_27
    const-string/jumbo v0, "hierLrgScale"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 897
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "scale_lrg"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_17b

    .line 898
    :cond_40
    const-string/jumbo v0, "hierMidScale"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 899
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "scale_mid"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_17b

    .line 900
    :cond_59
    const-string/jumbo v0, "hierSmlScale"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    .line 901
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlScale:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "scale_sml"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_17b

    .line 902
    :cond_72
    const-string/jumbo v0, "hierLrgExp"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 903
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyLrgExp:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "exp_lrg"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_17b

    .line 904
    :cond_8e
    const-string/jumbo v0, "hierMidExp"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 905
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchyMidExp:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "exp_mid"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_17b

    .line 906
    :cond_aa
    const-string/jumbo v0, "hierSmlExp"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 907
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mSubsampleLevel:I

    iget v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mHierarchySmlExp:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "exp_sml"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_17b

    .line 908
    :cond_c6
    const-string/jumbo v0, "lumScale"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_166

    const-string v0, "chromaScale"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d9

    goto/16 :goto_166

    .line 911
    :cond_d9
    const-string/jumbo v0, "maskBg"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 912
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskBg:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "mask_blend_bg"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_17b

    .line 913
    :cond_f2
    const-string/jumbo v0, "maskFg"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 914
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskFg:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "mask_blend_fg"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17b

    .line 915
    :cond_10a
    const-string v0, "exposureChange"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_120

    .line 916
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mExposureChange:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "exposure_change"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17b

    .line 917
    :cond_120
    const-string/jumbo v0, "whitebalanceredChange"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 918
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceRedChange:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "whitebalancered_change"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17b

    .line 919
    :cond_138
    const-string/jumbo v0, "whitebalanceblueChange"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_150

    .line 920
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mWhiteBalanceBlueChange:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const-string/jumbo v2, "whitebalanceblue_change"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17b

    .line 921
    :cond_150
    const-string v0, "autowbToggle"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    .line 922
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    iget v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWBToggle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "autowb_toggle"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_17b

    .line 909
    :cond_166
    :goto_166
    iget v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLumScale:F

    iget v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mChromaScale:F

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    aput v2, v3, v1

    .line 910
    .local v3, "yuvWeights":[F
    iget-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "yuv_weights"

    invoke-virtual {v0, v1, v3}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 911
    .end local v3    # "yuvWeights":[F
    nop

    .line 924
    :cond_17b
    :goto_17b
    return-void
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 5
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 553
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 555
    .local v0, "format":Landroid/filterfw/core/MutableFrameFormat;
    sget-object v1, Landroid/filterpacks/videoproc/BackDropperFilter;->mOutputNames:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 556
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 558
    :cond_14
    return-object v0
.end method

.method public blacklist prepare(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 599
    iget-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v0, :cond_b

    const-string v0, "BackDropperFilter"

    const-string v1, "Preparing BackDropperFilter!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_b
    const/4 v0, 0x2

    new-array v1, v0, [Landroid/filterfw/core/GLFrame;

    iput-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    .line 602
    new-array v1, v0, [Landroid/filterfw/core/GLFrame;

    iput-object v1, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    .line 603
    new-array v0, v0, [Landroid/filterfw/core/GLFrame;

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    .line 604
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    .line 605
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 22
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 699
    move-object/from16 v0, p0

    const-string/jumbo v1, "video"

    invoke-virtual {v0, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 700
    .local v2, "video":Landroid/filterfw/core/Frame;
    const-string v3, "background"

    invoke-virtual {v0, v3}, Landroid/filterpacks/videoproc/BackDropperFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 701
    .local v3, "background":Landroid/filterfw/core/Frame;
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    move-object/from16 v5, p1

    invoke-direct {v0, v4, v5}, Landroid/filterpacks/videoproc/BackDropperFilter;->allocateFrames(Landroid/filterfw/core/FrameFormat;Landroid/filterfw/core/FilterContext;)V

    .line 704
    iget-boolean v4, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    const-string v6, "BackDropperFilter"

    const-string v7, "fg_adapt_rate"

    const-string v8, "bg_adapt_rate"

    const/4 v9, 0x0

    if-eqz v4, :cond_5a

    .line 705
    iget-boolean v4, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v4, :cond_2c

    const-string v4, "Starting learning"

    invoke-static {v6, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_2c
    iget-object v4, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 707
    iget-object v4, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 708
    iget-object v4, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 709
    iget-object v4, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    iget v10, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateLearning:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v4, v7, v10}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 710
    iput v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    .line 714
    :cond_5a
    iget-boolean v4, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    const/4 v10, 0x1

    xor-int/2addr v4, v10

    .line 715
    .local v4, "inputIndex":I
    iget-boolean v11, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    .line 716
    .local v11, "outputIndex":I
    iget-boolean v12, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    xor-int/2addr v12, v10

    iput-boolean v12, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mPingPong:Z

    .line 719
    iget-boolean v12, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitModeChanged:Z

    invoke-direct {v0, v2, v3, v12}, Landroid/filterpacks/videoproc/BackDropperFilter;->updateBgScaling(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;Z)V

    .line 720
    iput-boolean v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBackgroundFitModeChanged:Z

    .line 724
    iget-object v12, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v13, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v12, v2, v13}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 725
    iget-object v12, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v13, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v12, v3, v13}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 727
    iget-object v12, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v12}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 728
    iget-object v12, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    const/16 v13, 0x2801

    const/16 v14, 0x2701

    invoke-virtual {v12, v13, v14}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 731
    iget-object v12, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v12}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 732
    iget-object v12, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v12, v13, v14}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 735
    iget-boolean v12, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    if-eqz v12, :cond_a6

    .line 736
    iget-object v12, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v15, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    move/from16 v16, v10

    iget-object v10, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    aget-object v10, v10, v4

    invoke-virtual {v12, v15, v10}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 737
    iput-boolean v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    goto :goto_a8

    .line 735
    :cond_a6
    move/from16 v16, v10

    .line 741
    :goto_a8
    const/4 v10, 0x3

    new-array v12, v10, [Landroid/filterfw/core/Frame;

    iget-object v15, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    aput-object v15, v12, v9

    iget-object v15, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    aget-object v15, v15, v4

    aput-object v15, v12, v16

    iget-object v15, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    aget-object v15, v15, v4

    move/from16 v17, v9

    const/4 v9, 0x2

    aput-object v15, v12, v9

    .line 742
    .local v12, "distInputs":[Landroid/filterfw/core/Frame;
    iget-object v15, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgDistProgram:Landroid/filterfw/core/ShaderProgram;

    move/from16 v18, v10

    iget-object v10, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v15, v12, v10}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 743
    iget-object v10, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v10}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 744
    iget-object v10, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v10, v13, v14}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 747
    iget-object v10, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMaskProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v15, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mDistance:Landroid/filterfw/core/GLFrame;

    iget-object v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v10, v15, v9}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 748
    iget-object v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v9}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 749
    iget-object v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v9, v13, v14}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 752
    const/4 v9, 0x2

    new-array v10, v9, [Landroid/filterfw/core/Frame;

    iget-object v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    aput-object v9, v10, v17

    iget-object v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgInput:Landroid/filterfw/core/GLFrame;

    aput-object v9, v10, v16

    .line 753
    .local v10, "autoWBInputs":[Landroid/filterfw/core/Frame;
    iget-object v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutomaticWhiteBalanceProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v15, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v9, v10, v15}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 755
    iget v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    iget v15, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    const/4 v13, 0x4

    if-gt v9, v15, :cond_1c5

    .line 757
    invoke-virtual {v0, v1, v2}, Landroid/filterpacks/videoproc/BackDropperFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 759
    iget v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    iget v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    iget v15, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    sub-int/2addr v9, v15

    if-ne v1, v9, :cond_141

    .line 760
    iget-object v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    iget-object v15, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    aget-object v15, v15, v11

    invoke-virtual {v1, v9, v15}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 762
    iget-object v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    iget v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 763
    iget-object v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    iget v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v1, v7, v9}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 764
    iget-object v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    iget v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 765
    iget-object v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    iget v8, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Landroid/filterfw/core/ShaderProgram;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_170

    .line 768
    :cond_141
    iget v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    iget v7, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    iget v8, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    sub-int/2addr v7, v8

    if-le v1, v7, :cond_170

    .line 771
    const/4 v9, 0x2

    new-array v1, v9, [Landroid/filterfw/core/Frame;

    iget-object v7, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    aget-object v7, v7, v4

    aput-object v7, v1, v17

    iget-object v7, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    aput-object v7, v1, v16

    .line 772
    .local v1, "maskVerifyInputs":[Landroid/filterfw/core/Frame;
    iget-object v7, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerifyProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v8, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    aget-object v8, v8, v11

    invoke-virtual {v7, v1, v8}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 773
    iget-object v7, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    aget-object v7, v7, v11

    invoke-virtual {v7}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 774
    iget-object v7, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    aget-object v7, v7, v11

    const/16 v8, 0x2801

    invoke-virtual {v7, v8, v14}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 778
    .end local v1    # "maskVerifyInputs":[Landroid/filterfw/core/Frame;
    :cond_170
    :goto_170
    iget v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    iget v7, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    if-ne v1, v7, :cond_1ee

    .line 781
    iget-object v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->copyShaderProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v7, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskVerify:[Landroid/filterfw/core/GLFrame;

    aget-object v7, v7, v11

    iget-object v8, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1, v7, v8}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 782
    iget-object v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMaskAverage:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->getData()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 783
    .local v1, "mMaskAverageByteBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    .line 784
    .local v7, "mask_average":[B
    aget-byte v8, v7, v18

    and-int/lit16 v8, v8, 0xff

    .line 786
    .local v8, "bi":I
    iget-boolean v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    const/16 v15, 0x14

    if-eqz v9, :cond_1ab

    .line 787
    nop

    .line 789
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v9, v14}, [Ljava/lang/Object;

    move-result-object v9

    .line 788
    const-string v14, "Mask_average is %d, threshold is %d"

    invoke-static {v14, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 787
    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_1ab
    if-lt v8, v15, :cond_1b2

    .line 793
    move/from16 v9, v16

    iput-boolean v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z

    goto :goto_1c4

    .line 795
    :cond_1b2
    iget-boolean v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v9, :cond_1bb

    const-string v9, "Learning done"

    invoke-static {v6, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_1bb
    iget-object v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    if-eqz v9, :cond_1c4

    .line 797
    iget-object v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDoneListener:Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;

    invoke-interface {v9, v0}, Landroid/filterpacks/videoproc/BackDropperFilter$LearningDoneListener;->onLearningDone(Landroid/filterpacks/videoproc/BackDropperFilter;)V

    .line 800
    .end local v1    # "mMaskAverageByteBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "mask_average":[B
    .end local v8    # "bi":I
    :cond_1c4
    :goto_1c4
    goto :goto_1ee

    .line 802
    :cond_1c5
    invoke-virtual {v5}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    .line 803
    .local v7, "output":Landroid/filterfw/core/Frame;
    new-array v8, v13, [Landroid/filterfw/core/Frame;

    aput-object v2, v8, v17

    const/16 v16, 0x1

    aput-object v3, v8, v16

    iget-object v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    const/16 v19, 0x2

    aput-object v9, v8, v19

    iget-object v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAutoWB:Landroid/filterfw/core/GLFrame;

    aput-object v9, v8, v18

    .line 804
    .local v8, "subtractInputs":[Landroid/filterfw/core/Frame;
    iget-object v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgSubtractProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v9, v8, v7}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 805
    invoke-virtual {v0, v1, v7}, Landroid/filterpacks/videoproc/BackDropperFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 806
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 810
    .end local v7    # "output":Landroid/filterfw/core/Frame;
    .end local v8    # "subtractInputs":[Landroid/filterfw/core/Frame;
    :cond_1ee
    :goto_1ee
    iget v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    iget v7, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningDuration:I

    iget v8, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLearningVerifyDuration:I

    sub-int/2addr v7, v8

    if-lt v1, v7, :cond_207

    iget v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateBg:F

    float-to-double v7, v1

    const-wide/16 v14, 0x0

    cmpl-double v1, v7, v14

    if-gtz v1, :cond_207

    iget v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mAdaptRateFg:F

    float-to-double v7, v1

    cmpl-double v1, v7, v14

    if-lez v1, :cond_26f

    .line 812
    :cond_207
    move/from16 v1, v18

    new-array v7, v1, [Landroid/filterfw/core/Frame;

    iget-object v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    aput-object v1, v7, v17

    iget-object v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    aget-object v1, v1, v4

    const/16 v16, 0x1

    aput-object v1, v7, v16

    iget-object v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    const/16 v19, 0x2

    aput-object v1, v7, v19

    .line 813
    .local v7, "meanUpdateInputs":[Landroid/filterfw/core/Frame;
    iget-object v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateMeanProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v8, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    aget-object v8, v8, v11

    invoke-virtual {v1, v7, v8}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 814
    iget-object v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    aget-object v1, v1, v11

    invoke-virtual {v1}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 815
    iget-object v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    aget-object v1, v1, v11

    const/16 v8, 0x2701

    const/16 v9, 0x2801

    invoke-virtual {v1, v9, v8}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 818
    new-array v1, v13, [Landroid/filterfw/core/Frame;

    iget-object v8, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mVideoInput:Landroid/filterfw/core/GLFrame;

    aput-object v8, v1, v17

    iget-object v8, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgMean:[Landroid/filterfw/core/GLFrame;

    aget-object v8, v8, v4

    const/16 v16, 0x1

    aput-object v8, v1, v16

    iget-object v8, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    aget-object v8, v8, v4

    const/16 v19, 0x2

    aput-object v8, v1, v19

    iget-object v8, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    const/16 v18, 0x3

    aput-object v8, v1, v18

    .line 821
    .local v1, "varianceUpdateInputs":[Landroid/filterfw/core/Frame;
    iget-object v8, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgUpdateVarianceProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    aget-object v9, v9, v11

    invoke-virtual {v8, v1, v9}, Landroid/filterfw/core/ShaderProgram;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 822
    iget-object v8, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    aget-object v8, v8, v11

    invoke-virtual {v8}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 823
    iget-object v8, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mBgVariance:[Landroid/filterfw/core/GLFrame;

    aget-object v8, v8, v11

    const/16 v9, 0x2701

    const/16 v13, 0x2801

    invoke-virtual {v8, v13, v9}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 828
    .end local v1    # "varianceUpdateInputs":[Landroid/filterfw/core/Frame;
    .end local v7    # "meanUpdateInputs":[Landroid/filterfw/core/Frame;
    :cond_26f
    iget-boolean v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mProvideDebugOutputs:Z

    if-eqz v1, :cond_2a5

    .line 829
    invoke-virtual {v5}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 830
    .local v1, "dbg1":Landroid/filterfw/core/Frame;
    iget-object v7, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

    invoke-virtual {v7, v2, v1}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 831
    const-string v7, "debug1"

    invoke-virtual {v0, v7, v1}, Landroid/filterpacks/videoproc/BackDropperFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 832
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 834
    invoke-virtual {v5}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v7

    iget-object v8, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMemoryFormat:Landroid/filterfw/core/MutableFrameFormat;

    invoke-virtual {v7, v8}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v7

    .line 835
    .local v7, "dbg2":Landroid/filterfw/core/Frame;
    iget-object v8, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mCopyOutProgram:Landroid/filterfw/core/ShaderProgram;

    iget-object v9, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mMask:Landroid/filterfw/core/GLFrame;

    invoke-virtual {v8, v9, v7}, Landroid/filterfw/core/ShaderProgram;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 836
    const-string v8, "debug2"

    invoke-virtual {v0, v8, v7}, Landroid/filterpacks/videoproc/BackDropperFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 837
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 840
    .end local v1    # "dbg1":Landroid/filterfw/core/Frame;
    .end local v7    # "dbg2":Landroid/filterfw/core/Frame;
    :cond_2a5
    iget v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    const/16 v16, 0x1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    .line 842
    iget-boolean v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mLogVerbose:Z

    if-eqz v1, :cond_336

    .line 843
    iget v1, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->mFrameCount:I

    rem-int/lit8 v1, v1, 0x1e

    if-nez v1, :cond_333

    .line 844
    iget-wide v7, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    const-wide/16 v13, -0x1

    cmp-long v1, v7, v13

    if-nez v1, :cond_2d2

    .line 845
    invoke-virtual {v5}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 846
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 847
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    move-object v9, v2

    move-object v14, v3

    goto :goto_338

    .line 849
    :cond_2d2
    invoke-virtual {v5}, Landroid/filterfw/core/FilterContext;->getGLEnvironment()Landroid/filterfw/core/GLEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Landroid/filterfw/core/GLEnvironment;->activate()V

    .line 850
    invoke-static {}, Landroid/opengl/GLES20;->glFinish()V

    .line 851
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 852
    .local v7, "endTime":J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Avg. frame duration: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v13, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    sub-long v13, v7, v13

    long-to-double v13, v13

    const-wide/high16 v15, 0x403e000000000000L    # 30.0

    div-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    const-string v13, "%.2f"

    invoke-static {v13, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " ms. Avg. fps: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v9, v2

    move-object v14, v3

    .end local v2    # "video":Landroid/filterfw/core/Frame;
    .end local v3    # "background":Landroid/filterfw/core/Frame;
    .local v9, "video":Landroid/filterfw/core/Frame;
    .local v14, "background":Landroid/filterfw/core/Frame;
    iget-wide v2, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    sub-long v2, v7, v2

    long-to-double v2, v2

    div-double/2addr v2, v15

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v15, v2

    .line 853
    invoke-static/range {v15 .. v16}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v13, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 852
    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iput-wide v7, v0, Landroid/filterpacks/videoproc/BackDropperFilter;->startTime:J

    goto :goto_338

    .line 843
    .end local v7    # "endTime":J
    .end local v9    # "video":Landroid/filterfw/core/Frame;
    .end local v14    # "background":Landroid/filterfw/core/Frame;
    .restart local v2    # "video":Landroid/filterfw/core/Frame;
    .restart local v3    # "background":Landroid/filterfw/core/Frame;
    :cond_333
    move-object v9, v2

    move-object v14, v3

    .end local v2    # "video":Landroid/filterfw/core/Frame;
    .end local v3    # "background":Landroid/filterfw/core/Frame;
    .restart local v9    # "video":Landroid/filterfw/core/Frame;
    .restart local v14    # "background":Landroid/filterfw/core/Frame;
    goto :goto_338

    .line 842
    .end local v9    # "video":Landroid/filterfw/core/Frame;
    .end local v14    # "background":Landroid/filterfw/core/Frame;
    .restart local v2    # "video":Landroid/filterfw/core/Frame;
    .restart local v3    # "background":Landroid/filterfw/core/Frame;
    :cond_336
    move-object v9, v2

    move-object v14, v3

    .line 858
    .end local v2    # "video":Landroid/filterfw/core/Frame;
    .end local v3    # "background":Landroid/filterfw/core/Frame;
    .restart local v9    # "video":Landroid/filterfw/core/Frame;
    .restart local v14    # "background":Landroid/filterfw/core/Frame;
    :goto_338
    return-void
.end method

.method public declared-synchronized blacklist relearn()V
    .registers 2

    monitor-enter p0

    .line 886
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mStartLearning:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 887
    monitor-exit p0

    return-void

    .line 885
    .end local p0    # "this":Landroid/filterpacks/videoproc/BackDropperFilter;
    :catchall_6
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_7 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public blacklist setupPorts()V
    .registers 8

    .line 532
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 534
    .local v0, "imageFormat":Landroid/filterfw/core/FrameFormat;
    sget-object v2, Landroid/filterpacks/videoproc/BackDropperFilter;->mInputNames:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_a
    if-ge v4, v3, :cond_14

    aget-object v5, v2, v4

    .line 535
    .local v5, "inputName":Ljava/lang/String;
    invoke-virtual {p0, v5, v0}, Landroid/filterpacks/videoproc/BackDropperFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 534
    .end local v5    # "inputName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 538
    :cond_14
    sget-object v2, Landroid/filterpacks/videoproc/BackDropperFilter;->mOutputNames:[Ljava/lang/String;

    array-length v3, v2

    move v4, v1

    :goto_18
    const-string/jumbo v5, "video"

    if-ge v4, v3, :cond_25

    aget-object v6, v2, v4

    .line 539
    .local v6, "outputName":Ljava/lang/String;
    invoke-virtual {p0, v6, v5}, Landroid/filterpacks/videoproc/BackDropperFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    .end local v6    # "outputName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 543
    :cond_25
    iget-boolean v2, p0, Landroid/filterpacks/videoproc/BackDropperFilter;->mProvideDebugOutputs:Z

    if-eqz v2, :cond_36

    .line 544
    sget-object v2, Landroid/filterpacks/videoproc/BackDropperFilter;->mDebugOutputNames:[Ljava/lang/String;

    array-length v3, v2

    :goto_2c
    if-ge v1, v3, :cond_36

    aget-object v4, v2, v1

    .line 545
    .local v4, "outputName":Ljava/lang/String;
    invoke-virtual {p0, v4, v5}, Landroid/filterpacks/videoproc/BackDropperFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    .end local v4    # "outputName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 548
    :cond_36
    return-void
.end method
