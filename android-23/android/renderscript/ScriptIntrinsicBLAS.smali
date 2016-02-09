.class public final Landroid/renderscript/ScriptIntrinsicBLAS;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBLAS.java"


# static fields
.field public static final CONJ_TRANSPOSE:I = 0x71

.field public static final LEFT:I = 0x8d

.field public static final LOWER:I = 0x7a

.field public static final NON_UNIT:I = 0x83

.field public static final NO_TRANSPOSE:I = 0x6f

.field public static final RIGHT:I = 0x8e

.field private static final RsBlas_bnnm:I = 0x3e8

.field private static final RsBlas_caxpy:I = 0x1d

.field private static final RsBlas_ccopy:I = 0x1c

.field private static final RsBlas_cdotc_sub:I = 0x6

.field private static final RsBlas_cdotu_sub:I = 0x5

.field private static final RsBlas_cgbmv:I = 0x40

.field private static final RsBlas_cgemm:I = 0x7d

.field private static final RsBlas_cgemv:I = 0x3f

.field private static final RsBlas_cgerc:I = 0x63

.field private static final RsBlas_cgeru:I = 0x62

.field private static final RsBlas_chbmv:I = 0x60

.field private static final RsBlas_chemm:I = 0x89

.field private static final RsBlas_chemv:I = 0x5f

.field private static final RsBlas_cher:I = 0x64

.field private static final RsBlas_cher2:I = 0x66

.field private static final RsBlas_cher2k:I = 0x8b

.field private static final RsBlas_cherk:I = 0x8a

.field private static final RsBlas_chpmv:I = 0x61

.field private static final RsBlas_chpr:I = 0x65

.field private static final RsBlas_chpr2:I = 0x67

.field private static final RsBlas_cscal:I = 0x2b

.field private static final RsBlas_csscal:I = 0x2d

.field private static final RsBlas_cswap:I = 0x1b

.field private static final RsBlas_csymm:I = 0x7e

.field private static final RsBlas_csyr2k:I = 0x80

.field private static final RsBlas_csyrk:I = 0x7f

.field private static final RsBlas_ctbmv:I = 0x42

.field private static final RsBlas_ctbsv:I = 0x45

.field private static final RsBlas_ctpmv:I = 0x43

.field private static final RsBlas_ctpsv:I = 0x46

.field private static final RsBlas_ctrmm:I = 0x81

.field private static final RsBlas_ctrmv:I = 0x41

.field private static final RsBlas_ctrsm:I = 0x82

.field private static final RsBlas_ctrsv:I = 0x44

.field private static final RsBlas_dasum:I = 0xc

.field private static final RsBlas_daxpy:I = 0x1a

.field private static final RsBlas_dcopy:I = 0x19

.field private static final RsBlas_ddot:I = 0x4

.field private static final RsBlas_dgbmv:I = 0x38

.field private static final RsBlas_dgemm:I = 0x77

.field private static final RsBlas_dgemv:I = 0x37

.field private static final RsBlas_dger:I = 0x5a

.field private static final RsBlas_dnrm2:I = 0xb

.field private static final RsBlas_drot:I = 0x27

.field private static final RsBlas_drotg:I = 0x25

.field private static final RsBlas_drotm:I = 0x28

.field private static final RsBlas_drotmg:I = 0x26

.field private static final RsBlas_dsbmv:I = 0x58

.field private static final RsBlas_dscal:I = 0x2a

.field private static final RsBlas_dsdot:I = 0x2

.field private static final RsBlas_dspmv:I = 0x59

.field private static final RsBlas_dspr:I = 0x5c

.field private static final RsBlas_dspr2:I = 0x5e

.field private static final RsBlas_dswap:I = 0x18

.field private static final RsBlas_dsymm:I = 0x78

.field private static final RsBlas_dsymv:I = 0x57

.field private static final RsBlas_dsyr:I = 0x5b

.field private static final RsBlas_dsyr2:I = 0x5d

.field private static final RsBlas_dsyr2k:I = 0x7a

.field private static final RsBlas_dsyrk:I = 0x79

.field private static final RsBlas_dtbmv:I = 0x3a

.field private static final RsBlas_dtbsv:I = 0x3d

.field private static final RsBlas_dtpmv:I = 0x3b

.field private static final RsBlas_dtpsv:I = 0x3e

.field private static final RsBlas_dtrmm:I = 0x7b

.field private static final RsBlas_dtrmv:I = 0x39

.field private static final RsBlas_dtrsm:I = 0x7c

.field private static final RsBlas_dtrsv:I = 0x3c

.field private static final RsBlas_dzasum:I = 0x10

.field private static final RsBlas_dznrm2:I = 0xf

.field private static final RsBlas_icamax:I = 0x13

.field private static final RsBlas_idamax:I = 0x12

.field private static final RsBlas_isamax:I = 0x11

.field private static final RsBlas_izamax:I = 0x14

.field private static final RsBlas_sasum:I = 0xa

.field private static final RsBlas_saxpy:I = 0x17

.field private static final RsBlas_scasum:I = 0xe

.field private static final RsBlas_scnrm2:I = 0xd

.field private static final RsBlas_scopy:I = 0x16

.field private static final RsBlas_sdot:I = 0x3

.field private static final RsBlas_sdsdot:I = 0x1

.field private static final RsBlas_sgbmv:I = 0x30

.field private static final RsBlas_sgemm:I = 0x71

.field private static final RsBlas_sgemv:I = 0x2f

.field private static final RsBlas_sger:I = 0x52

.field private static final RsBlas_snrm2:I = 0x9

.field private static final RsBlas_srot:I = 0x23

.field private static final RsBlas_srotg:I = 0x21

.field private static final RsBlas_srotm:I = 0x24

.field private static final RsBlas_srotmg:I = 0x22

.field private static final RsBlas_ssbmv:I = 0x50

.field private static final RsBlas_sscal:I = 0x29

.field private static final RsBlas_sspmv:I = 0x51

.field private static final RsBlas_sspr:I = 0x54

.field private static final RsBlas_sspr2:I = 0x56

.field private static final RsBlas_sswap:I = 0x15

.field private static final RsBlas_ssymm:I = 0x72

.field private static final RsBlas_ssymv:I = 0x4f

.field private static final RsBlas_ssyr:I = 0x53

.field private static final RsBlas_ssyr2:I = 0x55

.field private static final RsBlas_ssyr2k:I = 0x74

.field private static final RsBlas_ssyrk:I = 0x73

.field private static final RsBlas_stbmv:I = 0x32

.field private static final RsBlas_stbsv:I = 0x35

.field private static final RsBlas_stpmv:I = 0x33

.field private static final RsBlas_stpsv:I = 0x36

.field private static final RsBlas_strmm:I = 0x75

.field private static final RsBlas_strmv:I = 0x31

.field private static final RsBlas_strsm:I = 0x76

.field private static final RsBlas_strsv:I = 0x34

.field private static final RsBlas_zaxpy:I = 0x20

.field private static final RsBlas_zcopy:I = 0x1f

.field private static final RsBlas_zdotc_sub:I = 0x8

.field private static final RsBlas_zdotu_sub:I = 0x7

.field private static final RsBlas_zdscal:I = 0x2e

.field private static final RsBlas_zgbmv:I = 0x48

.field private static final RsBlas_zgemm:I = 0x83

.field private static final RsBlas_zgemv:I = 0x47

.field private static final RsBlas_zgerc:I = 0x6c

.field private static final RsBlas_zgeru:I = 0x6b

.field private static final RsBlas_zhbmv:I = 0x69

.field private static final RsBlas_zhemm:I = 0x8c

.field private static final RsBlas_zhemv:I = 0x68

.field private static final RsBlas_zher:I = 0x6d

.field private static final RsBlas_zher2:I = 0x6f

.field private static final RsBlas_zher2k:I = 0x8e

.field private static final RsBlas_zherk:I = 0x8d

.field private static final RsBlas_zhpmv:I = 0x6a

.field private static final RsBlas_zhpr:I = 0x6e

.field private static final RsBlas_zhpr2:I = 0x70

.field private static final RsBlas_zscal:I = 0x2c

.field private static final RsBlas_zswap:I = 0x1e

.field private static final RsBlas_zsymm:I = 0x84

.field private static final RsBlas_zsyr2k:I = 0x86

.field private static final RsBlas_zsyrk:I = 0x85

.field private static final RsBlas_ztbmv:I = 0x4a

.field private static final RsBlas_ztbsv:I = 0x4d

.field private static final RsBlas_ztpmv:I = 0x4b

.field private static final RsBlas_ztpsv:I = 0x4e

.field private static final RsBlas_ztrmm:I = 0x87

.field private static final RsBlas_ztrmv:I = 0x49

.field private static final RsBlas_ztrsm:I = 0x88

.field private static final RsBlas_ztrsv:I = 0x4c

.field public static final TRANSPOSE:I = 0x70

.field public static final UNIT:I = 0x84

.field public static final UPPER:I = 0x79


# instance fields
.field private mLUT:Landroid/renderscript/Allocation;


# direct methods
.method private constructor <init>(JLandroid/renderscript/RenderScript;)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    #@3
    .line 36
    return-void
.end method

.method public static create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicBLAS;
    .locals 5
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    #@0
    .prologue
    .line 193
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    #@7
    move-result-wide v2

    #@8
    const/16 v4, 0xd

    #@a
    invoke-virtual {p0, v4, v2, v3}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    #@d
    move-result-wide v0

    #@e
    .line 194
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicBLAS;

    #@10
    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicBLAS;-><init>(JLandroid/renderscript/RenderScript;)V

    #@13
    return-object v2
.end method

.method static validateConjTranspose(I)V
    .locals 2
    .param p0, "Trans"    # I

    #@0
    .prologue
    .line 252
    const/16 v0, 0x6f

    #@2
    if-eq p0, v0, :cond_0

    #@4
    .line 253
    const/16 v0, 0x71

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 254
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    #@a
    const-string/jumbo v1, "Invalid transpose passed to BLAS"

    #@d
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 251
    :cond_0
    return-void
.end method

.method static validateDiag(I)V
    .locals 2
    .param p0, "Diag"    # I

    #@0
    .prologue
    .line 259
    const/16 v0, 0x83

    #@2
    if-eq p0, v0, :cond_0

    #@4
    const/16 v0, 0x84

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 260
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    #@a
    const-string/jumbo v1, "Invalid diag passed to BLAS"

    #@d
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 258
    :cond_0
    return-void
.end method

.method static validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V
    .locals 6
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "TransA"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 276
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@4
    .line 277
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@7
    move-result-object v4

    #@8
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@b
    move-result v0

    #@c
    .line 278
    .local v0, "M":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@13
    move-result v1

    #@14
    .line 279
    .local v1, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@1f
    move-result v4

    #@20
    if-eqz v4, :cond_1

    #@22
    .line 280
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@2d
    move-result v4

    #@2e
    if-eqz v4, :cond_1

    #@30
    .line 281
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@33
    move-result-object v4

    #@34
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@3b
    move-result v4

    #@3c
    if-eqz v4, :cond_1

    #@3e
    .line 284
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@41
    move-result-object v4

    #@42
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@45
    move-result v4

    #@46
    if-gt v4, v5, :cond_0

    #@48
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4b
    move-result-object v4

    #@4c
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@4f
    move-result v4

    #@50
    if-le v4, v5, :cond_2

    #@52
    .line 285
    :cond_0
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@54
    const-string/jumbo v5, "BLAS vectors must have Y dimension of 0 or 1"

    #@57
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@5a
    throw v4

    #@5b
    .line 282
    :cond_1
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@5d
    const-string/jumbo v5, "Called BLAS with wrong Element type"

    #@60
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@63
    throw v4

    #@64
    .line 288
    :cond_2
    if-lez p4, :cond_3

    #@66
    if-gtz p6, :cond_4

    #@68
    .line 289
    :cond_3
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@6a
    const-string/jumbo v5, "Vector increments must be greater than 0"

    #@6d
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@70
    throw v4

    #@71
    .line 291
    :cond_4
    const/4 v2, -0x1

    #@72
    .local v2, "expectedXDim":I
    const/4 v3, -0x1

    #@73
    .line 292
    .local v3, "expectedYDim":I
    const/16 v4, 0x6f

    #@75
    if-ne p1, v4, :cond_6

    #@77
    .line 293
    add-int/lit8 v4, v1, -0x1

    #@79
    mul-int/2addr v4, p4

    #@7a
    add-int/lit8 v2, v4, 0x1

    #@7c
    .line 294
    add-int/lit8 v4, v0, -0x1

    #@7e
    mul-int/2addr v4, p6

    #@7f
    add-int/lit8 v3, v4, 0x1

    #@81
    .line 299
    :goto_0
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@84
    move-result-object v4

    #@85
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@88
    move-result v4

    #@89
    if-ne v4, v2, :cond_5

    #@8b
    .line 300
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@92
    move-result v4

    #@93
    if-eq v4, v3, :cond_7

    #@95
    .line 301
    :cond_5
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@97
    const-string/jumbo v5, "Incorrect vector dimensions for GEMV"

    #@9a
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@9d
    throw v4

    #@9e
    .line 296
    :cond_6
    add-int/lit8 v4, v0, -0x1

    #@a0
    mul-int/2addr v4, p4

    #@a1
    add-int/lit8 v2, v4, 0x1

    #@a3
    .line 297
    add-int/lit8 v4, v1, -0x1

    #@a5
    mul-int/2addr v4, p6

    #@a6
    add-int/lit8 v3, v4, 0x1

    #@a8
    goto :goto_0

    #@a9
    .line 275
    :cond_7
    return-void
.end method

