.class public Landroid/renderscript/RenderScriptGL;
.super Landroid/renderscript/RenderScript;
.source "RenderScriptGL.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    }
.end annotation


# instance fields
.field mHeight:I

.field mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

.field mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V
    .locals 20
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "sc"    # Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@0
    .prologue
    .line 173
    invoke-direct/range {p0 .. p1}, Landroid/renderscript/RenderScript;-><init>(Landroid/content/Context;)V

    #@3
    .line 174
    new-instance v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@5
    move-object/from16 v0, p2

    #@7
    invoke-direct {v2, v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    #@a
    move-object/from16 v0, p0

    #@c
    iput-object v2, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@e
    .line 176
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    #@11
    move-result-object v2

    #@12
    iget v7, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    #@14
    .line 178
    .local v7, "sdkVersion":I
    const/4 v2, 0x0

    #@15
    move-object/from16 v0, p0

    #@17
    iput v2, v0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    #@19
    .line 179
    const/4 v2, 0x0

    #@1a
    move-object/from16 v0, p0

    #@1c
    iput v2, v0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    #@1e
    .line 180
    invoke-virtual/range {p0 .. p0}, Landroid/renderscript/RenderScriptGL;->nDeviceCreate()J

    #@21
    move-result-wide v2

    #@22
    move-object/from16 v0, p0

    #@24
    iput-wide v2, v0, Landroid/renderscript/RenderScriptGL;->mDev:J

    #@26
    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@2d
    move-result-object v2

    #@2e
    iget v0, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    #@30
    move/from16 v19, v0

    #@32
    .line 182
    .local v19, "dpi":I
    move-object/from16 v0, p0

    #@34
    iget-wide v4, v0, Landroid/renderscript/RenderScriptGL;->mDev:J

    #@36
    .line 183
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@3a
    iget v8, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorMin:I

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@40
    iget v9, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mColorPref:I

    #@42
    .line 184
    move-object/from16 v0, p0

    #@44
    iget-object v2, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@46
    iget v10, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaMin:I

    #@48
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@4c
    iget v11, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mAlphaPref:I

    #@4e
    .line 185
    move-object/from16 v0, p0

    #@50
    iget-object v2, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@52
    iget v12, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthMin:I

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v2, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@58
    iget v13, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mDepthPref:I

    #@5a
    .line 186
    move-object/from16 v0, p0

    #@5c
    iget-object v2, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@5e
    iget v14, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilMin:I

    #@60
    move-object/from16 v0, p0

    #@62
    iget-object v2, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@64
    iget v15, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mStencilPref:I

    #@66
    .line 187
    move-object/from16 v0, p0

    #@68
    iget-object v2, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@6a
    iget v0, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesMin:I

    #@6c
    move/from16 v16, v0

    #@6e
    move-object/from16 v0, p0

    #@70
    iget-object v2, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@72
    iget v0, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesPref:I

    #@74
    move/from16 v17, v0

    #@76
    .line 188
    move-object/from16 v0, p0

    #@78
    iget-object v2, v0, Landroid/renderscript/RenderScriptGL;->mSurfaceConfig:Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    #@7a
    iget v0, v2, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->mSamplesQ:F

    #@7c
    move/from16 v18, v0

    #@7e
    .line 182
    const/4 v6, 0x0

    #@7f
    move-object/from16 v3, p0

    #@81
    invoke-virtual/range {v3 .. v19}, Landroid/renderscript/RenderScriptGL;->nContextCreateGL(JIIIIIIIIIIIIFI)J

    #@84
    move-result-wide v2

    #@85
    move-object/from16 v0, p0

    #@87
    iput-wide v2, v0, Landroid/renderscript/RenderScriptGL;->mContext:J

    #@89
    .line 189
    move-object/from16 v0, p0

    #@8b
    iget-wide v2, v0, Landroid/renderscript/RenderScriptGL;->mContext:J

    #@8d
    const-wide/16 v4, 0x0

    #@8f
    cmp-long v2, v2, v4

    #@91
    if-nez v2, :cond_0

    #@93
    .line 190
    new-instance v2, Landroid/renderscript/RSDriverException;

    #@95
    const-string/jumbo v3, "Failed to create RS context."

    #@98
    invoke-direct {v2, v3}, Landroid/renderscript/RSDriverException;-><init>(Ljava/lang/String;)V

    #@9b
    throw v2

    #@9c
    .line 192
    :cond_0
    new-instance v2, Landroid/renderscript/RenderScript$MessageThread;

    #@9e
    move-object/from16 v0, p0

    #@a0
    invoke-direct {v2, v0}, Landroid/renderscript/RenderScript$MessageThread;-><init>(Landroid/renderscript/RenderScript;)V

    #@a3
    move-object/from16 v0, p0

    #@a5
    iput-object v2, v0, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    #@a7
    .line 193
    move-object/from16 v0, p0

    #@a9
    iget-object v2, v0, Landroid/renderscript/RenderScriptGL;->mMessageThread:Landroid/renderscript/RenderScript$MessageThread;

    #@ab
    invoke-virtual {v2}, Landroid/renderscript/RenderScript$MessageThread;->start()V

    #@ae
    .line 172
    return-void
.end method


# virtual methods
.method public bindProgramFragment(Landroid/renderscript/ProgramFragment;)V
    .locals 2
    .param p1, "p"    # Landroid/renderscript/ProgramFragment;

    #@0
    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    #@3
    .line 310
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    #@6
    move-result-wide v0

    #@7
    long-to-int v0, v0

    #@8
    int-to-long v0, v0

    #@9
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramFragment(J)V

    #@c
    .line 308
    return-void
.end method

.method public bindProgramRaster(Landroid/renderscript/ProgramRaster;)V
    .locals 2
    .param p1, "p"    # Landroid/renderscript/ProgramRaster;

    #@0
    .prologue
    .line 321
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    #@3
    .line 322
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    #@6
    move-result-wide v0

    #@7
    long-to-int v0, v0

    #@8
    int-to-long v0, v0

    #@9
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramRaster(J)V

    #@c
    .line 320
    return-void
.end method

.method public bindProgramStore(Landroid/renderscript/ProgramStore;)V
    .locals 2
    .param p1, "p"    # Landroid/renderscript/ProgramStore;

    #@0
    .prologue
    .line 297
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    #@3
    .line 298
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    #@6
    move-result-wide v0

    #@7
    long-to-int v0, v0

    #@8
    int-to-long v0, v0

    #@9
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramStore(J)V

    #@c
    .line 296
    return-void
.end method

.method public bindProgramVertex(Landroid/renderscript/ProgramVertex;)V
    .locals 2
    .param p1, "p"    # Landroid/renderscript/ProgramVertex;

    #@0
    .prologue
    .line 333
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    #@3
    .line 334
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    #@6
    move-result-wide v0

    #@7
    long-to-int v0, v0

    #@8
    int-to-long v0, v0

    #@9
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindProgramVertex(J)V

    #@c
    .line 332
    return-void
.end method

.method public bindRootScript(Landroid/renderscript/Script;)V
    .locals 2
    .param p1, "s"    # Landroid/renderscript/Script;

    #@0
    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    #@3
    .line 286
    invoke-virtual {p0, p1}, Landroid/renderscript/RenderScriptGL;->safeID(Landroid/renderscript/BaseObj;)J

    #@6
    move-result-wide v0

    #@7
    long-to-int v0, v0

    #@8
    int-to-long v0, v0

    #@9
    invoke-virtual {p0, v0, v1}, Landroid/renderscript/RenderScriptGL;->nContextBindRootScript(J)V

    #@c
    .line 284
    return-void
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 244
    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    #@2
    return v0
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 254
    iget v0, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    #@2
    return v0
.end method

.method public pause()V
    .locals 0

    #@0
    .prologue
    .line 263
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    #@3
    .line 264
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextPause()V

    #@6
    .line 262
    return-void
.end method

.method public resume()V
    .locals 0

    #@0
    .prologue
    .line 273
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    #@3
    .line 274
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->nContextResume()V

    #@6
    .line 272
    return-void
.end method

.method public setSurface(Landroid/view/SurfaceHolder;II)V
    .locals 1
    .param p1, "sur"    # Landroid/view/SurfaceHolder;
    .param p2, "w"    # I
    .param p3, "h"    # I

    #@0
    .prologue
    .line 206
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    #@3
    .line 207
    const/4 v0, 0x0

    #@4
    .line 208
    .local v0, "s":Landroid/view/Surface;
    if-eqz p1, :cond_0

    #@6
    .line 209
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    #@9
    move-result-object v0

    #@a
    .line 211
    .end local v0    # "s":Landroid/view/Surface;
    :cond_0
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    #@c
    .line 212
    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    #@e
    .line 213
    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScriptGL;->nContextSetSurface(IILandroid/view/Surface;)V

    #@11
    .line 205
    return-void
.end method

.method public setSurfaceTexture(Landroid/graphics/SurfaceTexture;II)V
    .locals 1
    .param p1, "sur"    # Landroid/graphics/SurfaceTexture;
    .param p2, "w"    # I
    .param p3, "h"    # I

    #@0
    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/renderscript/RenderScriptGL;->validate()V

    #@3
    .line 228
    const/4 v0, 0x0

    #@4
    .line 229
    .local v0, "s":Landroid/view/Surface;
    if-eqz p1, :cond_0

    #@6
    .line 230
    new-instance v0, Landroid/view/Surface;

    #@8
    .end local v0    # "s":Landroid/view/Surface;
    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    #@b
    .line 232
    :cond_0
    iput p2, p0, Landroid/renderscript/RenderScriptGL;->mWidth:I

    #@d
    .line 233
    iput p3, p0, Landroid/renderscript/RenderScriptGL;->mHeight:I

    #@f
    .line 234
    invoke-virtual {p0, p2, p3, v0}, Landroid/renderscript/RenderScriptGL;->nContextSetSurface(IILandroid/view/Surface;)V

    #@12
    .line 224
    return-void
.end method