.method static validateGER(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 6
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "X"    # Landroid/renderscript/Allocation;
    .param p2, "incX"    # I
    .param p3, "Y"    # Landroid/renderscript/Allocation;
    .param p4, "incY"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1275
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    .line 1276
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 1277
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 1281
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@32
    move-result v4

    #@33
    if-gt v4, v5, :cond_0

    #@35
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@3c
    move-result v4

    #@3d
    if-le v4, v5, :cond_2

    #@3f
    .line 1282
    :cond_0
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@41
    const-string/jumbo v5, "BLAS vectors must have Y dimension of 0 or 1"

    #@44
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@47
    throw v4

    #@48
    .line 1278
    :cond_1
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@4a
    const-string/jumbo v5, "Called BLAS with wrong Element type"

    #@4d
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@50
    throw v4

    #@51
    .line 1285
    :cond_2
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@58
    move-result v0

    #@59
    .line 1286
    .local v0, "M":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@60
    move-result v1

    #@61
    .line 1288
    .local v1, "N":I
    if-lt v1, v5, :cond_3

    #@63
    if-ge v0, v5, :cond_4

    #@65
    .line 1289
    :cond_3
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@67
    const-string/jumbo v5, "M and N must be 1 or greater for GER"

    #@6a
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v4

    #@6e
    .line 1291
    :cond_4
    if-lez p2, :cond_5

    #@70
    if-gtz p4, :cond_6

    #@72
    .line 1292
    :cond_5
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@74
    const-string/jumbo v5, "Vector increments must be greater than 0"

    #@77
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v4

    #@7b
    .line 1294
    :cond_6
    add-int/lit8 v4, v0, -0x1

    #@7d
    mul-int/2addr v4, p2

    #@7e
    add-int/lit8 v2, v4, 0x1

    #@80
    .line 1295
    .local v2, "expectedXDim":I
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@83
    move-result-object v4

    #@84
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@87
    move-result v4

    #@88
    if-eq v4, v2, :cond_7

    #@8a
    .line 1296
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@8c
    const-string/jumbo v5, "Incorrect vector dimensions for GER"

    #@8f
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@92
    throw v4

    #@93
    .line 1298
    :cond_7
    add-int/lit8 v4, v1, -0x1

    #@95
    mul-int/2addr v4, p4

    #@96
    add-int/lit8 v3, v4, 0x1

    #@98
    .line 1299
    .local v3, "expectedYDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@9b
    move-result-object v4

    #@9c
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@9f
    move-result v4

    #@a0
    if-eq v4, v3, :cond_8

    #@a2
    .line 1300
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@a4
    const-string/jumbo v5, "Incorrect vector dimensions for GER"

    #@a7
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@aa
    throw v4

    #@ab
    .line 1274
    :cond_8
    return-void
.end method

.method static validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 6
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "X"    # Landroid/renderscript/Allocation;
    .param p2, "incX"    # I
    .param p3, "Y"    # Landroid/renderscript/Allocation;
    .param p4, "incY"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 1799
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4
    move-result-object v4

    #@5
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_1

    #@f
    .line 1800
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@12
    move-result-object v4

    #@13
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_1

    #@1d
    .line 1801
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@24
    move-result-object v4

    #@25
    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@28
    move-result v4

    #@29
    if-eqz v4, :cond_1

    #@2b
    .line 1804
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@32
    move-result v4

    #@33
    if-gt v4, v5, :cond_0

    #@35
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@38
    move-result-object v4

    #@39
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@3c
    move-result v4

    #@3d
    if-le v4, v5, :cond_2

    #@3f
    .line 1805
    :cond_0
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@41
    const-string/jumbo v5, "BLAS vectors must have Y dimension of 0 or 1"

    #@44
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@47
    throw v4

    #@48
    .line 1802
    :cond_1
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@4a
    const-string/jumbo v5, "Called BLAS with wrong Element type"

    #@4d
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@50
    throw v4

    #@51
    .line 1808
    :cond_2
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@54
    move-result-object v4

    #@55
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@58
    move-result v0

    #@59
    .line 1809
    .local v0, "M":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@5c
    move-result-object v4

    #@5d
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@60
    move-result v1

    #@61
    .line 1810
    .local v1, "N":I
    if-lez p2, :cond_3

    #@63
    if-gtz p4, :cond_4

    #@65
    .line 1811
    :cond_3
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@67
    const-string/jumbo v5, "Vector increments must be greater than 0"

    #@6a
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@6d
    throw v4

    #@6e
    .line 1813
    :cond_4
    add-int/lit8 v4, v0, -0x1

    #@70
    mul-int/2addr v4, p2

    #@71
    add-int/lit8 v2, v4, 0x1

    #@73
    .line 1814
    .local v2, "expectedXDim":I
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@7a
    move-result v4

    #@7b
    if-eq v4, v2, :cond_5

    #@7d
    .line 1815
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@7f
    const-string/jumbo v5, "Incorrect vector dimensions for GERU"

    #@82
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@85
    throw v4

    #@86
    .line 1817
    :cond_5
    add-int/lit8 v4, v1, -0x1

    #@88
    mul-int/2addr v4, p4

    #@89
    add-int/lit8 v3, v4, 0x1

    #@8b
    .line 1818
    .local v3, "expectedYDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@8e
    move-result-object v4

    #@8f
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@92
    move-result v4

    #@93
    if-eq v4, v3, :cond_6

    #@95
    .line 1819
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@97
    const-string/jumbo v5, "Incorrect vector dimensions for GERU"

    #@9a
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@9d
    throw v4

    #@9e
    .line 1798
    :cond_6
    return-void
.end method

.method static validateHEMM(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 3
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Side"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 3056
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    #@3
    .line 3058
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 3059
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_0

    #@1f
    .line 3060
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_0

    #@2d
    .line 3065
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    #@34
    move-result v0

    #@35
    .line 3066
    .local v0, "adim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    #@3c
    move-result v1

    #@3d
    if-eq v0, v1, :cond_1

    #@3f
    .line 3067
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@41
    const-string/jumbo v2, "Called HEMM with non-square A"

    #@44
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@47
    throw v1

    #@48
    .line 3061
    .end local v0    # "adim":I
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@4a
    const-string/jumbo v2, "Called BLAS with wrong Element type"

    #@4d
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@50
    throw v1

    #@51
    .line 3069
    .restart local v0    # "adim":I
    :cond_1
    const/16 v1, 0x8d

    #@53
    if-ne p1, v1, :cond_3

    #@55
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    #@5c
    move-result v1

    #@5d
    if-eq v0, v1, :cond_3

    #@5f
    .line 3071
    :cond_2
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@61
    const-string/jumbo v2, "Called HEMM with invalid B"

    #@64
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@67
    throw v1

    #@68
    .line 3070
    :cond_3
    const/16 v1, 0x8e

    #@6a
    if-ne p1, v1, :cond_4

    #@6c
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@6f
    move-result-object v1

    #@70
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    #@73
    move-result v1

    #@74
    if-ne v0, v1, :cond_2

    #@76
    .line 3073
    :cond_4
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@79
    move-result-object v1

    #@7a
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    #@7d
    move-result v1

    #@7e
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@81
    move-result-object v2

    #@82
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@85
    move-result v2

    #@86
    if-ne v1, v2, :cond_5

    #@88
    .line 3074
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@8b
    move-result-object v1

    #@8c
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    #@8f
    move-result v1

    #@90
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@97
    move-result v2

    #@98
    if-eq v1, v2, :cond_6

    #@9a
    .line 3075
    :cond_5
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@9c
    const-string/jumbo v2, "Called HEMM with mismatched B and C"

    #@9f
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v1

    #@a3
    .line 3055
    :cond_6
    return-void
.end method

.method static validateHER2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 3
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Trans"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 3195
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 3196
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 3197
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@27
    move-result v1

    #@28
    if-eqz v1, :cond_0

    #@2a
    .line 3200
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateConjTranspose(I)V

    #@2d
    .line 3201
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@30
    move-result-object v1

    #@31
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    #@34
    move-result v0

    #@35
    .line 3202
    .local v0, "cdim":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    #@3c
    move-result v1

    #@3d
    if-eq v0, v1, :cond_1

    #@3f
    .line 3203
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@41
    const-string/jumbo v2, "Called HER2K with non-square C"

    #@44
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@47
    throw v1

    #@48
    .line 3198
    .end local v0    # "cdim":I
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@4a
    const-string/jumbo v2, "Called BLAS with wrong Element type"

    #@4d
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@50
    throw v1

    #@51
    .line 3205
    .restart local v0    # "cdim":I
    :cond_1
    const/16 v1, 0x6f

    #@53
    if-ne p1, v1, :cond_2

    #@55
    .line 3206
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@58
    move-result-object v1

    #@59
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    #@5c
    move-result v1

    #@5d
    if-eq v1, v0, :cond_3

    #@5f
    .line 3207
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@61
    const-string/jumbo v2, "Called HER2K with invalid matrices"

    #@64
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@67
    throw v1

    #@68
    .line 3210
    :cond_2
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@6b
    move-result-object v1

    #@6c
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    #@6f
    move-result v1

    #@70
    if-eq v1, v0, :cond_3

    #@72
    .line 3211
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@74
    const-string/jumbo v2, "Called HER2K with invalid matrices"

    #@77
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@7a
    throw v1

    #@7b
    .line 3214
    :cond_3
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    #@82
    move-result v1

    #@83
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@8a
    move-result v2

    #@8b
    if-ne v1, v2, :cond_4

    #@8d
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    #@94
    move-result v1

    #@95
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@98
    move-result-object v2

    #@99
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@9c
    move-result v2

    #@9d
    if-eq v1, v2, :cond_5

    #@9f
    .line 3215
    :cond_4
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@a1
    const-string/jumbo v2, "Called HER2K with invalid A and B matrices"

    #@a4
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@a7
    throw v1

    #@a8
    .line 3194
    :cond_5
    return-void
.end method

.method static validateHERK(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 3
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Trans"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 3122
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 3123
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_0

    #@1c
    .line 3126
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateConjTranspose(I)V

    #@1f
    .line 3127
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    #@26
    move-result v0

    #@27
    .line 3128
    .local v0, "cdim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    #@2e
    move-result v1

    #@2f
    if-eq v0, v1, :cond_1

    #@31
    .line 3129
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@33
    const-string/jumbo v2, "Called HERK with non-square C"

    #@36
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@39
    throw v1

    #@3a
    .line 3124
    .end local v0    # "cdim":I
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@3c
    const-string/jumbo v2, "Called BLAS with wrong Element type"

    #@3f
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@42
    throw v1

    #@43
    .line 3131
    .restart local v0    # "cdim":I
    :cond_1
    const/16 v1, 0x6f

    #@45
    if-ne p1, v1, :cond_2

    #@47
    .line 3132
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4a
    move-result-object v1

    #@4b
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    #@4e
    move-result v1

    #@4f
    if-eq v0, v1, :cond_3

    #@51
    .line 3133
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@53
    const-string/jumbo v2, "Called HERK with invalid A"

    #@56
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@59
    throw v1

    #@5a
    .line 3136
    :cond_2
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@5d
    move-result-object v1

    #@5e
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    #@61
    move-result v1

    #@62
    if-eq v0, v1, :cond_3

    #@64
    .line 3137
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@66
    const-string/jumbo v2, "Called HERK with invalid A"

    #@69
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@6c
    throw v1

    #@6d
    .line 3121
    :cond_3
    return-void
.end method

.method static validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 9
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "Side"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    const/16 v8, 0x71

    #@2
    const/16 v7, 0x70

    #@4
    .line 2260
    const/4 v0, -0x1

    #@5
    .local v0, "aM":I
    const/4 v1, -0x1

    #@6
    .local v1, "aN":I
    const/4 v2, -0x1

    #@7
    .local v2, "bM":I
    const/4 v3, -0x1

    #@8
    .local v3, "bN":I
    const/4 v4, -0x1

    #@9
    .local v4, "cM":I
    const/4 v5, -0x1

    #@a
    .line 2261
    .local v5, "cN":I
    if-eqz p4, :cond_0

    #@c
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@f
    move-result-object v6

    #@10
    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@13
    move-result-object v6

    #@14
    invoke-virtual {v6, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@17
    move-result v6

    #@18
    if-eqz v6, :cond_3

    #@1a
    .line 2262
    :cond_0
    if-eqz p5, :cond_1

    #@1c
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1f
    move-result-object v6

    #@20
    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@23
    move-result-object v6

    #@24
    invoke-virtual {v6, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@27
    move-result v6

    #@28
    if-eqz v6, :cond_3

    #@2a
    .line 2263
    :cond_1
    if-eqz p6, :cond_2

    #@2c
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2f
    move-result-object v6

    #@30
    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@33
    move-result-object v6

    #@34
    invoke-virtual {v6, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@37
    move-result v6

    #@38
    if-eqz v6, :cond_3

    #@3a
    .line 2266
    :cond_2
    if-nez p6, :cond_4

    #@3c
    .line 2268
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    #@3e
    const-string/jumbo v7, "Allocation C cannot be null"

    #@41
    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@44
    throw v6

    #@45
    .line 2264
    :cond_3
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    #@47
    const-string/jumbo v7, "Called BLAS with wrong Element type"

    #@4a
    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@4d
    throw v6

    #@4e
    .line 2270
    :cond_4
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    #@55
    move-result v4

    #@56
    .line 2271
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@59
    move-result-object v6

    #@5a
    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    #@5d
    move-result v5

    #@5e
    .line 2273
    const/16 v6, 0x8e

    #@60
    if-ne p3, v6, :cond_b

    #@62
    .line 2274
    if-nez p4, :cond_6

    #@64
    if-eqz p5, :cond_6

    #@66
    .line 2275
    :cond_5
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    #@68
    const-string/jumbo v7, "Provided Matrix A without Matrix B, or vice versa"

    #@6b
    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v6

    #@6f
    .line 2274
    :cond_6
    if-eqz p4, :cond_7

    #@71
    if-eqz p5, :cond_5

    #@73
    .line 2277
    :cond_7
    if-eqz p5, :cond_8

    #@75
    .line 2278
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@78
    move-result-object v6

    #@79
    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    #@7c
    move-result v2

    #@7d
    .line 2279
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@80
    move-result-object v6

    #@81
    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    #@84
    move-result v3

    #@85
    .line 2281
    :cond_8
    if-eqz p4, :cond_9

    #@87
    .line 2282
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@8a
    move-result-object v6

    #@8b
    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    #@8e
    move-result v0

    #@8f
    .line 2283
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@92
    move-result-object v6

    #@93
    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    #@96
    move-result v1

    #@97
    .line 2305
    :cond_9
    :goto_0
    if-eqz p4, :cond_13

    #@99
    if-eqz p5, :cond_13

    #@9b
    if-eqz p6, :cond_13

    #@9d
    .line 2306
    if-ne v1, v2, :cond_a

    #@9f
    if-eq v0, v4, :cond_11

    #@a1
    .line 2307
    :cond_a
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    #@a3
    const-string/jumbo v7, "Called BLAS with invalid dimensions"

    #@a6
    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@a9
    throw v6

    #@aa
    .line 2286
    :cond_b
    if-eqz p4, :cond_d

    #@ac
    .line 2287
    if-eq p1, v7, :cond_c

    #@ae
    if-ne p1, v8, :cond_f

    #@b0
    .line 2288
    :cond_c
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@b3
    move-result-object v6

    #@b4
    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    #@b7
    move-result v1

    #@b8
    .line 2289
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@bb
    move-result-object v6

    #@bc
    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    #@bf
    move-result v0

    #@c0
    .line 2295
    :cond_d
    :goto_1
    if-eqz p5, :cond_9

    #@c2
    .line 2296
    if-eq p2, v7, :cond_e

    #@c4
    if-ne p2, v8, :cond_10

    #@c6
    .line 2297
    :cond_e
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@c9
    move-result-object v6

    #@ca
    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    #@cd
    move-result v3

    #@ce
    .line 2298
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@d1
    move-result-object v6

    #@d2
    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    #@d5
    move-result v2

    #@d6
    goto :goto_0

    #@d7
    .line 2291
    :cond_f
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@da
    move-result-object v6

    #@db
    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    #@de
    move-result v0

    #@df
    .line 2292
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@e2
    move-result-object v6

    #@e3
    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    #@e6
    move-result v1

    #@e7
    goto :goto_1

    #@e8
    .line 2300
    :cond_10
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@eb
    move-result-object v6

    #@ec
    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    #@ef
    move-result v2

    #@f0
    .line 2301
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@f3
    move-result-object v6

    #@f4
    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    #@f7
    move-result v3

    #@f8
    goto :goto_0

    #@f9
    .line 2306
    :cond_11
    if-ne v3, v5, :cond_a

    #@fb
    .line 2259
    :cond_12
    return-void

    #@fc
    .line 2309
    :cond_13
    if-eqz p4, :cond_15

    #@fe
    if-eqz p6, :cond_15

    #@100
    .line 2311
    if-eq v4, v5, :cond_14

    #@102
    .line 2312
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    #@104
    const-string/jumbo v7, "Matrix C is not symmetric"

    #@107
    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@10a
    throw v6

    #@10b
    .line 2314
    :cond_14
    if-eq v0, v4, :cond_12

    #@10d
    .line 2315
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    #@10f
    const-string/jumbo v7, "Called BLAS with invalid dimensions"

    #@112
    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@115
    throw v6

    #@116
    .line 2317
    :cond_15
    if-eqz p4, :cond_12

    #@118
    if-eqz p5, :cond_12

    #@11a
    .line 2319
    if-eq v1, v2, :cond_12

    #@11c
    .line 2320
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    #@11e
    const-string/jumbo v7, "Called BLAS with invalid dimensions"

    #@121
    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@124
    throw v6
.end method

.method static validateSPMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)I
    .locals 8
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "Ap"    # Landroid/renderscript/Allocation;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1242
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@4
    .line 1243
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 1244
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 1245
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 1248
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@35
    move-result v3

    #@36
    if-gt v3, v4, :cond_0

    #@38
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@3f
    move-result v3

    #@40
    if-le v3, v4, :cond_2

    #@42
    .line 1249
    :cond_0
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@44
    const-string/jumbo v4, "BLAS vectors must have Y dimension of 0 or 1"

    #@47
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3

    #@4b
    .line 1246
    :cond_1
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@4d
    const-string/jumbo v4, "Called BLAS with wrong Element type"

    #@50
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@53
    throw v3

    #@54
    .line 1252
    :cond_2
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@5b
    move-result v3

    #@5c
    if-le v3, v4, :cond_3

    #@5e
    .line 1253
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@60
    const-string/jumbo v4, "Ap must have a Y dimension of 0 or 1"

    #@63
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@66
    throw v3

    #@67
    .line 1256
    :cond_3
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@6e
    move-result v3

    #@6f
    int-to-double v4, v3

    #@70
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    #@72
    mul-double/2addr v4, v6

    #@73
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    #@76
    move-result-wide v4

    #@77
    double-to-int v0, v4

    #@78
    .line 1257
    .local v0, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@7f
    move-result v3

    #@80
    add-int/lit8 v4, v0, 0x1

    #@82
    mul-int/2addr v4, v0

    #@83
    div-int/lit8 v4, v4, 0x2

    #@85
    if-eq v3, v4, :cond_4

    #@87
    .line 1258
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@89
    const-string/jumbo v4, "Invalid dimension for Ap"

    #@8c
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v3

    #@90
    .line 1260
    :cond_4
    if-lez p4, :cond_5

    #@92
    if-gtz p6, :cond_6

    #@94
    .line 1261
    :cond_5
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@96
    const-string/jumbo v4, "Vector increments must be greater than 0"

    #@99
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@9c
    throw v3

    #@9d
    .line 1263
    :cond_6
    add-int/lit8 v3, v0, -0x1

    #@9f
    mul-int/2addr v3, p4

    #@a0
    add-int/lit8 v1, v3, 0x1

    #@a2
    .line 1264
    .local v1, "expectedXDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@a5
    move-result-object v3

    #@a6
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@a9
    move-result v3

    #@aa
    if-eq v3, v1, :cond_7

    #@ac
    .line 1265
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@ae
    const-string/jumbo v4, "Incorrect vector dimensions for SPMV"

    #@b1
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@b4
    throw v3

    #@b5
    .line 1267
    :cond_7
    add-int/lit8 v3, v0, -0x1

    #@b7
    mul-int/2addr v3, p6

    #@b8
    add-int/lit8 v2, v3, 0x1

    #@ba
    .line 1268
    .local v2, "expectedYDim":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@bd
    move-result-object v3

    #@be
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@c1
    move-result v3

    #@c2
    if-eq v3, v2, :cond_8

    #@c4
    .line 1269
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@c6
    const-string/jumbo v4, "Incorrect vector dimensions for SPMV"

    #@c9
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@cc
    throw v3

    #@cd
    .line 1272
    :cond_8
    return v0
.end method

.method static validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .locals 6
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1330
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@4
    .line 1331
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1332
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 1335
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@27
    move-result v2

    #@28
    if-le v2, v3, :cond_1

    #@2a
    .line 1336
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@2c
    const-string/jumbo v3, "BLAS vectors must have Y dimension of 0 or 1"

    #@2f
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@32
    throw v2

    #@33
    .line 1333
    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@35
    const-string/jumbo v3, "Called BLAS with wrong Element type"

    #@38
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v2

    #@3c
    .line 1339
    :cond_1
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3f
    move-result-object v2

    #@40
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@43
    move-result v2

    #@44
    if-le v2, v3, :cond_2

    #@46
    .line 1340
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@48
    const-string/jumbo v3, "Ap must have a Y dimension of 0 or 1"

    #@4b
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@4e
    throw v2

    #@4f
    .line 1343
    :cond_2
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@52
    move-result-object v2

    #@53
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@56
    move-result v2

    #@57
    int-to-double v2, v2

    #@58
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    #@5a
    mul-double/2addr v2, v4

    #@5b
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@5e
    move-result-wide v2

    #@5f
    double-to-int v0, v2

    #@60
    .line 1344
    .local v0, "N":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@63
    move-result-object v2

    #@64
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@67
    move-result v2

    #@68
    add-int/lit8 v3, v0, 0x1

    #@6a
    mul-int/2addr v3, v0

    #@6b
    div-int/lit8 v3, v3, 0x2

    #@6d
    if-eq v2, v3, :cond_3

    #@6f
    .line 1345
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@71
    const-string/jumbo v3, "Invalid dimension for Ap"

    #@74
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@77
    throw v2

    #@78
    .line 1347
    :cond_3
    if-gtz p3, :cond_4

    #@7a
    .line 1348
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@7c
    const-string/jumbo v3, "Vector increments must be greater than 0"

    #@7f
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@82
    throw v2

    #@83
    .line 1350
    :cond_4
    add-int/lit8 v2, v0, -0x1

    #@85
    mul-int/2addr v2, p3

    #@86
    add-int/lit8 v1, v2, 0x1

    #@88
    .line 1351
    .local v1, "expectedXDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@8f
    move-result v2

    #@90
    if-eq v2, v1, :cond_5

    #@92
    .line 1352
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@94
    const-string/jumbo v3, "Incorrect vector dimensions for SPR"

    #@97
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v2

    #@9b
    .line 1355
    :cond_5
    return v0
.end method

.method static validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .locals 8
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "Ap"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1387
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@4
    .line 1388
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 1389
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 1390
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 1393
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@35
    move-result v3

    #@36
    if-gt v3, v4, :cond_0

    #@38
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@3f
    move-result v3

    #@40
    if-le v3, v4, :cond_2

    #@42
    .line 1394
    :cond_0
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@44
    const-string/jumbo v4, "BLAS vectors must have Y dimension of 0 or 1"

    #@47
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3

    #@4b
    .line 1391
    :cond_1
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@4d
    const-string/jumbo v4, "Called BLAS with wrong Element type"

    #@50
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@53
    throw v3

    #@54
    .line 1397
    :cond_2
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@5b
    move-result v3

    #@5c
    if-le v3, v4, :cond_3

    #@5e
    .line 1398
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@60
    const-string/jumbo v4, "Ap must have a Y dimension of 0 or 1"

    #@63
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@66
    throw v3

    #@67
    .line 1401
    :cond_3
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@6e
    move-result v3

    #@6f
    int-to-double v4, v3

    #@70
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    #@72
    mul-double/2addr v4, v6

    #@73
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    #@76
    move-result-wide v4

    #@77
    double-to-int v0, v4

    #@78
    .line 1402
    .local v0, "N":I
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@7b
    move-result-object v3

    #@7c
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@7f
    move-result v3

    #@80
    add-int/lit8 v4, v0, 0x1

    #@82
    mul-int/2addr v4, v0

    #@83
    div-int/lit8 v4, v4, 0x2

    #@85
    if-eq v3, v4, :cond_4

    #@87
    .line 1403
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@89
    const-string/jumbo v4, "Invalid dimension for Ap"

    #@8c
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@8f
    throw v3

    #@90
    .line 1405
    :cond_4
    if-lez p3, :cond_5

    #@92
    if-gtz p5, :cond_6

    #@94
    .line 1406
    :cond_5
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@96
    const-string/jumbo v4, "Vector increments must be greater than 0"

    #@99
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@9c
    throw v3

    #@9d
    .line 1408
    :cond_6
    add-int/lit8 v3, v0, -0x1

    #@9f
    mul-int/2addr v3, p3

    #@a0
    add-int/lit8 v1, v3, 0x1

    #@a2
    .line 1409
    .local v1, "expectedXDim":I
    add-int/lit8 v3, v0, -0x1

    #@a4
    mul-int/2addr v3, p5

    #@a5
    add-int/lit8 v2, v3, 0x1

    #@a7
    .line 1410
    .local v2, "expectedYDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@aa
    move-result-object v3

    #@ab
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@ae
    move-result v3

    #@af
    if-ne v3, v1, :cond_7

    #@b1
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@b4
    move-result-object v3

    #@b5
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@b8
    move-result v3

    #@b9
    if-eq v3, v2, :cond_8

    #@bb
    .line 1411
    :cond_7
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@bd
    const-string/jumbo v4, "Incorrect vector dimensions for SPR2"

    #@c0
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@c3
    throw v3

    #@c4
    .line 1414
    :cond_8
    return v0
.end method

.method static validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I
    .locals 5
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "incY"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1214
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@4
    .line 1215
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@b
    move-result v0

    #@c
    .line 1216
    .local v0, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@f
    move-result-object v3

    #@10
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@13
    move-result v3

    #@14
    if-eq v3, v0, :cond_0

    #@16
    .line 1217
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@18
    const-string/jumbo v4, "A must be a square matrix for SYMV"

    #@1b
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v3

    #@1f
    .line 1219
    :cond_0
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@22
    move-result-object v3

    #@23
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@26
    move-result-object v3

    #@27
    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@2a
    move-result v3

    #@2b
    if-eqz v3, :cond_2

    #@2d
    .line 1220
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@34
    move-result-object v3

    #@35
    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@38
    move-result v3

    #@39
    if-eqz v3, :cond_2

    #@3b
    .line 1221
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@42
    move-result-object v3

    #@43
    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@46
    move-result v3

    #@47
    if-eqz v3, :cond_2

    #@49
    .line 1224
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@50
    move-result v3

    #@51
    if-gt v3, v4, :cond_1

    #@53
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@56
    move-result-object v3

    #@57
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@5a
    move-result v3

    #@5b
    if-le v3, v4, :cond_3

    #@5d
    .line 1225
    :cond_1
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@5f
    const-string/jumbo v4, "BLAS vectors must have Y dimension of 0 or 1"

    #@62
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@65
    throw v3

    #@66
    .line 1222
    :cond_2
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@68
    const-string/jumbo v4, "Called BLAS with wrong Element type"

    #@6b
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v3

    #@6f
    .line 1228
    :cond_3
    if-lez p5, :cond_4

    #@71
    if-gtz p6, :cond_5

    #@73
    .line 1229
    :cond_4
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@75
    const-string/jumbo v4, "Vector increments must be greater than 0"

    #@78
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v3

    #@7c
    .line 1231
    :cond_5
    add-int/lit8 v3, v0, -0x1

    #@7e
    mul-int/2addr v3, p5

    #@7f
    add-int/lit8 v1, v3, 0x1

    #@81
    .line 1232
    .local v1, "expectedXDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@84
    move-result-object v3

    #@85
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@88
    move-result v3

    #@89
    if-eq v3, v1, :cond_6

    #@8b
    .line 1233
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@8d
    const-string/jumbo v4, "Incorrect vector dimensions for SYMV"

    #@90
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@93
    throw v3

    #@94
    .line 1235
    :cond_6
    add-int/lit8 v3, v0, -0x1

    #@96
    mul-int/2addr v3, p6

    #@97
    add-int/lit8 v2, v3, 0x1

    #@99
    .line 1236
    .local v2, "expectedYDim":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@9c
    move-result-object v3

    #@9d
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@a0
    move-result v3

    #@a1
    if-eq v3, v2, :cond_7

    #@a3
    .line 1237
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@a5
    const-string/jumbo v4, "Incorrect vector dimensions for SYMV"

    #@a8
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@ab
    throw v3

    #@ac
    .line 1239
    :cond_7
    return v0
.end method

.method static validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .locals 4
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 1306
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@4
    .line 1307
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@7
    move-result-object v2

    #@8
    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_0

    #@12
    .line 1308
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@19
    move-result-object v2

    #@1a
    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@1d
    move-result v2

    #@1e
    if-eqz v2, :cond_0

    #@20
    .line 1312
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@27
    move-result v0

    #@28
    .line 1314
    .local v0, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@2f
    move-result v2

    #@30
    if-le v2, v3, :cond_1

    #@32
    .line 1315
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@34
    const-string/jumbo v3, "BLAS vectors must have Y dimension of 0 or 1"

    #@37
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v2

    #@3b
    .line 1309
    .end local v0    # "N":I
    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@3d
    const-string/jumbo v3, "Called BLAS with wrong Element type"

    #@40
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@43
    throw v2

    #@44
    .line 1317
    .restart local v0    # "N":I
    :cond_1
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@4b
    move-result v2

    #@4c
    if-eq v0, v2, :cond_2

    #@4e
    .line 1318
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@50
    const-string/jumbo v3, "A must be a symmetric matrix"

    #@53
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@56
    throw v2

    #@57
    .line 1320
    :cond_2
    if-gtz p3, :cond_3

    #@59
    .line 1321
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@5b
    const-string/jumbo v3, "Vector increments must be greater than 0"

    #@5e
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@61
    throw v2

    #@62
    .line 1323
    :cond_3
    add-int/lit8 v2, v0, -0x1

    #@64
    mul-int/2addr v2, p3

    #@65
    add-int/lit8 v1, v2, 0x1

    #@67
    .line 1324
    .local v1, "expectedXDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@6a
    move-result-object v2

    #@6b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@6e
    move-result v2

    #@6f
    if-eq v2, v1, :cond_4

    #@71
    .line 1325
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@73
    const-string/jumbo v3, "Incorrect vector dimensions for SYR"

    #@76
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@79
    throw v2

    #@7a
    .line 1327
    :cond_4
    return v0
.end method

.method static validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .locals 5
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 1359
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@4
    .line 1360
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@7
    move-result-object v3

    #@8
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@f
    move-result v3

    #@10
    if-eqz v3, :cond_1

    #@12
    .line 1361
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_1

    #@20
    .line 1362
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@2b
    move-result v3

    #@2c
    if-eqz v3, :cond_1

    #@2e
    .line 1366
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@35
    move-result v3

    #@36
    if-gt v3, v4, :cond_0

    #@38
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3b
    move-result-object v3

    #@3c
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@3f
    move-result v3

    #@40
    if-le v3, v4, :cond_2

    #@42
    .line 1367
    :cond_0
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@44
    const-string/jumbo v4, "BLAS vectors must have Y dimension of 0 or 1"

    #@47
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v3

    #@4b
    .line 1363
    :cond_1
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@4d
    const-string/jumbo v4, "Called BLAS with wrong Element type"

    #@50
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@53
    throw v3

    #@54
    .line 1370
    :cond_2
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@57
    move-result-object v3

    #@58
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@5b
    move-result v0

    #@5c
    .line 1372
    .local v0, "N":I
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@5f
    move-result-object v3

    #@60
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@63
    move-result v3

    #@64
    if-eq v0, v3, :cond_3

    #@66
    .line 1373
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@68
    const-string/jumbo v4, "A must be a symmetric matrix"

    #@6b
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@6e
    throw v3

    #@6f
    .line 1375
    :cond_3
    if-lez p3, :cond_4

    #@71
    if-gtz p5, :cond_5

    #@73
    .line 1376
    :cond_4
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@75
    const-string/jumbo v4, "Vector increments must be greater than 0"

    #@78
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v3

    #@7c
    .line 1378
    :cond_5
    add-int/lit8 v3, v0, -0x1

    #@7e
    mul-int/2addr v3, p3

    #@7f
    add-int/lit8 v1, v3, 0x1

    #@81
    .line 1379
    .local v1, "expectedXDim":I
    add-int/lit8 v3, v0, -0x1

    #@83
    mul-int/2addr v3, p5

    #@84
    add-int/lit8 v2, v3, 0x1

    #@86
    .line 1380
    .local v2, "expectedYDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@89
    move-result-object v3

    #@8a
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@8d
    move-result v3

    #@8e
    if-ne v3, v1, :cond_6

    #@90
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@93
    move-result-object v3

    #@94
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@97
    move-result v3

    #@98
    if-eq v3, v2, :cond_7

    #@9a
    .line 1381
    :cond_6
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@9c
    const-string/jumbo v4, "Incorrect vector dimensions for SYR"

    #@9f
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@a2
    throw v3

    #@a3
    .line 1383
    :cond_7
    return v0
.end method

.method static validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 3
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Trans"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2684
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@3
    .line 2685
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 2686
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@1c
    move-result v1

    #@1d
    if-eqz v1, :cond_1

    #@1f
    .line 2687
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@2a
    move-result v1

    #@2b
    if-eqz v1, :cond_1

    #@2d
    .line 2690
    const/4 v0, -0x1

    #@2e
    .line 2693
    .local v0, "Cdim":I
    const/16 v1, 0x70

    #@30
    if-ne p1, v1, :cond_2

    #@32
    .line 2695
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@35
    move-result-object v1

    #@36
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    #@39
    move-result v0

    #@3a
    .line 2700
    :goto_0
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3d
    move-result-object v1

    #@3e
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    #@41
    move-result v1

    #@42
    if-ne v1, v0, :cond_0

    #@44
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    #@4b
    move-result v1

    #@4c
    if-eq v1, v0, :cond_3

    #@4e
    .line 2701
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@50
    const-string/jumbo v2, "Invalid symmetric matrix in SYR2K"

    #@53
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@56
    throw v1

    #@57
    .line 2688
    .end local v0    # "Cdim":I
    :cond_1
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@59
    const-string/jumbo v2, "Called BLAS with wrong Element type"

    #@5c
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@5f
    throw v1

    #@60
    .line 2698
    .restart local v0    # "Cdim":I
    :cond_2
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@63
    move-result-object v1

    #@64
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    #@67
    move-result v0

    #@68
    goto :goto_0

    #@69
    .line 2704
    :cond_3
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@6c
    move-result-object v1

    #@6d
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    #@70
    move-result v1

    #@71
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@74
    move-result-object v2

    #@75
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@78
    move-result v2

    #@79
    if-ne v1, v2, :cond_4

    #@7b
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@7e
    move-result-object v1

    #@7f
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    #@82
    move-result v1

    #@83
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@8a
    move-result v2

    #@8b
    if-eq v1, v2, :cond_5

    #@8d
    .line 2705
    :cond_4
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@8f
    const-string/jumbo v2, "Invalid A and B in SYR2K"

    #@92
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@95
    throw v1

    #@96
    .line 2683
    :cond_5
    return-void
.end method

.method static validateSide(I)V
    .locals 2
    .param p0, "Side"    # I

    #@0
    .prologue
    .line 239
    const/16 v0, 0x8d

    #@2
    if-eq p0, v0, :cond_0

    #@4
    const/16 v0, 0x8e

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 240
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    #@a
    const-string/jumbo v1, "Invalid side passed to BLAS"

    #@d
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 238
    :cond_0
    return-void
.end method

.method static validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I
    .locals 6
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 559
    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@4
    .line 560
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@7
    .line 561
    invoke-static {p3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    #@a
    .line 562
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 563
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@23
    move-result v2

    #@24
    if-eqz v2, :cond_0

    #@26
    .line 566
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@29
    move-result-object v2

    #@2a
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@2d
    move-result v2

    #@2e
    if-le v2, v3, :cond_1

    #@30
    .line 567
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@32
    const-string/jumbo v3, "BLAS vectors must have Y dimension of 0 or 1"

    #@35
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@38
    throw v2

    #@39
    .line 564
    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@3b
    const-string/jumbo v3, "Called BLAS with wrong Element type"

    #@3e
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@41
    throw v2

    #@42
    .line 570
    :cond_1
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@49
    move-result v2

    #@4a
    if-le v2, v3, :cond_2

    #@4c
    .line 571
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@4e
    const-string/jumbo v3, "Ap must have a Y dimension of 0 or 1"

    #@51
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@54
    throw v2

    #@55
    .line 574
    :cond_2
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@58
    move-result-object v2

    #@59
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@5c
    move-result v2

    #@5d
    int-to-double v2, v2

    #@5e
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    #@60
    mul-double/2addr v2, v4

    #@61
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    #@64
    move-result-wide v2

    #@65
    double-to-int v0, v2

    #@66
    .line 576
    .local v0, "N":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@69
    move-result-object v2

    #@6a
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@6d
    move-result v2

    #@6e
    add-int/lit8 v3, v0, 0x1

    #@70
    mul-int/2addr v3, v0

    #@71
    div-int/lit8 v3, v3, 0x2

    #@73
    if-eq v2, v3, :cond_3

    #@75
    .line 577
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@77
    const-string/jumbo v3, "Invalid dimension for Ap"

    #@7a
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@7d
    throw v2

    #@7e
    .line 579
    :cond_3
    if-gtz p6, :cond_4

    #@80
    .line 580
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@82
    const-string/jumbo v3, "Vector increments must be greater than 0"

    #@85
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@88
    throw v2

    #@89
    .line 582
    :cond_4
    add-int/lit8 v2, v0, -0x1

    #@8b
    mul-int/2addr v2, p6

    #@8c
    add-int/lit8 v1, v2, 0x1

    #@8e
    .line 583
    .local v1, "expectedXDim":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@91
    move-result-object v2

    #@92
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@95
    move-result v2

    #@96
    if-eq v2, v1, :cond_5

    #@98
    .line 584
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@9a
    const-string/jumbo v3, "Incorrect vector dimensions for TPMV"

    #@9d
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@a0
    throw v2

    #@a1
    .line 587
    :cond_5
    return v0
.end method

.method static validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 6
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Side"    # I
    .param p2, "TransA"    # I
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "B"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2814
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    #@3
    .line 2815
    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@6
    .line 2816
    const/4 v0, -0x1

    #@7
    .local v0, "aM":I
    const/4 v1, -0x1

    #@8
    .local v1, "aN":I
    const/4 v2, -0x1

    #@9
    .local v2, "bM":I
    const/4 v3, -0x1

    #@a
    .line 2817
    .local v3, "bN":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@d
    move-result-object v4

    #@e
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@11
    move-result-object v4

    #@12
    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@15
    move-result v4

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 2818
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@23
    move-result v4

    #@24
    if-eqz v4, :cond_0

    #@26
    .line 2822
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@29
    move-result-object v4

    #@2a
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@2d
    move-result v0

    #@2e
    .line 2823
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@31
    move-result-object v4

    #@32
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@35
    move-result v1

    #@36
    .line 2824
    if-eq v0, v1, :cond_1

    #@38
    .line 2825
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@3a
    const-string/jumbo v5, "Called TRMM with a non-symmetric matrix A"

    #@3d
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@40
    throw v4

    #@41
    .line 2819
    :cond_0
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@43
    const-string/jumbo v5, "Called BLAS with wrong Element type"

    #@46
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@49
    throw v4

    #@4a
    .line 2828
    :cond_1
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4d
    move-result-object v4

    #@4e
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@51
    move-result v2

    #@52
    .line 2829
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@55
    move-result-object v4

    #@56
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@59
    move-result v3

    #@5a
    .line 2830
    const/16 v4, 0x8d

    #@5c
    if-ne p1, v4, :cond_2

    #@5e
    .line 2831
    if-eq v1, v2, :cond_3

    #@60
    .line 2832
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@62
    const-string/jumbo v5, "Called TRMM with invalid matrices"

    #@65
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@68
    throw v4

    #@69
    .line 2835
    :cond_2
    if-eq v3, v0, :cond_3

    #@6b
    .line 2836
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    #@6d
    const-string/jumbo v5, "Called TRMM with invalid matrices"

    #@70
    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@73
    throw v4

    #@74
    .line 2813
    :cond_3
    return-void
.end method

.method static validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 4
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 534
    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@4
    .line 535
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@7
    .line 536
    invoke-static {p3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    #@a
    .line 537
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@d
    move-result-object v2

    #@e
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@11
    move-result v0

    #@12
    .line 538
    .local v0, "N":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@19
    move-result v2

    #@1a
    if-eq v2, v0, :cond_0

    #@1c
    .line 539
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@1e
    const-string/jumbo v3, "A must be a square matrix for TRMV"

    #@21
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@24
    throw v2

    #@25
    .line 541
    :cond_0
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@30
    move-result v2

    #@31
    if-eqz v2, :cond_1

    #@33
    .line 542
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@3e
    move-result v2

    #@3f
    if-eqz v2, :cond_1

    #@41
    .line 545
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@48
    move-result v2

    #@49
    if-le v2, v3, :cond_2

    #@4b
    .line 546
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@4d
    const-string/jumbo v3, "BLAS vectors must have Y dimension of 0 or 1"

    #@50
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@53
    throw v2

    #@54
    .line 543
    :cond_1
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@56
    const-string/jumbo v3, "Called BLAS with wrong Element type"

    #@59
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@5c
    throw v2

    #@5d
    .line 549
    :cond_2
    if-gtz p6, :cond_3

    #@5f
    .line 550
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@61
    const-string/jumbo v3, "Vector increments must be greater than 0"

    #@64
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@67
    throw v2

    #@68
    .line 552
    :cond_3
    add-int/lit8 v2, v0, -0x1

    #@6a
    mul-int/2addr v2, p6

    #@6b
    add-int/lit8 v1, v2, 0x1

    #@6d
    .line 553
    .local v1, "expectedXDim":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@70
    move-result-object v2

    #@71
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@74
    move-result v2

    #@75
    if-eq v2, v1, :cond_4

    #@77
    .line 554
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@79
    const-string/jumbo v3, "Incorrect vector dimensions for TRMV"

    #@7c
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v2

    #@80
    .line 533
    :cond_4
    return-void
.end method

.method static validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 5
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Side"    # I
    .param p2, "TransA"    # I
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "B"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2934
    const/4 v0, -0x1

    #@1
    .local v0, "adim":I
    const/4 v1, -0x1

    #@2
    .local v1, "bM":I
    const/4 v2, -0x1

    #@3
    .line 2935
    .local v2, "bN":I
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    #@6
    .line 2936
    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@9
    .line 2937
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@c
    move-result-object v3

    #@d
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_0

    #@17
    .line 2938
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v3

    #@1b
    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    #@22
    move-result v3

    #@23
    if-eqz v3, :cond_0

    #@25
    .line 2941
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@2c
    move-result v0

    #@2d
    .line 2942
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@30
    move-result-object v3

    #@31
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@34
    move-result v3

    #@35
    if-eq v0, v3, :cond_1

    #@37
    .line 2946
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@39
    const-string/jumbo v4, "Called TRSM with a non-symmetric matrix A"

    #@3c
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@3f
    throw v3

    #@40
    .line 2939
    :cond_0
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@42
    const-string/jumbo v4, "Called BLAS with wrong Element type"

    #@45
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@48
    throw v3

    #@49
    .line 2948
    :cond_1
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4c
    move-result-object v3

    #@4d
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@50
    move-result v1

    #@51
    .line 2949
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@54
    move-result-object v3

    #@55
    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    #@58
    move-result v2

    #@59
    .line 2950
    const/16 v3, 0x8d

    #@5b
    if-ne p1, v3, :cond_2

    #@5d
    .line 2952
    if-eq v0, v1, :cond_3

    #@5f
    .line 2953
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@61
    const-string/jumbo v4, "Called TRSM with invalid matrix dimensions"

    #@64
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@67
    throw v3

    #@68
    .line 2957
    :cond_2
    if-eq v0, v2, :cond_3

    #@6a
    .line 2958
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    #@6c
    const-string/jumbo v4, "Called TRSM with invalid matrix dimensions"

    #@6f
    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@72
    throw v3

    #@73
    .line 2933
    :cond_3
    return-void
.end method

.method static validateTranspose(I)V
    .locals 2
    .param p0, "Trans"    # I

    #@0
    .prologue
    .line 245
    const/16 v0, 0x6f

    #@2
    if-eq p0, v0, :cond_0

    #@4
    const/16 v0, 0x70

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 246
    const/16 v0, 0x71

    #@a
    if-eq p0, v0, :cond_0

    #@c
    .line 247
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    #@e
    const-string/jumbo v1, "Invalid transpose passed to BLAS"

    #@11
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@14
    throw v0

    #@15
    .line 244
    :cond_0
    return-void
.end method

.method static validateUplo(I)V
    .locals 2
    .param p0, "Uplo"    # I

    #@0
    .prologue
    .line 265
    const/16 v0, 0x79

    #@2
    if-eq p0, v0, :cond_0

    #@4
    const/16 v0, 0x7a

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 266
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    #@a
    const-string/jumbo v1, "Invalid uplo passed to BLAS"

    #@d
    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 264
    :cond_0
    return-void
.end method


# virtual methods
.method public BNNM(Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;II)V
    .locals 17
    .param p1, "A"    # Landroid/renderscript/Allocation;
    .param p2, "a_offset"    # I
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "b_offset"    # I
    .param p5, "C"    # Landroid/renderscript/Allocation;
    .param p6, "c_offset"    # I
    .param p7, "c_mult"    # I

    #@0
    .prologue
    .line 3290
    move-object/from16 v0, p0

    #@2
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v1

    #@8
    const/16 v2, 0x6f

    #@a
    const/16 v3, 0x70

    #@c
    const/4 v4, 0x0

    #@d
    move-object/from16 v5, p1

    #@f
    move-object/from16 v6, p3

    #@11
    move-object/from16 v7, p5

    #@13
    invoke-static/range {v1 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@16
    .line 3292
    if-ltz p2, :cond_0

    #@18
    const/16 v1, 0xff

    #@1a
    move/from16 v0, p2

    #@1c
    if-le v0, v1, :cond_1

    #@1e
    .line 3293
    :cond_0
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@20
    const-string/jumbo v2, "Invalid a_offset passed to BNNM"

    #@23
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v1

    #@27
    .line 3295
    :cond_1
    if-ltz p4, :cond_2

    #@29
    const/16 v1, 0xff

    #@2b
    move/from16 v0, p4

    #@2d
    if-le v0, v1, :cond_3

    #@2f
    .line 3296
    :cond_2
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    #@31
    const-string/jumbo v2, "Invalid b_offset passed to BNNM"

    #@34
    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@37
    throw v1

    #@38
    .line 3298
    :cond_3
    const/4 v4, -0x1

    #@39
    .local v4, "M":I
    const/4 v5, -0x1

    #@3a
    .local v5, "N":I
    const/4 v6, -0x1

    #@3b
    .line 3299
    .local v6, "K":I
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3e
    move-result-object v1

    #@3f
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    #@42
    move-result v4

    #@43
    .line 3300
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@46
    move-result-object v1

    #@47
    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    #@4a
    move-result v5

    #@4b
    .line 3301
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4e
    move-result-object v1

    #@4f
    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    #@52
    move-result v6

    #@53
    .line 3304
    move-object/from16 v0, p0

    #@55
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@57
    move-object/from16 v0, p0

    #@59
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@5b
    move-object/from16 v0, p0

    #@5d
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@60
    move-result-wide v2

    #@61
    move-object/from16 v0, p0

    #@63
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@65
    move-object/from16 v0, p1

    #@67
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@6a
    move-result-wide v7

    #@6b
    move-object/from16 v0, p0

    #@6d
    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@6f
    move-object/from16 v0, p3

    #@71
    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@74
    move-result-wide v10

    #@75
    move-object/from16 v0, p0

    #@77
    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@79
    move-object/from16 v0, p5

    #@7b
    invoke-virtual {v0, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@7e
    move-result-wide v13

    #@7f
    move/from16 v9, p2

    #@81
    move/from16 v12, p4

    #@83
    move/from16 v15, p6

    #@85
    move/from16 v16, p7

    #@87
    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_BNNM(JIIIJIJIJII)V

    #@8a
    .line 3289
    return-void
.end method

.method public CGBMV(IIILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # Landroid/renderscript/Float2;
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # Landroid/renderscript/Float2;
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    #@0
    .prologue
    .line 489
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p5

    #@c
    move-object/from16 v5, p6

    #@e
    move/from16 v6, p7

    #@10
    move-object/from16 v7, p9

    #@12
    move/from16 v8, p10

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    #@17
    .line 490
    if-ltz p2, :cond_0

    #@19
    if-gez p3, :cond_1

    #@1b
    .line 491
    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@1d
    const-string/jumbo v3, "KL and KU must be greater than or equal to 0"

    #@20
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 493
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@2b
    move-result v11

    #@2c
    .line 494
    .local v11, "M":I
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@33
    move-result v12

    #@34
    .line 495
    .local v12, "N":I
    move-object/from16 v0, p0

    #@36
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3c
    move-object/from16 v0, p0

    #@3e
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@41
    move-result-wide v3

    #@42
    move-object/from16 v0, p4

    #@44
    iget v14, v0, Landroid/renderscript/Float2;->x:F

    #@46
    move-object/from16 v0, p4

    #@48
    iget v15, v0, Landroid/renderscript/Float2;->y:F

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4e
    move-object/from16 v0, p5

    #@50
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@53
    move-result-wide v16

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@58
    move-object/from16 v0, p6

    #@5a
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5d
    move-result-wide v18

    #@5e
    move-object/from16 v0, p8

    #@60
    iget v0, v0, Landroid/renderscript/Float2;->x:F

    #@62
    move/from16 v20, v0

    #@64
    move-object/from16 v0, p8

    #@66
    iget v0, v0, Landroid/renderscript/Float2;->y:F

    #@68
    move/from16 v21, v0

    #@6a
    move-object/from16 v0, p0

    #@6c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@6e
    move-object/from16 v0, p9

    #@70
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@73
    move-result-wide v22

    #@74
    const/16 v5, 0x40

    #@76
    const/4 v7, 0x0

    #@77
    const/4 v8, 0x0

    #@78
    const/4 v9, 0x0

    #@79
    const/4 v10, 0x0

    #@7a
    const/4 v13, 0x0

    #@7b
    move/from16 v6, p1

    #@7d
    move/from16 v24, p7

    #@7f
    move/from16 v25, p10

    #@81
    move/from16 v26, p2

    #@83
    move/from16 v27, p3

    #@85
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@88
    .line 487
    return-void
.end method

.method public CGEMM(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2415
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@3
    .line 2416
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@6
    .line 2417
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v2

    #@e
    const/4 v5, 0x0

    #@f
    move/from16 v3, p1

    #@11
    move/from16 v4, p2

    #@13
    move-object/from16 v6, p4

    #@15
    move-object/from16 v7, p5

    #@17
    move-object/from16 v8, p7

    #@19
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@1c
    .line 2418
    const/4 v11, -0x1

    #@1d
    .local v11, "M":I
    const/4 v12, -0x1

    #@1e
    .local v12, "N":I
    const/4 v13, -0x1

    #@1f
    .line 2419
    .local v13, "K":I
    const/16 v2, 0x6f

    #@21
    move/from16 v0, p1

    #@23
    if-eq v0, v2, :cond_0

    #@25
    .line 2420
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@2c
    move-result v11

    #@2d
    .line 2421
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@34
    move-result v13

    #@35
    .line 2426
    :goto_0
    const/16 v2, 0x6f

    #@37
    move/from16 v0, p2

    #@39
    if-eq v0, v2, :cond_1

    #@3b
    .line 2427
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@42
    move-result v12

    #@43
    .line 2431
    :goto_1
    move-object/from16 v0, p0

    #@45
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4b
    move-object/from16 v0, p0

    #@4d
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@50
    move-result-wide v3

    #@51
    move-object/from16 v0, p3

    #@53
    iget v14, v0, Landroid/renderscript/Float2;->x:F

    #@55
    move-object/from16 v0, p3

    #@57
    iget v15, v0, Landroid/renderscript/Float2;->y:F

    #@59
    move-object/from16 v0, p0

    #@5b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@5d
    move-object/from16 v0, p4

    #@5f
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@62
    move-result-wide v16

    #@63
    move-object/from16 v0, p0

    #@65
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@67
    move-object/from16 v0, p5

    #@69
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@6c
    move-result-wide v18

    #@6d
    .line 2432
    move-object/from16 v0, p6

    #@6f
    iget v0, v0, Landroid/renderscript/Float2;->x:F

    #@71
    move/from16 v20, v0

    #@73
    move-object/from16 v0, p6

    #@75
    iget v0, v0, Landroid/renderscript/Float2;->y:F

    #@77
    move/from16 v21, v0

    #@79
    move-object/from16 v0, p0

    #@7b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@7d
    move-object/from16 v0, p7

    #@7f
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@82
    move-result-wide v22

    #@83
    .line 2431
    const/16 v5, 0x7d

    #@85
    const/4 v8, 0x0

    #@86
    const/4 v9, 0x0

    #@87
    const/4 v10, 0x0

    #@88
    .line 2432
    const/16 v24, 0x0

    #@8a
    const/16 v25, 0x0

    #@8c
    const/16 v26, 0x0

    #@8e
    const/16 v27, 0x0

    #@90
    move/from16 v6, p1

    #@92
    move/from16 v7, p2

    #@94
    .line 2431
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@97
    .line 2414
    return-void

    #@98
    .line 2423
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@9b
    move-result-object v2

    #@9c
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@9f
    move-result v11

    #@a0
    .line 2424
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@a3
    move-result-object v2

    #@a4
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@a7
    move-result v13

    #@a8
    goto :goto_0

    #@a9
    .line 2429
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@ac
    move-result-object v2

    #@ad
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@b0
    move-result v12

    #@b1
    goto :goto_1
.end method

.method public CGEMV(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "TransA"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    #@0
    .prologue
    .line 365
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p3

    #@c
    move-object/from16 v5, p4

    #@e
    move/from16 v6, p5

    #@10
    move-object/from16 v7, p7

    #@12
    move/from16 v8, p8

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    #@17
    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v11

    #@1f
    .line 367
    .local v11, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@26
    move-result v12

    #@27
    .line 368
    .local v12, "N":I
    move-object/from16 v0, p0

    #@29
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2f
    move-object/from16 v0, p0

    #@31
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@34
    move-result-wide v3

    #@35
    move-object/from16 v0, p2

    #@37
    iget v14, v0, Landroid/renderscript/Float2;->x:F

    #@39
    move-object/from16 v0, p2

    #@3b
    iget v15, v0, Landroid/renderscript/Float2;->y:F

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@41
    move-object/from16 v0, p3

    #@43
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@46
    move-result-wide v16

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4b
    move-object/from16 v0, p4

    #@4d
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@50
    move-result-wide v18

    #@51
    move-object/from16 v0, p6

    #@53
    iget v0, v0, Landroid/renderscript/Float2;->x:F

    #@55
    move/from16 v20, v0

    #@57
    move-object/from16 v0, p6

    #@59
    iget v0, v0, Landroid/renderscript/Float2;->y:F

    #@5b
    move/from16 v21, v0

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@61
    move-object/from16 v0, p7

    #@63
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@66
    move-result-wide v22

    #@67
    const/16 v5, 0x3f

    #@69
    const/4 v7, 0x0

    #@6a
    const/4 v8, 0x0

    #@6b
    const/4 v9, 0x0

    #@6c
    const/4 v10, 0x0

    #@6d
    const/4 v13, 0x0

    #@6e
    const/16 v26, 0x0

    #@70
    const/16 v27, 0x0

    #@72
    move/from16 v6, p1

    #@74
    move/from16 v24, p5

    #@76
    move/from16 v25, p8

    #@78
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@7b
    .line 364
    return-void
.end method

.method public CGERC(Landroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "alpha"    # Landroid/renderscript/Float2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 1941
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move-object/from16 v3, p2

    #@a
    move/from16 v4, p3

    #@c
    move-object/from16 v5, p4

    #@e
    move/from16 v6, p5

    #@10
    move-object/from16 v7, p6

    #@12
    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    #@15
    .line 1942
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1c
    move-result v11

    #@1d
    .line 1943
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@24
    move-result v12

    #@25
    .line 1944
    .local v12, "N":I
    move-object/from16 v0, p0

    #@27
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@32
    move-result-wide v3

    #@33
    move-object/from16 v0, p1

    #@35
    iget v14, v0, Landroid/renderscript/Float2;->x:F

    #@37
    move-object/from16 v0, p1

    #@39
    iget v15, v0, Landroid/renderscript/Float2;->y:F

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3f
    move-object/from16 v0, p2

    #@41
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@44
    move-result-wide v16

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@49
    move-object/from16 v0, p4

    #@4b
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4e
    move-result-wide v18

    #@4f
    const/16 v20, 0x0

    #@51
    const/16 v21, 0x0

    #@53
    move-object/from16 v0, p0

    #@55
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@57
    move-object/from16 v0, p6

    #@59
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5c
    move-result-wide v22

    #@5d
    const/16 v5, 0x63

    #@5f
    const/4 v6, 0x0

    #@60
    const/4 v7, 0x0

    #@61
    const/4 v8, 0x0

    #@62
    const/4 v9, 0x0

    #@63
    const/4 v10, 0x0

    #@64
    const/4 v13, 0x0

    #@65
    const/16 v26, 0x0

    #@67
    const/16 v27, 0x0

    #@69
    move/from16 v24, p3

    #@6b
    move/from16 v25, p5

    #@6d
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@70
    .line 1939
    return-void
.end method

.method public CGERU(Landroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "alpha"    # Landroid/renderscript/Float2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 1920
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move-object/from16 v3, p2

    #@a
    move/from16 v4, p3

    #@c
    move-object/from16 v5, p4

    #@e
    move/from16 v6, p5

    #@10
    move-object/from16 v7, p6

    #@12
    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    #@15
    .line 1921
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1c
    move-result v11

    #@1d
    .line 1922
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@24
    move-result v12

    #@25
    .line 1923
    .local v12, "N":I
    move-object/from16 v0, p0

    #@27
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@32
    move-result-wide v3

    #@33
    move-object/from16 v0, p1

    #@35
    iget v14, v0, Landroid/renderscript/Float2;->x:F

    #@37
    move-object/from16 v0, p1

    #@39
    iget v15, v0, Landroid/renderscript/Float2;->y:F

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3f
    move-object/from16 v0, p2

    #@41
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@44
    move-result-wide v16

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@49
    move-object/from16 v0, p4

    #@4b
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4e
    move-result-wide v18

    #@4f
    const/16 v20, 0x0

    #@51
    const/16 v21, 0x0

    #@53
    move-object/from16 v0, p0

    #@55
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@57
    move-object/from16 v0, p6

    #@59
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5c
    move-result-wide v22

    #@5d
    const/16 v5, 0x62

    #@5f
    const/4 v6, 0x0

    #@60
    const/4 v7, 0x0

    #@61
    const/4 v8, 0x0

    #@62
    const/4 v9, 0x0

    #@63
    const/4 v10, 0x0

    #@64
    const/4 v13, 0x0

    #@65
    const/16 v26, 0x0

    #@67
    const/16 v27, 0x0

    #@69
    move/from16 v24, p3

    #@6b
    move/from16 v25, p5

    #@6d
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@70
    .line 1919
    return-void
.end method

.method public CHBMV(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # Landroid/renderscript/Float2;
    .param p8, "Y"    # Landroid/renderscript/Allocation;
    .param p9, "incY"    # I

    #@0
    .prologue
    .line 1870
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p5

    #@c
    move/from16 v5, p6

    #@e
    move-object/from16 v6, p8

    #@10
    move/from16 v7, p9

    #@12
    move-object/from16 v8, p4

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@17
    move-result v12

    #@18
    .line 1871
    .local v12, "N":I
    if-gez p2, :cond_0

    #@1a
    .line 1872
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@1c
    const-string/jumbo v3, "K must be 0 or greater for HBMV"

    #@1f
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 1874
    :cond_0
    move-object/from16 v0, p0

    #@25
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2b
    move-object/from16 v0, p0

    #@2d
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@30
    move-result-wide v3

    #@31
    move-object/from16 v0, p3

    #@33
    iget v14, v0, Landroid/renderscript/Float2;->x:F

    #@35
    move-object/from16 v0, p3

    #@37
    iget v15, v0, Landroid/renderscript/Float2;->y:F

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3d
    move-object/from16 v0, p4

    #@3f
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@42
    move-result-wide v16

    #@43
    move-object/from16 v0, p0

    #@45
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@47
    move-object/from16 v0, p5

    #@49
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4c
    move-result-wide v18

    #@4d
    move-object/from16 v0, p7

    #@4f
    iget v0, v0, Landroid/renderscript/Float2;->x:F

    #@51
    move/from16 v20, v0

    #@53
    move-object/from16 v0, p7

    #@55
    iget v0, v0, Landroid/renderscript/Float2;->y:F

    #@57
    move/from16 v21, v0

    #@59
    move-object/from16 v0, p0

    #@5b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@5d
    move-object/from16 v0, p8

    #@5f
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@62
    move-result-wide v22

    #@63
    const/16 v5, 0x60

    #@65
    const/4 v6, 0x0

    #@66
    const/4 v7, 0x0

    #@67
    const/4 v8, 0x0

    #@68
    const/4 v10, 0x0

    #@69
    const/4 v11, 0x0

    #@6a
    const/16 v26, 0x0

    #@6c
    const/16 v27, 0x0

    #@6e
    move/from16 v9, p1

    #@70
    move/from16 v13, p2

    #@72
    move/from16 v24, p6

    #@74
    move/from16 v25, p9

    #@76
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@79
    .line 1868
    return-void
.end method

.method public CHEMM(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 3094
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 3095
    move-object/from16 v0, p0

    #@5
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@a
    move-result-object v4

    #@b
    move/from16 v0, p1

    #@d
    move-object/from16 v1, p4

    #@f
    move-object/from16 v2, p5

    #@11
    move-object/from16 v3, p7

    #@13
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHEMM(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@16
    .line 3096
    move-object/from16 v0, p0

    #@18
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1e
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@23
    move-result-wide v5

    #@24
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    #@2b
    move-result v13

    #@2c
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    #@33
    move-result v14

    #@34
    .line 3097
    move-object/from16 v0, p3

    #@36
    iget v0, v0, Landroid/renderscript/Float2;->x:F

    #@38
    move/from16 v16, v0

    #@3a
    move-object/from16 v0, p3

    #@3c
    iget v0, v0, Landroid/renderscript/Float2;->y:F

    #@3e
    move/from16 v17, v0

    #@40
    move-object/from16 v0, p0

    #@42
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@44
    move-object/from16 v0, p4

    #@46
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@49
    move-result-wide v18

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4e
    move-object/from16 v0, p5

    #@50
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@53
    move-result-wide v20

    #@54
    move-object/from16 v0, p6

    #@56
    iget v0, v0, Landroid/renderscript/Float2;->x:F

    #@58
    move/from16 v22, v0

    #@5a
    move-object/from16 v0, p6

    #@5c
    iget v0, v0, Landroid/renderscript/Float2;->y:F

    #@5e
    move/from16 v23, v0

    #@60
    move-object/from16 v0, p0

    #@62
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@64
    move-object/from16 v0, p7

    #@66
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@69
    move-result-wide v24

    #@6a
    .line 3096
    const/16 v7, 0x89

    #@6c
    const/4 v8, 0x0

    #@6d
    const/4 v9, 0x0

    #@6e
    const/4 v12, 0x0

    #@6f
    const/4 v15, 0x0

    #@70
    .line 3097
    const/16 v26, 0x0

    #@72
    const/16 v27, 0x0

    #@74
    const/16 v28, 0x0

    #@76
    const/16 v29, 0x0

    #@78
    move/from16 v10, p1

    #@7a
    move/from16 v11, p2

    #@7c
    .line 3096
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@7f
    .line 3093
    return-void
.end method

.method public CHEMV(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    #@0
    .prologue
    .line 1841
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p4

    #@c
    move/from16 v5, p5

    #@e
    move-object/from16 v6, p7

    #@10
    move/from16 v7, p8

    #@12
    move-object/from16 v8, p3

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@17
    move-result v12

    #@18
    .line 1842
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    move-object/from16 v0, p2

    #@28
    iget v14, v0, Landroid/renderscript/Float2;->x:F

    #@2a
    move-object/from16 v0, p2

    #@2c
    iget v15, v0, Landroid/renderscript/Float2;->y:F

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@32
    move-object/from16 v0, p3

    #@34
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v16

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3c
    move-object/from16 v0, p4

    #@3e
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@41
    move-result-wide v18

    #@42
    move-object/from16 v0, p6

    #@44
    iget v0, v0, Landroid/renderscript/Float2;->x:F

    #@46
    move/from16 v20, v0

    #@48
    move-object/from16 v0, p6

    #@4a
    iget v0, v0, Landroid/renderscript/Float2;->y:F

    #@4c
    move/from16 v21, v0

    #@4e
    move-object/from16 v0, p0

    #@50
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@52
    move-object/from16 v0, p7

    #@54
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@57
    move-result-wide v22

    #@58
    const/16 v5, 0x5f

    #@5a
    const/4 v6, 0x0

    #@5b
    const/4 v7, 0x0

    #@5c
    const/4 v8, 0x0

    #@5d
    const/4 v10, 0x0

    #@5e
    const/4 v11, 0x0

    #@5f
    const/4 v13, 0x0

    #@60
    const/16 v26, 0x0

    #@62
    const/16 v27, 0x0

    #@64
    move/from16 v9, p1

    #@66
    move/from16 v24, p5

    #@68
    move/from16 v25, p8

    #@6a
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@6d
    .line 1839
    return-void
.end method

.method public CHER(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 1961
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v4

    #@8
    move/from16 v0, p1

    #@a
    move-object/from16 v1, p3

    #@c
    move/from16 v2, p4

    #@e
    move-object/from16 v3, p5

    #@10
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@13
    move-result v14

    #@14
    .line 1962
    .local v14, "N":I
    move-object/from16 v0, p0

    #@16
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@18
    move-object/from16 v0, p0

    #@1a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@21
    move-result-wide v5

    #@22
    const/16 v17, 0x0

    #@24
    move-object/from16 v0, p0

    #@26
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@28
    move-object/from16 v0, p3

    #@2a
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2d
    move-result-wide v18

    #@2e
    const-wide/16 v20, 0x0

    #@30
    const/16 v22, 0x0

    #@32
    const/16 v23, 0x0

    #@34
    move-object/from16 v0, p0

    #@36
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@38
    move-object/from16 v0, p5

    #@3a
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3d
    move-result-wide v24

    #@3e
    const/16 v7, 0x64

    #@40
    const/4 v8, 0x0

    #@41
    const/4 v9, 0x0

    #@42
    const/4 v10, 0x0

    #@43
    const/4 v12, 0x0

    #@44
    const/4 v13, 0x0

    #@45
    const/4 v15, 0x0

    #@46
    const/16 v27, 0x0

    #@48
    const/16 v28, 0x0

    #@4a
    const/16 v29, 0x0

    #@4c
    move/from16 v11, p1

    #@4e
    move/from16 v16, p2

    #@50
    move/from16 v26, p4

    #@52
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@55
    .line 1959
    return-void
.end method

.method public CHER2(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2007
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p3

    #@c
    move/from16 v5, p4

    #@e
    move-object/from16 v6, p5

    #@10
    move/from16 v7, p6

    #@12
    move-object/from16 v8, p7

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@17
    move-result v12

    #@18
    .line 2008
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    move-object/from16 v0, p2

    #@28
    iget v14, v0, Landroid/renderscript/Float2;->x:F

    #@2a
    move-object/from16 v0, p2

    #@2c
    iget v15, v0, Landroid/renderscript/Float2;->y:F

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@32
    move-object/from16 v0, p3

    #@34
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v16

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3c
    move-object/from16 v0, p5

    #@3e
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@41
    move-result-wide v18

    #@42
    const/16 v20, 0x0

    #@44
    const/16 v21, 0x0

    #@46
    move-object/from16 v0, p0

    #@48
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4a
    move-object/from16 v0, p7

    #@4c
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4f
    move-result-wide v22

    #@50
    const/16 v5, 0x66

    #@52
    const/4 v6, 0x0

    #@53
    const/4 v7, 0x0

    #@54
    const/4 v8, 0x0

    #@55
    const/4 v10, 0x0

    #@56
    const/4 v11, 0x0

    #@57
    const/4 v13, 0x0

    #@58
    const/16 v26, 0x0

    #@5a
    const/16 v27, 0x0

    #@5c
    move/from16 v9, p1

    #@5e
    move/from16 v24, p4

    #@60
    move/from16 v25, p6

    #@62
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@65
    .line 2005
    return-void
.end method

.method public CHER2K(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 3234
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 3235
    move-object/from16 v0, p0

    #@5
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@a
    move-result-object v4

    #@b
    move/from16 v0, p2

    #@d
    move-object/from16 v1, p4

    #@f
    move-object/from16 v2, p5

    #@11
    move-object/from16 v3, p7

    #@13
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHER2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@16
    .line 3236
    const/4 v15, 0x0

    #@17
    .line 3237
    .local v15, "k":I
    const/16 v4, 0x6f

    #@19
    move/from16 v0, p2

    #@1b
    if-ne v0, v4, :cond_0

    #@1d
    .line 3238
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@24
    move-result v15

    #@25
    .line 3242
    :goto_0
    move-object/from16 v0, p0

    #@27
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@32
    move-result-wide v5

    #@33
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    #@3a
    move-result v14

    #@3b
    move-object/from16 v0, p3

    #@3d
    iget v0, v0, Landroid/renderscript/Float2;->x:F

    #@3f
    move/from16 v16, v0

    #@41
    move-object/from16 v0, p3

    #@43
    iget v0, v0, Landroid/renderscript/Float2;->y:F

    #@45
    move/from16 v17, v0

    #@47
    .line 3243
    move-object/from16 v0, p0

    #@49
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4b
    move-object/from16 v0, p4

    #@4d
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@50
    move-result-wide v18

    #@51
    move-object/from16 v0, p0

    #@53
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@55
    move-object/from16 v0, p5

    #@57
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5a
    move-result-wide v20

    #@5b
    const/16 v23, 0x0

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@61
    move-object/from16 v0, p7

    #@63
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@66
    move-result-wide v24

    #@67
    .line 3242
    const/16 v7, 0x8b

    #@69
    const/4 v9, 0x0

    #@6a
    const/4 v10, 0x0

    #@6b
    const/4 v12, 0x0

    #@6c
    const/4 v13, 0x0

    #@6d
    .line 3243
    const/16 v26, 0x0

    #@6f
    const/16 v27, 0x0

    #@71
    const/16 v28, 0x0

    #@73
    const/16 v29, 0x0

    #@75
    move/from16 v8, p2

    #@77
    move/from16 v11, p1

    #@79
    move/from16 v22, p6

    #@7b
    .line 3242
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@7e
    .line 3233
    return-void

    #@7f
    .line 3240
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@86
    move-result v15

    #@87
    goto :goto_0
.end method

.method public CHERK(IIFLandroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # F
    .param p6, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 3156
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 3157
    move-object/from16 v0, p0

    #@5
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@a
    move-result-object v4

    #@b
    move/from16 v0, p2

    #@d
    move-object/from16 v1, p4

    #@f
    move-object/from16 v2, p6

    #@11
    invoke-static {v4, v0, v1, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHERK(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@14
    .line 3158
    const/4 v15, 0x0

    #@15
    .line 3159
    .local v15, "k":I
    const/16 v4, 0x71

    #@17
    move/from16 v0, p2

    #@19
    if-ne v0, v4, :cond_0

    #@1b
    .line 3160
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@22
    move-result v15

    #@23
    .line 3164
    :goto_0
    move-object/from16 v0, p0

    #@25
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2b
    move-object/from16 v0, p0

    #@2d
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@30
    move-result-wide v5

    #@31
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    #@38
    move-result v14

    #@39
    .line 3165
    const/16 v17, 0x0

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3f
    move-object/from16 v0, p4

    #@41
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@44
    move-result-wide v18

    #@45
    const-wide/16 v20, 0x0

    #@47
    const/16 v23, 0x0

    #@49
    move-object/from16 v0, p0

    #@4b
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4d
    move-object/from16 v0, p6

    #@4f
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@52
    move-result-wide v24

    #@53
    .line 3164
    const/16 v7, 0x8a

    #@55
    const/4 v9, 0x0

    #@56
    const/4 v10, 0x0

    #@57
    const/4 v12, 0x0

    #@58
    const/4 v13, 0x0

    #@59
    .line 3165
    const/16 v26, 0x0

    #@5b
    const/16 v27, 0x0

    #@5d
    const/16 v28, 0x0

    #@5f
    const/16 v29, 0x0

    #@61
    move/from16 v8, p2

    #@63
    move/from16 v11, p1

    #@65
    move/from16 v16, p3

    #@67
    move/from16 v22, p5

    #@69
    .line 3164
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@6c
    .line 3155
    return-void

    #@6d
    .line 3162
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@74
    move-result v15

    #@75
    goto :goto_0
.end method

.method public CHPMV(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "Ap"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    #@0
    .prologue
    .line 1902
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p4

    #@c
    move/from16 v5, p5

    #@e
    move-object/from16 v6, p7

    #@10
    move/from16 v7, p8

    #@12
    move-object/from16 v8, p3

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@17
    move-result v12

    #@18
    .line 1903
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    move-object/from16 v0, p2

    #@28
    iget v14, v0, Landroid/renderscript/Float2;->x:F

    #@2a
    move-object/from16 v0, p2

    #@2c
    iget v15, v0, Landroid/renderscript/Float2;->y:F

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@32
    move-object/from16 v0, p3

    #@34
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v16

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3c
    move-object/from16 v0, p4

    #@3e
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@41
    move-result-wide v18

    #@42
    move-object/from16 v0, p6

    #@44
    iget v0, v0, Landroid/renderscript/Float2;->x:F

    #@46
    move/from16 v20, v0

    #@48
    move-object/from16 v0, p6

    #@4a
    iget v0, v0, Landroid/renderscript/Float2;->y:F

    #@4c
    move/from16 v21, v0

    #@4e
    move-object/from16 v0, p0

    #@50
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@52
    move-object/from16 v0, p7

    #@54
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@57
    move-result-wide v22

    #@58
    const/16 v5, 0x61

    #@5a
    const/4 v6, 0x0

    #@5b
    const/4 v7, 0x0

    #@5c
    const/4 v8, 0x0

    #@5d
    const/4 v10, 0x0

    #@5e
    const/4 v11, 0x0

    #@5f
    const/4 v13, 0x0

    #@60
    const/16 v26, 0x0

    #@62
    const/16 v27, 0x0

    #@64
    move/from16 v9, p1

    #@66
    move/from16 v24, p5

    #@68
    move/from16 v25, p8

    #@6a
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@6d
    .line 1900
    return-void
.end method

.method public CHPR(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Ap"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 1987
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v4

    #@8
    move/from16 v0, p1

    #@a
    move-object/from16 v1, p3

    #@c
    move/from16 v2, p4

    #@e
    move-object/from16 v3, p5

    #@10
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@13
    move-result v14

    #@14
    .line 1988
    .local v14, "N":I
    move-object/from16 v0, p0

    #@16
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@18
    move-object/from16 v0, p0

    #@1a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@21
    move-result-wide v5

    #@22
    const/16 v17, 0x0

    #@24
    move-object/from16 v0, p0

    #@26
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@28
    move-object/from16 v0, p3

    #@2a
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2d
    move-result-wide v18

    #@2e
    const-wide/16 v20, 0x0

    #@30
    const/16 v22, 0x0

    #@32
    const/16 v23, 0x0

    #@34
    move-object/from16 v0, p0

    #@36
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@38
    move-object/from16 v0, p5

    #@3a
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3d
    move-result-wide v24

    #@3e
    const/16 v7, 0x65

    #@40
    const/4 v8, 0x0

    #@41
    const/4 v9, 0x0

    #@42
    const/4 v10, 0x0

    #@43
    const/4 v12, 0x0

    #@44
    const/4 v13, 0x0

    #@45
    const/4 v15, 0x0

    #@46
    const/16 v27, 0x0

    #@48
    const/16 v28, 0x0

    #@4a
    const/16 v29, 0x0

    #@4c
    move/from16 v11, p1

    #@4e
    move/from16 v16, p2

    #@50
    move/from16 v26, p4

    #@52
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@55
    .line 1985
    return-void
.end method

.method public CHPR2(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "Ap"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2035
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p3

    #@c
    move/from16 v5, p4

    #@e
    move-object/from16 v6, p5

    #@10
    move/from16 v7, p6

    #@12
    move-object/from16 v8, p7

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@17
    move-result v12

    #@18
    .line 2036
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    move-object/from16 v0, p2

    #@28
    iget v14, v0, Landroid/renderscript/Float2;->x:F

    #@2a
    move-object/from16 v0, p2

    #@2c
    iget v15, v0, Landroid/renderscript/Float2;->y:F

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@32
    move-object/from16 v0, p3

    #@34
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v16

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3c
    move-object/from16 v0, p5

    #@3e
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@41
    move-result-wide v18

    #@42
    const/16 v20, 0x0

    #@44
    const/16 v21, 0x0

    #@46
    move-object/from16 v0, p0

    #@48
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4a
    move-object/from16 v0, p7

    #@4c
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4f
    move-result-wide v22

    #@50
    const/16 v5, 0x67

    #@52
    const/4 v6, 0x0

    #@53
    const/4 v7, 0x0

    #@54
    const/4 v8, 0x0

    #@55
    const/4 v10, 0x0

    #@56
    const/4 v11, 0x0

    #@57
    const/4 v13, 0x0

    #@58
    const/16 v26, 0x0

    #@5a
    const/16 v27, 0x0

    #@5c
    move/from16 v9, p1

    #@5e
    move/from16 v24, p4

    #@60
    move/from16 v25, p6

    #@62
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@65
    .line 2033
    return-void
.end method

.method public CSYMM(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2540
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    #@3
    .line 2541
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@6
    .line 2542
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@d
    move-result v2

    #@e
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@15
    move-result v3

    #@16
    if-eq v2, v3, :cond_0

    #@18
    .line 2543
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@1a
    const-string/jumbo v3, "Matrix A is not symmetric"

    #@1d
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 2545
    :cond_0
    move-object/from16 v0, p0

    #@23
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@25
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@28
    move-result-object v2

    #@29
    const/4 v3, 0x0

    #@2a
    const/4 v4, 0x0

    #@2b
    move/from16 v5, p1

    #@2d
    move-object/from16 v6, p4

    #@2f
    move-object/from16 v7, p5

    #@31
    move-object/from16 v8, p7

    #@33
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@36
    .line 2546
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v3

    #@44
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    #@4b
    move-result v11

    #@4c
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    #@53
    move-result v12

    #@54
    move-object/from16 v0, p3

    #@56
    iget v14, v0, Landroid/renderscript/Float2;->x:F

    #@58
    move-object/from16 v0, p3

    #@5a
    iget v15, v0, Landroid/renderscript/Float2;->y:F

    #@5c
    move-object/from16 v0, p0

    #@5e
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@60
    move-object/from16 v0, p4

    #@62
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@65
    move-result-wide v16

    #@66
    move-object/from16 v0, p0

    #@68
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@6a
    move-object/from16 v0, p5

    #@6c
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@6f
    move-result-wide v18

    #@70
    .line 2547
    move-object/from16 v0, p6

    #@72
    iget v0, v0, Landroid/renderscript/Float2;->x:F

    #@74
    move/from16 v20, v0

    #@76
    move-object/from16 v0, p6

    #@78
    iget v0, v0, Landroid/renderscript/Float2;->y:F

    #@7a
    move/from16 v21, v0

    #@7c
    move-object/from16 v0, p0

    #@7e
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@80
    move-object/from16 v0, p7

    #@82
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@85
    move-result-wide v22

    #@86
    .line 2546
    const/16 v5, 0x7e

    #@88
    const/4 v6, 0x0

    #@89
    const/4 v7, 0x0

    #@8a
    const/4 v10, 0x0

    #@8b
    const/4 v13, 0x0

    #@8c
    .line 2547
    const/16 v24, 0x0

    #@8e
    const/16 v25, 0x0

    #@90
    const/16 v26, 0x0

    #@92
    const/16 v27, 0x0

    #@94
    move/from16 v8, p1

    #@96
    move/from16 v9, p2

    #@98
    .line 2546
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@9b
    .line 2539
    return-void
.end method

.method public CSYR2K(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2776
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 2777
    move-object/from16 v0, p0

    #@5
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@a
    move-result-object v4

    #@b
    move/from16 v0, p2

    #@d
    move-object/from16 v1, p4

    #@f
    move-object/from16 v2, p5

    #@11
    move-object/from16 v3, p7

    #@13
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@16
    .line 2778
    const/4 v15, -0x1

    #@17
    .line 2779
    .local v15, "K":I
    const/16 v4, 0x6f

    #@19
    move/from16 v0, p2

    #@1b
    if-eq v0, v4, :cond_0

    #@1d
    .line 2780
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@24
    move-result v15

    #@25
    .line 2784
    :goto_0
    move-object/from16 v0, p0

    #@27
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@32
    move-result-wide v5

    #@33
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    #@3a
    move-result v14

    #@3b
    move-object/from16 v0, p3

    #@3d
    iget v0, v0, Landroid/renderscript/Float2;->x:F

    #@3f
    move/from16 v16, v0

    #@41
    move-object/from16 v0, p3

    #@43
    iget v0, v0, Landroid/renderscript/Float2;->y:F

    #@45
    move/from16 v17, v0

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4b
    move-object/from16 v0, p4

    #@4d
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@50
    move-result-wide v18

    #@51
    move-object/from16 v0, p0

    #@53
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@55
    move-object/from16 v0, p5

    #@57
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5a
    move-result-wide v20

    #@5b
    move-object/from16 v0, p6

    #@5d
    iget v0, v0, Landroid/renderscript/Float2;->x:F

    #@5f
    move/from16 v22, v0

    #@61
    move-object/from16 v0, p6

    #@63
    iget v0, v0, Landroid/renderscript/Float2;->y:F

    #@65
    move/from16 v23, v0

    #@67
    move-object/from16 v0, p0

    #@69
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@6b
    move-object/from16 v0, p7

    #@6d
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@70
    move-result-wide v24

    #@71
    const/16 v7, 0x80

    #@73
    const/4 v9, 0x0

    #@74
    const/4 v10, 0x0

    #@75
    const/4 v12, 0x0

    #@76
    const/4 v13, 0x0

    #@77
    const/16 v26, 0x0

    #@79
    const/16 v27, 0x0

    #@7b
    const/16 v28, 0x0

    #@7d
    const/16 v29, 0x0

    #@7f
    move/from16 v8, p2

    #@81
    move/from16 v11, p1

    #@83
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@86
    .line 2775
    return-void

    #@87
    .line 2782
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@8e
    move-result v15

    #@8f
    goto :goto_0
.end method

.method public CSYRK(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # Landroid/renderscript/Float2;
    .param p6, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2643
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@3
    .line 2644
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@6
    .line 2645
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v2

    #@e
    const/4 v4, 0x0

    #@f
    const/4 v5, 0x0

    #@10
    const/4 v7, 0x0

    #@11
    move/from16 v3, p2

    #@13
    move-object/from16 v6, p4

    #@15
    move-object/from16 v8, p6

    #@17
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@1a
    .line 2646
    const/4 v13, -0x1

    #@1b
    .line 2647
    .local v13, "K":I
    const/16 v2, 0x6f

    #@1d
    move/from16 v0, p2

    #@1f
    if-eq v0, v2, :cond_0

    #@21
    .line 2648
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@28
    move-result v13

    #@29
    .line 2652
    :goto_0
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    move-object/from16 v0, p0

    #@2f
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@31
    move-object/from16 v0, p0

    #@33
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@36
    move-result-wide v3

    #@37
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    #@3e
    move-result v12

    #@3f
    move-object/from16 v0, p3

    #@41
    iget v14, v0, Landroid/renderscript/Float2;->x:F

    #@43
    move-object/from16 v0, p3

    #@45
    iget v15, v0, Landroid/renderscript/Float2;->y:F

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4b
    move-object/from16 v0, p4

    #@4d
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@50
    move-result-wide v16

    #@51
    const-wide/16 v18, 0x0

    #@53
    move-object/from16 v0, p5

    #@55
    iget v0, v0, Landroid/renderscript/Float2;->x:F

    #@57
    move/from16 v20, v0

    #@59
    move-object/from16 v0, p5

    #@5b
    iget v0, v0, Landroid/renderscript/Float2;->y:F

    #@5d
    move/from16 v21, v0

    #@5f
    .line 2653
    move-object/from16 v0, p0

    #@61
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@63
    move-object/from16 v0, p6

    #@65
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@68
    move-result-wide v22

    #@69
    .line 2652
    const/16 v5, 0x7f

    #@6b
    const/4 v7, 0x0

    #@6c
    const/4 v8, 0x0

    #@6d
    const/4 v10, 0x0

    #@6e
    const/4 v11, 0x0

    #@6f
    .line 2653
    const/16 v24, 0x0

    #@71
    const/16 v25, 0x0

    #@73
    const/16 v26, 0x0

    #@75
    const/16 v27, 0x0

    #@77
    move/from16 v6, p2

    #@79
    move/from16 v9, p1

    #@7b
    .line 2652
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@7e
    .line 2642
    return-void

    #@7f
    .line 2650
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@86
    move-result v13

    #@87
    goto :goto_0
.end method

.method public CTBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    #@0
    .prologue
    .line 751
    if-gez p4, :cond_0

    #@2
    .line 752
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@4
    const-string/jumbo v3, "K must be greater than or equal to 0"

    #@7
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 754
    :cond_0
    move-object/from16 v0, p0

    #@d
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@f
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@12
    move-result-object v2

    #@13
    move/from16 v3, p1

    #@15
    move/from16 v4, p2

    #@17
    move/from16 v5, p3

    #@19
    move-object/from16 v6, p5

    #@1b
    move-object/from16 v7, p6

    #@1d
    move/from16 v8, p7

    #@1f
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@22
    .line 755
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@29
    move-result v12

    #@2a
    .line 756
    .local v12, "N":I
    move-object/from16 v0, p0

    #@2c
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@32
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v3

    #@38
    const/4 v14, 0x0

    #@39
    const/4 v15, 0x0

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p5

    #@40
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v16

    #@44
    move-object/from16 v0, p0

    #@46
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@48
    move-object/from16 v0, p6

    #@4a
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4d
    move-result-wide v18

    #@4e
    const/16 v20, 0x0

    #@50
    const/16 v21, 0x0

    #@52
    const-wide/16 v22, 0x0

    #@54
    const/16 v5, 0x42

    #@56
    const/4 v7, 0x0

    #@57
    const/4 v8, 0x0

    #@58
    const/4 v11, 0x0

    #@59
    const/16 v25, 0x0

    #@5b
    const/16 v26, 0x0

    #@5d
    const/16 v27, 0x0

    #@5f
    move/from16 v6, p2

    #@61
    move/from16 v9, p1

    #@63
    move/from16 v10, p3

    #@65
    move/from16 v13, p4

    #@67
    move/from16 v24, p7

    #@69
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@6c
    .line 749
    return-void
.end method

.method public CTBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    #@0
    .prologue
    .line 1063
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p5

    #@10
    move-object/from16 v7, p6

    #@12
    move/from16 v8, p7

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@17
    .line 1064
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v12

    #@1f
    .line 1065
    .local v12, "N":I
    if-gez p4, :cond_0

    #@21
    .line 1066
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@23
    const-string/jumbo v3, "Number of diagonals must be positive"

    #@26
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 1068
    :cond_0
    move-object/from16 v0, p0

    #@2c
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@32
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v3

    #@38
    const/4 v14, 0x0

    #@39
    const/4 v15, 0x0

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p5

    #@40
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v16

    #@44
    move-object/from16 v0, p0

    #@46
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@48
    move-object/from16 v0, p6

    #@4a
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4d
    move-result-wide v18

    #@4e
    const/16 v20, 0x0

    #@50
    const/16 v21, 0x0

    #@52
    const-wide/16 v22, 0x0

    #@54
    const/16 v5, 0x45

    #@56
    const/4 v7, 0x0

    #@57
    const/4 v8, 0x0

    #@58
    const/4 v11, 0x0

    #@59
    const/16 v25, 0x0

    #@5b
    const/16 v26, 0x0

    #@5d
    const/16 v27, 0x0

    #@5f
    move/from16 v6, p2

    #@61
    move/from16 v9, p1

    #@63
    move/from16 v10, p3

    #@65
    move/from16 v13, p4

    #@67
    move/from16 v24, p7

    #@69
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@6c
    .line 1061
    return-void
.end method

.method public CTPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 864
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    #@17
    move-result v12

    #@18
    .line 865
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    const/4 v14, 0x0

    #@27
    const/4 v15, 0x0

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2c
    move-object/from16 v0, p4

    #@2e
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@31
    move-result-wide v16

    #@32
    move-object/from16 v0, p0

    #@34
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@36
    move-object/from16 v0, p5

    #@38
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3b
    move-result-wide v18

    #@3c
    const/16 v20, 0x0

    #@3e
    const/16 v21, 0x0

    #@40
    const-wide/16 v22, 0x0

    #@42
    const/16 v5, 0x43

    #@44
    const/4 v7, 0x0

    #@45
    const/4 v8, 0x0

    #@46
    const/4 v11, 0x0

    #@47
    const/4 v13, 0x0

    #@48
    const/16 v25, 0x0

    #@4a
    const/16 v26, 0x0

    #@4c
    const/16 v27, 0x0

    #@4e
    move/from16 v6, p2

    #@50
    move/from16 v9, p1

    #@52
    move/from16 v10, p3

    #@54
    move/from16 v24, p6

    #@56
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@59
    .line 863
    return-void
.end method

.method public CTPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 1179
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    #@17
    move-result v12

    #@18
    .line 1180
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    const/4 v14, 0x0

    #@27
    const/4 v15, 0x0

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2c
    move-object/from16 v0, p4

    #@2e
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@31
    move-result-wide v16

    #@32
    move-object/from16 v0, p0

    #@34
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@36
    move-object/from16 v0, p5

    #@38
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3b
    move-result-wide v18

    #@3c
    const/16 v20, 0x0

    #@3e
    const/16 v21, 0x0

    #@40
    const-wide/16 v22, 0x0

    #@42
    const/16 v5, 0x46

    #@44
    const/4 v7, 0x0

    #@45
    const/4 v8, 0x0

    #@46
    const/4 v11, 0x0

    #@47
    const/4 v13, 0x0

    #@48
    const/16 v25, 0x0

    #@4a
    const/16 v26, 0x0

    #@4c
    const/16 v27, 0x0

    #@4e
    move/from16 v6, p2

    #@50
    move/from16 v9, p1

    #@52
    move/from16 v10, p3

    #@54
    move/from16 v24, p6

    #@56
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@59
    .line 1177
    return-void
.end method

.method public CTRMM(IIIILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Float2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2903
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 2904
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    #@6
    .line 2905
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v4

    #@e
    move/from16 v0, p1

    #@10
    move/from16 v1, p3

    #@12
    move-object/from16 v2, p6

    #@14
    move-object/from16 v3, p7

    #@16
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@19
    .line 2906
    move-object/from16 v0, p0

    #@1b
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@26
    move-result-wide v5

    #@27
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    #@2e
    move-result v13

    #@2f
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    #@36
    move-result v14

    #@37
    .line 2907
    move-object/from16 v0, p5

    #@39
    iget v0, v0, Landroid/renderscript/Float2;->x:F

    #@3b
    move/from16 v16, v0

    #@3d
    move-object/from16 v0, p5

    #@3f
    iget v0, v0, Landroid/renderscript/Float2;->y:F

    #@41
    move/from16 v17, v0

    #@43
    move-object/from16 v0, p0

    #@45
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@47
    move-object/from16 v0, p6

    #@49
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4c
    move-result-wide v18

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@51
    move-object/from16 v0, p7

    #@53
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@56
    move-result-wide v20

    #@57
    const/16 v22, 0x0

    #@59
    const/16 v23, 0x0

    #@5b
    const-wide/16 v24, 0x0

    #@5d
    .line 2906
    const/16 v7, 0x81

    #@5f
    const/4 v9, 0x0

    #@60
    const/4 v15, 0x0

    #@61
    .line 2907
    const/16 v26, 0x0

    #@63
    const/16 v27, 0x0

    #@65
    const/16 v28, 0x0

    #@67
    const/16 v29, 0x0

    #@69
    move/from16 v8, p3

    #@6b
    move/from16 v10, p1

    #@6d
    move/from16 v11, p2

    #@6f
    move/from16 v12, p4

    #@71
    .line 2906
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@74
    .line 2902
    return-void
.end method

.method public CTRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 642
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@17
    .line 643
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v12

    #@1f
    .line 644
    .local v12, "N":I
    move-object/from16 v0, p0

    #@21
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@27
    move-object/from16 v0, p0

    #@29
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@2c
    move-result-wide v3

    #@2d
    const/4 v14, 0x0

    #@2e
    const/4 v15, 0x0

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@33
    move-object/from16 v0, p4

    #@35
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@38
    move-result-wide v16

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3d
    move-object/from16 v0, p5

    #@3f
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@42
    move-result-wide v18

    #@43
    const/16 v20, 0x0

    #@45
    const/16 v21, 0x0

    #@47
    const-wide/16 v22, 0x0

    #@49
    const/16 v5, 0x41

    #@4b
    const/4 v7, 0x0

    #@4c
    const/4 v8, 0x0

    #@4d
    const/4 v11, 0x0

    #@4e
    const/4 v13, 0x0

    #@4f
    const/16 v25, 0x0

    #@51
    const/16 v26, 0x0

    #@53
    const/16 v27, 0x0

    #@55
    move/from16 v6, p2

    #@57
    move/from16 v9, p1

    #@59
    move/from16 v10, p3

    #@5b
    move/from16 v24, p6

    #@5d
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@60
    .line 641
    return-void
.end method

.method public CTRSM(IIIILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Float2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 3025
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 3026
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    #@6
    .line 3027
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v4

    #@e
    move/from16 v0, p1

    #@10
    move/from16 v1, p3

    #@12
    move-object/from16 v2, p6

    #@14
    move-object/from16 v3, p7

    #@16
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@19
    .line 3028
    move-object/from16 v0, p0

    #@1b
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@26
    move-result-wide v5

    #@27
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    #@2e
    move-result v13

    #@2f
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    #@36
    move-result v14

    #@37
    .line 3029
    move-object/from16 v0, p5

    #@39
    iget v0, v0, Landroid/renderscript/Float2;->x:F

    #@3b
    move/from16 v16, v0

    #@3d
    move-object/from16 v0, p5

    #@3f
    iget v0, v0, Landroid/renderscript/Float2;->y:F

    #@41
    move/from16 v17, v0

    #@43
    move-object/from16 v0, p0

    #@45
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@47
    move-object/from16 v0, p6

    #@49
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4c
    move-result-wide v18

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@51
    move-object/from16 v0, p7

    #@53
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@56
    move-result-wide v20

    #@57
    const/16 v22, 0x0

    #@59
    const/16 v23, 0x0

    #@5b
    const-wide/16 v24, 0x0

    #@5d
    .line 3028
    const/16 v7, 0x82

    #@5f
    const/4 v9, 0x0

    #@60
    const/4 v15, 0x0

    #@61
    .line 3029
    const/16 v26, 0x0

    #@63
    const/16 v27, 0x0

    #@65
    const/16 v28, 0x0

    #@67
    const/16 v29, 0x0

    #@69
    move/from16 v8, p3

    #@6b
    move/from16 v10, p1

    #@6d
    move/from16 v11, p2

    #@6f
    move/from16 v12, p4

    #@71
    .line 3028
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@74
    .line 3024
    return-void
.end method

.method public CTRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 951
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@17
    .line 952
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v12

    #@1f
    .line 953
    .local v12, "N":I
    move-object/from16 v0, p0

    #@21
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@27
    move-object/from16 v0, p0

    #@29
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@2c
    move-result-wide v3

    #@2d
    const/4 v14, 0x0

    #@2e
    const/4 v15, 0x0

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@33
    move-object/from16 v0, p4

    #@35
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@38
    move-result-wide v16

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3d
    move-object/from16 v0, p5

    #@3f
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@42
    move-result-wide v18

    #@43
    const/16 v20, 0x0

    #@45
    const/16 v21, 0x0

    #@47
    const-wide/16 v22, 0x0

    #@49
    const/16 v5, 0x44

    #@4b
    const/4 v7, 0x0

    #@4c
    const/4 v8, 0x0

    #@4d
    const/4 v11, 0x0

    #@4e
    const/4 v13, 0x0

    #@4f
    const/16 v25, 0x0

    #@51
    const/16 v26, 0x0

    #@53
    const/16 v27, 0x0

    #@55
    move/from16 v6, p2

    #@57
    move/from16 v9, p1

    #@59
    move/from16 v10, p3

    #@5b
    move/from16 v24, p6

    #@5d
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    #@60
    .line 949
    return-void
.end method

.method public DGBMV(IIIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # D
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "X"    # Landroid/renderscript/Allocation;
    .param p8, "incX"    # I
    .param p9, "beta"    # D
    .param p11, "Y"    # Landroid/renderscript/Allocation;
    .param p12, "incY"    # I

    #@0
    .prologue
    .line 454
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p6

    #@c
    move-object/from16 v5, p7

    #@e
    move/from16 v6, p8

    #@10
    move-object/from16 v7, p11

    #@12
    move/from16 v8, p12

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    #@17
    .line 455
    if-ltz p2, :cond_0

    #@19
    if-gez p3, :cond_1

    #@1b
    .line 456
    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@1d
    const-string/jumbo v3, "KL and KU must be greater than or equal to 0"

    #@20
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 458
    :cond_1
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@2b
    move-result v11

    #@2c
    .line 459
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@33
    move-result v12

    #@34
    .line 460
    .local v12, "N":I
    move-object/from16 v0, p0

    #@36
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3c
    move-object/from16 v0, p0

    #@3e
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@41
    move-result-wide v3

    #@42
    move-object/from16 v0, p0

    #@44
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@46
    move-object/from16 v0, p6

    #@48
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4b
    move-result-wide v16

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@50
    move-object/from16 v0, p7

    #@52
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@55
    move-result-wide v18

    #@56
    move-object/from16 v0, p0

    #@58
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@5a
    move-object/from16 v0, p11

    #@5c
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5f
    move-result-wide v22

    #@60
    const/16 v5, 0x38

    #@62
    const/4 v7, 0x0

    #@63
    const/4 v8, 0x0

    #@64
    const/4 v9, 0x0

    #@65
    const/4 v10, 0x0

    #@66
    const/4 v13, 0x0

    #@67
    move/from16 v6, p1

    #@69
    move-wide/from16 v14, p4

    #@6b
    move-wide/from16 v20, p9

    #@6d
    move/from16 v24, p8

    #@6f
    move/from16 v25, p12

    #@71
    move/from16 v26, p2

    #@73
    move/from16 v27, p3

    #@75
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@78
    .line 452
    return-void
.end method

.method public DGEMM(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "B"    # Landroid/renderscript/Allocation;
    .param p7, "beta"    # D
    .param p9, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2379
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@3
    .line 2380
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@6
    .line 2381
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v2

    #@e
    const/4 v5, 0x0

    #@f
    move/from16 v3, p1

    #@11
    move/from16 v4, p2

    #@13
    move-object/from16 v6, p5

    #@15
    move-object/from16 v7, p6

    #@17
    move-object/from16 v8, p9

    #@19
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@1c
    .line 2382
    const/4 v11, -0x1

    #@1d
    .local v11, "M":I
    const/4 v12, -0x1

    #@1e
    .local v12, "N":I
    const/4 v13, -0x1

    #@1f
    .line 2383
    .local v13, "K":I
    const/16 v2, 0x6f

    #@21
    move/from16 v0, p1

    #@23
    if-eq v0, v2, :cond_0

    #@25
    .line 2384
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@2c
    move-result v11

    #@2d
    .line 2385
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@34
    move-result v13

    #@35
    .line 2390
    :goto_0
    const/16 v2, 0x6f

    #@37
    move/from16 v0, p2

    #@39
    if-eq v0, v2, :cond_1

    #@3b
    .line 2391
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@42
    move-result v12

    #@43
    .line 2395
    :goto_1
    move-object/from16 v0, p0

    #@45
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4b
    move-object/from16 v0, p0

    #@4d
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@50
    move-result-wide v3

    #@51
    move-object/from16 v0, p0

    #@53
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@55
    move-object/from16 v0, p5

    #@57
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5a
    move-result-wide v16

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@5f
    move-object/from16 v0, p6

    #@61
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@64
    move-result-wide v18

    #@65
    .line 2396
    move-object/from16 v0, p0

    #@67
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@69
    move-object/from16 v0, p9

    #@6b
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@6e
    move-result-wide v22

    #@6f
    .line 2395
    const/16 v5, 0x77

    #@71
    const/4 v8, 0x0

    #@72
    const/4 v9, 0x0

    #@73
    const/4 v10, 0x0

    #@74
    .line 2396
    const/16 v24, 0x0

    #@76
    const/16 v25, 0x0

    #@78
    const/16 v26, 0x0

    #@7a
    const/16 v27, 0x0

    #@7c
    move/from16 v6, p1

    #@7e
    move/from16 v7, p2

    #@80
    move-wide/from16 v14, p3

    #@82
    move-wide/from16 v20, p7

    #@84
    .line 2395
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@87
    .line 2378
    return-void

    #@88
    .line 2387
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@8f
    move-result v11

    #@90
    .line 2388
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@97
    move-result v13

    #@98
    goto :goto_0

    #@99
    .line 2393
    :cond_1
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@9c
    move-result-object v2

    #@9d
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@a0
    move-result v12

    #@a1
    goto :goto_1
.end method

.method public DGEMV(IDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "TransA"    # I
    .param p2, "alpha"    # D
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # D
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    #@0
    .prologue
    .line 343
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p4

    #@c
    move-object/from16 v5, p5

    #@e
    move/from16 v6, p6

    #@10
    move-object/from16 v7, p9

    #@12
    move/from16 v8, p10

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    #@17
    .line 344
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v11

    #@1f
    .line 345
    .local v11, "M":I
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@26
    move-result v12

    #@27
    .line 346
    .local v12, "N":I
    move-object/from16 v0, p0

    #@29
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2f
    move-object/from16 v0, p0

    #@31
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@34
    move-result-wide v3

    #@35
    move-object/from16 v0, p0

    #@37
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@39
    move-object/from16 v0, p4

    #@3b
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3e
    move-result-wide v16

    #@3f
    move-object/from16 v0, p0

    #@41
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@43
    move-object/from16 v0, p5

    #@45
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@48
    move-result-wide v18

    #@49
    move-object/from16 v0, p0

    #@4b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4d
    move-object/from16 v0, p9

    #@4f
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@52
    move-result-wide v22

    #@53
    const/16 v5, 0x37

    #@55
    const/4 v7, 0x0

    #@56
    const/4 v8, 0x0

    #@57
    const/4 v9, 0x0

    #@58
    const/4 v10, 0x0

    #@59
    const/4 v13, 0x0

    #@5a
    const/16 v26, 0x0

    #@5c
    const/16 v27, 0x0

    #@5e
    move/from16 v6, p1

    #@60
    move-wide/from16 v14, p2

    #@62
    move-wide/from16 v20, p7

    #@64
    move/from16 v24, p6

    #@66
    move/from16 v25, p10

    #@68
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@6b
    .line 342
    return-void
.end method

.method public DGER(DLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "alpha"    # D
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 1699
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@7
    move-result v11

    #@8
    .line 1700
    .local v11, "M":I
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@f
    move-result v12

    #@10
    .line 1701
    .local v12, "N":I
    move-object/from16 v0, p0

    #@12
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@14
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@17
    move-result-object v2

    #@18
    move-object/from16 v3, p3

    #@1a
    move/from16 v4, p4

    #@1c
    move-object/from16 v5, p5

    #@1e
    move/from16 v6, p6

    #@20
    move-object/from16 v7, p7

    #@22
    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGER(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    #@25
    .line 1702
    move-object/from16 v0, p0

    #@27
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@32
    move-result-wide v3

    #@33
    move-object/from16 v0, p0

    #@35
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@37
    move-object/from16 v0, p3

    #@39
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3c
    move-result-wide v16

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@41
    move-object/from16 v0, p5

    #@43
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@46
    move-result-wide v18

    #@47
    const-wide/16 v20, 0x0

    #@49
    move-object/from16 v0, p0

    #@4b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4d
    move-object/from16 v0, p7

    #@4f
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@52
    move-result-wide v22

    #@53
    const/16 v5, 0x5a

    #@55
    const/4 v6, 0x0

    #@56
    const/4 v7, 0x0

    #@57
    const/4 v8, 0x0

    #@58
    const/4 v9, 0x0

    #@59
    const/4 v10, 0x0

    #@5a
    const/4 v13, 0x0

    #@5b
    const/16 v26, 0x0

    #@5d
    const/16 v27, 0x0

    #@5f
    move-wide/from16 v14, p1

    #@61
    move/from16 v24, p4

    #@63
    move/from16 v25, p6

    #@65
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@68
    .line 1698
    return-void
.end method

.method public DSBMV(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # D
    .param p10, "Y"    # Landroid/renderscript/Allocation;
    .param p11, "incY"    # I

    #@0
    .prologue
    .line 1650
    if-gez p2, :cond_0

    #@2
    .line 1651
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@4
    const-string/jumbo v3, "K must be greater than or equal to 0"

    #@7
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1653
    :cond_0
    move-object/from16 v0, p0

    #@d
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@f
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@12
    move-result-object v2

    #@13
    move/from16 v3, p1

    #@15
    move-object/from16 v4, p5

    #@17
    move-object/from16 v5, p6

    #@19
    move-object/from16 v6, p10

    #@1b
    move/from16 v7, p7

    #@1d
    move/from16 v8, p11

    #@1f
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    #@22
    move-result v12

    #@23
    .line 1654
    .local v12, "N":I
    move-object/from16 v0, p0

    #@25
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2b
    move-object/from16 v0, p0

    #@2d
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@30
    move-result-wide v3

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@35
    move-object/from16 v0, p5

    #@37
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3a
    move-result-wide v16

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3f
    move-object/from16 v0, p6

    #@41
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@44
    move-result-wide v18

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@49
    move-object/from16 v0, p10

    #@4b
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4e
    move-result-wide v22

    #@4f
    const/16 v5, 0x58

    #@51
    const/4 v6, 0x0

    #@52
    const/4 v7, 0x0

    #@53
    const/4 v8, 0x0

    #@54
    const/4 v10, 0x0

    #@55
    const/4 v11, 0x0

    #@56
    const/16 v26, 0x0

    #@58
    const/16 v27, 0x0

    #@5a
    move/from16 v9, p1

    #@5c
    move/from16 v13, p2

    #@5e
    move-wide/from16 v14, p3

    #@60
    move-wide/from16 v20, p8

    #@62
    move/from16 v24, p7

    #@64
    move/from16 v25, p11

    #@66
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@69
    .line 1648
    return-void
.end method

.method public DSPMV(IDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # D
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    #@0
    .prologue
    .line 1681
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p4

    #@c
    move-object/from16 v5, p5

    #@e
    move/from16 v6, p6

    #@10
    move-object/from16 v7, p9

    #@12
    move/from16 v8, p10

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)I

    #@17
    move-result v12

    #@18
    .line 1682
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2a
    move-object/from16 v0, p4

    #@2c
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2f
    move-result-wide v16

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@34
    move-object/from16 v0, p5

    #@36
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@39
    move-result-wide v18

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p9

    #@40
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v22

    #@44
    const/16 v5, 0x59

    #@46
    const/4 v6, 0x0

    #@47
    const/4 v7, 0x0

    #@48
    const/4 v8, 0x0

    #@49
    const/4 v10, 0x0

    #@4a
    const/4 v11, 0x0

    #@4b
    const/4 v13, 0x0

    #@4c
    const/16 v26, 0x0

    #@4e
    const/16 v27, 0x0

    #@50
    move/from16 v9, p1

    #@52
    move-wide/from16 v14, p2

    #@54
    move-wide/from16 v20, p7

    #@56
    move/from16 v24, p6

    #@58
    move/from16 v25, p10

    #@5a
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@5d
    .line 1680
    return-void
.end method

.method public DSPR(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Ap"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 1743
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v4

    #@8
    move/from16 v0, p1

    #@a
    move-object/from16 v1, p4

    #@c
    move/from16 v2, p5

    #@e
    move-object/from16 v3, p6

    #@10
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@13
    move-result v14

    #@14
    .line 1744
    .local v14, "N":I
    move-object/from16 v0, p0

    #@16
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@18
    move-object/from16 v0, p0

    #@1a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@21
    move-result-wide v5

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@26
    move-object/from16 v0, p4

    #@28
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2b
    move-result-wide v18

    #@2c
    move-object/from16 v0, p0

    #@2e
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@30
    move-object/from16 v0, p6

    #@32
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@35
    move-result-wide v20

    #@36
    const-wide/16 v22, 0x0

    #@38
    const-wide/16 v24, 0x0

    #@3a
    const/16 v7, 0x5c

    #@3c
    const/4 v8, 0x0

    #@3d
    const/4 v9, 0x0

    #@3e
    const/4 v10, 0x0

    #@3f
    const/4 v12, 0x0

    #@40
    const/4 v13, 0x0

    #@41
    const/4 v15, 0x0

    #@42
    const/16 v27, 0x0

    #@44
    const/16 v28, 0x0

    #@46
    const/16 v29, 0x0

    #@48
    move/from16 v11, p1

    #@4a
    move-wide/from16 v16, p2

    #@4c
    move/from16 v26, p5

    #@4e
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@51
    .line 1742
    return-void
.end method

.method public DSPR2(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Y"    # Landroid/renderscript/Allocation;
    .param p7, "incY"    # I
    .param p8, "Ap"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 1789
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p4

    #@c
    move/from16 v5, p5

    #@e
    move-object/from16 v6, p6

    #@10
    move/from16 v7, p7

    #@12
    move-object/from16 v8, p8

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@17
    move-result v12

    #@18
    .line 1790
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2a
    move-object/from16 v0, p4

    #@2c
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2f
    move-result-wide v16

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@34
    move-object/from16 v0, p6

    #@36
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@39
    move-result-wide v18

    #@3a
    const-wide/16 v20, 0x0

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@40
    move-object/from16 v0, p8

    #@42
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@45
    move-result-wide v22

    #@46
    const/16 v5, 0x5e

    #@48
    const/4 v6, 0x0

    #@49
    const/4 v7, 0x0

    #@4a
    const/4 v8, 0x0

    #@4b
    const/4 v10, 0x0

    #@4c
    const/4 v11, 0x0

    #@4d
    const/4 v13, 0x0

    #@4e
    const/16 v26, 0x0

    #@50
    const/16 v27, 0x0

    #@52
    move/from16 v9, p1

    #@54
    move-wide/from16 v14, p2

    #@56
    move/from16 v24, p5

    #@58
    move/from16 v25, p7

    #@5a
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@5d
    .line 1788
    return-void
.end method

.method public DSYMM(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "B"    # Landroid/renderscript/Allocation;
    .param p7, "beta"    # D
    .param p9, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2514
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    #@3
    .line 2515
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@6
    .line 2516
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@d
    move-result v2

    #@e
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@15
    move-result v3

    #@16
    if-eq v2, v3, :cond_0

    #@18
    .line 2517
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@1a
    const-string/jumbo v3, "Matrix A is not symmetric"

    #@1d
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 2519
    :cond_0
    move-object/from16 v0, p0

    #@23
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@25
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@28
    move-result-object v2

    #@29
    const/4 v3, 0x0

    #@2a
    const/4 v4, 0x0

    #@2b
    move/from16 v5, p1

    #@2d
    move-object/from16 v6, p5

    #@2f
    move-object/from16 v7, p6

    #@31
    move-object/from16 v8, p9

    #@33
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@36
    .line 2520
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v3

    #@44
    invoke-virtual/range {p9 .. p9}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    #@4b
    move-result v11

    #@4c
    invoke-virtual/range {p9 .. p9}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    #@53
    move-result v12

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@58
    move-object/from16 v0, p5

    #@5a
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5d
    move-result-wide v16

    #@5e
    move-object/from16 v0, p0

    #@60
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@62
    move-object/from16 v0, p6

    #@64
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@67
    move-result-wide v18

    #@68
    .line 2521
    move-object/from16 v0, p0

    #@6a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@6c
    move-object/from16 v0, p9

    #@6e
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@71
    move-result-wide v22

    #@72
    .line 2520
    const/16 v5, 0x78

    #@74
    const/4 v6, 0x0

    #@75
    const/4 v7, 0x0

    #@76
    const/4 v10, 0x0

    #@77
    const/4 v13, 0x0

    #@78
    .line 2521
    const/16 v24, 0x0

    #@7a
    const/16 v25, 0x0

    #@7c
    const/16 v26, 0x0

    #@7e
    const/16 v27, 0x0

    #@80
    move/from16 v8, p1

    #@82
    move/from16 v9, p2

    #@84
    move-wide/from16 v14, p3

    #@86
    move-wide/from16 v20, p7

    #@88
    .line 2520
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@8b
    .line 2513
    return-void
.end method

.method public DSYMV(IDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # D
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    #@0
    .prologue
    .line 1621
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p4

    #@c
    move-object/from16 v5, p5

    #@e
    move-object/from16 v6, p9

    #@10
    move/from16 v7, p6

    #@12
    move/from16 v8, p10

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    #@17
    move-result v12

    #@18
    .line 1622
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2a
    move-object/from16 v0, p4

    #@2c
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2f
    move-result-wide v16

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@34
    move-object/from16 v0, p5

    #@36
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@39
    move-result-wide v18

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p9

    #@40
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v22

    #@44
    const/16 v5, 0x57

    #@46
    const/4 v6, 0x0

    #@47
    const/4 v7, 0x0

    #@48
    const/4 v8, 0x0

    #@49
    const/4 v10, 0x0

    #@4a
    const/4 v11, 0x0

    #@4b
    const/4 v13, 0x0

    #@4c
    const/16 v26, 0x0

    #@4e
    const/16 v27, 0x0

    #@50
    move/from16 v9, p1

    #@52
    move-wide/from16 v14, p2

    #@54
    move-wide/from16 v20, p7

    #@56
    move/from16 v24, p6

    #@58
    move/from16 v25, p10

    #@5a
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@5d
    .line 1620
    return-void
.end method

.method public DSYR(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 30
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 1718
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v4

    #@8
    move/from16 v0, p1

    #@a
    move-object/from16 v1, p4

    #@c
    move/from16 v2, p5

    #@e
    move-object/from16 v3, p6

    #@10
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@13
    move-result v14

    #@14
    .line 1719
    .local v14, "N":I
    move-object/from16 v0, p0

    #@16
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@18
    move-object/from16 v0, p0

    #@1a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@21
    move-result-wide v5

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@26
    move-object/from16 v0, p4

    #@28
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2b
    move-result-wide v18

    #@2c
    move-object/from16 v0, p0

    #@2e
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@30
    move-object/from16 v0, p6

    #@32
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@35
    move-result-wide v20

    #@36
    const-wide/16 v22, 0x0

    #@38
    const-wide/16 v24, 0x0

    #@3a
    const/16 v7, 0x5b

    #@3c
    const/4 v8, 0x0

    #@3d
    const/4 v9, 0x0

    #@3e
    const/4 v10, 0x0

    #@3f
    const/4 v12, 0x0

    #@40
    const/4 v13, 0x0

    #@41
    const/4 v15, 0x0

    #@42
    const/16 v27, 0x0

    #@44
    const/16 v28, 0x0

    #@46
    const/16 v29, 0x0

    #@48
    move/from16 v11, p1

    #@4a
    move-wide/from16 v16, p2

    #@4c
    move/from16 v26, p5

    #@4e
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@51
    .line 1717
    return-void
.end method

.method public DSYR2(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Y"    # Landroid/renderscript/Allocation;
    .param p7, "incY"    # I
    .param p8, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 1762
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p4

    #@c
    move/from16 v5, p5

    #@e
    move-object/from16 v6, p6

    #@10
    move/from16 v7, p7

    #@12
    move-object/from16 v8, p8

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@17
    move-result v12

    #@18
    .line 1763
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2a
    move-object/from16 v0, p4

    #@2c
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2f
    move-result-wide v16

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@34
    move-object/from16 v0, p6

    #@36
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@39
    move-result-wide v18

    #@3a
    const-wide/16 v20, 0x0

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@40
    move-object/from16 v0, p8

    #@42
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@45
    move-result-wide v22

    #@46
    const/16 v5, 0x5d

    #@48
    const/4 v6, 0x0

    #@49
    const/4 v7, 0x0

    #@4a
    const/4 v8, 0x0

    #@4b
    const/4 v10, 0x0

    #@4c
    const/4 v11, 0x0

    #@4d
    const/4 v13, 0x0

    #@4e
    const/16 v26, 0x0

    #@50
    const/16 v27, 0x0

    #@52
    move/from16 v9, p1

    #@54
    move-wide/from16 v14, p2

    #@56
    move/from16 v24, p5

    #@58
    move/from16 v25, p7

    #@5a
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@5d
    .line 1761
    return-void
.end method

.method public DSYR2K(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 31
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "B"    # Landroid/renderscript/Allocation;
    .param p7, "beta"    # D
    .param p9, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2750
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 2751
    move-object/from16 v0, p0

    #@5
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@a
    move-result-object v4

    #@b
    move/from16 v0, p2

    #@d
    move-object/from16 v1, p5

    #@f
    move-object/from16 v2, p6

    #@11
    move-object/from16 v3, p9

    #@13
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@16
    .line 2752
    const/4 v15, -0x1

    #@17
    .line 2753
    .local v15, "K":I
    const/16 v4, 0x6f

    #@19
    move/from16 v0, p2

    #@1b
    if-eq v0, v4, :cond_0

    #@1d
    .line 2754
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@24
    move-result v15

    #@25
    .line 2758
    :goto_0
    move-object/from16 v0, p0

    #@27
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@32
    move-result-wide v5

    #@33
    invoke-virtual/range {p9 .. p9}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    #@3a
    move-result v14

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3f
    move-object/from16 v0, p5

    #@41
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@44
    move-result-wide v18

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@49
    move-object/from16 v0, p6

    #@4b
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4e
    move-result-wide v20

    #@4f
    move-object/from16 v0, p0

    #@51
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@53
    move-object/from16 v0, p9

    #@55
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@58
    move-result-wide v24

    #@59
    const/16 v7, 0x7a

    #@5b
    const/4 v9, 0x0

    #@5c
    const/4 v10, 0x0

    #@5d
    const/4 v12, 0x0

    #@5e
    const/4 v13, 0x0

    #@5f
    const/16 v26, 0x0

    #@61
    const/16 v27, 0x0

    #@63
    const/16 v28, 0x0

    #@65
    const/16 v29, 0x0

    #@67
    move/from16 v8, p2

    #@69
    move/from16 v11, p1

    #@6b
    move-wide/from16 v16, p3

    #@6d
    move-wide/from16 v22, p7

    #@6f
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@72
    .line 2749
    return-void

    #@73
    .line 2756
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@76
    move-result-object v4

    #@77
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@7a
    move-result v15

    #@7b
    goto :goto_0
.end method

.method public DSYRK(IIDLandroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # D
    .param p8, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2617
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@3
    .line 2618
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@6
    .line 2619
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v2

    #@e
    const/4 v4, 0x0

    #@f
    const/4 v5, 0x0

    #@10
    const/4 v7, 0x0

    #@11
    move/from16 v3, p2

    #@13
    move-object/from16 v6, p5

    #@15
    move-object/from16 v8, p8

    #@17
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@1a
    .line 2620
    const/4 v13, -0x1

    #@1b
    .line 2621
    .local v13, "K":I
    const/16 v2, 0x6f

    #@1d
    move/from16 v0, p2

    #@1f
    if-eq v0, v2, :cond_0

    #@21
    .line 2622
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@28
    move-result v13

    #@29
    .line 2626
    :goto_0
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    move-object/from16 v0, p0

    #@2f
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@31
    move-object/from16 v0, p0

    #@33
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@36
    move-result-wide v3

    #@37
    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    #@3e
    move-result v12

    #@3f
    move-object/from16 v0, p0

    #@41
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@43
    move-object/from16 v0, p5

    #@45
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@48
    move-result-wide v16

    #@49
    const-wide/16 v18, 0x0

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4f
    move-object/from16 v0, p8

    #@51
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@54
    move-result-wide v22

    #@55
    const/16 v5, 0x79

    #@57
    const/4 v7, 0x0

    #@58
    const/4 v8, 0x0

    #@59
    const/4 v10, 0x0

    #@5a
    const/4 v11, 0x0

    #@5b
    const/16 v24, 0x0

    #@5d
    const/16 v25, 0x0

    #@5f
    const/16 v26, 0x0

    #@61
    const/16 v27, 0x0

    #@63
    move/from16 v6, p2

    #@65
    move/from16 v9, p1

    #@67
    move-wide/from16 v14, p3

    #@69
    move-wide/from16 v20, p6

    #@6b
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@6e
    .line 2616
    return-void

    #@6f
    .line 2624
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@76
    move-result v13

    #@77
    goto :goto_0
.end method

.method public DTBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    #@0
    .prologue
    .line 720
    if-gez p4, :cond_0

    #@2
    .line 721
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@4
    const-string/jumbo v3, "K must be greater than or equal to 0"

    #@7
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 723
    :cond_0
    move-object/from16 v0, p0

    #@d
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@f
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@12
    move-result-object v2

    #@13
    move/from16 v3, p1

    #@15
    move/from16 v4, p2

    #@17
    move/from16 v5, p3

    #@19
    move-object/from16 v6, p5

    #@1b
    move-object/from16 v7, p6

    #@1d
    move/from16 v8, p7

    #@1f
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@22
    .line 724
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@29
    move-result v12

    #@2a
    .line 725
    .local v12, "N":I
    move-object/from16 v0, p0

    #@2c
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@32
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v3

    #@38
    const-wide/16 v14, 0x0

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p5

    #@40
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v16

    #@44
    move-object/from16 v0, p0

    #@46
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@48
    move-object/from16 v0, p6

    #@4a
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4d
    move-result-wide v18

    #@4e
    const-wide/16 v20, 0x0

    #@50
    const-wide/16 v22, 0x0

    #@52
    const/16 v5, 0x3a

    #@54
    const/4 v7, 0x0

    #@55
    const/4 v8, 0x0

    #@56
    const/4 v11, 0x0

    #@57
    const/16 v25, 0x0

    #@59
    const/16 v26, 0x0

    #@5b
    const/16 v27, 0x0

    #@5d
    move/from16 v6, p2

    #@5f
    move/from16 v9, p1

    #@61
    move/from16 v10, p3

    #@63
    move/from16 v13, p4

    #@65
    move/from16 v24, p7

    #@67
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@6a
    .line 718
    return-void
.end method

.method public DTBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    #@0
    .prologue
    .line 1032
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p5

    #@10
    move-object/from16 v7, p6

    #@12
    move/from16 v8, p7

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@17
    .line 1033
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v12

    #@1f
    .line 1034
    .local v12, "N":I
    if-gez p4, :cond_0

    #@21
    .line 1035
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@23
    const-string/jumbo v3, "Number of diagonals must be positive"

    #@26
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 1037
    :cond_0
    move-object/from16 v0, p0

    #@2c
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@32
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v3

    #@38
    const-wide/16 v14, 0x0

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p5

    #@40
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v16

    #@44
    move-object/from16 v0, p0

    #@46
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@48
    move-object/from16 v0, p6

    #@4a
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4d
    move-result-wide v18

    #@4e
    const-wide/16 v20, 0x0

    #@50
    const-wide/16 v22, 0x0

    #@52
    const/16 v5, 0x3d

    #@54
    const/4 v7, 0x0

    #@55
    const/4 v8, 0x0

    #@56
    const/4 v11, 0x0

    #@57
    const/16 v25, 0x0

    #@59
    const/16 v26, 0x0

    #@5b
    const/16 v27, 0x0

    #@5d
    move/from16 v6, p2

    #@5f
    move/from16 v9, p1

    #@61
    move/from16 v10, p3

    #@63
    move/from16 v13, p4

    #@65
    move/from16 v24, p7

    #@67
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@6a
    .line 1030
    return-void
.end method

.method public DTPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 838
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    #@17
    move-result v12

    #@18
    .line 839
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    const-wide/16 v14, 0x0

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2c
    move-object/from16 v0, p4

    #@2e
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@31
    move-result-wide v16

    #@32
    move-object/from16 v0, p0

    #@34
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@36
    move-object/from16 v0, p5

    #@38
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3b
    move-result-wide v18

    #@3c
    const-wide/16 v20, 0x0

    #@3e
    const-wide/16 v22, 0x0

    #@40
    const/16 v5, 0x3b

    #@42
    const/4 v7, 0x0

    #@43
    const/4 v8, 0x0

    #@44
    const/4 v11, 0x0

    #@45
    const/4 v13, 0x0

    #@46
    const/16 v25, 0x0

    #@48
    const/16 v26, 0x0

    #@4a
    const/16 v27, 0x0

    #@4c
    move/from16 v6, p2

    #@4e
    move/from16 v9, p1

    #@50
    move/from16 v10, p3

    #@52
    move/from16 v24, p6

    #@54
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@57
    .line 837
    return-void
.end method

.method public DTPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 1152
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    #@17
    move-result v12

    #@18
    .line 1153
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    const-wide/16 v14, 0x0

    #@28
    move-object/from16 v0, p0

    #@2a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2c
    move-object/from16 v0, p4

    #@2e
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@31
    move-result-wide v16

    #@32
    move-object/from16 v0, p0

    #@34
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@36
    move-object/from16 v0, p5

    #@38
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3b
    move-result-wide v18

    #@3c
    const-wide/16 v20, 0x0

    #@3e
    const-wide/16 v22, 0x0

    #@40
    const/16 v5, 0x3e

    #@42
    const/4 v7, 0x0

    #@43
    const/4 v8, 0x0

    #@44
    const/4 v11, 0x0

    #@45
    const/4 v13, 0x0

    #@46
    const/16 v25, 0x0

    #@48
    const/16 v26, 0x0

    #@4a
    const/16 v27, 0x0

    #@4c
    move/from16 v6, p2

    #@4e
    move/from16 v9, p1

    #@50
    move/from16 v10, p3

    #@52
    move/from16 v24, p6

    #@54
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@57
    .line 1150
    return-void
.end method

.method public DTRMM(IIIIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 31
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # D
    .param p7, "A"    # Landroid/renderscript/Allocation;
    .param p8, "B"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2880
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 2881
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    #@6
    .line 2882
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v4

    #@e
    move/from16 v0, p1

    #@10
    move/from16 v1, p3

    #@12
    move-object/from16 v2, p7

    #@14
    move-object/from16 v3, p8

    #@16
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@19
    .line 2883
    move-object/from16 v0, p0

    #@1b
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@26
    move-result-wide v5

    #@27
    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    #@2e
    move-result v13

    #@2f
    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    #@36
    move-result v14

    #@37
    .line 2884
    move-object/from16 v0, p0

    #@39
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3b
    move-object/from16 v0, p7

    #@3d
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@40
    move-result-wide v18

    #@41
    move-object/from16 v0, p0

    #@43
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@45
    move-object/from16 v0, p8

    #@47
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4a
    move-result-wide v20

    #@4b
    const-wide/16 v22, 0x0

    #@4d
    const-wide/16 v24, 0x0

    #@4f
    .line 2883
    const/16 v7, 0x7b

    #@51
    const/4 v9, 0x0

    #@52
    const/4 v15, 0x0

    #@53
    .line 2884
    const/16 v26, 0x0

    #@55
    const/16 v27, 0x0

    #@57
    const/16 v28, 0x0

    #@59
    const/16 v29, 0x0

    #@5b
    move/from16 v8, p3

    #@5d
    move/from16 v10, p1

    #@5f
    move/from16 v11, p2

    #@61
    move/from16 v12, p4

    #@63
    move-wide/from16 v16, p5

    #@65
    .line 2883
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@68
    .line 2879
    return-void
.end method

.method public DTRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 623
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@17
    .line 624
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v12

    #@1f
    .line 625
    .local v12, "N":I
    move-object/from16 v0, p0

    #@21
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@27
    move-object/from16 v0, p0

    #@29
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@2c
    move-result-wide v3

    #@2d
    const-wide/16 v14, 0x0

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@33
    move-object/from16 v0, p4

    #@35
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@38
    move-result-wide v16

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3d
    move-object/from16 v0, p5

    #@3f
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@42
    move-result-wide v18

    #@43
    const-wide/16 v20, 0x0

    #@45
    const-wide/16 v22, 0x0

    #@47
    const/16 v5, 0x39

    #@49
    const/4 v7, 0x0

    #@4a
    const/4 v8, 0x0

    #@4b
    const/4 v11, 0x0

    #@4c
    const/4 v13, 0x0

    #@4d
    const/16 v25, 0x0

    #@4f
    const/16 v26, 0x0

    #@51
    const/16 v27, 0x0

    #@53
    move/from16 v6, p2

    #@55
    move/from16 v9, p1

    #@57
    move/from16 v10, p3

    #@59
    move/from16 v24, p6

    #@5b
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@5e
    .line 622
    return-void
.end method

.method public DTRSM(IIIIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 31
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # D
    .param p7, "A"    # Landroid/renderscript/Allocation;
    .param p8, "B"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 3002
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 3003
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    #@6
    .line 3004
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v4

    #@e
    move/from16 v0, p1

    #@10
    move/from16 v1, p3

    #@12
    move-object/from16 v2, p7

    #@14
    move-object/from16 v3, p8

    #@16
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@19
    .line 3005
    move-object/from16 v0, p0

    #@1b
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@26
    move-result-wide v5

    #@27
    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    #@2e
    move-result v13

    #@2f
    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    #@36
    move-result v14

    #@37
    .line 3006
    move-object/from16 v0, p0

    #@39
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3b
    move-object/from16 v0, p7

    #@3d
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@40
    move-result-wide v18

    #@41
    move-object/from16 v0, p0

    #@43
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@45
    move-object/from16 v0, p8

    #@47
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4a
    move-result-wide v20

    #@4b
    const-wide/16 v22, 0x0

    #@4d
    const-wide/16 v24, 0x0

    #@4f
    .line 3005
    const/16 v7, 0x7c

    #@51
    const/4 v9, 0x0

    #@52
    const/4 v15, 0x0

    #@53
    .line 3006
    const/16 v26, 0x0

    #@55
    const/16 v27, 0x0

    #@57
    const/16 v28, 0x0

    #@59
    const/16 v29, 0x0

    #@5b
    move/from16 v8, p3

    #@5d
    move/from16 v10, p1

    #@5f
    move/from16 v11, p2

    #@61
    move/from16 v12, p4

    #@63
    move-wide/from16 v16, p5

    #@65
    .line 3005
    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@68
    .line 3001
    return-void
.end method

.method public DTRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 28
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 930
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@17
    .line 931
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v12

    #@1f
    .line 932
    .local v12, "N":I
    move-object/from16 v0, p0

    #@21
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@27
    move-object/from16 v0, p0

    #@29
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@2c
    move-result-wide v3

    #@2d
    const-wide/16 v14, 0x0

    #@2f
    move-object/from16 v0, p0

    #@31
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@33
    move-object/from16 v0, p4

    #@35
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@38
    move-result-wide v16

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3d
    move-object/from16 v0, p5

    #@3f
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@42
    move-result-wide v18

    #@43
    const-wide/16 v20, 0x0

    #@45
    const-wide/16 v22, 0x0

    #@47
    const/16 v5, 0x3c

    #@49
    const/4 v7, 0x0

    #@4a
    const/4 v8, 0x0

    #@4b
    const/4 v11, 0x0

    #@4c
    const/4 v13, 0x0

    #@4d
    const/16 v25, 0x0

    #@4f
    const/16 v26, 0x0

    #@51
    const/16 v27, 0x0

    #@53
    move/from16 v6, p2

    #@55
    move/from16 v9, p1

    #@57
    move/from16 v10, p3

    #@59
    move/from16 v24, p6

    #@5b
    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    #@5e
    .line 928
    return-void
.end method

.method public SGBMV(IIIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # F
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # F
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    #@0
    .prologue
    .line 419
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p5

    #@c
    move-object/from16 v5, p6

    #@e
    move/from16 v6, p7

    #@10
    move-object/from16 v7, p9

    #@12
    move/from16 v8, p10

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    #@17
    .line 420
    if-ltz p2, :cond_0

    #@19
    if-gez p3, :cond_1

    #@1b
    .line 421
    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@1d
    const-string/jumbo v3, "KL and KU must be greater than or equal to 0"

    #@20
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 423
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@2b
    move-result v12

    #@2c
    .line 424
    .local v12, "M":I
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@33
    move-result v13

    #@34
    .line 425
    .local v13, "N":I
    move-object/from16 v0, p0

    #@36
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3c
    move-object/from16 v0, p0

    #@3e
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@41
    move-result-wide v4

    #@42
    move-object/from16 v0, p0

    #@44
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@46
    move-object/from16 v0, p5

    #@48
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4b
    move-result-wide v16

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@50
    move-object/from16 v0, p6

    #@52
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@55
    move-result-wide v18

    #@56
    move-object/from16 v0, p0

    #@58
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@5a
    move-object/from16 v0, p9

    #@5c
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5f
    move-result-wide v21

    #@60
    const/16 v6, 0x30

    #@62
    const/4 v8, 0x0

    #@63
    const/4 v9, 0x0

    #@64
    const/4 v10, 0x0

    #@65
    const/4 v11, 0x0

    #@66
    const/4 v14, 0x0

    #@67
    move/from16 v7, p1

    #@69
    move/from16 v15, p4

    #@6b
    move/from16 v20, p8

    #@6d
    move/from16 v23, p7

    #@6f
    move/from16 v24, p10

    #@71
    move/from16 v25, p2

    #@73
    move/from16 v26, p3

    #@75
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@78
    .line 417
    return-void
.end method

.method public SGEMM(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 27
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2342
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@3
    .line 2343
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@6
    .line 2344
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v2

    #@e
    const/4 v5, 0x0

    #@f
    move/from16 v3, p1

    #@11
    move/from16 v4, p2

    #@13
    move-object/from16 v6, p4

    #@15
    move-object/from16 v7, p5

    #@17
    move-object/from16 v8, p7

    #@19
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@1c
    .line 2346
    const/4 v12, -0x1

    #@1d
    .local v12, "M":I
    const/4 v13, -0x1

    #@1e
    .local v13, "N":I
    const/4 v14, -0x1

    #@1f
    .line 2347
    .local v14, "K":I
    const/16 v2, 0x6f

    #@21
    move/from16 v0, p1

    #@23
    if-eq v0, v2, :cond_0

    #@25
    .line 2348
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@2c
    move-result v12

    #@2d
    .line 2349
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@34
    move-result v14

    #@35
    .line 2354
    :goto_0
    const/16 v2, 0x6f

    #@37
    move/from16 v0, p2

    #@39
    if-eq v0, v2, :cond_1

    #@3b
    .line 2355
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@42
    move-result v13

    #@43
    .line 2359
    :goto_1
    move-object/from16 v0, p0

    #@45
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4b
    move-object/from16 v0, p0

    #@4d
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@50
    move-result-wide v4

    #@51
    move-object/from16 v0, p0

    #@53
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@55
    move-object/from16 v0, p4

    #@57
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5a
    move-result-wide v16

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@5f
    move-object/from16 v0, p5

    #@61
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@64
    move-result-wide v18

    #@65
    .line 2360
    move-object/from16 v0, p0

    #@67
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@69
    move-object/from16 v0, p7

    #@6b
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@6e
    move-result-wide v21

    #@6f
    .line 2359
    const/16 v6, 0x71

    #@71
    const/4 v9, 0x0

    #@72
    const/4 v10, 0x0

    #@73
    const/4 v11, 0x0

    #@74
    .line 2360
    const/16 v23, 0x0

    #@76
    const/16 v24, 0x0

    #@78
    const/16 v25, 0x0

    #@7a
    const/16 v26, 0x0

    #@7c
    move/from16 v7, p1

    #@7e
    move/from16 v8, p2

    #@80
    move/from16 v15, p3

    #@82
    move/from16 v20, p6

    #@84
    .line 2359
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@87
    .line 2341
    return-void

    #@88
    .line 2351
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@8b
    move-result-object v2

    #@8c
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@8f
    move-result v12

    #@90
    .line 2352
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@93
    move-result-object v2

    #@94
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@97
    move-result v14

    #@98
    goto :goto_0

    #@99
    .line 2357
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@9c
    move-result-object v2

    #@9d
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@a0
    move-result v13

    #@a1
    goto :goto_1
.end method

.method public SGEMV(IFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "TransA"    # I
    .param p2, "alpha"    # F
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # F
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    #@0
    .prologue
    .line 321
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p3

    #@c
    move-object/from16 v5, p4

    #@e
    move/from16 v6, p5

    #@10
    move-object/from16 v7, p7

    #@12
    move/from16 v8, p8

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    #@17
    .line 322
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v12

    #@1f
    .line 323
    .local v12, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@26
    move-result v13

    #@27
    .line 324
    .local v13, "N":I
    move-object/from16 v0, p0

    #@29
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2f
    move-object/from16 v0, p0

    #@31
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@34
    move-result-wide v4

    #@35
    move-object/from16 v0, p0

    #@37
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@39
    move-object/from16 v0, p3

    #@3b
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3e
    move-result-wide v16

    #@3f
    move-object/from16 v0, p0

    #@41
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@43
    move-object/from16 v0, p4

    #@45
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@48
    move-result-wide v18

    #@49
    move-object/from16 v0, p0

    #@4b
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4d
    move-object/from16 v0, p7

    #@4f
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@52
    move-result-wide v21

    #@53
    const/16 v6, 0x2f

    #@55
    const/4 v8, 0x0

    #@56
    const/4 v9, 0x0

    #@57
    const/4 v10, 0x0

    #@58
    const/4 v11, 0x0

    #@59
    const/4 v14, 0x0

    #@5a
    const/16 v25, 0x0

    #@5c
    const/16 v26, 0x0

    #@5e
    move/from16 v7, p1

    #@60
    move/from16 v15, p2

    #@62
    move/from16 v20, p6

    #@64
    move/from16 v23, p5

    #@66
    move/from16 v24, p8

    #@68
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@6b
    .line 320
    return-void
.end method

.method public SGER(FLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 27
    .param p1, "alpha"    # F
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 1511
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@7
    move-result v12

    #@8
    .line 1512
    .local v12, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@f
    move-result v13

    #@10
    .line 1513
    .local v13, "N":I
    move-object/from16 v0, p0

    #@12
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@14
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@17
    move-result-object v2

    #@18
    move-object/from16 v3, p2

    #@1a
    move/from16 v4, p3

    #@1c
    move-object/from16 v5, p4

    #@1e
    move/from16 v6, p5

    #@20
    move-object/from16 v7, p6

    #@22
    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGER(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    #@25
    .line 1514
    move-object/from16 v0, p0

    #@27
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@32
    move-result-wide v4

    #@33
    move-object/from16 v0, p0

    #@35
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@37
    move-object/from16 v0, p2

    #@39
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3c
    move-result-wide v16

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@41
    move-object/from16 v0, p4

    #@43
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@46
    move-result-wide v18

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4b
    move-object/from16 v0, p6

    #@4d
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@50
    move-result-wide v21

    #@51
    const/16 v6, 0x52

    #@53
    const/4 v7, 0x0

    #@54
    const/4 v8, 0x0

    #@55
    const/4 v9, 0x0

    #@56
    const/4 v10, 0x0

    #@57
    const/4 v11, 0x0

    #@58
    const/4 v14, 0x0

    #@59
    const/16 v20, 0x0

    #@5b
    const/16 v25, 0x0

    #@5d
    const/16 v26, 0x0

    #@5f
    move/from16 v15, p1

    #@61
    move/from16 v23, p3

    #@63
    move/from16 v24, p5

    #@65
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@68
    .line 1510
    return-void
.end method

.method public SSBMV(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # F
    .param p8, "Y"    # Landroid/renderscript/Allocation;
    .param p9, "incY"    # I

    #@0
    .prologue
    .line 1462
    if-gez p2, :cond_0

    #@2
    .line 1463
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@4
    const-string/jumbo v3, "K must be greater than or equal to 0"

    #@7
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 1465
    :cond_0
    move-object/from16 v0, p0

    #@d
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@f
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@12
    move-result-object v2

    #@13
    move/from16 v3, p1

    #@15
    move-object/from16 v4, p4

    #@17
    move-object/from16 v5, p5

    #@19
    move-object/from16 v6, p8

    #@1b
    move/from16 v7, p6

    #@1d
    move/from16 v8, p9

    #@1f
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    #@22
    move-result v13

    #@23
    .line 1466
    .local v13, "N":I
    move-object/from16 v0, p0

    #@25
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2b
    move-object/from16 v0, p0

    #@2d
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@30
    move-result-wide v4

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@35
    move-object/from16 v0, p4

    #@37
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3a
    move-result-wide v16

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3f
    move-object/from16 v0, p5

    #@41
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@44
    move-result-wide v18

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@49
    move-object/from16 v0, p8

    #@4b
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4e
    move-result-wide v21

    #@4f
    const/16 v6, 0x50

    #@51
    const/4 v7, 0x0

    #@52
    const/4 v8, 0x0

    #@53
    const/4 v9, 0x0

    #@54
    const/4 v11, 0x0

    #@55
    const/4 v12, 0x0

    #@56
    const/16 v25, 0x0

    #@58
    const/16 v26, 0x0

    #@5a
    move/from16 v10, p1

    #@5c
    move/from16 v14, p2

    #@5e
    move/from16 v15, p3

    #@60
    move/from16 v20, p7

    #@62
    move/from16 v23, p6

    #@64
    move/from16 v24, p9

    #@66
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@69
    .line 1460
    return-void
.end method

.method public SSPMV(IFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "Ap"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # F
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    #@0
    .prologue
    .line 1493
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p3

    #@c
    move-object/from16 v5, p4

    #@e
    move/from16 v6, p5

    #@10
    move-object/from16 v7, p7

    #@12
    move/from16 v8, p8

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)I

    #@17
    move-result v13

    #@18
    .line 1494
    .local v13, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v4

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2a
    move-object/from16 v0, p3

    #@2c
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2f
    move-result-wide v16

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@34
    move-object/from16 v0, p4

    #@36
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@39
    move-result-wide v18

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p7

    #@40
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v21

    #@44
    const/16 v6, 0x51

    #@46
    const/4 v7, 0x0

    #@47
    const/4 v8, 0x0

    #@48
    const/4 v9, 0x0

    #@49
    const/4 v11, 0x0

    #@4a
    const/4 v12, 0x0

    #@4b
    const/4 v14, 0x0

    #@4c
    const/16 v25, 0x0

    #@4e
    const/16 v26, 0x0

    #@50
    move/from16 v10, p1

    #@52
    move/from16 v15, p2

    #@54
    move/from16 v20, p6

    #@56
    move/from16 v23, p5

    #@58
    move/from16 v24, p8

    #@5a
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@5d
    .line 1492
    return-void
.end method

.method public SSPR(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Ap"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 1555
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v4

    #@8
    move/from16 v0, p1

    #@a
    move-object/from16 v1, p3

    #@c
    move/from16 v2, p4

    #@e
    move-object/from16 v3, p5

    #@10
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@13
    move-result v15

    #@14
    .line 1556
    .local v15, "N":I
    move-object/from16 v0, p0

    #@16
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@18
    move-object/from16 v0, p0

    #@1a
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@21
    move-result-wide v6

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@26
    move-object/from16 v0, p3

    #@28
    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2b
    move-result-wide v18

    #@2c
    move-object/from16 v0, p0

    #@2e
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@30
    move-object/from16 v0, p5

    #@32
    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@35
    move-result-wide v20

    #@36
    const-wide/16 v23, 0x0

    #@38
    const/16 v8, 0x54

    #@3a
    const/4 v9, 0x0

    #@3b
    const/4 v10, 0x0

    #@3c
    const/4 v11, 0x0

    #@3d
    const/4 v13, 0x0

    #@3e
    const/4 v14, 0x0

    #@3f
    const/16 v16, 0x0

    #@41
    const/16 v22, 0x0

    #@43
    const/16 v26, 0x0

    #@45
    const/16 v27, 0x0

    #@47
    const/16 v28, 0x0

    #@49
    move/from16 v12, p1

    #@4b
    move/from16 v17, p2

    #@4d
    move/from16 v25, p4

    #@4f
    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@52
    .line 1554
    return-void
.end method

.method public SSPR2(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "Ap"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 1601
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p3

    #@c
    move/from16 v5, p4

    #@e
    move-object/from16 v6, p5

    #@10
    move/from16 v7, p6

    #@12
    move-object/from16 v8, p7

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@17
    move-result v13

    #@18
    .line 1602
    .local v13, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v4

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2a
    move-object/from16 v0, p3

    #@2c
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2f
    move-result-wide v16

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@34
    move-object/from16 v0, p5

    #@36
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@39
    move-result-wide v18

    #@3a
    const/16 v20, 0x0

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@40
    move-object/from16 v0, p7

    #@42
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@45
    move-result-wide v21

    #@46
    const/16 v6, 0x56

    #@48
    const/4 v7, 0x0

    #@49
    const/4 v8, 0x0

    #@4a
    const/4 v9, 0x0

    #@4b
    const/4 v11, 0x0

    #@4c
    const/4 v12, 0x0

    #@4d
    const/4 v14, 0x0

    #@4e
    const/16 v25, 0x0

    #@50
    const/16 v26, 0x0

    #@52
    move/from16 v10, p1

    #@54
    move/from16 v15, p2

    #@56
    move/from16 v23, p4

    #@58
    move/from16 v24, p6

    #@5a
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@5d
    .line 1600
    return-void
.end method

.method public SSYMM(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 27
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2487
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    #@3
    .line 2488
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@6
    .line 2490
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@d
    move-result v2

    #@e
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@15
    move-result v3

    #@16
    if-eq v2, v3, :cond_0

    #@18
    .line 2491
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@1a
    const-string/jumbo v3, "Matrix A is not symmetric"

    #@1d
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 2493
    :cond_0
    move-object/from16 v0, p0

    #@23
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@25
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@28
    move-result-object v2

    #@29
    const/4 v3, 0x0

    #@2a
    const/4 v4, 0x0

    #@2b
    move/from16 v5, p1

    #@2d
    move-object/from16 v6, p4

    #@2f
    move-object/from16 v7, p5

    #@31
    move-object/from16 v8, p7

    #@33
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@36
    .line 2494
    move-object/from16 v0, p0

    #@38
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v4

    #@44
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@47
    move-result-object v2

    #@48
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@4b
    move-result v12

    #@4c
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4f
    move-result-object v2

    #@50
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@53
    move-result v13

    #@54
    move-object/from16 v0, p0

    #@56
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@58
    move-object/from16 v0, p4

    #@5a
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5d
    move-result-wide v16

    #@5e
    move-object/from16 v0, p0

    #@60
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@62
    move-object/from16 v0, p5

    #@64
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@67
    move-result-wide v18

    #@68
    .line 2495
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@6c
    move-object/from16 v0, p7

    #@6e
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@71
    move-result-wide v21

    #@72
    .line 2494
    const/16 v6, 0x72

    #@74
    const/4 v7, 0x0

    #@75
    const/4 v8, 0x0

    #@76
    const/4 v11, 0x0

    #@77
    const/4 v14, 0x0

    #@78
    .line 2495
    const/16 v23, 0x0

    #@7a
    const/16 v24, 0x0

    #@7c
    const/16 v25, 0x0

    #@7e
    const/16 v26, 0x0

    #@80
    move/from16 v9, p1

    #@82
    move/from16 v10, p2

    #@84
    move/from16 v15, p3

    #@86
    move/from16 v20, p6

    #@88
    .line 2494
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@8b
    .line 2486
    return-void
.end method

.method public SSYMV(IFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # F
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    #@0
    .prologue
    .line 1433
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p3

    #@c
    move-object/from16 v5, p4

    #@e
    move-object/from16 v6, p7

    #@10
    move/from16 v7, p5

    #@12
    move/from16 v8, p8

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    #@17
    move-result v13

    #@18
    .line 1434
    .local v13, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v4

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2a
    move-object/from16 v0, p3

    #@2c
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2f
    move-result-wide v16

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@34
    move-object/from16 v0, p4

    #@36
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@39
    move-result-wide v18

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p7

    #@40
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v21

    #@44
    const/16 v6, 0x4f

    #@46
    const/4 v7, 0x0

    #@47
    const/4 v8, 0x0

    #@48
    const/4 v9, 0x0

    #@49
    const/4 v11, 0x0

    #@4a
    const/4 v12, 0x0

    #@4b
    const/4 v14, 0x0

    #@4c
    const/16 v25, 0x0

    #@4e
    const/16 v26, 0x0

    #@50
    move/from16 v10, p1

    #@52
    move/from16 v15, p2

    #@54
    move/from16 v20, p6

    #@56
    move/from16 v23, p5

    #@58
    move/from16 v24, p8

    #@5a
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@5d
    .line 1432
    return-void
.end method

.method public SSYR(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 1530
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v4

    #@8
    move/from16 v0, p1

    #@a
    move-object/from16 v1, p3

    #@c
    move/from16 v2, p4

    #@e
    move-object/from16 v3, p5

    #@10
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@13
    move-result v15

    #@14
    .line 1531
    .local v15, "N":I
    move-object/from16 v0, p0

    #@16
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@18
    move-object/from16 v0, p0

    #@1a
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@21
    move-result-wide v6

    #@22
    move-object/from16 v0, p0

    #@24
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@26
    move-object/from16 v0, p3

    #@28
    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2b
    move-result-wide v18

    #@2c
    move-object/from16 v0, p0

    #@2e
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@30
    move-object/from16 v0, p5

    #@32
    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@35
    move-result-wide v20

    #@36
    const-wide/16 v23, 0x0

    #@38
    const/16 v8, 0x53

    #@3a
    const/4 v9, 0x0

    #@3b
    const/4 v10, 0x0

    #@3c
    const/4 v11, 0x0

    #@3d
    const/4 v13, 0x0

    #@3e
    const/4 v14, 0x0

    #@3f
    const/16 v16, 0x0

    #@41
    const/16 v22, 0x0

    #@43
    const/16 v26, 0x0

    #@45
    const/16 v27, 0x0

    #@47
    const/16 v28, 0x0

    #@49
    move/from16 v12, p1

    #@4b
    move/from16 v17, p2

    #@4d
    move/from16 v25, p4

    #@4f
    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@52
    .line 1529
    return-void
.end method

.method public SSYR2(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 1574
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p3

    #@c
    move/from16 v5, p4

    #@e
    move-object/from16 v6, p5

    #@10
    move/from16 v7, p6

    #@12
    move-object/from16 v8, p7

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@17
    move-result v13

    #@18
    .line 1575
    .local v13, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v4

    #@26
    move-object/from16 v0, p0

    #@28
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2a
    move-object/from16 v0, p3

    #@2c
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2f
    move-result-wide v16

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@34
    move-object/from16 v0, p5

    #@36
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@39
    move-result-wide v18

    #@3a
    const/16 v20, 0x0

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@40
    move-object/from16 v0, p7

    #@42
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@45
    move-result-wide v21

    #@46
    const/16 v6, 0x55

    #@48
    const/4 v7, 0x0

    #@49
    const/4 v8, 0x0

    #@4a
    const/4 v9, 0x0

    #@4b
    const/4 v11, 0x0

    #@4c
    const/4 v12, 0x0

    #@4d
    const/4 v14, 0x0

    #@4e
    const/16 v25, 0x0

    #@50
    const/16 v26, 0x0

    #@52
    move/from16 v10, p1

    #@54
    move/from16 v15, p2

    #@56
    move/from16 v23, p4

    #@58
    move/from16 v24, p6

    #@5a
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@5d
    .line 1573
    return-void
.end method

.method public SSYR2K(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2724
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 2725
    move-object/from16 v0, p0

    #@5
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@a
    move-result-object v4

    #@b
    move/from16 v0, p2

    #@d
    move-object/from16 v1, p4

    #@f
    move-object/from16 v2, p5

    #@11
    move-object/from16 v3, p7

    #@13
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@16
    .line 2726
    const/16 v16, -0x1

    #@18
    .line 2727
    .local v16, "K":I
    const/16 v4, 0x6f

    #@1a
    move/from16 v0, p2

    #@1c
    if-eq v0, v4, :cond_0

    #@1e
    .line 2728
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@25
    move-result v16

    #@26
    .line 2732
    :goto_0
    move-object/from16 v0, p0

    #@28
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2a
    move-object/from16 v0, p0

    #@2c
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2e
    move-object/from16 v0, p0

    #@30
    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@33
    move-result-wide v6

    #@34
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@37
    move-result-object v4

    #@38
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@3b
    move-result v15

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@40
    move-object/from16 v0, p4

    #@42
    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@45
    move-result-wide v18

    #@46
    move-object/from16 v0, p0

    #@48
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4a
    move-object/from16 v0, p5

    #@4c
    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4f
    move-result-wide v20

    #@50
    move-object/from16 v0, p0

    #@52
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@54
    move-object/from16 v0, p7

    #@56
    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@59
    move-result-wide v23

    #@5a
    const/16 v8, 0x74

    #@5c
    const/4 v10, 0x0

    #@5d
    const/4 v11, 0x0

    #@5e
    const/4 v13, 0x0

    #@5f
    const/4 v14, 0x0

    #@60
    const/16 v25, 0x0

    #@62
    const/16 v26, 0x0

    #@64
    const/16 v27, 0x0

    #@66
    const/16 v28, 0x0

    #@68
    move/from16 v9, p2

    #@6a
    move/from16 v12, p1

    #@6c
    move/from16 v17, p3

    #@6e
    move/from16 v22, p6

    #@70
    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@73
    .line 2723
    return-void

    #@74
    .line 2730
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@77
    move-result-object v4

    #@78
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@7b
    move-result v16

    #@7c
    goto :goto_0
.end method

.method public SSYRK(IIFLandroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # F
    .param p6, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2590
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@3
    .line 2591
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@6
    .line 2592
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v2

    #@e
    const/4 v4, 0x0

    #@f
    const/4 v5, 0x0

    #@10
    const/4 v7, 0x0

    #@11
    move/from16 v3, p2

    #@13
    move-object/from16 v6, p4

    #@15
    move-object/from16 v8, p6

    #@17
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@1a
    .line 2593
    const/4 v14, -0x1

    #@1b
    .line 2594
    .local v14, "K":I
    const/16 v2, 0x6f

    #@1d
    move/from16 v0, p2

    #@1f
    if-eq v0, v2, :cond_0

    #@21
    .line 2595
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@28
    move-result v14

    #@29
    .line 2600
    :goto_0
    move-object/from16 v0, p0

    #@2b
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    move-object/from16 v0, p0

    #@2f
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@31
    move-object/from16 v0, p0

    #@33
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@36
    move-result-wide v4

    #@37
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3a
    move-result-object v2

    #@3b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@3e
    move-result v13

    #@3f
    move-object/from16 v0, p0

    #@41
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@43
    move-object/from16 v0, p4

    #@45
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@48
    move-result-wide v16

    #@49
    const-wide/16 v18, 0x0

    #@4b
    move-object/from16 v0, p0

    #@4d
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4f
    move-object/from16 v0, p6

    #@51
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@54
    move-result-wide v21

    #@55
    const/16 v6, 0x73

    #@57
    const/4 v8, 0x0

    #@58
    const/4 v9, 0x0

    #@59
    const/4 v11, 0x0

    #@5a
    const/4 v12, 0x0

    #@5b
    const/16 v23, 0x0

    #@5d
    const/16 v24, 0x0

    #@5f
    const/16 v25, 0x0

    #@61
    const/16 v26, 0x0

    #@63
    move/from16 v7, p2

    #@65
    move/from16 v10, p1

    #@67
    move/from16 v15, p3

    #@69
    move/from16 v20, p5

    #@6b
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@6e
    .line 2589
    return-void

    #@6f
    .line 2597
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@72
    move-result-object v2

    #@73
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@76
    move-result v14

    #@77
    goto :goto_0
.end method

.method public STBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    #@0
    .prologue
    .line 689
    if-gez p4, :cond_0

    #@2
    .line 690
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@4
    const-string/jumbo v3, "K must be greater than or equal to 0"

    #@7
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 692
    :cond_0
    move-object/from16 v0, p0

    #@d
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@f
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@12
    move-result-object v2

    #@13
    move/from16 v3, p1

    #@15
    move/from16 v4, p2

    #@17
    move/from16 v5, p3

    #@19
    move-object/from16 v6, p5

    #@1b
    move-object/from16 v7, p6

    #@1d
    move/from16 v8, p7

    #@1f
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@22
    .line 693
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@29
    move-result v13

    #@2a
    .line 694
    .local v13, "N":I
    move-object/from16 v0, p0

    #@2c
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@32
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v4

    #@38
    const/4 v15, 0x0

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3d
    move-object/from16 v0, p5

    #@3f
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@42
    move-result-wide v16

    #@43
    move-object/from16 v0, p0

    #@45
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@47
    move-object/from16 v0, p6

    #@49
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4c
    move-result-wide v18

    #@4d
    const/16 v20, 0x0

    #@4f
    const-wide/16 v21, 0x0

    #@51
    const/16 v6, 0x32

    #@53
    const/4 v8, 0x0

    #@54
    const/4 v9, 0x0

    #@55
    const/4 v12, 0x0

    #@56
    const/16 v24, 0x0

    #@58
    const/16 v25, 0x0

    #@5a
    const/16 v26, 0x0

    #@5c
    move/from16 v7, p2

    #@5e
    move/from16 v10, p1

    #@60
    move/from16 v11, p3

    #@62
    move/from16 v14, p4

    #@64
    move/from16 v23, p7

    #@66
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@69
    .line 687
    return-void
.end method

.method public STBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    #@0
    .prologue
    .line 1001
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p5

    #@10
    move-object/from16 v7, p6

    #@12
    move/from16 v8, p7

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@17
    .line 1002
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v13

    #@1f
    .line 1003
    .local v13, "N":I
    if-gez p4, :cond_0

    #@21
    .line 1004
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@23
    const-string/jumbo v3, "Number of diagonals must be positive"

    #@26
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 1006
    :cond_0
    move-object/from16 v0, p0

    #@2c
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@32
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v4

    #@38
    const/4 v15, 0x0

    #@39
    move-object/from16 v0, p0

    #@3b
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3d
    move-object/from16 v0, p5

    #@3f
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@42
    move-result-wide v16

    #@43
    move-object/from16 v0, p0

    #@45
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@47
    move-object/from16 v0, p6

    #@49
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4c
    move-result-wide v18

    #@4d
    const/16 v20, 0x0

    #@4f
    const-wide/16 v21, 0x0

    #@51
    const/16 v6, 0x35

    #@53
    const/4 v8, 0x0

    #@54
    const/4 v9, 0x0

    #@55
    const/4 v12, 0x0

    #@56
    const/16 v24, 0x0

    #@58
    const/16 v25, 0x0

    #@5a
    const/16 v26, 0x0

    #@5c
    move/from16 v7, p2

    #@5e
    move/from16 v10, p1

    #@60
    move/from16 v11, p3

    #@62
    move/from16 v14, p4

    #@64
    move/from16 v23, p7

    #@66
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@69
    .line 999
    return-void
.end method

.method public STPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 812
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    #@17
    move-result v13

    #@18
    .line 813
    .local v13, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v4

    #@26
    const/4 v15, 0x0

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2b
    move-object/from16 v0, p4

    #@2d
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@30
    move-result-wide v16

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@35
    move-object/from16 v0, p5

    #@37
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3a
    move-result-wide v18

    #@3b
    const/16 v20, 0x0

    #@3d
    const-wide/16 v21, 0x0

    #@3f
    const/16 v6, 0x33

    #@41
    const/4 v8, 0x0

    #@42
    const/4 v9, 0x0

    #@43
    const/4 v12, 0x0

    #@44
    const/4 v14, 0x0

    #@45
    const/16 v24, 0x0

    #@47
    const/16 v25, 0x0

    #@49
    const/16 v26, 0x0

    #@4b
    move/from16 v7, p2

    #@4d
    move/from16 v10, p1

    #@4f
    move/from16 v11, p3

    #@51
    move/from16 v23, p6

    #@53
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@56
    .line 811
    return-void
.end method

.method public STPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 1125
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    #@17
    move-result v13

    #@18
    .line 1126
    .local v13, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v4

    #@26
    const/4 v15, 0x0

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2b
    move-object/from16 v0, p4

    #@2d
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@30
    move-result-wide v16

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@35
    move-object/from16 v0, p5

    #@37
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3a
    move-result-wide v18

    #@3b
    const/16 v20, 0x0

    #@3d
    const-wide/16 v21, 0x0

    #@3f
    const/16 v6, 0x36

    #@41
    const/4 v8, 0x0

    #@42
    const/4 v9, 0x0

    #@43
    const/4 v12, 0x0

    #@44
    const/4 v14, 0x0

    #@45
    const/16 v24, 0x0

    #@47
    const/16 v25, 0x0

    #@49
    const/16 v26, 0x0

    #@4b
    move/from16 v7, p2

    #@4d
    move/from16 v10, p1

    #@4f
    move/from16 v11, p3

    #@51
    move/from16 v23, p6

    #@53
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@56
    .line 1123
    return-void
.end method

.method public STRMM(IIIIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # F
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2857
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 2858
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    #@6
    .line 2859
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v4

    #@e
    move/from16 v0, p1

    #@10
    move/from16 v1, p3

    #@12
    move-object/from16 v2, p6

    #@14
    move-object/from16 v3, p7

    #@16
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@19
    .line 2860
    move-object/from16 v0, p0

    #@1b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@26
    move-result-wide v6

    #@27
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@2e
    move-result v14

    #@2f
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@36
    move-result v15

    #@37
    .line 2861
    move-object/from16 v0, p0

    #@39
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3b
    move-object/from16 v0, p6

    #@3d
    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@40
    move-result-wide v18

    #@41
    move-object/from16 v0, p0

    #@43
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@45
    move-object/from16 v0, p7

    #@47
    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4a
    move-result-wide v20

    #@4b
    const-wide/16 v23, 0x0

    #@4d
    .line 2860
    const/16 v8, 0x75

    #@4f
    const/4 v10, 0x0

    #@50
    const/16 v16, 0x0

    #@52
    .line 2861
    const/16 v22, 0x0

    #@54
    const/16 v25, 0x0

    #@56
    const/16 v26, 0x0

    #@58
    const/16 v27, 0x0

    #@5a
    const/16 v28, 0x0

    #@5c
    move/from16 v9, p3

    #@5e
    move/from16 v11, p1

    #@60
    move/from16 v12, p2

    #@62
    move/from16 v13, p4

    #@64
    move/from16 v17, p5

    #@66
    .line 2860
    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@69
    .line 2856
    return-void
.end method

.method public STRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 604
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@17
    .line 605
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v13

    #@1f
    .line 606
    .local v13, "N":I
    move-object/from16 v0, p0

    #@21
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@27
    move-object/from16 v0, p0

    #@29
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@2c
    move-result-wide v4

    #@2d
    const/4 v15, 0x0

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@32
    move-object/from16 v0, p4

    #@34
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v16

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3c
    move-object/from16 v0, p5

    #@3e
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@41
    move-result-wide v18

    #@42
    const/16 v20, 0x0

    #@44
    const-wide/16 v21, 0x0

    #@46
    const/16 v6, 0x31

    #@48
    const/4 v8, 0x0

    #@49
    const/4 v9, 0x0

    #@4a
    const/4 v12, 0x0

    #@4b
    const/4 v14, 0x0

    #@4c
    const/16 v24, 0x0

    #@4e
    const/16 v25, 0x0

    #@50
    const/16 v26, 0x0

    #@52
    move/from16 v7, p2

    #@54
    move/from16 v10, p1

    #@56
    move/from16 v11, p3

    #@58
    move/from16 v23, p6

    #@5a
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@5d
    .line 603
    return-void
.end method

.method public STRSM(IIIIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 29
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # F
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2979
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 2980
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    #@6
    .line 2981
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v4

    #@e
    move/from16 v0, p1

    #@10
    move/from16 v1, p3

    #@12
    move-object/from16 v2, p6

    #@14
    move-object/from16 v3, p7

    #@16
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@19
    .line 2982
    move-object/from16 v0, p0

    #@1b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@26
    move-result-wide v6

    #@27
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@2e
    move-result v14

    #@2f
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@32
    move-result-object v4

    #@33
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@36
    move-result v15

    #@37
    .line 2983
    move-object/from16 v0, p0

    #@39
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3b
    move-object/from16 v0, p6

    #@3d
    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@40
    move-result-wide v18

    #@41
    move-object/from16 v0, p0

    #@43
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@45
    move-object/from16 v0, p7

    #@47
    invoke-virtual {v0, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4a
    move-result-wide v20

    #@4b
    const/16 v22, 0x0

    #@4d
    const-wide/16 v23, 0x0

    #@4f
    .line 2982
    const/16 v8, 0x76

    #@51
    const/4 v10, 0x0

    #@52
    const/16 v16, 0x0

    #@54
    .line 2983
    const/16 v25, 0x0

    #@56
    const/16 v26, 0x0

    #@58
    const/16 v27, 0x0

    #@5a
    const/16 v28, 0x0

    #@5c
    move/from16 v9, p3

    #@5e
    move/from16 v11, p1

    #@60
    move/from16 v12, p2

    #@62
    move/from16 v13, p4

    #@64
    move/from16 v17, p5

    #@66
    .line 2982
    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@69
    .line 2978
    return-void
.end method

.method public STRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 27
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 909
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@17
    .line 910
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v13

    #@1f
    .line 911
    .local v13, "N":I
    move-object/from16 v0, p0

    #@21
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@27
    move-object/from16 v0, p0

    #@29
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@2c
    move-result-wide v4

    #@2d
    const/4 v15, 0x0

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@32
    move-object/from16 v0, p4

    #@34
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v16

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3c
    move-object/from16 v0, p5

    #@3e
    invoke-virtual {v0, v2}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@41
    move-result-wide v18

    #@42
    const/16 v20, 0x0

    #@44
    const-wide/16 v21, 0x0

    #@46
    const/16 v6, 0x34

    #@48
    const/4 v8, 0x0

    #@49
    const/4 v9, 0x0

    #@4a
    const/4 v12, 0x0

    #@4b
    const/4 v14, 0x0

    #@4c
    const/16 v24, 0x0

    #@4e
    const/16 v25, 0x0

    #@50
    const/16 v26, 0x0

    #@52
    move/from16 v7, p2

    #@54
    move/from16 v10, p1

    #@56
    move/from16 v11, p3

    #@58
    move/from16 v23, p6

    #@5a
    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    #@5d
    .line 907
    return-void
.end method

.method public ZGBMV(IIILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "TransA"    # I
    .param p2, "KL"    # I
    .param p3, "KU"    # I
    .param p4, "alpha"    # Landroid/renderscript/Double2;
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # Landroid/renderscript/Double2;
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    #@0
    .prologue
    .line 524
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p5

    #@c
    move-object/from16 v5, p6

    #@e
    move/from16 v6, p7

    #@10
    move-object/from16 v7, p9

    #@12
    move/from16 v8, p10

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    #@17
    .line 525
    if-ltz p2, :cond_0

    #@19
    if-gez p3, :cond_1

    #@1b
    .line 526
    :cond_0
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@1d
    const-string/jumbo v3, "KL and KU must be greater than or equal to 0"

    #@20
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v2

    #@24
    .line 528
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@2b
    move-result v11

    #@2c
    .line 529
    .local v11, "M":I
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2f
    move-result-object v2

    #@30
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@33
    move-result v12

    #@34
    .line 530
    .local v12, "N":I
    move-object/from16 v0, p0

    #@36
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3c
    move-object/from16 v0, p0

    #@3e
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@41
    move-result-wide v3

    #@42
    move-object/from16 v0, p4

    #@44
    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    #@46
    move-object/from16 v0, p4

    #@48
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@4a
    move-wide/from16 v16, v0

    #@4c
    move-object/from16 v0, p0

    #@4e
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@50
    move-object/from16 v0, p5

    #@52
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@55
    move-result-wide v18

    #@56
    move-object/from16 v0, p0

    #@58
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@5a
    move-object/from16 v0, p6

    #@5c
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5f
    move-result-wide v20

    #@60
    move-object/from16 v0, p8

    #@62
    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    #@64
    move-wide/from16 v22, v0

    #@66
    move-object/from16 v0, p8

    #@68
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@6a
    move-wide/from16 v24, v0

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@70
    move-object/from16 v0, p9

    #@72
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@75
    move-result-wide v26

    #@76
    const/16 v5, 0x48

    #@78
    const/4 v7, 0x0

    #@79
    const/4 v8, 0x0

    #@7a
    const/4 v9, 0x0

    #@7b
    const/4 v10, 0x0

    #@7c
    const/4 v13, 0x0

    #@7d
    move/from16 v6, p1

    #@7f
    move/from16 v28, p7

    #@81
    move/from16 v29, p10

    #@83
    move/from16 v30, p2

    #@85
    move/from16 v31, p3

    #@87
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@8a
    .line 522
    return-void
.end method

.method public ZGEMM(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .locals 32
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2451
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@3
    .line 2452
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@6
    .line 2453
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v2

    #@e
    const/4 v5, 0x0

    #@f
    move/from16 v3, p1

    #@11
    move/from16 v4, p2

    #@13
    move-object/from16 v6, p4

    #@15
    move-object/from16 v7, p5

    #@17
    move-object/from16 v8, p7

    #@19
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@1c
    .line 2454
    const/4 v11, -0x1

    #@1d
    .local v11, "M":I
    const/4 v12, -0x1

    #@1e
    .local v12, "N":I
    const/4 v13, -0x1

    #@1f
    .line 2455
    .local v13, "K":I
    const/16 v2, 0x6f

    #@21
    move/from16 v0, p1

    #@23
    if-eq v0, v2, :cond_0

    #@25
    .line 2456
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@28
    move-result-object v2

    #@29
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@2c
    move-result v11

    #@2d
    .line 2457
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@34
    move-result v13

    #@35
    .line 2462
    :goto_0
    const/16 v2, 0x6f

    #@37
    move/from16 v0, p2

    #@39
    if-eq v0, v2, :cond_1

    #@3b
    .line 2463
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@42
    move-result v12

    #@43
    .line 2467
    :goto_1
    move-object/from16 v0, p0

    #@45
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4b
    move-object/from16 v0, p0

    #@4d
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@50
    move-result-wide v3

    #@51
    move-object/from16 v0, p3

    #@53
    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    #@55
    move-object/from16 v0, p3

    #@57
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@59
    move-wide/from16 v16, v0

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@5f
    move-object/from16 v0, p4

    #@61
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@64
    move-result-wide v18

    #@65
    move-object/from16 v0, p0

    #@67
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@69
    move-object/from16 v0, p5

    #@6b
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@6e
    move-result-wide v20

    #@6f
    .line 2468
    move-object/from16 v0, p6

    #@71
    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    #@73
    move-wide/from16 v22, v0

    #@75
    move-object/from16 v0, p6

    #@77
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@79
    move-wide/from16 v24, v0

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@7f
    move-object/from16 v0, p7

    #@81
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@84
    move-result-wide v26

    #@85
    .line 2467
    const/16 v5, 0x83

    #@87
    const/4 v8, 0x0

    #@88
    const/4 v9, 0x0

    #@89
    const/4 v10, 0x0

    #@8a
    .line 2468
    const/16 v28, 0x0

    #@8c
    const/16 v29, 0x0

    #@8e
    const/16 v30, 0x0

    #@90
    const/16 v31, 0x0

    #@92
    move/from16 v6, p1

    #@94
    move/from16 v7, p2

    #@96
    .line 2467
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@99
    .line 2450
    return-void

    #@9a
    .line 2459
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@9d
    move-result-object v2

    #@9e
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@a1
    move-result v11

    #@a2
    .line 2460
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@a5
    move-result-object v2

    #@a6
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@a9
    move-result v13

    #@aa
    goto :goto_0

    #@ab
    .line 2465
    :cond_1
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@ae
    move-result-object v2

    #@af
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@b2
    move-result v12

    #@b3
    goto :goto_1
.end method

.method public ZGEMV(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "TransA"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    #@0
    .prologue
    .line 387
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p3

    #@c
    move-object/from16 v5, p4

    #@e
    move/from16 v6, p5

    #@10
    move-object/from16 v7, p7

    #@12
    move/from16 v8, p8

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    #@17
    .line 388
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v11

    #@1f
    .line 389
    .local v11, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@26
    move-result v12

    #@27
    .line 390
    .local v12, "N":I
    move-object/from16 v0, p0

    #@29
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2b
    move-object/from16 v0, p0

    #@2d
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2f
    move-object/from16 v0, p0

    #@31
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@34
    move-result-wide v3

    #@35
    move-object/from16 v0, p2

    #@37
    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    #@39
    move-object/from16 v0, p2

    #@3b
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@3d
    move-wide/from16 v16, v0

    #@3f
    move-object/from16 v0, p0

    #@41
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@43
    move-object/from16 v0, p3

    #@45
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@48
    move-result-wide v18

    #@49
    move-object/from16 v0, p0

    #@4b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4d
    move-object/from16 v0, p4

    #@4f
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@52
    move-result-wide v20

    #@53
    move-object/from16 v0, p6

    #@55
    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    #@57
    move-wide/from16 v22, v0

    #@59
    move-object/from16 v0, p6

    #@5b
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@5d
    move-wide/from16 v24, v0

    #@5f
    move-object/from16 v0, p0

    #@61
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@63
    move-object/from16 v0, p7

    #@65
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@68
    move-result-wide v26

    #@69
    const/16 v5, 0x47

    #@6b
    const/4 v7, 0x0

    #@6c
    const/4 v8, 0x0

    #@6d
    const/4 v9, 0x0

    #@6e
    const/4 v10, 0x0

    #@6f
    const/4 v13, 0x0

    #@70
    const/16 v30, 0x0

    #@72
    const/16 v31, 0x0

    #@74
    move/from16 v6, p1

    #@76
    move/from16 v28, p5

    #@78
    move/from16 v29, p8

    #@7a
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@7d
    .line 386
    return-void
.end method

.method public ZGERC(Landroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 32
    .param p1, "alpha"    # Landroid/renderscript/Double2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2156
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move-object/from16 v3, p2

    #@a
    move/from16 v4, p3

    #@c
    move-object/from16 v5, p4

    #@e
    move/from16 v6, p5

    #@10
    move-object/from16 v7, p6

    #@12
    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    #@15
    .line 2157
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1c
    move-result v11

    #@1d
    .line 2158
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@24
    move-result v12

    #@25
    .line 2159
    .local v12, "N":I
    move-object/from16 v0, p0

    #@27
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@32
    move-result-wide v3

    #@33
    move-object/from16 v0, p1

    #@35
    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    #@37
    move-object/from16 v0, p1

    #@39
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@3b
    move-wide/from16 v16, v0

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@41
    move-object/from16 v0, p2

    #@43
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@46
    move-result-wide v18

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4b
    move-object/from16 v0, p4

    #@4d
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@50
    move-result-wide v20

    #@51
    const-wide/16 v22, 0x0

    #@53
    const-wide/16 v24, 0x0

    #@55
    move-object/from16 v0, p0

    #@57
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@59
    move-object/from16 v0, p6

    #@5b
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5e
    move-result-wide v26

    #@5f
    const/16 v5, 0x6c

    #@61
    const/4 v6, 0x0

    #@62
    const/4 v7, 0x0

    #@63
    const/4 v8, 0x0

    #@64
    const/4 v9, 0x0

    #@65
    const/4 v10, 0x0

    #@66
    const/4 v13, 0x0

    #@67
    const/16 v30, 0x0

    #@69
    const/16 v31, 0x0

    #@6b
    move/from16 v28, p3

    #@6d
    move/from16 v29, p5

    #@6f
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@72
    .line 2154
    return-void
.end method

.method public ZGERU(Landroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 32
    .param p1, "alpha"    # Landroid/renderscript/Double2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2135
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move-object/from16 v3, p2

    #@a
    move/from16 v4, p3

    #@c
    move-object/from16 v5, p4

    #@e
    move/from16 v6, p5

    #@10
    move-object/from16 v7, p6

    #@12
    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    #@15
    .line 2136
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1c
    move-result v11

    #@1d
    .line 2137
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@20
    move-result-object v2

    #@21
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@24
    move-result v12

    #@25
    .line 2138
    .local v12, "N":I
    move-object/from16 v0, p0

    #@27
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@32
    move-result-wide v3

    #@33
    move-object/from16 v0, p1

    #@35
    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    #@37
    move-object/from16 v0, p1

    #@39
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@3b
    move-wide/from16 v16, v0

    #@3d
    move-object/from16 v0, p0

    #@3f
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@41
    move-object/from16 v0, p2

    #@43
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@46
    move-result-wide v18

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4b
    move-object/from16 v0, p4

    #@4d
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@50
    move-result-wide v20

    #@51
    const-wide/16 v22, 0x0

    #@53
    const-wide/16 v24, 0x0

    #@55
    move-object/from16 v0, p0

    #@57
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@59
    move-object/from16 v0, p6

    #@5b
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5e
    move-result-wide v26

    #@5f
    const/16 v5, 0x6b

    #@61
    const/4 v6, 0x0

    #@62
    const/4 v7, 0x0

    #@63
    const/4 v8, 0x0

    #@64
    const/4 v9, 0x0

    #@65
    const/4 v10, 0x0

    #@66
    const/4 v13, 0x0

    #@67
    const/16 v30, 0x0

    #@69
    const/16 v31, 0x0

    #@6b
    move/from16 v28, p3

    #@6d
    move/from16 v29, p5

    #@6f
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@72
    .line 2134
    return-void
.end method

.method public ZHBMV(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # Landroid/renderscript/Double2;
    .param p8, "Y"    # Landroid/renderscript/Allocation;
    .param p9, "incY"    # I

    #@0
    .prologue
    .line 2085
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p5

    #@c
    move/from16 v5, p6

    #@e
    move-object/from16 v6, p8

    #@10
    move/from16 v7, p9

    #@12
    move-object/from16 v8, p4

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@17
    move-result v12

    #@18
    .line 2086
    .local v12, "N":I
    if-gez p2, :cond_0

    #@1a
    .line 2087
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@1c
    const-string/jumbo v3, "K must be 0 or greater for HBMV"

    #@1f
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v2

    #@23
    .line 2089
    :cond_0
    move-object/from16 v0, p0

    #@25
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2b
    move-object/from16 v0, p0

    #@2d
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@30
    move-result-wide v3

    #@31
    move-object/from16 v0, p3

    #@33
    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    #@35
    move-object/from16 v0, p3

    #@37
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@39
    move-wide/from16 v16, v0

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3f
    move-object/from16 v0, p4

    #@41
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@44
    move-result-wide v18

    #@45
    move-object/from16 v0, p0

    #@47
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@49
    move-object/from16 v0, p5

    #@4b
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4e
    move-result-wide v20

    #@4f
    move-object/from16 v0, p7

    #@51
    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    #@53
    move-wide/from16 v22, v0

    #@55
    move-object/from16 v0, p7

    #@57
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@59
    move-wide/from16 v24, v0

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@5f
    move-object/from16 v0, p8

    #@61
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@64
    move-result-wide v26

    #@65
    const/16 v5, 0x69

    #@67
    const/4 v6, 0x0

    #@68
    const/4 v7, 0x0

    #@69
    const/4 v8, 0x0

    #@6a
    const/4 v10, 0x0

    #@6b
    const/4 v11, 0x0

    #@6c
    const/16 v30, 0x0

    #@6e
    const/16 v31, 0x0

    #@70
    move/from16 v9, p1

    #@72
    move/from16 v13, p2

    #@74
    move/from16 v28, p6

    #@76
    move/from16 v29, p9

    #@78
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@7b
    .line 2083
    return-void
.end method

.method public ZHEMM(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 3115
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 3116
    move-object/from16 v0, p0

    #@5
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@a
    move-result-object v4

    #@b
    move/from16 v0, p1

    #@d
    move-object/from16 v1, p4

    #@f
    move-object/from16 v2, p5

    #@11
    move-object/from16 v3, p7

    #@13
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHEMM(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@16
    .line 3117
    move-object/from16 v0, p0

    #@18
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1a
    move-object/from16 v0, p0

    #@1c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1e
    move-object/from16 v0, p0

    #@20
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@23
    move-result-wide v5

    #@24
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    #@2b
    move-result v13

    #@2c
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2f
    move-result-object v7

    #@30
    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    #@33
    move-result v14

    #@34
    .line 3118
    move-object/from16 v0, p3

    #@36
    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    #@38
    move-wide/from16 v16, v0

    #@3a
    move-object/from16 v0, p3

    #@3c
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@3e
    move-wide/from16 v18, v0

    #@40
    move-object/from16 v0, p0

    #@42
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@44
    move-object/from16 v0, p4

    #@46
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@49
    move-result-wide v20

    #@4a
    move-object/from16 v0, p0

    #@4c
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4e
    move-object/from16 v0, p5

    #@50
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@53
    move-result-wide v22

    #@54
    move-object/from16 v0, p6

    #@56
    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    #@58
    move-wide/from16 v24, v0

    #@5a
    move-object/from16 v0, p6

    #@5c
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@5e
    move-wide/from16 v26, v0

    #@60
    move-object/from16 v0, p0

    #@62
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@64
    move-object/from16 v0, p7

    #@66
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@69
    move-result-wide v28

    #@6a
    .line 3117
    const/16 v7, 0x8c

    #@6c
    const/4 v8, 0x0

    #@6d
    const/4 v9, 0x0

    #@6e
    const/4 v12, 0x0

    #@6f
    const/4 v15, 0x0

    #@70
    .line 3118
    const/16 v30, 0x0

    #@72
    const/16 v31, 0x0

    #@74
    const/16 v32, 0x0

    #@76
    const/16 v33, 0x0

    #@78
    move/from16 v10, p1

    #@7a
    move/from16 v11, p2

    #@7c
    .line 3117
    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@7f
    .line 3114
    return-void
.end method

.method public ZHEMV(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    #@0
    .prologue
    .line 2056
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p4

    #@c
    move/from16 v5, p5

    #@e
    move-object/from16 v6, p7

    #@10
    move/from16 v7, p8

    #@12
    move-object/from16 v8, p3

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@17
    move-result v12

    #@18
    .line 2057
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    move-object/from16 v0, p2

    #@28
    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    #@2a
    move-object/from16 v0, p2

    #@2c
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@2e
    move-wide/from16 v16, v0

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@34
    move-object/from16 v0, p3

    #@36
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@39
    move-result-wide v18

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p4

    #@40
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v20

    #@44
    move-object/from16 v0, p6

    #@46
    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    #@48
    move-wide/from16 v22, v0

    #@4a
    move-object/from16 v0, p6

    #@4c
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@4e
    move-wide/from16 v24, v0

    #@50
    move-object/from16 v0, p0

    #@52
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@54
    move-object/from16 v0, p7

    #@56
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@59
    move-result-wide v26

    #@5a
    const/16 v5, 0x68

    #@5c
    const/4 v6, 0x0

    #@5d
    const/4 v7, 0x0

    #@5e
    const/4 v8, 0x0

    #@5f
    const/4 v10, 0x0

    #@60
    const/4 v11, 0x0

    #@61
    const/4 v13, 0x0

    #@62
    const/16 v30, 0x0

    #@64
    const/16 v31, 0x0

    #@66
    move/from16 v9, p1

    #@68
    move/from16 v28, p5

    #@6a
    move/from16 v29, p8

    #@6c
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@6f
    .line 2054
    return-void
.end method

.method public ZHER(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2176
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v4

    #@8
    move/from16 v0, p1

    #@a
    move-object/from16 v1, p4

    #@c
    move/from16 v2, p5

    #@e
    move-object/from16 v3, p6

    #@10
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@13
    move-result v14

    #@14
    .line 2177
    .local v14, "N":I
    move-object/from16 v0, p0

    #@16
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@18
    move-object/from16 v0, p0

    #@1a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@21
    move-result-wide v5

    #@22
    const-wide/16 v18, 0x0

    #@24
    move-object/from16 v0, p0

    #@26
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@28
    move-object/from16 v0, p4

    #@2a
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2d
    move-result-wide v20

    #@2e
    const-wide/16 v22, 0x0

    #@30
    const-wide/16 v24, 0x0

    #@32
    const-wide/16 v26, 0x0

    #@34
    move-object/from16 v0, p0

    #@36
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@38
    move-object/from16 v0, p6

    #@3a
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3d
    move-result-wide v28

    #@3e
    const/16 v7, 0x6d

    #@40
    const/4 v8, 0x0

    #@41
    const/4 v9, 0x0

    #@42
    const/4 v10, 0x0

    #@43
    const/4 v12, 0x0

    #@44
    const/4 v13, 0x0

    #@45
    const/4 v15, 0x0

    #@46
    const/16 v31, 0x0

    #@48
    const/16 v32, 0x0

    #@4a
    const/16 v33, 0x0

    #@4c
    move/from16 v11, p1

    #@4e
    move-wide/from16 v16, p2

    #@50
    move/from16 v30, p5

    #@52
    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@55
    .line 2174
    return-void
.end method

.method public ZHER2(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2222
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p3

    #@c
    move/from16 v5, p4

    #@e
    move-object/from16 v6, p5

    #@10
    move/from16 v7, p6

    #@12
    move-object/from16 v8, p7

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@17
    move-result v12

    #@18
    .line 2223
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    move-object/from16 v0, p2

    #@28
    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    #@2a
    move-object/from16 v0, p2

    #@2c
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@2e
    move-wide/from16 v16, v0

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@34
    move-object/from16 v0, p3

    #@36
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@39
    move-result-wide v18

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p5

    #@40
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v20

    #@44
    const-wide/16 v22, 0x0

    #@46
    const-wide/16 v24, 0x0

    #@48
    move-object/from16 v0, p0

    #@4a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4c
    move-object/from16 v0, p7

    #@4e
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@51
    move-result-wide v26

    #@52
    const/16 v5, 0x6f

    #@54
    const/4 v6, 0x0

    #@55
    const/4 v7, 0x0

    #@56
    const/4 v8, 0x0

    #@57
    const/4 v10, 0x0

    #@58
    const/4 v11, 0x0

    #@59
    const/4 v13, 0x0

    #@5a
    const/16 v30, 0x0

    #@5c
    const/16 v31, 0x0

    #@5e
    move/from16 v9, p1

    #@60
    move/from16 v28, p4

    #@62
    move/from16 v29, p6

    #@64
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@67
    .line 2220
    return-void
.end method

.method public ZHER2K(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # D
    .param p8, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 3261
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 3262
    move-object/from16 v0, p0

    #@5
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@a
    move-result-object v4

    #@b
    move/from16 v0, p2

    #@d
    move-object/from16 v1, p4

    #@f
    move-object/from16 v2, p5

    #@11
    move-object/from16 v3, p8

    #@13
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHER2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@16
    .line 3263
    const/4 v15, 0x0

    #@17
    .line 3264
    .local v15, "k":I
    const/16 v4, 0x6f

    #@19
    move/from16 v0, p2

    #@1b
    if-ne v0, v4, :cond_0

    #@1d
    .line 3265
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@24
    move-result v15

    #@25
    .line 3269
    :goto_0
    move-object/from16 v0, p0

    #@27
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@32
    move-result-wide v5

    #@33
    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    #@3a
    move-result v14

    #@3b
    move-object/from16 v0, p3

    #@3d
    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    #@3f
    move-wide/from16 v16, v0

    #@41
    move-object/from16 v0, p3

    #@43
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@45
    move-wide/from16 v18, v0

    #@47
    .line 3270
    move-object/from16 v0, p0

    #@49
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4b
    move-object/from16 v0, p4

    #@4d
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@50
    move-result-wide v20

    #@51
    move-object/from16 v0, p0

    #@53
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@55
    move-object/from16 v0, p5

    #@57
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5a
    move-result-wide v22

    #@5b
    const-wide/16 v26, 0x0

    #@5d
    move-object/from16 v0, p0

    #@5f
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@61
    move-object/from16 v0, p8

    #@63
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@66
    move-result-wide v28

    #@67
    .line 3269
    const/16 v7, 0x8e

    #@69
    const/4 v9, 0x0

    #@6a
    const/4 v10, 0x0

    #@6b
    const/4 v12, 0x0

    #@6c
    const/4 v13, 0x0

    #@6d
    .line 3270
    const/16 v30, 0x0

    #@6f
    const/16 v31, 0x0

    #@71
    const/16 v32, 0x0

    #@73
    const/16 v33, 0x0

    #@75
    move/from16 v8, p2

    #@77
    move/from16 v11, p1

    #@79
    move-wide/from16 v24, p6

    #@7b
    .line 3269
    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@7e
    .line 3260
    return-void

    #@7f
    .line 3267
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@82
    move-result-object v4

    #@83
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@86
    move-result v15

    #@87
    goto :goto_0
.end method

.method public ZHERK(IIDLandroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # D
    .param p8, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 3182
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 3183
    move-object/from16 v0, p0

    #@5
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@a
    move-result-object v4

    #@b
    move/from16 v0, p2

    #@d
    move-object/from16 v1, p5

    #@f
    move-object/from16 v2, p8

    #@11
    invoke-static {v4, v0, v1, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHERK(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@14
    .line 3184
    const/4 v15, 0x0

    #@15
    .line 3185
    .local v15, "k":I
    const/16 v4, 0x71

    #@17
    move/from16 v0, p2

    #@19
    if-ne v0, v4, :cond_0

    #@1b
    .line 3186
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1e
    move-result-object v4

    #@1f
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@22
    move-result v15

    #@23
    .line 3190
    :goto_0
    move-object/from16 v0, p0

    #@25
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2b
    move-object/from16 v0, p0

    #@2d
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@30
    move-result-wide v5

    #@31
    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    #@38
    move-result v14

    #@39
    .line 3191
    const-wide/16 v18, 0x0

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3f
    move-object/from16 v0, p5

    #@41
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@44
    move-result-wide v20

    #@45
    const-wide/16 v22, 0x0

    #@47
    const-wide/16 v26, 0x0

    #@49
    move-object/from16 v0, p0

    #@4b
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4d
    move-object/from16 v0, p8

    #@4f
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@52
    move-result-wide v28

    #@53
    .line 3190
    const/16 v7, 0x8d

    #@55
    const/4 v9, 0x0

    #@56
    const/4 v10, 0x0

    #@57
    const/4 v12, 0x0

    #@58
    const/4 v13, 0x0

    #@59
    .line 3191
    const/16 v30, 0x0

    #@5b
    const/16 v31, 0x0

    #@5d
    const/16 v32, 0x0

    #@5f
    const/16 v33, 0x0

    #@61
    move/from16 v8, p2

    #@63
    move/from16 v11, p1

    #@65
    move-wide/from16 v16, p3

    #@67
    move-wide/from16 v24, p6

    #@69
    .line 3190
    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@6c
    .line 3181
    return-void

    #@6d
    .line 3188
    :cond_0
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@70
    move-result-object v4

    #@71
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@74
    move-result v15

    #@75
    goto :goto_0
.end method

.method public ZHPMV(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "Ap"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    #@0
    .prologue
    .line 2117
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p4

    #@c
    move/from16 v5, p5

    #@e
    move-object/from16 v6, p7

    #@10
    move/from16 v7, p8

    #@12
    move-object/from16 v8, p3

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@17
    move-result v12

    #@18
    .line 2118
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    move-object/from16 v0, p2

    #@28
    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    #@2a
    move-object/from16 v0, p2

    #@2c
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@2e
    move-wide/from16 v16, v0

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@34
    move-object/from16 v0, p3

    #@36
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@39
    move-result-wide v18

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p4

    #@40
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v20

    #@44
    move-object/from16 v0, p6

    #@46
    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    #@48
    move-wide/from16 v22, v0

    #@4a
    move-object/from16 v0, p6

    #@4c
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@4e
    move-wide/from16 v24, v0

    #@50
    move-object/from16 v0, p0

    #@52
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@54
    move-object/from16 v0, p7

    #@56
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@59
    move-result-wide v26

    #@5a
    const/16 v5, 0x6a

    #@5c
    const/4 v6, 0x0

    #@5d
    const/4 v7, 0x0

    #@5e
    const/4 v8, 0x0

    #@5f
    const/4 v10, 0x0

    #@60
    const/4 v11, 0x0

    #@61
    const/4 v13, 0x0

    #@62
    const/16 v30, 0x0

    #@64
    const/16 v31, 0x0

    #@66
    move/from16 v9, p1

    #@68
    move/from16 v28, p5

    #@6a
    move/from16 v29, p8

    #@6c
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@6f
    .line 2115
    return-void
.end method

.method public ZHPR(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Ap"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2202
    move-object/from16 v0, p0

    #@2
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v4

    #@8
    move/from16 v0, p1

    #@a
    move-object/from16 v1, p4

    #@c
    move/from16 v2, p5

    #@e
    move-object/from16 v3, p6

    #@10
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@13
    move-result v14

    #@14
    .line 2203
    .local v14, "N":I
    move-object/from16 v0, p0

    #@16
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@18
    move-object/from16 v0, p0

    #@1a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@21
    move-result-wide v5

    #@22
    const-wide/16 v18, 0x0

    #@24
    move-object/from16 v0, p0

    #@26
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@28
    move-object/from16 v0, p4

    #@2a
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@2d
    move-result-wide v20

    #@2e
    const-wide/16 v22, 0x0

    #@30
    const-wide/16 v24, 0x0

    #@32
    const-wide/16 v26, 0x0

    #@34
    move-object/from16 v0, p0

    #@36
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@38
    move-object/from16 v0, p6

    #@3a
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3d
    move-result-wide v28

    #@3e
    const/16 v7, 0x6e

    #@40
    const/4 v8, 0x0

    #@41
    const/4 v9, 0x0

    #@42
    const/4 v10, 0x0

    #@43
    const/4 v12, 0x0

    #@44
    const/4 v13, 0x0

    #@45
    const/4 v15, 0x0

    #@46
    const/16 v31, 0x0

    #@48
    const/16 v32, 0x0

    #@4a
    const/16 v33, 0x0

    #@4c
    move/from16 v11, p1

    #@4e
    move-wide/from16 v16, p2

    #@50
    move/from16 v30, p5

    #@52
    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@55
    .line 2200
    return-void
.end method

.method public ZHPR2(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "Ap"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2250
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move-object/from16 v4, p3

    #@c
    move/from16 v5, p4

    #@e
    move-object/from16 v6, p5

    #@10
    move/from16 v7, p6

    #@12
    move-object/from16 v8, p7

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    #@17
    move-result v12

    #@18
    .line 2251
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    move-object/from16 v0, p2

    #@28
    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    #@2a
    move-object/from16 v0, p2

    #@2c
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@2e
    move-wide/from16 v16, v0

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@34
    move-object/from16 v0, p3

    #@36
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@39
    move-result-wide v18

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p5

    #@40
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v20

    #@44
    const-wide/16 v22, 0x0

    #@46
    const-wide/16 v24, 0x0

    #@48
    move-object/from16 v0, p0

    #@4a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4c
    move-object/from16 v0, p7

    #@4e
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@51
    move-result-wide v26

    #@52
    const/16 v5, 0x70

    #@54
    const/4 v6, 0x0

    #@55
    const/4 v7, 0x0

    #@56
    const/4 v8, 0x0

    #@57
    const/4 v10, 0x0

    #@58
    const/4 v11, 0x0

    #@59
    const/4 v13, 0x0

    #@5a
    const/16 v30, 0x0

    #@5c
    const/16 v31, 0x0

    #@5e
    move/from16 v9, p1

    #@60
    move/from16 v28, p4

    #@62
    move/from16 v29, p6

    #@64
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@67
    .line 2248
    return-void
.end method

.method public ZSYMM(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .locals 32
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2566
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    #@3
    .line 2567
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@6
    .line 2568
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@d
    move-result v2

    #@e
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    #@15
    move-result v3

    #@16
    if-eq v2, v3, :cond_0

    #@18
    .line 2569
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@1a
    const-string/jumbo v3, "Matrix A is not symmetric"

    #@1d
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@20
    throw v2

    #@21
    .line 2571
    :cond_0
    move-object/from16 v0, p0

    #@23
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@25
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@28
    move-result-object v2

    #@29
    const/4 v3, 0x0

    #@2a
    const/4 v4, 0x0

    #@2b
    move/from16 v5, p1

    #@2d
    move-object/from16 v6, p4

    #@2f
    move-object/from16 v7, p5

    #@31
    move-object/from16 v8, p7

    #@33
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@36
    .line 2572
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3a
    move-object/from16 v0, p0

    #@3c
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3e
    move-object/from16 v0, p0

    #@40
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@43
    move-result-wide v3

    #@44
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@47
    move-result-object v5

    #@48
    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    #@4b
    move-result v11

    #@4c
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@4f
    move-result-object v5

    #@50
    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    #@53
    move-result v12

    #@54
    move-object/from16 v0, p3

    #@56
    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    #@58
    move-object/from16 v0, p3

    #@5a
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@5c
    move-wide/from16 v16, v0

    #@5e
    move-object/from16 v0, p0

    #@60
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@62
    move-object/from16 v0, p4

    #@64
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@67
    move-result-wide v18

    #@68
    move-object/from16 v0, p0

    #@6a
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@6c
    move-object/from16 v0, p5

    #@6e
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@71
    move-result-wide v20

    #@72
    .line 2573
    move-object/from16 v0, p6

    #@74
    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    #@76
    move-wide/from16 v22, v0

    #@78
    move-object/from16 v0, p6

    #@7a
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@7c
    move-wide/from16 v24, v0

    #@7e
    move-object/from16 v0, p0

    #@80
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@82
    move-object/from16 v0, p7

    #@84
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@87
    move-result-wide v26

    #@88
    .line 2572
    const/16 v5, 0x84

    #@8a
    const/4 v6, 0x0

    #@8b
    const/4 v7, 0x0

    #@8c
    const/4 v10, 0x0

    #@8d
    const/4 v13, 0x0

    #@8e
    .line 2573
    const/16 v28, 0x0

    #@90
    const/16 v29, 0x0

    #@92
    const/16 v30, 0x0

    #@94
    const/16 v31, 0x0

    #@96
    move/from16 v8, p1

    #@98
    move/from16 v9, p2

    #@9a
    .line 2572
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@9d
    .line 2565
    return-void
.end method

.method public ZSYR2K(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2802
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 2803
    move-object/from16 v0, p0

    #@5
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@7
    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@a
    move-result-object v4

    #@b
    move/from16 v0, p2

    #@d
    move-object/from16 v1, p4

    #@f
    move-object/from16 v2, p5

    #@11
    move-object/from16 v3, p7

    #@13
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@16
    .line 2804
    const/4 v15, -0x1

    #@17
    .line 2805
    .local v15, "K":I
    const/16 v4, 0x6f

    #@19
    move/from16 v0, p2

    #@1b
    if-eq v0, v4, :cond_0

    #@1d
    .line 2806
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@20
    move-result-object v4

    #@21
    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    #@24
    move-result v15

    #@25
    .line 2810
    :goto_0
    move-object/from16 v0, p0

    #@27
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@29
    move-object/from16 v0, p0

    #@2b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    move-object/from16 v0, p0

    #@2f
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@32
    move-result-wide v5

    #@33
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    #@3a
    move-result v14

    #@3b
    move-object/from16 v0, p3

    #@3d
    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    #@3f
    move-wide/from16 v16, v0

    #@41
    move-object/from16 v0, p3

    #@43
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@45
    move-wide/from16 v18, v0

    #@47
    move-object/from16 v0, p0

    #@49
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4b
    move-object/from16 v0, p4

    #@4d
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@50
    move-result-wide v20

    #@51
    move-object/from16 v0, p0

    #@53
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@55
    move-object/from16 v0, p5

    #@57
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@5a
    move-result-wide v22

    #@5b
    move-object/from16 v0, p6

    #@5d
    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    #@5f
    move-wide/from16 v24, v0

    #@61
    move-object/from16 v0, p6

    #@63
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@65
    move-wide/from16 v26, v0

    #@67
    move-object/from16 v0, p0

    #@69
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@6b
    move-object/from16 v0, p7

    #@6d
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@70
    move-result-wide v28

    #@71
    const/16 v7, 0x86

    #@73
    const/4 v9, 0x0

    #@74
    const/4 v10, 0x0

    #@75
    const/4 v12, 0x0

    #@76
    const/4 v13, 0x0

    #@77
    const/16 v30, 0x0

    #@79
    const/16 v31, 0x0

    #@7b
    const/16 v32, 0x0

    #@7d
    const/16 v33, 0x0

    #@7f
    move/from16 v8, p2

    #@81
    move/from16 v11, p1

    #@83
    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@86
    .line 2801
    return-void

    #@87
    .line 2808
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@8a
    move-result-object v4

    #@8b
    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    #@8e
    move-result v15

    #@8f
    goto :goto_0
.end method

.method public ZSYRK(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # Landroid/renderscript/Double2;
    .param p6, "C"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2670
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    #@3
    .line 2671
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@6
    .line 2672
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v2

    #@e
    const/4 v4, 0x0

    #@f
    const/4 v5, 0x0

    #@10
    const/4 v7, 0x0

    #@11
    move/from16 v3, p2

    #@13
    move-object/from16 v6, p4

    #@15
    move-object/from16 v8, p6

    #@17
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@1a
    .line 2673
    const/4 v13, -0x1

    #@1b
    .line 2674
    .local v13, "K":I
    const/16 v2, 0x6f

    #@1d
    move/from16 v0, p2

    #@1f
    if-eq v0, v2, :cond_0

    #@21
    .line 2675
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@28
    move-result v13

    #@29
    .line 2679
    :goto_0
    move-object/from16 v0, p0

    #@2b
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2d
    move-object/from16 v0, p0

    #@2f
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@31
    move-object/from16 v0, p0

    #@33
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@36
    move-result-wide v3

    #@37
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    #@3e
    move-result v12

    #@3f
    move-object/from16 v0, p3

    #@41
    iget-wide v14, v0, Landroid/renderscript/Double2;->x:D

    #@43
    move-object/from16 v0, p3

    #@45
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@47
    move-wide/from16 v16, v0

    #@49
    move-object/from16 v0, p0

    #@4b
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4d
    move-object/from16 v0, p4

    #@4f
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@52
    move-result-wide v18

    #@53
    const-wide/16 v20, 0x0

    #@55
    move-object/from16 v0, p5

    #@57
    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    #@59
    move-wide/from16 v22, v0

    #@5b
    move-object/from16 v0, p5

    #@5d
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@5f
    move-wide/from16 v24, v0

    #@61
    .line 2680
    move-object/from16 v0, p0

    #@63
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@65
    move-object/from16 v0, p6

    #@67
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@6a
    move-result-wide v26

    #@6b
    .line 2679
    const/16 v5, 0x85

    #@6d
    const/4 v7, 0x0

    #@6e
    const/4 v8, 0x0

    #@6f
    const/4 v10, 0x0

    #@70
    const/4 v11, 0x0

    #@71
    .line 2680
    const/16 v28, 0x0

    #@73
    const/16 v29, 0x0

    #@75
    const/16 v30, 0x0

    #@77
    const/16 v31, 0x0

    #@79
    move/from16 v6, p2

    #@7b
    move/from16 v9, p1

    #@7d
    .line 2679
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@80
    .line 2669
    return-void

    #@81
    .line 2677
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@84
    move-result-object v2

    #@85
    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    #@88
    move-result v13

    #@89
    goto :goto_0
.end method

.method public ZTBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    #@0
    .prologue
    .line 782
    if-gez p4, :cond_0

    #@2
    .line 783
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@4
    const-string/jumbo v3, "K must be greater than or equal to 0"

    #@7
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 785
    :cond_0
    move-object/from16 v0, p0

    #@d
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@f
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@12
    move-result-object v2

    #@13
    move/from16 v3, p1

    #@15
    move/from16 v4, p2

    #@17
    move/from16 v5, p3

    #@19
    move-object/from16 v6, p5

    #@1b
    move-object/from16 v7, p6

    #@1d
    move/from16 v8, p7

    #@1f
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@22
    .line 786
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@29
    move-result v12

    #@2a
    .line 787
    .local v12, "N":I
    move-object/from16 v0, p0

    #@2c
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@32
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v3

    #@38
    const-wide/16 v14, 0x0

    #@3a
    const-wide/16 v16, 0x0

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@40
    move-object/from16 v0, p5

    #@42
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@45
    move-result-wide v18

    #@46
    move-object/from16 v0, p0

    #@48
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4a
    move-object/from16 v0, p6

    #@4c
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4f
    move-result-wide v20

    #@50
    const-wide/16 v22, 0x0

    #@52
    const-wide/16 v24, 0x0

    #@54
    const-wide/16 v26, 0x0

    #@56
    const/16 v5, 0x4a

    #@58
    const/4 v7, 0x0

    #@59
    const/4 v8, 0x0

    #@5a
    const/4 v11, 0x0

    #@5b
    const/16 v29, 0x0

    #@5d
    const/16 v30, 0x0

    #@5f
    const/16 v31, 0x0

    #@61
    move/from16 v6, p2

    #@63
    move/from16 v9, p1

    #@65
    move/from16 v10, p3

    #@67
    move/from16 v13, p4

    #@69
    move/from16 v28, p7

    #@6b
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@6e
    .line 780
    return-void
.end method

.method public ZTBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    #@0
    .prologue
    .line 1094
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p5

    #@10
    move-object/from16 v7, p6

    #@12
    move/from16 v8, p7

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@17
    .line 1095
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v12

    #@1f
    .line 1096
    .local v12, "N":I
    if-gez p4, :cond_0

    #@21
    .line 1097
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    #@23
    const-string/jumbo v3, "Number of diagonals must be positive"

    #@26
    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    #@29
    throw v2

    #@2a
    .line 1099
    :cond_0
    move-object/from16 v0, p0

    #@2c
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2e
    move-object/from16 v0, p0

    #@30
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@32
    move-object/from16 v0, p0

    #@34
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@37
    move-result-wide v3

    #@38
    const-wide/16 v14, 0x0

    #@3a
    const-wide/16 v16, 0x0

    #@3c
    move-object/from16 v0, p0

    #@3e
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@40
    move-object/from16 v0, p5

    #@42
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@45
    move-result-wide v18

    #@46
    move-object/from16 v0, p0

    #@48
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4a
    move-object/from16 v0, p6

    #@4c
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4f
    move-result-wide v20

    #@50
    const-wide/16 v22, 0x0

    #@52
    const-wide/16 v24, 0x0

    #@54
    const-wide/16 v26, 0x0

    #@56
    const/16 v5, 0x4d

    #@58
    const/4 v7, 0x0

    #@59
    const/4 v8, 0x0

    #@5a
    const/4 v11, 0x0

    #@5b
    const/16 v29, 0x0

    #@5d
    const/16 v30, 0x0

    #@5f
    const/16 v31, 0x0

    #@61
    move/from16 v6, p2

    #@63
    move/from16 v9, p1

    #@65
    move/from16 v10, p3

    #@67
    move/from16 v13, p4

    #@69
    move/from16 v28, p7

    #@6b
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@6e
    .line 1092
    return-void
.end method

.method public ZTPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 890
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    #@17
    move-result v12

    #@18
    .line 891
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    const-wide/16 v14, 0x0

    #@28
    const-wide/16 v16, 0x0

    #@2a
    move-object/from16 v0, p0

    #@2c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2e
    move-object/from16 v0, p4

    #@30
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@33
    move-result-wide v18

    #@34
    move-object/from16 v0, p0

    #@36
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@38
    move-object/from16 v0, p5

    #@3a
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3d
    move-result-wide v20

    #@3e
    const-wide/16 v22, 0x0

    #@40
    const-wide/16 v24, 0x0

    #@42
    const-wide/16 v26, 0x0

    #@44
    const/16 v5, 0x4b

    #@46
    const/4 v7, 0x0

    #@47
    const/4 v8, 0x0

    #@48
    const/4 v11, 0x0

    #@49
    const/4 v13, 0x0

    #@4a
    const/16 v29, 0x0

    #@4c
    const/16 v30, 0x0

    #@4e
    const/16 v31, 0x0

    #@50
    move/from16 v6, p2

    #@52
    move/from16 v9, p1

    #@54
    move/from16 v10, p3

    #@56
    move/from16 v28, p6

    #@58
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@5b
    .line 889
    return-void
.end method

.method public ZTPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 1206
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    #@17
    move-result v12

    #@18
    .line 1207
    .local v12, "N":I
    move-object/from16 v0, p0

    #@1a
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@20
    move-object/from16 v0, p0

    #@22
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@25
    move-result-wide v3

    #@26
    const-wide/16 v14, 0x0

    #@28
    const-wide/16 v16, 0x0

    #@2a
    move-object/from16 v0, p0

    #@2c
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@2e
    move-object/from16 v0, p4

    #@30
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@33
    move-result-wide v18

    #@34
    move-object/from16 v0, p0

    #@36
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@38
    move-object/from16 v0, p5

    #@3a
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3d
    move-result-wide v20

    #@3e
    const-wide/16 v22, 0x0

    #@40
    const-wide/16 v24, 0x0

    #@42
    const-wide/16 v26, 0x0

    #@44
    const/16 v5, 0x4e

    #@46
    const/4 v7, 0x0

    #@47
    const/4 v8, 0x0

    #@48
    const/4 v11, 0x0

    #@49
    const/4 v13, 0x0

    #@4a
    const/16 v29, 0x0

    #@4c
    const/16 v30, 0x0

    #@4e
    const/16 v31, 0x0

    #@50
    move/from16 v6, p2

    #@52
    move/from16 v9, p1

    #@54
    move/from16 v10, p3

    #@56
    move/from16 v28, p6

    #@58
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@5b
    .line 1204
    return-void
.end method

.method public ZTRMM(IIIILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Double2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 2926
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 2927
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    #@6
    .line 2928
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v4

    #@e
    move/from16 v0, p1

    #@10
    move/from16 v1, p3

    #@12
    move-object/from16 v2, p6

    #@14
    move-object/from16 v3, p7

    #@16
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@19
    .line 2929
    move-object/from16 v0, p0

    #@1b
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@26
    move-result-wide v5

    #@27
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    #@2e
    move-result v13

    #@2f
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    #@36
    move-result v14

    #@37
    .line 2930
    move-object/from16 v0, p5

    #@39
    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    #@3b
    move-wide/from16 v16, v0

    #@3d
    move-object/from16 v0, p5

    #@3f
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@41
    move-wide/from16 v18, v0

    #@43
    move-object/from16 v0, p0

    #@45
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@47
    move-object/from16 v0, p6

    #@49
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4c
    move-result-wide v20

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@51
    move-object/from16 v0, p7

    #@53
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@56
    move-result-wide v22

    #@57
    const-wide/16 v24, 0x0

    #@59
    const-wide/16 v26, 0x0

    #@5b
    const-wide/16 v28, 0x0

    #@5d
    .line 2929
    const/16 v7, 0x87

    #@5f
    const/4 v9, 0x0

    #@60
    const/4 v15, 0x0

    #@61
    .line 2930
    const/16 v30, 0x0

    #@63
    const/16 v31, 0x0

    #@65
    const/16 v32, 0x0

    #@67
    const/16 v33, 0x0

    #@69
    move/from16 v8, p3

    #@6b
    move/from16 v10, p1

    #@6d
    move/from16 v11, p2

    #@6f
    move/from16 v12, p4

    #@71
    .line 2929
    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@74
    .line 2925
    return-void
.end method

.method public ZTRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 661
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@17
    .line 662
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v12

    #@1f
    .line 663
    .local v12, "N":I
    move-object/from16 v0, p0

    #@21
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@27
    move-object/from16 v0, p0

    #@29
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@2c
    move-result-wide v3

    #@2d
    const-wide/16 v14, 0x0

    #@2f
    const-wide/16 v16, 0x0

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@35
    move-object/from16 v0, p4

    #@37
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3a
    move-result-wide v18

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3f
    move-object/from16 v0, p5

    #@41
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@44
    move-result-wide v20

    #@45
    const-wide/16 v22, 0x0

    #@47
    const-wide/16 v24, 0x0

    #@49
    const-wide/16 v26, 0x0

    #@4b
    const/16 v5, 0x49

    #@4d
    const/4 v7, 0x0

    #@4e
    const/4 v8, 0x0

    #@4f
    const/4 v11, 0x0

    #@50
    const/4 v13, 0x0

    #@51
    const/16 v29, 0x0

    #@53
    const/16 v30, 0x0

    #@55
    const/16 v31, 0x0

    #@57
    move/from16 v6, p2

    #@59
    move/from16 v9, p1

    #@5b
    move/from16 v10, p3

    #@5d
    move/from16 v28, p6

    #@5f
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@62
    .line 660
    return-void
.end method

.method public ZTRSM(IIIILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .locals 34
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Double2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    #@0
    .prologue
    .line 3048
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    #@3
    .line 3049
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    #@6
    .line 3050
    move-object/from16 v0, p0

    #@8
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@a
    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@d
    move-result-object v4

    #@e
    move/from16 v0, p1

    #@10
    move/from16 v1, p3

    #@12
    move-object/from16 v2, p6

    #@14
    move-object/from16 v3, p7

    #@16
    invoke-static {v4, v0, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    #@19
    .line 3051
    move-object/from16 v0, p0

    #@1b
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@21
    move-object/from16 v0, p0

    #@23
    invoke-virtual {v0, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@26
    move-result-wide v5

    #@27
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    #@2e
    move-result v13

    #@2f
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    #@36
    move-result v14

    #@37
    .line 3052
    move-object/from16 v0, p5

    #@39
    iget-wide v0, v0, Landroid/renderscript/Double2;->x:D

    #@3b
    move-wide/from16 v16, v0

    #@3d
    move-object/from16 v0, p5

    #@3f
    iget-wide v0, v0, Landroid/renderscript/Double2;->y:D

    #@41
    move-wide/from16 v18, v0

    #@43
    move-object/from16 v0, p0

    #@45
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@47
    move-object/from16 v0, p6

    #@49
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@4c
    move-result-wide v20

    #@4d
    move-object/from16 v0, p0

    #@4f
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@51
    move-object/from16 v0, p7

    #@53
    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@56
    move-result-wide v22

    #@57
    const-wide/16 v24, 0x0

    #@59
    const-wide/16 v26, 0x0

    #@5b
    const-wide/16 v28, 0x0

    #@5d
    .line 3051
    const/16 v7, 0x88

    #@5f
    const/4 v9, 0x0

    #@60
    const/4 v15, 0x0

    #@61
    .line 3052
    const/16 v30, 0x0

    #@63
    const/16 v31, 0x0

    #@65
    const/16 v32, 0x0

    #@67
    const/16 v33, 0x0

    #@69
    move/from16 v8, p3

    #@6b
    move/from16 v10, p1

    #@6d
    move/from16 v11, p2

    #@6f
    move/from16 v12, p4

    #@71
    .line 3051
    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@74
    .line 3047
    return-void
.end method

.method public ZTRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .locals 32
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    #@0
    .prologue
    .line 972
    move-object/from16 v0, p0

    #@2
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@4
    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    #@7
    move-result-object v2

    #@8
    move/from16 v3, p1

    #@a
    move/from16 v4, p2

    #@c
    move/from16 v5, p3

    #@e
    move-object/from16 v6, p4

    #@10
    move-object/from16 v7, p5

    #@12
    move/from16 v8, p6

    #@14
    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    #@17
    .line 973
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    #@1e
    move-result v12

    #@1f
    .line 974
    .local v12, "N":I
    move-object/from16 v0, p0

    #@21
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@27
    move-object/from16 v0, p0

    #@29
    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    #@2c
    move-result-wide v3

    #@2d
    const-wide/16 v14, 0x0

    #@2f
    const-wide/16 v16, 0x0

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@35
    move-object/from16 v0, p4

    #@37
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@3a
    move-result-wide v18

    #@3b
    move-object/from16 v0, p0

    #@3d
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    #@3f
    move-object/from16 v0, p5

    #@41
    invoke-virtual {v0, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    #@44
    move-result-wide v20

    #@45
    const-wide/16 v22, 0x0

    #@47
    const-wide/16 v24, 0x0

    #@49
    const-wide/16 v26, 0x0

    #@4b
    const/16 v5, 0x4c

    #@4d
    const/4 v7, 0x0

    #@4e
    const/4 v8, 0x0

    #@4f
    const/4 v11, 0x0

    #@50
    const/4 v13, 0x0

    #@51
    const/16 v29, 0x0

    #@53
    const/16 v30, 0x0

    #@55
    const/16 v31, 0x0

    #@57
    move/from16 v6, p2

    #@59
    move/from16 v9, p1

    #@5b
    move/from16 v10, p3

    #@5d
    move/from16 v28, p6

    #@5f
    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    #@62
    .line 970
    return-void
.end method
