.class public final Landroid/renderscript/ScriptIntrinsicBLAS;
.super Landroid/renderscript/ScriptIntrinsic;
.source "ScriptIntrinsicBLAS.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/renderscript/ScriptIntrinsicBLAS$Side;,
        Landroid/renderscript/ScriptIntrinsicBLAS$Diag;,
        Landroid/renderscript/ScriptIntrinsicBLAS$Uplo;,
        Landroid/renderscript/ScriptIntrinsicBLAS$Transpose;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist CONJ_TRANSPOSE:I = 0x71

.field public static final whitelist LEFT:I = 0x8d

.field public static final whitelist LOWER:I = 0x7a

.field public static final whitelist NON_UNIT:I = 0x83

.field public static final whitelist NO_TRANSPOSE:I = 0x6f

.field public static final whitelist RIGHT:I = 0x8e

.field private static final greylist-max-o RsBlas_bnnm:I = 0x3e8

.field private static final greylist-max-o RsBlas_caxpy:I = 0x1d

.field private static final greylist-max-o RsBlas_ccopy:I = 0x1c

.field private static final greylist-max-o RsBlas_cdotc_sub:I = 0x6

.field private static final greylist-max-o RsBlas_cdotu_sub:I = 0x5

.field private static final greylist-max-o RsBlas_cgbmv:I = 0x40

.field private static final greylist-max-o RsBlas_cgemm:I = 0x7d

.field private static final greylist-max-o RsBlas_cgemv:I = 0x3f

.field private static final greylist-max-o RsBlas_cgerc:I = 0x63

.field private static final greylist-max-o RsBlas_cgeru:I = 0x62

.field private static final greylist-max-o RsBlas_chbmv:I = 0x60

.field private static final greylist-max-o RsBlas_chemm:I = 0x89

.field private static final greylist-max-o RsBlas_chemv:I = 0x5f

.field private static final greylist-max-o RsBlas_cher:I = 0x64

.field private static final greylist-max-o RsBlas_cher2:I = 0x66

.field private static final greylist-max-o RsBlas_cher2k:I = 0x8b

.field private static final greylist-max-o RsBlas_cherk:I = 0x8a

.field private static final greylist-max-o RsBlas_chpmv:I = 0x61

.field private static final greylist-max-o RsBlas_chpr:I = 0x65

.field private static final greylist-max-o RsBlas_chpr2:I = 0x67

.field private static final greylist-max-o RsBlas_cscal:I = 0x2b

.field private static final greylist-max-o RsBlas_csscal:I = 0x2d

.field private static final greylist-max-o RsBlas_cswap:I = 0x1b

.field private static final greylist-max-o RsBlas_csymm:I = 0x7e

.field private static final greylist-max-o RsBlas_csyr2k:I = 0x80

.field private static final greylist-max-o RsBlas_csyrk:I = 0x7f

.field private static final greylist-max-o RsBlas_ctbmv:I = 0x42

.field private static final greylist-max-o RsBlas_ctbsv:I = 0x45

.field private static final greylist-max-o RsBlas_ctpmv:I = 0x43

.field private static final greylist-max-o RsBlas_ctpsv:I = 0x46

.field private static final greylist-max-o RsBlas_ctrmm:I = 0x81

.field private static final greylist-max-o RsBlas_ctrmv:I = 0x41

.field private static final greylist-max-o RsBlas_ctrsm:I = 0x82

.field private static final greylist-max-o RsBlas_ctrsv:I = 0x44

.field private static final greylist-max-o RsBlas_dasum:I = 0xc

.field private static final greylist-max-o RsBlas_daxpy:I = 0x1a

.field private static final greylist-max-o RsBlas_dcopy:I = 0x19

.field private static final greylist-max-o RsBlas_ddot:I = 0x4

.field private static final greylist-max-o RsBlas_dgbmv:I = 0x38

.field private static final greylist-max-o RsBlas_dgemm:I = 0x77

.field private static final greylist-max-o RsBlas_dgemv:I = 0x37

.field private static final greylist-max-o RsBlas_dger:I = 0x5a

.field private static final greylist-max-o RsBlas_dnrm2:I = 0xb

.field private static final greylist-max-o RsBlas_drot:I = 0x27

.field private static final greylist-max-o RsBlas_drotg:I = 0x25

.field private static final greylist-max-o RsBlas_drotm:I = 0x28

.field private static final greylist-max-o RsBlas_drotmg:I = 0x26

.field private static final greylist-max-o RsBlas_dsbmv:I = 0x58

.field private static final greylist-max-o RsBlas_dscal:I = 0x2a

.field private static final greylist-max-o RsBlas_dsdot:I = 0x2

.field private static final greylist-max-o RsBlas_dspmv:I = 0x59

.field private static final greylist-max-o RsBlas_dspr:I = 0x5c

.field private static final greylist-max-o RsBlas_dspr2:I = 0x5e

.field private static final greylist-max-o RsBlas_dswap:I = 0x18

.field private static final greylist-max-o RsBlas_dsymm:I = 0x78

.field private static final greylist-max-o RsBlas_dsymv:I = 0x57

.field private static final greylist-max-o RsBlas_dsyr:I = 0x5b

.field private static final greylist-max-o RsBlas_dsyr2:I = 0x5d

.field private static final greylist-max-o RsBlas_dsyr2k:I = 0x7a

.field private static final greylist-max-o RsBlas_dsyrk:I = 0x79

.field private static final greylist-max-o RsBlas_dtbmv:I = 0x3a

.field private static final greylist-max-o RsBlas_dtbsv:I = 0x3d

.field private static final greylist-max-o RsBlas_dtpmv:I = 0x3b

.field private static final greylist-max-o RsBlas_dtpsv:I = 0x3e

.field private static final greylist-max-o RsBlas_dtrmm:I = 0x7b

.field private static final greylist-max-o RsBlas_dtrmv:I = 0x39

.field private static final greylist-max-o RsBlas_dtrsm:I = 0x7c

.field private static final greylist-max-o RsBlas_dtrsv:I = 0x3c

.field private static final greylist-max-o RsBlas_dzasum:I = 0x10

.field private static final greylist-max-o RsBlas_dznrm2:I = 0xf

.field private static final greylist-max-o RsBlas_icamax:I = 0x13

.field private static final greylist-max-o RsBlas_idamax:I = 0x12

.field private static final greylist-max-o RsBlas_isamax:I = 0x11

.field private static final greylist-max-o RsBlas_izamax:I = 0x14

.field private static final greylist-max-o RsBlas_sasum:I = 0xa

.field private static final greylist-max-o RsBlas_saxpy:I = 0x17

.field private static final greylist-max-o RsBlas_scasum:I = 0xe

.field private static final greylist-max-o RsBlas_scnrm2:I = 0xd

.field private static final greylist-max-o RsBlas_scopy:I = 0x16

.field private static final greylist-max-o RsBlas_sdot:I = 0x3

.field private static final greylist-max-o RsBlas_sdsdot:I = 0x1

.field private static final greylist-max-o RsBlas_sgbmv:I = 0x30

.field private static final greylist-max-o RsBlas_sgemm:I = 0x71

.field private static final greylist-max-o RsBlas_sgemv:I = 0x2f

.field private static final greylist-max-o RsBlas_sger:I = 0x52

.field private static final greylist-max-o RsBlas_snrm2:I = 0x9

.field private static final greylist-max-o RsBlas_srot:I = 0x23

.field private static final greylist-max-o RsBlas_srotg:I = 0x21

.field private static final greylist-max-o RsBlas_srotm:I = 0x24

.field private static final greylist-max-o RsBlas_srotmg:I = 0x22

.field private static final greylist-max-o RsBlas_ssbmv:I = 0x50

.field private static final greylist-max-o RsBlas_sscal:I = 0x29

.field private static final greylist-max-o RsBlas_sspmv:I = 0x51

.field private static final greylist-max-o RsBlas_sspr:I = 0x54

.field private static final greylist-max-o RsBlas_sspr2:I = 0x56

.field private static final greylist-max-o RsBlas_sswap:I = 0x15

.field private static final greylist-max-o RsBlas_ssymm:I = 0x72

.field private static final greylist-max-o RsBlas_ssymv:I = 0x4f

.field private static final greylist-max-o RsBlas_ssyr:I = 0x53

.field private static final greylist-max-o RsBlas_ssyr2:I = 0x55

.field private static final greylist-max-o RsBlas_ssyr2k:I = 0x74

.field private static final greylist-max-o RsBlas_ssyrk:I = 0x73

.field private static final greylist-max-o RsBlas_stbmv:I = 0x32

.field private static final greylist-max-o RsBlas_stbsv:I = 0x35

.field private static final greylist-max-o RsBlas_stpmv:I = 0x33

.field private static final greylist-max-o RsBlas_stpsv:I = 0x36

.field private static final greylist-max-o RsBlas_strmm:I = 0x75

.field private static final greylist-max-o RsBlas_strmv:I = 0x31

.field private static final greylist-max-o RsBlas_strsm:I = 0x76

.field private static final greylist-max-o RsBlas_strsv:I = 0x34

.field private static final greylist-max-o RsBlas_zaxpy:I = 0x20

.field private static final greylist-max-o RsBlas_zcopy:I = 0x1f

.field private static final greylist-max-o RsBlas_zdotc_sub:I = 0x8

.field private static final greylist-max-o RsBlas_zdotu_sub:I = 0x7

.field private static final greylist-max-o RsBlas_zdscal:I = 0x2e

.field private static final greylist-max-o RsBlas_zgbmv:I = 0x48

.field private static final greylist-max-o RsBlas_zgemm:I = 0x83

.field private static final greylist-max-o RsBlas_zgemv:I = 0x47

.field private static final greylist-max-o RsBlas_zgerc:I = 0x6c

.field private static final greylist-max-o RsBlas_zgeru:I = 0x6b

.field private static final greylist-max-o RsBlas_zhbmv:I = 0x69

.field private static final greylist-max-o RsBlas_zhemm:I = 0x8c

.field private static final greylist-max-o RsBlas_zhemv:I = 0x68

.field private static final greylist-max-o RsBlas_zher:I = 0x6d

.field private static final greylist-max-o RsBlas_zher2:I = 0x6f

.field private static final greylist-max-o RsBlas_zher2k:I = 0x8e

.field private static final greylist-max-o RsBlas_zherk:I = 0x8d

.field private static final greylist-max-o RsBlas_zhpmv:I = 0x6a

.field private static final greylist-max-o RsBlas_zhpr:I = 0x6e

.field private static final greylist-max-o RsBlas_zhpr2:I = 0x70

.field private static final greylist-max-o RsBlas_zscal:I = 0x2c

.field private static final greylist-max-o RsBlas_zswap:I = 0x1e

.field private static final greylist-max-o RsBlas_zsymm:I = 0x84

.field private static final greylist-max-o RsBlas_zsyr2k:I = 0x86

.field private static final greylist-max-o RsBlas_zsyrk:I = 0x85

.field private static final greylist-max-o RsBlas_ztbmv:I = 0x4a

.field private static final greylist-max-o RsBlas_ztbsv:I = 0x4d

.field private static final greylist-max-o RsBlas_ztpmv:I = 0x4b

.field private static final greylist-max-o RsBlas_ztpsv:I = 0x4e

.field private static final greylist-max-o RsBlas_ztrmm:I = 0x87

.field private static final greylist-max-o RsBlas_ztrmv:I = 0x49

.field private static final greylist-max-o RsBlas_ztrsm:I = 0x88

.field private static final greylist-max-o RsBlas_ztrsv:I = 0x4c

.field public static final whitelist TRANSPOSE:I = 0x70

.field public static final whitelist UNIT:I = 0x84

.field public static final whitelist UPPER:I = 0x79


# instance fields
.field private greylist-max-o mLUT:Landroid/renderscript/Allocation;


# direct methods
.method private constructor greylist-max-o <init>(JLandroid/renderscript/RenderScript;)V
    .registers 4
    .param p1, "id"    # J
    .param p3, "rs"    # Landroid/renderscript/RenderScript;

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/renderscript/ScriptIntrinsic;-><init>(JLandroid/renderscript/RenderScript;)V

    .line 42
    return-void
.end method

.method public static whitelist create(Landroid/renderscript/RenderScript;)Landroid/renderscript/ScriptIntrinsicBLAS;
    .registers 4
    .param p0, "rs"    # Landroid/renderscript/RenderScript;

    .line 197
    invoke-static {p0}, Landroid/renderscript/Element;->U32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v0

    const/16 v2, 0xd

    invoke-virtual {p0, v2, v0, v1}, Landroid/renderscript/RenderScript;->nScriptIntrinsicCreate(IJ)J

    move-result-wide v0

    .line 198
    .local v0, "id":J
    new-instance v2, Landroid/renderscript/ScriptIntrinsicBLAS;

    invoke-direct {v2, v0, v1, p0}, Landroid/renderscript/ScriptIntrinsicBLAS;-><init>(JLandroid/renderscript/RenderScript;)V

    return-object v2
.end method

.method static greylist-max-o validateConjTranspose(I)V
    .registers 3
    .param p0, "Trans"    # I

    .line 256
    const/16 v0, 0x6f

    if-eq p0, v0, :cond_11

    const/16 v0, 0x71

    if-ne p0, v0, :cond_9

    goto :goto_11

    .line 258
    :cond_9
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Invalid transpose passed to BLAS"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_11
    :goto_11
    return-void
.end method

.method static greylist-max-o validateDiag(I)V
    .registers 3
    .param p0, "Diag"    # I

    .line 263
    const/16 v0, 0x83

    if-eq p0, v0, :cond_11

    const/16 v0, 0x84

    if-ne p0, v0, :cond_9

    goto :goto_11

    .line 264
    :cond_9
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Invalid diag passed to BLAS"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_11
    :goto_11
    return-void
.end method

.method static greylist-max-o validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V
    .registers 13
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "TransA"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I

    .line 280
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 281
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 282
    .local v0, "M":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .line 283
    .local v1, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 284
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 285
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v2

    if-eqz v2, :cond_9a

    .line 288
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_92

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-gt v2, v3, :cond_92

    .line 292
    if-lez p4, :cond_8a

    if-lez p6, :cond_8a

    .line 295
    const/4 v2, -0x1

    .local v2, "expectedXDim":I
    const/4 v4, -0x1

    .line 296
    .local v4, "expectedYDim":I
    const/16 v5, 0x6f

    if-ne p1, v5, :cond_65

    .line 297
    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v5, v3

    .line 298
    .end local v2    # "expectedXDim":I
    .local v5, "expectedXDim":I
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p6

    add-int/2addr v2, v3

    .end local v4    # "expectedYDim":I
    .local v2, "expectedYDim":I
    goto :goto_6d

    .line 300
    .end local v5    # "expectedXDim":I
    .local v2, "expectedXDim":I
    .restart local v4    # "expectedYDim":I
    :cond_65
    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v5, v3

    .line 301
    .end local v2    # "expectedXDim":I
    .restart local v5    # "expectedXDim":I
    add-int/lit8 v2, v1, -0x1

    mul-int/2addr v2, p6

    add-int/2addr v2, v3

    .line 303
    .end local v4    # "expectedYDim":I
    .local v2, "expectedYDim":I
    :goto_6d
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v3, v5, :cond_82

    .line 304
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    if-ne v3, v2, :cond_82

    .line 307
    return-void

    .line 305
    :cond_82
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for GEMV"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 293
    .end local v2    # "expectedYDim":I
    .end local v5    # "expectedXDim":I
    :cond_8a
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Vector increments must be greater than 0"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    :cond_92
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 286
    :cond_9a
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Called BLAS with wrong Element type"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static greylist-max-o validateGER(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 12
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "X"    # Landroid/renderscript/Allocation;
    .param p2, "incX"    # I
    .param p3, "Y"    # Landroid/renderscript/Allocation;
    .param p4, "incY"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    .line 1279
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1280
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1281
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 1285
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_92

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-gt v0, v1, :cond_92

    .line 1289
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 1290
    .local v0, "M":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    .line 1292
    .local v2, "N":I
    if-lt v2, v1, :cond_8a

    if-lt v0, v1, :cond_8a

    .line 1295
    if-lez p2, :cond_82

    if-lez p4, :cond_82

    .line 1298
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    .line 1299
    .local v3, "expectedXDim":I
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    const-string v5, "Incorrect vector dimensions for GER"

    if-ne v4, v3, :cond_7c

    .line 1302
    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v4, p4

    add-int/2addr v4, v1

    .line 1303
    .local v4, "expectedYDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v4, :cond_76

    .line 1308
    return-void

    .line 1304
    :cond_76
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v1, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1300
    .end local v4    # "expectedYDim":I
    :cond_7c
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v1, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1296
    .end local v3    # "expectedXDim":I
    :cond_82
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Vector increments must be greater than 0"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1293
    :cond_8a
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "M and N must be 1 or greater for GER"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1286
    .end local v0    # "M":I
    .end local v2    # "N":I
    :cond_92
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1282
    :cond_9a
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Called BLAS with wrong Element type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 12
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "X"    # Landroid/renderscript/Allocation;
    .param p2, "incX"    # I
    .param p3, "Y"    # Landroid/renderscript/Allocation;
    .param p4, "incY"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    .line 1803
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1804
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1805
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_8e

    .line 1808
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_86

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-gt v0, v1, :cond_86

    .line 1812
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 1813
    .local v0, "M":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    .line 1814
    .local v2, "N":I
    if-lez p2, :cond_7e

    if-lez p4, :cond_7e

    .line 1817
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    .line 1818
    .local v3, "expectedXDim":I
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    const-string v5, "Incorrect vector dimensions for GERU"

    if-ne v4, v3, :cond_78

    .line 1821
    add-int/lit8 v4, v2, -0x1

    mul-int/2addr v4, p4

    add-int/2addr v4, v1

    .line 1822
    .local v4, "expectedYDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v4, :cond_72

    .line 1826
    return-void

    .line 1823
    :cond_72
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v1, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1819
    .end local v4    # "expectedYDim":I
    :cond_78
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v1, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1815
    .end local v3    # "expectedXDim":I
    :cond_7e
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Vector increments must be greater than 0"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1809
    .end local v0    # "M":I
    .end local v2    # "N":I
    :cond_86
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1806
    :cond_8e
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Called BLAS with wrong Element type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o validateHEMM(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 8
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Side"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "C"    # Landroid/renderscript/Allocation;

    .line 3060
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 3062
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 3063
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 3064
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 3069
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 3070
    .local v0, "adim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_91

    .line 3073
    const/16 v1, 0x8d

    if-ne p1, v1, :cond_4d

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_5c

    :cond_4d
    const/16 v1, 0x8e

    if-ne p1, v1, :cond_64

    .line 3074
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v0, v1, :cond_5c

    goto :goto_64

    .line 3075
    :cond_5c
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HEMM with invalid B"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3077
    :cond_64
    :goto_64
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-ne v1, v2, :cond_89

    .line 3078
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-ne v1, v2, :cond_89

    .line 3081
    return-void

    .line 3079
    :cond_89
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HEMM with mismatched B and C"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3071
    :cond_91
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HEMM with non-square A"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3065
    .end local v0    # "adim":I
    :cond_99
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Called BLAS with wrong Element type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o validateHER2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 8
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Trans"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "C"    # Landroid/renderscript/Allocation;

    .line 3199
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 3200
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 3201
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 3204
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateConjTranspose(I)V

    .line 3205
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 3206
    .local v0, "cdim":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_93

    .line 3209
    const/16 v1, 0x6f

    const-string v2, "Called HER2K with invalid matrices"

    if-ne p1, v1, :cond_56

    .line 3210
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v1, v0, :cond_50

    goto :goto_60

    .line 3211
    :cond_50
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3214
    :cond_56
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v0, :cond_8d

    .line 3218
    :goto_60
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-ne v1, v2, :cond_85

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-ne v1, v2, :cond_85

    .line 3221
    return-void

    .line 3219
    :cond_85
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HER2K with invalid A and B matrices"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3215
    :cond_8d
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3207
    :cond_93
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HER2K with non-square C"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3202
    .end local v0    # "cdim":I
    :cond_9b
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Called BLAS with wrong Element type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o validateHERK(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 7
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Trans"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "C"    # Landroid/renderscript/Allocation;

    .line 3126
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 3127
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 3130
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateConjTranspose(I)V

    .line 3131
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 3132
    .local v0, "cdim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_59

    .line 3135
    const/16 v1, 0x6f

    const-string v2, "Called HERK with invalid A"

    if-ne p1, v1, :cond_48

    .line 3136
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_42

    goto :goto_52

    .line 3137
    :cond_42
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3140
    :cond_48
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v0, v1, :cond_53

    .line 3144
    :goto_52
    return-void

    .line 3141
    :cond_53
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3133
    :cond_59
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called HERK with non-square C"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3128
    .end local v0    # "cdim":I
    :cond_61
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Called BLAS with wrong Element type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 16
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "Side"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "C"    # Landroid/renderscript/Allocation;

    .line 2264
    const/4 v0, -0x1

    .local v0, "aM":I
    const/4 v1, -0x1

    .local v1, "aN":I
    const/4 v2, -0x1

    .local v2, "bM":I
    const/4 v3, -0x1

    .local v3, "bN":I
    const/4 v4, -0x1

    .local v4, "cM":I
    const/4 v5, -0x1

    .line 2265
    .local v5, "cN":I
    if-eqz p4, :cond_16

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v6

    if-eqz v6, :cond_37

    :cond_16
    if-eqz p5, :cond_26

    .line 2266
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v6

    if-eqz v6, :cond_37

    :cond_26
    if-eqz p6, :cond_3f

    .line 2267
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v6

    invoke-virtual {v6, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v6

    if-eqz v6, :cond_37

    goto :goto_3f

    .line 2268
    :cond_37
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Called BLAS with wrong Element type"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2270
    :cond_3f
    :goto_3f
    if-eqz p6, :cond_119

    .line 2274
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v4

    .line 2275
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v5

    .line 2277
    const/16 v6, 0x8e

    if-ne p3, v6, :cond_8b

    .line 2278
    if-nez p4, :cond_59

    if-nez p5, :cond_5e

    :cond_59
    if-eqz p4, :cond_66

    if-eqz p5, :cond_5e

    goto :goto_66

    .line 2279
    :cond_5e
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Provided Matrix A without Matrix B, or vice versa"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2281
    :cond_66
    :goto_66
    if-eqz p5, :cond_78

    .line 2282
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v2

    .line 2283
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v3

    .line 2285
    :cond_78
    if-eqz p4, :cond_df

    .line 2286
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 2287
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v1

    goto :goto_df

    .line 2290
    :cond_8b
    const/16 v6, 0x71

    const/16 v7, 0x70

    if-eqz p4, :cond_b7

    .line 2291
    if-eq p1, v7, :cond_a7

    if-ne p1, v6, :cond_96

    goto :goto_a7

    .line 2295
    :cond_96
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 2296
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v1

    goto :goto_b7

    .line 2292
    :cond_a7
    :goto_a7
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v1

    .line 2293
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 2299
    :cond_b7
    :goto_b7
    if-eqz p5, :cond_df

    .line 2300
    if-eq p2, v7, :cond_cf

    if-ne p2, v6, :cond_be

    goto :goto_cf

    .line 2304
    :cond_be
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v2

    .line 2305
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v3

    goto :goto_df

    .line 2301
    :cond_cf
    :goto_cf
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v3

    .line 2302
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v2

    .line 2309
    :cond_df
    :goto_df
    const-string v6, "Called BLAS with invalid dimensions"

    if-eqz p4, :cond_f4

    if-eqz p5, :cond_f4

    if-eqz p6, :cond_f4

    .line 2310
    if-ne v1, v2, :cond_ee

    if-ne v0, v4, :cond_ee

    if-ne v3, v5, :cond_ee

    goto :goto_118

    .line 2311
    :cond_ee
    new-instance v7, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v7, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2313
    :cond_f4
    if-eqz p4, :cond_10b

    if-eqz p6, :cond_10b

    .line 2315
    if-ne v4, v5, :cond_103

    .line 2318
    if-ne v0, v4, :cond_fd

    goto :goto_118

    .line 2319
    :cond_fd
    new-instance v7, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v7, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2316
    :cond_103
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Matrix C is not symmetric"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2321
    :cond_10b
    if-eqz p4, :cond_118

    if-eqz p5, :cond_118

    .line 2323
    if-ne v1, v2, :cond_112

    goto :goto_118

    .line 2324
    :cond_112
    new-instance v7, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v7, v6}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 2328
    :cond_118
    :goto_118
    return-void

    .line 2272
    :cond_119
    new-instance v6, Landroid/renderscript/RSRuntimeException;

    const-string v7, "Allocation C cannot be null"

    invoke-direct {v6, v7}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method static greylist-max-o validateSPMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)I
    .registers 13
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "Ap"    # Landroid/renderscript/Allocation;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I

    .line 1246
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 1247
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1248
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1249
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 1252
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_b3

    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-gt v0, v1, :cond_b3

    .line 1256
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-gt v0, v1, :cond_ab

    .line 1260
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1261
    .local v0, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_a3

    .line 1264
    if-lez p4, :cond_9b

    if-lez p6, :cond_9b

    .line 1267
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p4

    add-int/2addr v2, v1

    .line 1268
    .local v2, "expectedXDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    const-string v4, "Incorrect vector dimensions for SPMV"

    if-ne v3, v2, :cond_95

    .line 1271
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p6

    add-int/2addr v3, v1

    .line 1272
    .local v3, "expectedYDim":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v3, :cond_8f

    .line 1276
    return v0

    .line 1273
    :cond_8f
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1269
    .end local v3    # "expectedYDim":I
    :cond_95
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1265
    .end local v2    # "expectedXDim":I
    :cond_9b
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Vector increments must be greater than 0"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1262
    :cond_a3
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid dimension for Ap"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1257
    .end local v0    # "N":I
    :cond_ab
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1253
    :cond_b3
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1250
    :cond_bb
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Called BLAS with wrong Element type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .registers 11
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;

    .line 1334
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 1335
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1336
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1339
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_85

    .line 1343
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-gt v0, v1, :cond_7d

    .line 1347
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1348
    .local v0, "N":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_75

    .line 1351
    if-lez p3, :cond_6d

    .line 1354
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p3

    add-int/2addr v2, v1

    .line 1355
    .local v2, "expectedXDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v2, :cond_65

    .line 1359
    return v0

    .line 1356
    :cond_65
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for SPR"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1352
    .end local v2    # "expectedXDim":I
    :cond_6d
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Vector increments must be greater than 0"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1349
    :cond_75
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid dimension for Ap"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1344
    .end local v0    # "N":I
    :cond_7d
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1340
    :cond_85
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1337
    :cond_8d
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Called BLAS with wrong Element type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .registers 13
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "Ap"    # Landroid/renderscript/Allocation;

    .line 1391
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 1392
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1393
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1394
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1397
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_ad

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-gt v0, v1, :cond_ad

    .line 1401
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-gt v0, v1, :cond_a5

    .line 1405
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1406
    .local v0, "N":I
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_9d

    .line 1409
    if-lez p3, :cond_95

    if-lez p5, :cond_95

    .line 1412
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p3

    add-int/2addr v2, v1

    .line 1413
    .local v2, "expectedXDim":I
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p5

    add-int/2addr v3, v1

    .line 1414
    .local v3, "expectedYDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v2, :cond_8d

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v3, :cond_8d

    .line 1418
    return v0

    .line 1415
    :cond_8d
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SPR2"

    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1410
    .end local v2    # "expectedXDim":I
    .end local v3    # "expectedYDim":I
    :cond_95
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Vector increments must be greater than 0"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1407
    :cond_9d
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid dimension for Ap"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1402
    .end local v0    # "N":I
    :cond_a5
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1398
    :cond_ad
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1395
    :cond_b5
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Called BLAS with wrong Element type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I
    .registers 12
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "incY"    # I

    .line 1218
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 1219
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 1220
    .local v0, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v0, :cond_9b

    .line 1223
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1224
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1225
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_93

    .line 1228
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_8b

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-gt v1, v2, :cond_8b

    .line 1232
    if-lez p5, :cond_83

    if-lez p6, :cond_83

    .line 1235
    add-int/lit8 v1, v0, -0x1

    mul-int/2addr v1, p5

    add-int/2addr v1, v2

    .line 1236
    .local v1, "expectedXDim":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    const-string v4, "Incorrect vector dimensions for SYMV"

    if-ne v3, v1, :cond_7d

    .line 1239
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p6

    add-int/2addr v3, v2

    .line 1240
    .local v3, "expectedYDim":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-ne v2, v3, :cond_77

    .line 1243
    return v0

    .line 1241
    :cond_77
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v2, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1237
    .end local v3    # "expectedYDim":I
    :cond_7d
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v2, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1233
    .end local v1    # "expectedXDim":I
    :cond_83
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Vector increments must be greater than 0"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1229
    :cond_8b
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1226
    :cond_93
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called BLAS with wrong Element type"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1221
    :cond_9b
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "A must be a square matrix for SYMV"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static greylist-max-o validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .registers 9
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;

    .line 1310
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 1311
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1312
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 1316
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 1318
    .local v0, "N":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_65

    .line 1321
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v0, v1, :cond_5d

    .line 1324
    if-lez p3, :cond_55

    .line 1327
    add-int/lit8 v1, v0, -0x1

    mul-int/2addr v1, p3

    add-int/2addr v1, v2

    .line 1328
    .local v1, "expectedXDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-ne v2, v1, :cond_4d

    .line 1331
    return v0

    .line 1329
    :cond_4d
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for SYR"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1325
    .end local v1    # "expectedXDim":I
    :cond_55
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Vector increments must be greater than 0"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1322
    :cond_5d
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "A must be a symmetric matrix"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1319
    :cond_65
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1313
    .end local v0    # "N":I
    :cond_6d
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Called BLAS with wrong Element type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I
    .registers 12
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .line 1363
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 1364
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1365
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1366
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 1370
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8d

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-gt v0, v1, :cond_8d

    .line 1374
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 1376
    .local v0, "N":I
    invoke-virtual {p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-ne v0, v2, :cond_85

    .line 1379
    if-lez p3, :cond_7d

    if-lez p5, :cond_7d

    .line 1382
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p3

    add-int/2addr v2, v1

    .line 1383
    .local v2, "expectedXDim":I
    add-int/lit8 v3, v0, -0x1

    mul-int/2addr v3, p5

    add-int/2addr v3, v1

    .line 1384
    .local v3, "expectedYDim":I
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v2, :cond_75

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v3, :cond_75

    .line 1387
    return v0

    .line 1385
    :cond_75
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Incorrect vector dimensions for SYR"

    invoke-direct {v1, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1380
    .end local v2    # "expectedXDim":I
    .end local v3    # "expectedYDim":I
    :cond_7d
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Vector increments must be greater than 0"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1377
    :cond_85
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "A must be a symmetric matrix"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1371
    .end local v0    # "N":I
    :cond_8d
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1367
    :cond_95
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Called BLAS with wrong Element type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 8
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Trans"    # I
    .param p2, "A"    # Landroid/renderscript/Allocation;
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "C"    # Landroid/renderscript/Allocation;

    .line 2688
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2689
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 2690
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 2691
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_8c

    .line 2694
    const/4 v0, -0x1

    .line 2697
    .local v0, "Cdim":I
    const/16 v1, 0x70

    if-ne p1, v1, :cond_3b

    .line 2699
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v0

    goto :goto_43

    .line 2702
    :cond_3b
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 2704
    :goto_43
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v0, :cond_84

    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    if-ne v1, v0, :cond_84

    .line 2708
    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-ne v1, v2, :cond_7c

    invoke-virtual {p2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-ne v1, v2, :cond_7c

    .line 2711
    return-void

    .line 2709
    :cond_7c
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid A and B in SYR2K"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2705
    :cond_84
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid symmetric matrix in SYR2K"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2692
    .end local v0    # "Cdim":I
    :cond_8c
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Called BLAS with wrong Element type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o validateSide(I)V
    .registers 3
    .param p0, "Side"    # I

    .line 243
    const/16 v0, 0x8d

    if-eq p0, v0, :cond_11

    const/16 v0, 0x8e

    if-ne p0, v0, :cond_9

    goto :goto_11

    .line 244
    :cond_9
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Invalid side passed to BLAS"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_11
    :goto_11
    return-void
.end method

.method static greylist-max-o validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I
    .registers 13
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 563
    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 564
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 565
    invoke-static {p3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 566
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 567
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v0

    if-eqz v0, :cond_93

    .line 570
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_8b

    .line 574
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    if-gt v0, v1, :cond_83

    .line 578
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getX()I

    move-result v0

    int-to-double v2, v0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 580
    .local v0, "N":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    add-int/lit8 v3, v0, 0x1

    mul-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    if-ne v2, v3, :cond_7b

    .line 583
    if-lez p6, :cond_73

    .line 586
    add-int/lit8 v2, v0, -0x1

    mul-int/2addr v2, p6

    add-int/2addr v2, v1

    .line 587
    .local v2, "expectedXDim":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v2, :cond_6b

    .line 591
    return v0

    .line 588
    :cond_6b
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for TPMV"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 584
    .end local v2    # "expectedXDim":I
    :cond_73
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Vector increments must be greater than 0"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 581
    :cond_7b
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid dimension for Ap"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 575
    .end local v0    # "N":I
    :cond_83
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Ap must have a Y dimension of 0 or 1"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 571
    :cond_8b
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 568
    :cond_93
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Called BLAS with wrong Element type"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static greylist-max-o validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 11
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Side"    # I
    .param p2, "TransA"    # I
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "B"    # Landroid/renderscript/Allocation;

    .line 2818
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2819
    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2820
    const/4 v0, -0x1

    .local v0, "aM":I
    const/4 v1, -0x1

    .local v1, "aN":I
    const/4 v2, -0x1

    .local v2, "bM":I
    const/4 v3, -0x1

    .line 2821
    .local v3, "bN":I
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 2822
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 2826
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 2827
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .line 2828
    if-ne v0, v1, :cond_60

    .line 2832
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v2

    .line 2833
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v3

    .line 2834
    const/16 v4, 0x8d

    const-string v5, "Called TRMM with invalid matrices"

    if-ne p1, v4, :cond_57

    .line 2835
    if-ne v1, v2, :cond_51

    goto :goto_59

    .line 2836
    :cond_51
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2839
    :cond_57
    if-ne v3, v0, :cond_5a

    .line 2843
    :goto_59
    return-void

    .line 2840
    :cond_5a
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2829
    :cond_60
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called TRMM with a non-symmetric matrix A"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2823
    :cond_68
    new-instance v4, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Called BLAS with wrong Element type"

    invoke-direct {v4, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static greylist-max-o validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 11
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 538
    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 539
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 540
    invoke-static {p3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 541
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v0

    invoke-virtual {v0}, Landroid/renderscript/Type;->getY()I

    move-result v0

    .line 542
    .local v0, "N":I
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    if-ne v1, v0, :cond_73

    .line 545
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 546
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v1

    if-eqz v1, :cond_6b

    .line 549
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_63

    .line 553
    if-lez p6, :cond_5b

    .line 556
    add-int/lit8 v1, v0, -0x1

    mul-int/2addr v1, p6

    add-int/2addr v1, v2

    .line 557
    .local v1, "expectedXDim":I
    invoke-virtual {p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v2

    if-ne v2, v1, :cond_53

    .line 560
    return-void

    .line 558
    :cond_53
    new-instance v2, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Incorrect vector dimensions for TRMV"

    invoke-direct {v2, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 554
    .end local v1    # "expectedXDim":I
    :cond_5b
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Vector increments must be greater than 0"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 550
    :cond_63
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "BLAS vectors must have Y dimension of 0 or 1"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 547
    :cond_6b
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Called BLAS with wrong Element type"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 543
    :cond_73
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "A must be a square matrix for TRMV"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static greylist-max-o validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 10
    .param p0, "e"    # Landroid/renderscript/Element;
    .param p1, "Side"    # I
    .param p2, "TransA"    # I
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "B"    # Landroid/renderscript/Allocation;

    .line 2938
    const/4 v0, -0x1

    .local v0, "adim":I
    const/4 v1, -0x1

    .local v1, "bM":I
    const/4 v2, -0x1

    .line 2939
    .local v2, "bN":I
    invoke-static {p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2940
    invoke-static {p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2941
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 2942
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/renderscript/Element;->isCompatible(Landroid/renderscript/Element;)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 2945
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v0

    .line 2946
    invoke-virtual {p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    if-ne v0, v3, :cond_5f

    .line 2952
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v1

    .line 2953
    invoke-virtual {p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v2

    .line 2954
    const/16 v3, 0x8d

    const-string v4, "Called TRSM with invalid matrix dimensions"

    if-ne p1, v3, :cond_56

    .line 2956
    if-ne v0, v1, :cond_50

    goto :goto_58

    .line 2957
    :cond_50
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2961
    :cond_56
    if-ne v0, v2, :cond_59

    .line 2965
    :goto_58
    return-void

    .line 2962
    :cond_59
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2950
    :cond_5f
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called TRSM with a non-symmetric matrix A"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2943
    :cond_67
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Called BLAS with wrong Element type"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static greylist-max-o validateTranspose(I)V
    .registers 3
    .param p0, "Trans"    # I

    .line 249
    const/16 v0, 0x6f

    if-eq p0, v0, :cond_15

    const/16 v0, 0x70

    if-eq p0, v0, :cond_15

    const/16 v0, 0x71

    if-ne p0, v0, :cond_d

    goto :goto_15

    .line 251
    :cond_d
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Invalid transpose passed to BLAS"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 253
    :cond_15
    :goto_15
    return-void
.end method

.method static greylist-max-o validateUplo(I)V
    .registers 3
    .param p0, "Uplo"    # I

    .line 269
    const/16 v0, 0x79

    if-eq p0, v0, :cond_11

    const/16 v0, 0x7a

    if-ne p0, v0, :cond_9

    goto :goto_11

    .line 270
    :cond_9
    new-instance v0, Landroid/renderscript/RSRuntimeException;

    const-string v1, "Invalid uplo passed to BLAS"

    invoke-direct {v0, v1}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 272
    :cond_11
    :goto_11
    return-void
.end method


# virtual methods
.method public whitelist BNNM(Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;II)V
    .registers 26
    .param p1, "A"    # Landroid/renderscript/Allocation;
    .param p2, "a_offset"    # I
    .param p3, "B"    # Landroid/renderscript/Allocation;
    .param p4, "b_offset"    # I
    .param p5, "C"    # Landroid/renderscript/Allocation;
    .param p6, "c_offset"    # I
    .param p7, "c_mult"    # I

    .line 3294
    move-object/from16 v0, p0

    move/from16 v9, p2

    move/from16 v12, p4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->U8(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/16 v4, 0x70

    const/4 v5, 0x0

    const/16 v3, 0x6f

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p5

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3296
    if-ltz v9, :cond_75

    const/16 v1, 0xff

    if-gt v9, v1, :cond_75

    .line 3299
    if-ltz v12, :cond_6b

    if-gt v12, v1, :cond_6b

    .line 3302
    const/4 v1, -0x1

    .local v1, "M":I
    const/4 v2, -0x1

    .local v2, "N":I
    const/4 v3, -0x1

    .line 3303
    .local v3, "K":I
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    .line 3304
    .end local v1    # "M":I
    .local v4, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v5

    .line 3305
    .end local v2    # "N":I
    .local v5, "N":I
    invoke-virtual/range {p1 .. p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v6

    .line 3308
    .end local v3    # "K":I
    .local v6, "K":I
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v2

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v8, p1

    invoke-virtual {v8, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v10

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v13, p3

    invoke-virtual {v13, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v14

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v0, p5

    invoke-virtual {v0, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    move-wide v7, v10

    move-wide v10, v14

    move-wide/from16 v13, v16

    move/from16 v15, p6

    move/from16 v16, p7

    invoke-virtual/range {v1 .. v16}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_BNNM(JIIIJIJIJII)V

    .line 3310
    return-void

    .line 3299
    .end local v4    # "M":I
    .end local v5    # "N":I
    .end local v6    # "K":I
    :cond_6b
    move-object/from16 v0, p5

    .line 3300
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid b_offset passed to BNNM"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3296
    :cond_75
    move-object/from16 v0, p5

    .line 3297
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v2, "Invalid a_offset passed to BNNM"

    invoke-direct {v1, v2}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist CGBMV(IIILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .registers 42
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

    .line 493
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p8

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 494
    if-ltz p2, :cond_75

    if-ltz p3, :cond_75

    .line 497
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v14

    .line 498
    .local v14, "M":I
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v15

    .line 499
    .local v15, "N":I
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    iget v3, v1, Landroid/renderscript/Float2;->x:F

    iget v4, v1, Landroid/renderscript/Float2;->y:F

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v9, p5

    invoke-virtual {v9, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v10, p6

    invoke-virtual {v10, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget v8, v2, Landroid/renderscript/Float2;->x:F

    iget v11, v2, Landroid/renderscript/Float2;->y:F

    iget-object v12, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v13, p9

    invoke-virtual {v13, v12}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v25

    move/from16 v23, v8

    const/16 v8, 0x40

    const/4 v10, 0x0

    move/from16 v24, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move/from16 v9, p1

    move/from16 v29, p2

    move/from16 v30, p3

    move/from16 v27, p7

    move/from16 v28, p10

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v5 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 500
    return-void

    .line 495
    .end local v14    # "M":I
    .end local v15    # "N":I
    :cond_75
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "KL and KU must be greater than or equal to 0"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist CGEMM(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .registers 42
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .line 2419
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2420
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2421
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const/4 v7, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2422
    const/4 v3, -0x1

    .local v3, "M":I
    const/4 v4, -0x1

    .local v4, "N":I
    const/4 v5, -0x1

    .line 2423
    .local v5, "K":I
    const/16 v6, 0x6f

    move/from16 v12, p1

    if-eq v12, v6, :cond_3e

    .line 2424
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    move-result v3

    .line 2425
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    move-result v5

    move/from16 v17, v3

    move/from16 v19, v5

    goto :goto_52

    .line 2427
    :cond_3e
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    move-result v3

    .line 2428
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    move-result v5

    move/from16 v17, v3

    move/from16 v19, v5

    .line 2430
    .end local v3    # "M":I
    .end local v5    # "K":I
    .local v17, "M":I
    .local v19, "K":I
    :goto_52
    move/from16 v13, p2

    if-eq v13, v6, :cond_61

    .line 2431
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    move/from16 v18, v3

    .end local v4    # "N":I
    .local v3, "N":I
    goto :goto_6b

    .line 2433
    .end local v3    # "N":I
    .restart local v4    # "N":I
    :cond_61
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    move/from16 v18, v3

    .line 2435
    .end local v4    # "N":I
    .local v18, "N":I
    :goto_6b
    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v9

    iget v3, v1, Landroid/renderscript/Float2;->x:F

    iget v4, v1, Landroid/renderscript/Float2;->y:F

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p4

    invoke-virtual {v6, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v7, p5

    invoke-virtual {v7, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    iget v5, v2, Landroid/renderscript/Float2;->x:F

    iget v11, v2, Landroid/renderscript/Float2;->y:F

    iget-object v14, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 2436
    move-object/from16 v15, p7

    invoke-virtual {v15, v14}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    .line 2435
    move/from16 v27, v11

    const/16 v11, 0x7d

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v26, v5

    invoke-virtual/range {v8 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 2437
    return-void
.end method

.method public whitelist CGEMV(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .registers 40
    .param p1, "TransA"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .line 369
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v14

    .line 371
    .local v14, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v15

    .line 372
    .local v15, "N":I
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    iget v3, v1, Landroid/renderscript/Float2;->x:F

    iget v4, v1, Landroid/renderscript/Float2;->y:F

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v9, p3

    invoke-virtual {v9, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v10, p4

    invoke-virtual {v10, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget v8, v2, Landroid/renderscript/Float2;->x:F

    iget v11, v2, Landroid/renderscript/Float2;->y:F

    iget-object v12, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v13, p7

    invoke-virtual {v13, v12}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v25

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v23, v8

    const/16 v8, 0x3f

    const/4 v10, 0x0

    move/from16 v24, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move/from16 v9, p1

    move/from16 v27, p5

    move/from16 v28, p8

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v5 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 373
    return-void
.end method

.method public whitelist CGERC(Landroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 35
    .param p1, "alpha"    # Landroid/renderscript/Float2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .line 1945
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 1946
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 1947
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 1948
    .local v12, "N":I
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget v14, v1, Landroid/renderscript/Float2;->x:F

    iget v15, v1, Landroid/renderscript/Float2;->y:F

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p2

    invoke-virtual {v6, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v7, p4

    invoke-virtual {v7, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v5, 0x63

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v24, p3

    move/from16 v25, p5

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1949
    return-void
.end method

.method public whitelist CGERU(Landroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 35
    .param p1, "alpha"    # Landroid/renderscript/Float2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .line 1924
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 1925
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 1926
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 1927
    .local v12, "N":I
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget v14, v1, Landroid/renderscript/Float2;->x:F

    iget v15, v1, Landroid/renderscript/Float2;->y:F

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p2

    invoke-virtual {v6, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v7, p4

    invoke-virtual {v7, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v8, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v5, 0x62

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v24, p3

    move/from16 v25, p5

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1928
    return-void
.end method

.method public whitelist CHBMV(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .registers 41
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # Landroid/renderscript/Float2;
    .param p8, "Y"    # Landroid/renderscript/Allocation;
    .param p9, "incY"    # I

    .line 1874
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p7

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v5, p1

    move-object/from16 v10, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v15

    .line 1875
    .local v15, "N":I
    if-ltz p2, :cond_65

    .line 1878
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    iget v3, v1, Landroid/renderscript/Float2;->x:F

    iget v4, v1, Landroid/renderscript/Float2;->y:F

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v9, p4

    invoke-virtual {v9, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v10, p5

    invoke-virtual {v10, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget v8, v2, Landroid/renderscript/Float2;->x:F

    iget v11, v2, Landroid/renderscript/Float2;->y:F

    iget-object v12, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v13, p8

    invoke-virtual {v13, v12}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v25

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v23, v8

    const/16 v8, 0x60

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v24, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v12, p1

    move/from16 v16, p2

    move/from16 v27, p6

    move/from16 v28, p9

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v5 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1879
    return-void

    .line 1876
    :cond_65
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "K must be 0 or greater for HBMV"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist CHEMM(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .registers 41
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .line 3098
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3099
    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    move/from16 v13, p1

    invoke-static {v6, v13, v2, v3, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHEMM(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3100
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v6}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v16

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v17

    iget v6, v1, Landroid/renderscript/Float2;->x:F

    iget v10, v1, Landroid/renderscript/Float2;->y:F

    iget-object v11, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 3101
    invoke-virtual {v2, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget-object v11, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v11}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    iget v11, v4, Landroid/renderscript/Float2;->x:F

    iget v12, v4, Landroid/renderscript/Float2;->y:F

    iget-object v14, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v14}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v27

    .line 3100
    move/from16 v20, v10

    const/16 v10, 0x89

    move/from16 v25, v11

    const/4 v11, 0x0

    move/from16 v26, v12

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v14, p2

    move/from16 v19, v6

    invoke-virtual/range {v7 .. v32}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 3102
    return-void
.end method

.method public whitelist CHEMV(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .registers 40
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .line 1845
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v5, p1

    move-object/from16 v10, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v15

    .line 1846
    .local v15, "N":I
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    iget v3, v1, Landroid/renderscript/Float2;->x:F

    iget v4, v1, Landroid/renderscript/Float2;->y:F

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v9, p3

    invoke-virtual {v9, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v10, p4

    invoke-virtual {v10, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget v8, v2, Landroid/renderscript/Float2;->x:F

    iget v11, v2, Landroid/renderscript/Float2;->y:F

    iget-object v12, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v13, p7

    invoke-virtual {v13, v12}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v25

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v23, v8

    const/16 v8, 0x5f

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v24, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v12, p1

    move/from16 v27, p5

    move/from16 v28, p8

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v5 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1847
    return-void
.end method

.method public whitelist CHER(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    .line 1965
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v4, p4

    invoke-static {v3, v11, v1, v4, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 1966
    .local v14, "N":I
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    move/from16 v16, p2

    move/from16 v26, p4

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1967
    return-void
.end method

.method public whitelist CHER2(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 38
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    .line 2011
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v3 .. v9}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 2012
    .local v14, "N":I
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget v2, v1, Landroid/renderscript/Float2;->x:F

    iget v3, v1, Landroid/renderscript/Float2;->y:F

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v8, p3

    invoke-virtual {v8, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v9, p5

    invoke-virtual {v9, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v10, p7

    invoke-virtual {v10, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v7, 0x66

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v11, p1

    move/from16 v26, p4

    move/from16 v27, p6

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 2013
    return-void
.end method

.method public whitelist CHER2K(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .line 3238
    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3239
    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v6, v5, v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHER2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3240
    const/4 v6, 0x0

    .line 3241
    .local v6, "k":I
    const/16 v7, 0x6f

    if-ne v5, v7, :cond_27

    .line 3242
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    move-result v6

    move v12, v6

    goto :goto_30

    .line 3244
    :cond_27
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    move-result v6

    move v12, v6

    .line 3246
    .end local v6    # "k":I
    .local v12, "k":I
    :goto_30
    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v9

    invoke-virtual {v9}, Landroid/renderscript/Type;->getX()I

    move-result v11

    iget v13, v1, Landroid/renderscript/Float2;->x:F

    iget v14, v1, Landroid/renderscript/Float2;->y:F

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 3247
    invoke-virtual {v2, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v15

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v4, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    .line 3246
    const/16 v4, 0x8b

    move-object v1, v6

    const/4 v6, 0x0

    move-wide v2, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v8, p1

    move/from16 v19, p6

    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 3248
    return-void
.end method

.method public whitelist CHERK(IIFLandroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .registers 34
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # F
    .param p6, "C"    # Landroid/renderscript/Allocation;

    .line 3160
    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3161
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {v3, v5, v1, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHERK(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3162
    const/4 v3, 0x0

    .line 3163
    .local v3, "k":I
    const/16 v4, 0x71

    if-ne v5, v4, :cond_23

    .line 3164
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v3

    move v12, v3

    goto :goto_2c

    .line 3166
    :cond_23
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v3

    move v12, v3

    .line 3168
    .end local v3    # "k":I
    .local v12, "k":I
    :goto_2c
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v11

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 3169
    invoke-virtual {v1, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v15

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    .line 3168
    const/16 v4, 0x8a

    move-object v1, v3

    move-wide v2, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const-wide/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v8, p1

    move/from16 v13, p3

    move/from16 v19, p5

    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 3170
    return-void
.end method

.method public whitelist CHPMV(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;I)V
    .registers 40
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "Ap"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .line 1906
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v5, p1

    move-object/from16 v10, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v15

    .line 1907
    .local v15, "N":I
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    iget v3, v1, Landroid/renderscript/Float2;->x:F

    iget v4, v1, Landroid/renderscript/Float2;->y:F

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v9, p3

    invoke-virtual {v9, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v10, p4

    invoke-virtual {v10, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget v8, v2, Landroid/renderscript/Float2;->x:F

    iget v11, v2, Landroid/renderscript/Float2;->y:F

    iget-object v12, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v13, p7

    invoke-virtual {v13, v12}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v25

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v23, v8

    const/16 v8, 0x61

    const/4 v9, 0x0

    const/4 v10, 0x0

    move/from16 v24, v11

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v12, p1

    move/from16 v27, p5

    move/from16 v28, p8

    move/from16 v17, v3

    move/from16 v18, v4

    invoke-virtual/range {v5 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1908
    return-void
.end method

.method public whitelist CHPR(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Ap"    # Landroid/renderscript/Allocation;

    .line 1991
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v4, p4

    invoke-static {v3, v11, v1, v4, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 1992
    .local v14, "N":I
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v7, 0x65

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v27, 0x0

    move/from16 v16, p2

    move/from16 v26, p4

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1993
    return-void
.end method

.method public whitelist CHPR2(ILandroid/renderscript/Float2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 38
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Float2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "Ap"    # Landroid/renderscript/Allocation;

    .line 2039
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v3 .. v9}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 2040
    .local v14, "N":I
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget v2, v1, Landroid/renderscript/Float2;->x:F

    iget v3, v1, Landroid/renderscript/Float2;->y:F

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v8, p3

    invoke-virtual {v8, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v9, p5

    invoke-virtual {v9, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v10, p7

    invoke-virtual {v10, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v7, 0x67

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v11, p1

    move/from16 v26, p4

    move/from16 v27, p6

    move/from16 v16, v2

    move/from16 v17, v3

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 2041
    return-void
.end method

.method public whitelist CSYMM(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .registers 41
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .line 2544
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2545
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2546
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-ne v3, v4, :cond_88

    .line 2549
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2550
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v16

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v17

    iget v3, v1, Landroid/renderscript/Float2;->x:F

    iget v4, v1, Landroid/renderscript/Float2;->y:F

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p4

    invoke-virtual {v6, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v10, p5

    invoke-virtual {v10, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    iget v5, v2, Landroid/renderscript/Float2;->x:F

    iget v11, v2, Landroid/renderscript/Float2;->y:F

    iget-object v12, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 2551
    move-object/from16 v13, p7

    invoke-virtual {v13, v12}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v27

    .line 2550
    const/16 v10, 0x7e

    move/from16 v26, v11

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v25, v5

    invoke-virtual/range {v7 .. v32}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 2552
    return-void

    .line 2547
    :cond_88
    move-object/from16 v6, p4

    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Matrix A is not symmetric"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist CSYR2K(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Float2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .line 2780
    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2781
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v7}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-static {v7, v5, v2, v3, v6}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2782
    const/4 v7, -0x1

    .line 2783
    .local v7, "K":I
    const/16 v8, 0x6f

    if-eq v5, v8, :cond_29

    .line 2784
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v7

    move v12, v7

    goto :goto_32

    .line 2786
    :cond_29
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v7

    move v12, v7

    .line 2788
    .end local v7    # "K":I
    .local v12, "K":I
    :goto_32
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v10

    invoke-virtual {v10}, Landroid/renderscript/Type;->getX()I

    move-result v11

    iget v13, v1, Landroid/renderscript/Float2;->x:F

    iget v14, v1, Landroid/renderscript/Float2;->y:F

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v15

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget v10, v4, Landroid/renderscript/Float2;->x:F

    iget v1, v4, Landroid/renderscript/Float2;->y:F

    move/from16 v20, v1

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v4, 0x80

    const/4 v6, 0x0

    move-object v1, v7

    const/4 v7, 0x0

    move-wide v2, v8

    const/4 v9, 0x0

    move/from16 v19, v10

    const/4 v10, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 2789
    return-void
.end method

.method public whitelist CSYRK(IILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Float2;Landroid/renderscript/Allocation;)V
    .registers 43
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Float2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # Landroid/renderscript/Float2;
    .param p6, "C"    # Landroid/renderscript/Allocation;

    .line 2647
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2648
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2649
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2650
    const/4 v3, -0x1

    .line 2651
    .local v3, "K":I
    const/16 v4, 0x6f

    move/from16 v14, p2

    if-eq v14, v4, :cond_30

    .line 2652
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v3

    move/from16 v21, v3

    goto :goto_3a

    .line 2654
    :cond_30
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v3

    move/from16 v21, v3

    .line 2656
    .end local v3    # "K":I
    .local v21, "K":I
    :goto_3a
    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v11

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v20

    iget v3, v1, Landroid/renderscript/Float2;->x:F

    iget v4, v1, Landroid/renderscript/Float2;->y:F

    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v8, p4

    invoke-virtual {v8, v5}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    iget v5, v2, Landroid/renderscript/Float2;->x:F

    iget v6, v2, Landroid/renderscript/Float2;->y:F

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 2657
    move-object/from16 v9, p6

    invoke-virtual {v9, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v30

    .line 2656
    const/16 v13, 0x7f

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v26, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    move/from16 v17, p1

    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v28, v5

    move/from16 v29, v6

    invoke-virtual/range {v10 .. v35}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 2658
    return-void
.end method

.method public whitelist CTBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .line 755
    move-object/from16 v0, p0

    if-ltz p4, :cond_5b

    .line 758
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 759
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 760
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p6

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x42

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v14, p4

    move/from16 v25, p7

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 761
    return-void

    .line 756
    .end local v13    # "N":I
    :cond_5b
    move-object/from16 v2, p5

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist CTBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .line 1067
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 1068
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 1069
    .local v13, "N":I
    if-ltz p4, :cond_5b

    .line 1072
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p6

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x45

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v14, p4

    move/from16 v25, p7

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1073
    return-void

    .line 1070
    :cond_5b
    move-object/from16 v2, p5

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist CTPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 868
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v13

    .line 869
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x43

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v25, p6

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 870
    return-void
.end method

.method public whitelist CTPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 1183
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v13

    .line 1184
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x46

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v25, p6

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 1185
    return-void
.end method

.method public whitelist CTRMM(IIIILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 39
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Float2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .line 2907
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2908
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 2909
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v11, p1

    move/from16 v9, p3

    invoke-static {v4, v11, v9, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2910
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    iget v4, v1, Landroid/renderscript/Float2;->x:F

    iget v8, v1, Landroid/renderscript/Float2;->y:F

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 2911
    invoke-virtual {v2, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    .line 2910
    move/from16 v18, v8

    const/16 v8, 0x81

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v12, p2

    move/from16 v13, p4

    move/from16 v17, v4

    invoke-virtual/range {v5 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 2912
    return-void
.end method

.method public whitelist CTRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 646
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 647
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 648
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x41

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v25, p6

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 649
    return-void
.end method

.method public whitelist CTRSM(IIIILandroid/renderscript/Float2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 39
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Float2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .line 3029
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3030
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3031
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v11, p1

    move/from16 v9, p3

    invoke-static {v4, v11, v9, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3032
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    iget v4, v1, Landroid/renderscript/Float2;->x:F

    iget v8, v1, Landroid/renderscript/Float2;->y:F

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 3033
    invoke-virtual {v2, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    .line 3032
    move/from16 v18, v8

    const/16 v8, 0x82

    const/4 v10, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v12, p2

    move/from16 v13, p4

    move/from16 v17, v4

    invoke-virtual/range {v5 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 3034
    return-void
.end method

.method public whitelist CTRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 955
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 956
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 957
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x44

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v25, p6

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Complex(JIIIIIIIIIFFJJFFJIIII)V

    .line 959
    return-void
.end method

.method public whitelist DGBMV(IIIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .registers 42
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

    .line 458
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    move/from16 v6, p8

    move-object/from16 v7, p11

    move/from16 v8, p12

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 459
    if-ltz p2, :cond_64

    if-ltz p3, :cond_64

    .line 462
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 463
    .local v12, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v13

    .line 464
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p6

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p7

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v7, p11

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    const/16 v6, 0x38

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move/from16 v7, p1

    move/from16 v27, p2

    move/from16 v28, p3

    move-wide/from16 v15, p4

    move/from16 v25, p8

    move-wide/from16 v21, p9

    move/from16 v26, p12

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 465
    return-void

    .line 459
    .end local v12    # "M":I
    .end local v13    # "N":I
    :cond_64
    move-object/from16 v2, p6

    .line 460
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "KL and KU must be greater than or equal to 0"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist DGEMM(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .registers 42
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "B"    # Landroid/renderscript/Allocation;
    .param p7, "beta"    # D
    .param p9, "C"    # Landroid/renderscript/Allocation;

    .line 2383
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2384
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2385
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2386
    const/4 v1, -0x1

    .local v1, "M":I
    const/4 v2, -0x1

    .local v2, "N":I
    const/4 v3, -0x1

    .line 2387
    .local v3, "K":I
    const/16 v4, 0x6f

    move/from16 v10, p1

    if-eq v10, v4, :cond_39

    .line 2388
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .line 2389
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v3

    move v15, v1

    move/from16 v17, v3

    goto :goto_4c

    .line 2391
    :cond_39
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v1

    .line 2392
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v3

    move v15, v1

    move/from16 v17, v3

    .line 2394
    .end local v1    # "M":I
    .end local v3    # "K":I
    .local v15, "M":I
    .local v17, "K":I
    :goto_4c
    move/from16 v11, p2

    if-eq v11, v4, :cond_5b

    .line 2395
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    move/from16 v16, v1

    .end local v2    # "N":I
    .local v1, "N":I
    goto :goto_65

    .line 2397
    .end local v1    # "N":I
    .restart local v2    # "N":I
    :cond_5b
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    move/from16 v16, v1

    .line 2399
    .end local v2    # "N":I
    .local v16, "N":I
    :goto_65
    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v3, p6

    invoke-virtual {v3, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 2400
    move-object/from16 v4, p9

    invoke-virtual {v4, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    .line 2399
    const/16 v9, 0x77

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide/from16 v18, p3

    move-wide/from16 v24, p7

    invoke-virtual/range {v6 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 2401
    return-void
.end method

.method public whitelist DGEMV(IDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .registers 40
    .param p1, "TransA"    # I
    .param p2, "alpha"    # D
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # D
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    .line 347
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 348
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 349
    .local v12, "M":I
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v13

    .line 350
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x37

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move/from16 v7, p1

    move-wide/from16 v15, p2

    move/from16 v25, p6

    move-wide/from16 v21, p7

    move/from16 v26, p10

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 351
    return-void
.end method

.method public whitelist DGER(DLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 36
    .param p1, "alpha"    # D
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    .line 1703
    move-object/from16 v0, p0

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 1704
    .local v11, "M":I
    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 1705
    .local v12, "N":I
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGER(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 1706
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v5, p3

    invoke-virtual {v5, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v5, 0x5a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-wide/16 v20, 0x0

    move-wide/from16 v14, p1

    move/from16 v24, p4

    move/from16 v25, p6

    invoke-virtual/range {v2 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1707
    return-void
.end method

.method public whitelist DSBMV(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .registers 41
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I
    .param p8, "beta"    # D
    .param p10, "Y"    # Landroid/renderscript/Allocation;
    .param p11, "incY"    # I

    .line 1654
    move-object/from16 v0, p0

    if-ltz p2, :cond_55

    .line 1657
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v7, p7

    move-object/from16 v6, p10

    move/from16 v8, p11

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    move-result v13

    .line 1658
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p6

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v7, p10

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x58

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v10, p1

    move/from16 v14, p2

    move-wide/from16 v15, p3

    move/from16 v25, p7

    move-wide/from16 v21, p8

    move/from16 v26, p11

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1659
    return-void

    .line 1655
    .end local v13    # "N":I
    :cond_55
    move-object/from16 v2, p5

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist DSPMV(IDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .registers 40
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # D
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    .line 1685
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)I

    move-result v13

    .line 1686
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x59

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move/from16 v10, p1

    move-wide/from16 v15, p2

    move/from16 v25, p6

    move-wide/from16 v21, p7

    move/from16 v26, p10

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1687
    return-void
.end method

.method public whitelist DSPR(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Ap"    # Landroid/renderscript/Allocation;

    .line 1747
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v4, p5

    invoke-static {v3, v11, v1, v4, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 1748
    .local v14, "N":I
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v7, 0x5c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, 0x0

    move-wide/from16 v16, p2

    move/from16 v26, p5

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1749
    return-void
.end method

.method public whitelist DSPR2(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 38
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Y"    # Landroid/renderscript/Allocation;
    .param p7, "incY"    # I
    .param p8, "Ap"    # Landroid/renderscript/Allocation;

    .line 1793
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v13

    .line 1794
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v7, p8

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x5e

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v21, 0x0

    move/from16 v10, p1

    move-wide/from16 v15, p2

    move/from16 v25, p5

    move/from16 v26, p7

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1795
    return-void
.end method

.method public whitelist DSYMM(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .registers 41
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "B"    # Landroid/renderscript/Allocation;
    .param p7, "beta"    # D
    .param p9, "C"    # Landroid/renderscript/Allocation;

    .line 2518
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2519
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2520
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-ne v1, v2, :cond_78

    .line 2523
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p9

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2524
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual/range {p9 .. p9}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual/range {p9 .. p9}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v15

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v3, p6

    invoke-virtual {v3, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 2525
    move-object/from16 v4, p9

    invoke-virtual {v4, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v25

    .line 2524
    const/16 v8, 0x78

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v11, p1

    move/from16 v12, p2

    move-wide/from16 v17, p3

    move-wide/from16 v23, p7

    invoke-virtual/range {v5 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 2526
    return-void

    .line 2521
    :cond_78
    move-object/from16 v2, p5

    move-object/from16 v3, p6

    move-object/from16 v4, p9

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Matrix A is not symmetric"

    invoke-direct {v1, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist DSYMV(IDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IDLandroid/renderscript/Allocation;I)V
    .registers 40
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # D
    .param p9, "Y"    # Landroid/renderscript/Allocation;
    .param p10, "incY"    # I

    .line 1625
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move-object/from16 v6, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    move-result v13

    .line 1626
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v7, p9

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x57

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move/from16 v10, p1

    move-wide/from16 v15, p2

    move/from16 v25, p6

    move-wide/from16 v21, p7

    move/from16 v26, p10

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1627
    return-void
.end method

.method public whitelist DSYR(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .line 1722
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v4, p5

    invoke-static {v3, v11, v1, v4, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 1723
    .local v14, "N":I
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v7, 0x5b

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v27, 0x0

    move-wide/from16 v16, p2

    move/from16 v26, p5

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1724
    return-void
.end method

.method public whitelist DSYR2(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 38
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Y"    # Landroid/renderscript/Allocation;
    .param p7, "incY"    # I
    .param p8, "A"    # Landroid/renderscript/Allocation;

    .line 1766
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v13

    .line 1767
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v7, p8

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x5d

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v21, 0x0

    move/from16 v10, p1

    move-wide/from16 v15, p2

    move/from16 v25, p5

    move/from16 v26, p7

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1768
    return-void
.end method

.method public whitelist DSYR2K(IIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "B"    # Landroid/renderscript/Allocation;
    .param p7, "beta"    # D
    .param p9, "C"    # Landroid/renderscript/Allocation;

    .line 2754
    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p9

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2755
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v4, v5, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2756
    const/4 v4, -0x1

    .line 2757
    .local v4, "K":I
    const/16 v6, 0x6f

    if-eq v5, v6, :cond_25

    .line 2758
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v4

    move v12, v4

    goto :goto_2e

    .line 2760
    :cond_25
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v4

    move v12, v4

    .line 2762
    .end local v4    # "K":I
    .local v12, "K":I
    :goto_2e
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v6}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v11

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v15

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object v1, v4

    const/16 v4, 0x7a

    move-wide v2, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v8, p1

    move-wide/from16 v13, p3

    move-wide/from16 v19, p7

    invoke-virtual/range {v1 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 2763
    return-void
.end method

.method public whitelist DSYRK(IIDLandroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .registers 43
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # D
    .param p8, "C"    # Landroid/renderscript/Allocation;

    .line 2621
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2622
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2623
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p5

    move-object/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2624
    const/4 v1, -0x1

    .line 2625
    .local v1, "K":I
    const/16 v2, 0x6f

    move/from16 v12, p2

    if-eq v12, v2, :cond_2c

    .line 2626
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v1

    move/from16 v19, v1

    goto :goto_36

    .line 2628
    :cond_2c
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v1

    move/from16 v19, v1

    .line 2630
    .end local v1    # "K":I
    .local v19, "K":I
    :goto_36
    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v9

    invoke-virtual/range {p8 .. p8}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v18

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p8

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v11, 0x79

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v24, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 v15, p1

    move-wide/from16 v20, p3

    move-wide/from16 v26, p6

    invoke-virtual/range {v8 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 2631
    return-void
.end method

.method public whitelist DTBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .line 724
    move-object/from16 v0, p0

    if-ltz p4, :cond_58

    .line 727
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 728
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 729
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p6

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x3a

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v14, p4

    move/from16 v25, p7

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 730
    return-void

    .line 725
    .end local v13    # "N":I
    :cond_58
    move-object/from16 v2, p5

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist DTBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .line 1036
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 1037
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 1038
    .local v13, "N":I
    if-ltz p4, :cond_58

    .line 1041
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p6

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x3d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v14, p4

    move/from16 v25, p7

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1042
    return-void

    .line 1039
    :cond_58
    move-object/from16 v2, p5

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist DTPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 842
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v13

    .line 843
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x3b

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v25, p6

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 844
    return-void
.end method

.method public whitelist DTPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 1156
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v13

    .line 1157
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x3e

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v25, p6

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 1158
    return-void
.end method

.method public whitelist DTRMM(IIIIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 39
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # D
    .param p7, "A"    # Landroid/renderscript/Allocation;
    .param p8, "B"    # Landroid/renderscript/Allocation;

    .line 2884
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2885
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 2886
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v10, p1

    move/from16 v8, p3

    invoke-static {v3, v10, v8, v1, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2887
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v14

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 2888
    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    .line 2887
    const/16 v7, 0x7b

    const/4 v9, 0x0

    const/4 v15, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p2

    move/from16 v12, p4

    move-wide/from16 v16, p5

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 2889
    return-void
.end method

.method public whitelist DTRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 627
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 628
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 629
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x39

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v25, p6

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 630
    return-void
.end method

.method public whitelist DTRSM(IIIIDLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 39
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # D
    .param p7, "A"    # Landroid/renderscript/Allocation;
    .param p8, "B"    # Landroid/renderscript/Allocation;

    .line 3006
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    move-object/from16 v2, p8

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3007
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3008
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v10, p1

    move/from16 v8, p3

    invoke-static {v3, v10, v8, v1, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3009
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v14

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 3010
    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    .line 3009
    const/16 v7, 0x7c

    const/4 v9, 0x0

    const/4 v15, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v11, p2

    move/from16 v12, p4

    move-wide/from16 v16, p5

    invoke-virtual/range {v4 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 3011
    return-void
.end method

.method public whitelist DTRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 934
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 935
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 936
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v6, 0x3c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v26, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v25, p6

    invoke-virtual/range {v3 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Double(JIIIIIIIIIDJJDJIIII)V

    .line 938
    return-void
.end method

.method public whitelist SGBMV(IIIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .registers 38
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

    .line 423
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p9

    move/from16 v8, p10

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 424
    if-ltz p2, :cond_64

    if-ltz p3, :cond_64

    .line 427
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 428
    .local v12, "M":I
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v13

    .line 429
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p6

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v7, p9

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v6, 0x30

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move/from16 v7, p1

    move/from16 v25, p2

    move/from16 v26, p3

    move/from16 v15, p4

    move/from16 v23, p7

    move/from16 v20, p8

    move/from16 v24, p10

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 430
    return-void

    .line 424
    .end local v12    # "M":I
    .end local v13    # "N":I
    :cond_64
    move-object/from16 v2, p5

    .line 425
    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "KL and KU must be greater than or equal to 0"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist SGEMM(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .registers 38
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .line 2346
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2347
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2348
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    move/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2350
    const/4 v1, -0x1

    .local v1, "M":I
    const/4 v2, -0x1

    .local v2, "N":I
    const/4 v3, -0x1

    .line 2351
    .local v3, "K":I
    const/16 v4, 0x6f

    move/from16 v10, p1

    if-eq v10, v4, :cond_39

    .line 2352
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v1

    .line 2353
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v3

    move v15, v1

    move/from16 v17, v3

    goto :goto_4c

    .line 2355
    :cond_39
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v1

    .line 2356
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v3

    move v15, v1

    move/from16 v17, v3

    .line 2358
    .end local v1    # "M":I
    .end local v3    # "K":I
    .local v15, "M":I
    .local v17, "K":I
    :goto_4c
    move/from16 v11, p2

    if-eq v11, v4, :cond_5b

    .line 2359
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v1

    move/from16 v16, v1

    .end local v2    # "N":I
    .local v1, "N":I
    goto :goto_65

    .line 2361
    .end local v1    # "N":I
    .restart local v2    # "N":I
    :cond_5b
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    move/from16 v16, v1

    .line 2363
    .end local v2    # "N":I
    .local v16, "N":I
    :goto_65
    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v3, p5

    invoke-virtual {v3, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 2364
    move-object/from16 v4, p7

    invoke-virtual {v4, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    .line 2363
    const/16 v9, 0x71

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v18, p3

    move/from16 v23, p6

    invoke-virtual/range {v6 .. v29}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 2365
    return-void
.end method

.method public whitelist SGEMV(IFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "TransA"    # I
    .param p2, "alpha"    # F
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # F
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .line 325
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 326
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v12

    .line 327
    .local v12, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v13

    .line 328
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p4

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v6, 0x2f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v14, 0x0

    move/from16 v7, p1

    move/from16 v15, p2

    move/from16 v23, p5

    move/from16 v20, p6

    move/from16 v24, p8

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 329
    return-void
.end method

.method public whitelist SGER(FLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 33
    .param p1, "alpha"    # F
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .line 1515
    move-object/from16 v0, p0

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 1516
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 1517
    .local v12, "N":I
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-static/range {v2 .. v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGER(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 1518
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v5, p2

    invoke-virtual {v5, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v15

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p4

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v5, 0x52

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v19, 0x0

    move/from16 v14, p1

    move/from16 v22, p3

    move/from16 v23, p5

    invoke-virtual/range {v2 .. v25}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1519
    return-void
.end method

.method public whitelist SSBMV(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .registers 37
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # F
    .param p8, "Y"    # Landroid/renderscript/Allocation;
    .param p9, "incY"    # I

    .line 1466
    move-object/from16 v0, p0

    if-ltz p2, :cond_55

    .line 1469
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    move-object/from16 v6, p8

    move/from16 v8, p9

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    move-result v13

    .line 1470
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v7, p8

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v6, 0x50

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move/from16 v10, p1

    move/from16 v14, p2

    move/from16 v15, p3

    move/from16 v23, p6

    move/from16 v20, p7

    move/from16 v24, p9

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1471
    return-void

    .line 1467
    .end local v13    # "N":I
    :cond_55
    move-object/from16 v2, p4

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist SSPMV(IFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "Ap"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # F
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .line 1497
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)I

    move-result v13

    .line 1498
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p4

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v6, 0x51

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v23, p5

    move/from16 v20, p6

    move/from16 v24, p8

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1499
    return-void
.end method

.method public whitelist SSPR(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 34
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Ap"    # Landroid/renderscript/Allocation;

    .line 1559
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v4, p4

    invoke-static {v3, v11, v1, v4, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 1560
    .local v14, "N":I
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v7, 0x54

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    move/from16 v16, p2

    move/from16 v24, p4

    invoke-virtual/range {v4 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1561
    return-void
.end method

.method public whitelist SSPR2(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "Ap"    # Landroid/renderscript/Allocation;

    .line 1605
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v13

    .line 1606
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v7, p7

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v6, 0x56

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v23, p4

    move/from16 v24, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1607
    return-void
.end method

.method public whitelist SSYMM(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .registers 37
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .line 2491
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2492
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2494
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v1

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v2

    if-ne v1, v2, :cond_78

    .line 2497
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v5, p1

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2498
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v15

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v3, p5

    invoke-virtual {v3, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 2499
    move-object/from16 v4, p7

    invoke-virtual {v4, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    .line 2498
    const/16 v8, 0x72

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v11, p1

    move/from16 v12, p2

    move/from16 v17, p3

    move/from16 v22, p6

    invoke-virtual/range {v5 .. v28}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 2500
    return-void

    .line 2495
    :cond_78
    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v5, "Matrix A is not symmetric"

    invoke-direct {v1, v5}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist SSYMV(IFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;IFLandroid/renderscript/Allocation;I)V
    .registers 36
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # F
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .line 1437
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v7, p5

    move-object/from16 v6, p7

    move/from16 v8, p8

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;II)I

    move-result v13

    .line 1438
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p4

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v7, p7

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v6, 0x4f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v23, p5

    move/from16 v20, p6

    move/from16 v24, p8

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1439
    return-void
.end method

.method public whitelist SSYR(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 34
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;

    .line 1534
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v4, p4

    invoke-static {v3, v11, v1, v4, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 1535
    .local v14, "N":I
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v7, 0x53

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v25, 0x0

    move/from16 v16, p2

    move/from16 v24, p4

    invoke-virtual/range {v4 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1536
    return-void
.end method

.method public whitelist SSYR2(IFLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # F
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    .line 1578
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v13

    .line 1579
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v7, p7

    invoke-virtual {v7, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v6, 0x55

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v20, 0x0

    move/from16 v10, p1

    move/from16 v15, p2

    move/from16 v23, p4

    move/from16 v24, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1580
    return-void
.end method

.method public whitelist SSYR2K(IIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .registers 33
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # F
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .line 2728
    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    move-object/from16 v3, p7

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2729
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v4, v5, v1, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2730
    const/4 v4, -0x1

    .line 2731
    .local v4, "K":I
    const/16 v6, 0x6f

    if-eq v5, v6, :cond_25

    .line 2732
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v4

    move v12, v4

    goto :goto_2e

    .line 2734
    :cond_25
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v4

    move v12, v4

    .line 2736
    .end local v4    # "K":I
    .local v12, "K":I
    :goto_2e
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v6}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v11

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v14

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v8}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object v1, v4

    const/16 v4, 0x74

    move-wide v2, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v8, p1

    move/from16 v13, p3

    move/from16 v18, p6

    invoke-virtual/range {v1 .. v24}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 2737
    return-void
.end method

.method public whitelist SSYRK(IIFLandroid/renderscript/Allocation;FLandroid/renderscript/Allocation;)V
    .registers 39
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # F
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # F
    .param p6, "C"    # Landroid/renderscript/Allocation;

    .line 2594
    move-object/from16 v0, p0

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2595
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2596
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move/from16 v3, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2597
    const/4 v1, -0x1

    .line 2598
    .local v1, "K":I
    const/16 v2, 0x6f

    move/from16 v12, p2

    if-eq v12, v2, :cond_2c

    .line 2599
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v1

    move/from16 v19, v1

    goto :goto_36

    .line 2601
    :cond_2c
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v1

    move/from16 v19, v1

    .line 2604
    .end local v1    # "K":I
    .local v19, "K":I
    :goto_36
    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v9

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getX()I

    move-result v18

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p4

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p6

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v11, 0x73

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v23, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v15, p1

    move/from16 v20, p3

    move/from16 v25, p5

    invoke-virtual/range {v8 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 2605
    return-void
.end method

.method public whitelist STBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .line 693
    move-object/from16 v0, p0

    if-ltz p4, :cond_57

    .line 696
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 697
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 698
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p6

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v6, 0x32

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v14, p4

    move/from16 v23, p7

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 699
    return-void

    .line 694
    .end local v13    # "N":I
    :cond_57
    move-object/from16 v2, p5

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist STBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 35
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .line 1005
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 1006
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 1007
    .local v13, "N":I
    if-ltz p4, :cond_57

    .line 1010
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p6

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v6, 0x35

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v14, p4

    move/from16 v23, p7

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1011
    return-void

    .line 1008
    :cond_57
    move-object/from16 v2, p5

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist STPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 34
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 816
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v13

    .line 817
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v6, 0x33

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 818
    return-void
.end method

.method public whitelist STPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 34
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 1129
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v13

    .line 1130
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v6, 0x36

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 1131
    return-void
.end method

.method public whitelist STRMM(IIIIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 36
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # F
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .line 2861
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2862
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 2863
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v10, p1

    move/from16 v8, p3

    invoke-static {v3, v10, v8, v1, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2864
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v14

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 2865
    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    .line 2864
    const/16 v7, 0x75

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v11, p2

    move/from16 v12, p4

    move/from16 v16, p5

    invoke-virtual/range {v4 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 2866
    return-void
.end method

.method public whitelist STRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 34
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 608
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 609
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 610
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v6, 0x31

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 611
    return-void
.end method

.method public whitelist STRSM(IIIIFLandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 36
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # F
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .line 2983
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2984
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 2985
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v10, p1

    move/from16 v8, p3

    invoke-static {v3, v10, v8, v1, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2986
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v13

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v14

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 2987
    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    .line 2986
    const/16 v7, 0x76

    const/4 v9, 0x0

    const/4 v15, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v11, p2

    move/from16 v12, p4

    move/from16 v16, p5

    invoke-virtual/range {v4 .. v27}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 2988
    return-void
.end method

.method public whitelist STRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 34
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 913
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F32(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 914
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 915
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v16

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v6, 0x34

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v24, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v23, p6

    invoke-virtual/range {v3 .. v26}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Single(JIIIIIIIIIFJJFJIIII)V

    .line 917
    return-void
.end method

.method public whitelist ZGBMV(IIILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .registers 46
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

    .line 528
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p8

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v5, p1

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p9

    move/from16 v10, p10

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 529
    if-ltz p2, :cond_75

    if-ltz p3, :cond_75

    .line 532
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v14

    .line 533
    .local v14, "M":I
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v15

    .line 534
    .local v15, "N":I
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    iget-wide v3, v1, Landroid/renderscript/Double2;->x:D

    iget-wide v8, v1, Landroid/renderscript/Double2;->y:D

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v11, p5

    invoke-virtual {v11, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v12, p6

    invoke-virtual {v12, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    move-wide/from16 v17, v3

    iget-wide v3, v2, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v25, v3

    iget-wide v3, v2, Landroid/renderscript/Double2;->y:D

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v13, p9

    invoke-virtual {v13, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v29

    move-wide/from16 v19, v8

    const/16 v8, 0x48

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move/from16 v9, p1

    move/from16 v33, p2

    move/from16 v34, p3

    move/from16 v31, p7

    move/from16 v32, p10

    move-wide/from16 v27, v3

    invoke-virtual/range {v5 .. v34}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 535
    return-void

    .line 530
    .end local v14    # "M":I
    .end local v15    # "N":I
    :cond_75
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "KL and KU must be greater than or equal to 0"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist ZGEMM(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .registers 46
    .param p1, "TransA"    # I
    .param p2, "TransB"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .line 2455
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2456
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2457
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const/4 v7, 0x0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2458
    const/4 v3, -0x1

    .local v3, "M":I
    const/4 v4, -0x1

    .local v4, "N":I
    const/4 v5, -0x1

    .line 2459
    .local v5, "K":I
    const/16 v6, 0x6f

    move/from16 v12, p1

    if-eq v12, v6, :cond_3e

    .line 2460
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    move-result v3

    .line 2461
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    move-result v5

    move/from16 v17, v3

    move/from16 v19, v5

    goto :goto_52

    .line 2463
    :cond_3e
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    move-result v3

    .line 2464
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    move-result v5

    move/from16 v17, v3

    move/from16 v19, v5

    .line 2466
    .end local v3    # "M":I
    .end local v5    # "K":I
    .local v17, "M":I
    .local v19, "K":I
    :goto_52
    move/from16 v13, p2

    if-eq v13, v6, :cond_61

    .line 2467
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v3

    move/from16 v18, v3

    .end local v4    # "N":I
    .local v3, "N":I
    goto :goto_6b

    .line 2469
    .end local v3    # "N":I
    .restart local v4    # "N":I
    :cond_61
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    move/from16 v18, v3

    .line 2471
    .end local v4    # "N":I
    .local v18, "N":I
    :goto_6b
    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v9

    iget-wide v3, v1, Landroid/renderscript/Double2;->x:D

    iget-wide v5, v1, Landroid/renderscript/Double2;->y:D

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v11, p4

    invoke-virtual {v11, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v24

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v14, p5

    invoke-virtual {v14, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    move-wide/from16 v20, v3

    iget-wide v3, v2, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v28, v3

    iget-wide v3, v2, Landroid/renderscript/Double2;->y:D

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 2472
    move-object/from16 v15, p7

    invoke-virtual {v15, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v32

    .line 2471
    const/16 v11, 0x83

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-wide/from16 v30, v3

    move-wide/from16 v22, v5

    invoke-virtual/range {v8 .. v37}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2473
    return-void
.end method

.method public whitelist ZGEMV(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .registers 44
    .param p1, "TransA"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .line 391
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v5, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGEMV(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;I)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v14

    .line 393
    .local v14, "M":I
    invoke-virtual/range {p3 .. p3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v15

    .line 394
    .local v15, "N":I
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    iget-wide v3, v1, Landroid/renderscript/Double2;->x:D

    iget-wide v8, v1, Landroid/renderscript/Double2;->y:D

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v11, p3

    invoke-virtual {v11, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v12, p4

    invoke-virtual {v12, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    move-wide/from16 v17, v3

    iget-wide v3, v2, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v25, v3

    iget-wide v3, v2, Landroid/renderscript/Double2;->y:D

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v13, p7

    invoke-virtual {v13, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v29

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-wide/from16 v19, v8

    const/16 v8, 0x47

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x0

    move/from16 v9, p1

    move/from16 v31, p5

    move/from16 v32, p8

    move-wide/from16 v27, v3

    invoke-virtual/range {v5 .. v34}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 395
    return-void
.end method

.method public whitelist ZGERC(Landroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 39
    .param p1, "alpha"    # Landroid/renderscript/Double2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .line 2160
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 2161
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 2162
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 2163
    .local v12, "N":I
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget-wide v14, v1, Landroid/renderscript/Double2;->x:D

    iget-wide v5, v1, Landroid/renderscript/Double2;->y:D

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v8, p2

    invoke-virtual {v8, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v9, p4

    invoke-virtual {v9, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v10, p6

    invoke-virtual {v10, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide/from16 v16, v5

    const/16 v5, 0x6c

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move/from16 v28, p3

    move/from16 v29, p5

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2164
    return-void
.end method

.method public whitelist ZGERU(Landroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 39
    .param p1, "alpha"    # Landroid/renderscript/Double2;
    .param p2, "X"    # Landroid/renderscript/Allocation;
    .param p3, "incX"    # I
    .param p4, "Y"    # Landroid/renderscript/Allocation;
    .param p5, "incY"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .line 2139
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v3 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateGERU(Landroid/renderscript/Element;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V

    .line 2140
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getY()I

    move-result v11

    .line 2141
    .local v11, "M":I
    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Type;->getX()I

    move-result v12

    .line 2142
    .local v12, "N":I
    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v3

    iget-wide v14, v1, Landroid/renderscript/Double2;->x:D

    iget-wide v5, v1, Landroid/renderscript/Double2;->y:D

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v8, p2

    invoke-virtual {v8, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v18

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v9, p4

    invoke-virtual {v9, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v10, p6

    invoke-virtual {v10, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-wide/from16 v16, v5

    const/16 v5, 0x6b

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v13, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    move/from16 v28, p3

    move/from16 v29, p5

    invoke-virtual/range {v2 .. v31}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2143
    return-void
.end method

.method public whitelist ZHBMV(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .registers 45
    .param p1, "Uplo"    # I
    .param p2, "K"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I
    .param p7, "beta"    # Landroid/renderscript/Double2;
    .param p8, "Y"    # Landroid/renderscript/Allocation;
    .param p9, "incY"    # I

    .line 2089
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p7

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v5, p1

    move-object/from16 v10, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v15

    .line 2090
    .local v15, "N":I
    if-ltz p2, :cond_65

    .line 2093
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    iget-wide v3, v1, Landroid/renderscript/Double2;->x:D

    iget-wide v8, v1, Landroid/renderscript/Double2;->y:D

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v11, p4

    invoke-virtual {v11, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v12, p5

    invoke-virtual {v12, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    iget-wide v13, v2, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v17, v3

    iget-wide v3, v2, Landroid/renderscript/Double2;->y:D

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-wide/from16 v19, v8

    move-object/from16 v8, p8

    invoke-virtual {v8, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v29

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v8, 0x69

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v25, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v12, p1

    move/from16 v16, p2

    move/from16 v31, p6

    move/from16 v32, p9

    move-wide/from16 v27, v3

    invoke-virtual/range {v5 .. v34}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2094
    return-void

    .line 2091
    :cond_65
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "K must be 0 or greater for HBMV"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist ZHEMM(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .registers 45
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .line 3119
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v5, p7

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3120
    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    move/from16 v13, p1

    invoke-static {v6, v13, v2, v3, v5}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHEMM(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3121
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v6}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getY()I

    move-result v16

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v6

    invoke-virtual {v6}, Landroid/renderscript/Type;->getX()I

    move-result v17

    iget-wide v10, v1, Landroid/renderscript/Double2;->x:D

    iget-wide v14, v1, Landroid/renderscript/Double2;->y:D

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 3122
    invoke-virtual {v2, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v25

    iget-wide v1, v4, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v27, v1

    iget-wide v1, v4, Landroid/renderscript/Double2;->y:D

    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v5, v6}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v31

    .line 3121
    move-wide/from16 v19, v10

    const/16 v10, 0x8c

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-wide/from16 v21, v14

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move/from16 v14, p2

    move-wide/from16 v29, v1

    invoke-virtual/range {v7 .. v36}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 3123
    return-void
.end method

.method public whitelist ZHEMV(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .registers 44
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "A"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .line 2060
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v5, p1

    move-object/from16 v10, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v15

    .line 2061
    .local v15, "N":I
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    iget-wide v3, v1, Landroid/renderscript/Double2;->x:D

    iget-wide v8, v1, Landroid/renderscript/Double2;->y:D

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v11, p3

    invoke-virtual {v11, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v12, p4

    invoke-virtual {v12, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    iget-wide v13, v2, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v17, v3

    iget-wide v3, v2, Landroid/renderscript/Double2;->y:D

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-wide/from16 v19, v8

    move-object/from16 v8, p7

    invoke-virtual {v8, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v29

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v8, 0x68

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v25, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v12, p1

    move/from16 v31, p5

    move/from16 v32, p8

    move-wide/from16 v27, v3

    invoke-virtual/range {v5 .. v34}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2062
    return-void
.end method

.method public whitelist ZHER(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 41
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "A"    # Landroid/renderscript/Allocation;

    .line 2180
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v4, p5

    invoke-static {v3, v11, v1, v4, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 2181
    .local v14, "N":I
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v7, 0x6d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v31, 0x0

    move-wide/from16 v16, p2

    move/from16 v30, p5

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2182
    return-void
.end method

.method public whitelist ZHER2(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 42
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "A"    # Landroid/renderscript/Allocation;

    .line 2226
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v3 .. v9}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 2227
    .local v14, "N":I
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-wide v2, v1, Landroid/renderscript/Double2;->x:D

    iget-wide v7, v1, Landroid/renderscript/Double2;->y:D

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v10, p3

    invoke-virtual {v10, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v11, p5

    invoke-virtual {v11, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v12, p7

    invoke-virtual {v12, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-wide/from16 v18, v7

    const/16 v7, 0x6f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move/from16 v11, p1

    move/from16 v30, p4

    move/from16 v31, p6

    move-wide/from16 v16, v2

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2228
    return-void
.end method

.method public whitelist ZHER2K(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .registers 40
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # D
    .param p8, "C"    # Landroid/renderscript/Allocation;

    .line 3265
    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p8

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3266
    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v6}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v6

    invoke-static {v6, v5, v2, v3, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHER2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3267
    const/4 v6, 0x0

    .line 3268
    .local v6, "k":I
    const/16 v7, 0x6f

    if-ne v5, v7, :cond_27

    .line 3269
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/renderscript/Type;->getX()I

    move-result v6

    move v12, v6

    goto :goto_30

    .line 3271
    :cond_27
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v7

    invoke-virtual {v7}, Landroid/renderscript/Type;->getY()I

    move-result v6

    move v12, v6

    .line 3273
    .end local v6    # "k":I
    .local v12, "k":I
    :goto_30
    iget-object v6, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v7}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v7

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v9

    invoke-virtual {v9}, Landroid/renderscript/Type;->getX()I

    move-result v11

    iget-wide v13, v1, Landroid/renderscript/Double2;->x:D

    iget-wide v9, v1, Landroid/renderscript/Double2;->y:D

    iget-object v15, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 3274
    invoke-virtual {v2, v15}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v15, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v15}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v15, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v4, v15}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v25

    .line 3273
    const/16 v4, 0x8e

    move-object v1, v6

    const/4 v6, 0x0

    move-wide v2, v7

    const/4 v7, 0x0

    move-wide v15, v9

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v8, p1

    move-wide/from16 v21, p6

    invoke-virtual/range {v1 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 3275
    return-void
.end method

.method public whitelist ZHERK(IIDLandroid/renderscript/Allocation;DLandroid/renderscript/Allocation;)V
    .registers 40
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # D
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # D
    .param p8, "C"    # Landroid/renderscript/Allocation;

    .line 3186
    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v1, p5

    move-object/from16 v2, p8

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3187
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {v3, v5, v1, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateHERK(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3188
    const/4 v3, 0x0

    .line 3189
    .local v3, "k":I
    const/16 v4, 0x71

    if-ne v5, v4, :cond_23

    .line 3190
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v3

    move v12, v3

    goto :goto_2c

    .line 3192
    :cond_23
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v3

    move v12, v3

    .line 3194
    .end local v3    # "k":I
    .local v12, "k":I
    :goto_2c
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v11

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 3195
    invoke-virtual {v1, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v4}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v25

    .line 3194
    const/16 v4, 0x8d

    move-object v1, v3

    move-wide v2, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v23, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move/from16 v8, p1

    move-wide/from16 v13, p3

    move-wide/from16 v21, p6

    invoke-virtual/range {v1 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 3196
    return-void
.end method

.method public whitelist ZHPMV(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;I)V
    .registers 44
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "Ap"    # Landroid/renderscript/Allocation;
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "Y"    # Landroid/renderscript/Allocation;
    .param p8, "incY"    # I

    .line 2121
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v5, p1

    move-object/from16 v10, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v15

    .line 2122
    .local v15, "N":I
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    iget-wide v3, v1, Landroid/renderscript/Double2;->x:D

    iget-wide v8, v1, Landroid/renderscript/Double2;->y:D

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v11, p3

    invoke-virtual {v11, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v12, p4

    invoke-virtual {v12, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    iget-wide v13, v2, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v17, v3

    iget-wide v3, v2, Landroid/renderscript/Double2;->y:D

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-wide/from16 v19, v8

    move-object/from16 v8, p7

    invoke-virtual {v8, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v29

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v8, 0x6a

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v25, v13

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move/from16 v12, p1

    move/from16 v31, p5

    move/from16 v32, p8

    move-wide/from16 v27, v3

    invoke-virtual/range {v5 .. v34}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2123
    return-void
.end method

.method public whitelist ZHPR(IDLandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 41
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # D
    .param p4, "X"    # Landroid/renderscript/Allocation;
    .param p5, "incX"    # I
    .param p6, "Ap"    # Landroid/renderscript/Allocation;

    .line 2206
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v11, p1

    move/from16 v4, p5

    invoke-static {v3, v11, v1, v4, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 2207
    .local v14, "N":I
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v1, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v3}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v7, 0x6e

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    const/16 v31, 0x0

    move-wide/from16 v16, p2

    move/from16 v30, p5

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2208
    return-void
.end method

.method public whitelist ZHPR2(ILandroid/renderscript/Double2;Landroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)V
    .registers 42
    .param p1, "Uplo"    # I
    .param p2, "alpha"    # Landroid/renderscript/Double2;
    .param p3, "X"    # Landroid/renderscript/Allocation;
    .param p4, "incX"    # I
    .param p5, "Y"    # Landroid/renderscript/Allocation;
    .param p6, "incY"    # I
    .param p7, "Ap"    # Landroid/renderscript/Allocation;

    .line 2254
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v2}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    move/from16 v4, p1

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-static/range {v3 .. v9}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSPR2(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;ILandroid/renderscript/Allocation;)I

    move-result v14

    .line 2255
    .local v14, "N":I
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v2, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v5

    iget-wide v2, v1, Landroid/renderscript/Double2;->x:D

    iget-wide v7, v1, Landroid/renderscript/Double2;->y:D

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v10, p3

    invoke-virtual {v10, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v20

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v11, p5

    invoke-virtual {v11, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v22

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v12, p7

    invoke-virtual {v12, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v28

    const/16 v32, 0x0

    const/16 v33, 0x0

    move-wide/from16 v18, v7

    const/16 v7, 0x70

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const-wide/16 v24, 0x0

    const-wide/16 v26, 0x0

    move/from16 v11, p1

    move/from16 v30, p4

    move/from16 v31, p6

    move-wide/from16 v16, v2

    invoke-virtual/range {v4 .. v33}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2256
    return-void
.end method

.method public whitelist ZSYMM(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .registers 45
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .line 2570
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSide(I)V

    .line 2571
    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2572
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v3

    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-ne v3, v4, :cond_88

    .line 2575
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2576
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getY()I

    move-result v16

    invoke-virtual/range {p7 .. p7}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v17

    iget-wide v3, v1, Landroid/renderscript/Double2;->x:D

    iget-wide v5, v1, Landroid/renderscript/Double2;->y:D

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v11, p4

    invoke-virtual {v11, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v12, p5

    invoke-virtual {v12, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v25

    iget-wide v13, v2, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v19, v3

    iget-wide v3, v2, Landroid/renderscript/Double2;->y:D

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 2577
    move-object/from16 v15, p7

    invoke-virtual {v15, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v31

    .line 2576
    const/16 v10, 0x84

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v18, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-wide/from16 v29, v3

    move-wide/from16 v21, v5

    move-wide/from16 v27, v13

    move/from16 v13, p1

    move/from16 v14, p2

    invoke-virtual/range {v7 .. v36}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2578
    return-void

    .line 2573
    :cond_88
    new-instance v3, Landroid/renderscript/RSRuntimeException;

    const-string v4, "Matrix A is not symmetric"

    invoke-direct {v3, v4}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist ZSYR2K(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .registers 39
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "B"    # Landroid/renderscript/Allocation;
    .param p6, "beta"    # Landroid/renderscript/Double2;
    .param p7, "C"    # Landroid/renderscript/Allocation;

    .line 2806
    move-object/from16 v0, p0

    move/from16 v5, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2807
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v7}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v7

    invoke-static {v7, v5, v2, v3, v6}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateSYR2K(Landroid/renderscript/Element;ILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2808
    const/4 v7, -0x1

    .line 2809
    .local v7, "K":I
    const/16 v8, 0x6f

    if-eq v5, v8, :cond_29

    .line 2810
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getY()I

    move-result v7

    move v12, v7

    goto :goto_32

    .line 2812
    :cond_29
    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v8

    invoke-virtual {v8}, Landroid/renderscript/Type;->getX()I

    move-result v7

    move v12, v7

    .line 2814
    .end local v7    # "K":I
    .local v12, "K":I
    :goto_32
    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v8, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v8

    invoke-virtual {v6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v10

    invoke-virtual {v10}, Landroid/renderscript/Type;->getX()I

    move-result v11

    iget-wide v13, v1, Landroid/renderscript/Double2;->x:D

    move-object v10, v7

    move-wide v15, v8

    iget-wide v7, v1, Landroid/renderscript/Double2;->y:D

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v2, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v17

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-wide v1, v4, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v21, v1

    iget-wide v1, v4, Landroid/renderscript/Double2;->y:D

    iget-object v9, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v6, v9}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v25

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v4, 0x86

    const/4 v6, 0x0

    move-wide/from16 v23, v1

    move-wide v2, v15

    move-wide v15, v7

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    const/4 v10, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v8, p1

    invoke-virtual/range {v1 .. v30}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2815
    return-void
.end method

.method public whitelist ZSYRK(IILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Double2;Landroid/renderscript/Allocation;)V
    .registers 47
    .param p1, "Uplo"    # I
    .param p2, "Trans"    # I
    .param p3, "alpha"    # Landroid/renderscript/Double2;
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "beta"    # Landroid/renderscript/Double2;
    .param p6, "C"    # Landroid/renderscript/Allocation;

    .line 2674
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTranspose(I)V

    .line 2675
    invoke-static/range {p1 .. p1}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2676
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v3}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v6, 0x0

    move/from16 v5, p2

    move-object/from16 v8, p4

    move-object/from16 v10, p6

    invoke-static/range {v4 .. v10}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateL3(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2677
    const/4 v3, -0x1

    .line 2678
    .local v3, "K":I
    const/16 v4, 0x6f

    move/from16 v14, p2

    if-eq v14, v4, :cond_30

    .line 2679
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v3

    move/from16 v21, v3

    goto :goto_3a

    .line 2681
    :cond_30
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v3

    move/from16 v21, v3

    .line 2683
    .end local v3    # "K":I
    .local v21, "K":I
    :goto_3a
    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v11

    invoke-virtual/range {p6 .. p6}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getX()I

    move-result v20

    iget-wide v3, v1, Landroid/renderscript/Double2;->x:D

    iget-wide v5, v1, Landroid/renderscript/Double2;->y:D

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v8, p4

    invoke-virtual {v8, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v26

    move-wide/from16 v22, v3

    iget-wide v3, v2, Landroid/renderscript/Double2;->x:D

    move-wide/from16 v30, v3

    iget-wide v3, v2, Landroid/renderscript/Double2;->y:D

    iget-object v7, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 2684
    move-object/from16 v9, p6

    invoke-virtual {v9, v7}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v34

    .line 2683
    const/16 v13, 0x85

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v28, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move/from16 v17, p1

    move-wide/from16 v32, v3

    move-wide/from16 v24, v5

    invoke-virtual/range {v10 .. v39}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2685
    return-void
.end method

.method public whitelist ZTBMV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 41
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .line 786
    move-object/from16 v0, p0

    if-ltz p4, :cond_5c

    .line 789
    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 790
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 791
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p6

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v6, 0x4a

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const/16 v30, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v14, p4

    move/from16 v29, p7

    invoke-virtual/range {v3 .. v32}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 792
    return-void

    .line 787
    .end local v13    # "N":I
    :cond_5c
    move-object/from16 v2, p5

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "K must be greater than or equal to 0"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist ZTBSV(IIIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 41
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "K"    # I
    .param p5, "A"    # Landroid/renderscript/Allocation;
    .param p6, "X"    # Landroid/renderscript/Allocation;
    .param p7, "incX"    # I

    .line 1098
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 1099
    invoke-virtual/range {p5 .. p5}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 1100
    .local v13, "N":I
    if-ltz p4, :cond_5c

    .line 1103
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p5

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p6

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v6, 0x4d

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const/16 v30, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v14, p4

    move/from16 v29, p7

    invoke-virtual/range {v3 .. v32}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 1104
    return-void

    .line 1101
    :cond_5c
    move-object/from16 v2, p5

    new-instance v1, Landroid/renderscript/RSRuntimeException;

    const-string v3, "Number of diagonals must be positive"

    invoke-direct {v1, v3}, Landroid/renderscript/RSRuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist ZTPMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 40
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 894
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v13

    .line 895
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v6, 0x4b

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const/16 v30, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v29, p6

    invoke-virtual/range {v3 .. v32}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 896
    return-void
.end method

.method public whitelist ZTPSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 40
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "Ap"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 1210
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTPMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)I

    move-result v13

    .line 1211
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v6, 0x4e

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const/16 v30, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v29, p6

    invoke-virtual/range {v3 .. v32}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 1212
    return-void
.end method

.method public whitelist ZTRMM(IIIILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 43
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Double2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .line 2930
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 2931
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 2932
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v11, p1

    move/from16 v9, p3

    invoke-static {v4, v11, v9, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 2933
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    iget-wide v12, v1, Landroid/renderscript/Double2;->x:D

    move-object v8, v5

    iget-wide v4, v1, Landroid/renderscript/Double2;->y:D

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 2934
    invoke-virtual {v2, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    .line 2933
    move-wide/from16 v19, v4

    move-object v5, v8

    const/16 v8, 0x87

    const/4 v10, 0x0

    const/16 v16, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-wide/from16 v17, v12

    move/from16 v12, p2

    move/from16 v13, p4

    invoke-virtual/range {v5 .. v34}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 2935
    return-void
.end method

.method public whitelist ZTRMV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 40
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 666
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 667
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v6, 0x49

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const/16 v30, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v29, p6

    invoke-virtual/range {v3 .. v32}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 668
    return-void
.end method

.method public whitelist ZTRSM(IIIILandroid/renderscript/Double2;Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V
    .registers 43
    .param p1, "Side"    # I
    .param p2, "Uplo"    # I
    .param p3, "TransA"    # I
    .param p4, "Diag"    # I
    .param p5, "alpha"    # Landroid/renderscript/Double2;
    .param p6, "A"    # Landroid/renderscript/Allocation;
    .param p7, "B"    # Landroid/renderscript/Allocation;

    .line 3052
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-static/range {p2 .. p2}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateUplo(I)V

    .line 3053
    invoke-static/range {p4 .. p4}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateDiag(I)V

    .line 3054
    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v4}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    move/from16 v11, p1

    move/from16 v9, p3

    invoke-static {v4, v11, v9, v2, v3}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRSM(Landroid/renderscript/Element;IILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    .line 3055
    iget-object v5, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v4, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v4}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v6

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v14

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v15

    iget-wide v12, v1, Landroid/renderscript/Double2;->x:D

    move-object v8, v5

    iget-wide v4, v1, Landroid/renderscript/Double2;->y:D

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    .line 3056
    invoke-virtual {v2, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    iget-object v10, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v3, v10}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v23

    .line 3055
    move-wide/from16 v19, v4

    move-object v5, v8

    const/16 v8, 0x88

    const/4 v10, 0x0

    const/16 v16, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-wide/from16 v17, v12

    move/from16 v12, p2

    move/from16 v13, p4

    invoke-virtual/range {v5 .. v34}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 3057
    return-void
.end method

.method public whitelist ZTRSV(IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V
    .registers 40
    .param p1, "Uplo"    # I
    .param p2, "TransA"    # I
    .param p3, "Diag"    # I
    .param p4, "A"    # Landroid/renderscript/Allocation;
    .param p5, "X"    # Landroid/renderscript/Allocation;
    .param p6, "incX"    # I

    .line 976
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-static {v1}, Landroid/renderscript/Element;->F64_2(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    invoke-static/range {v2 .. v8}, Landroid/renderscript/ScriptIntrinsicBLAS;->validateTRMV(Landroid/renderscript/Element;IIILandroid/renderscript/Allocation;Landroid/renderscript/Allocation;I)V

    .line 977
    invoke-virtual/range {p4 .. p4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-virtual {v1}, Landroid/renderscript/Type;->getY()I

    move-result v13

    .line 978
    .local v13, "N":I
    iget-object v3, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBLAS;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v4

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v2, p4

    invoke-virtual {v2, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v19

    iget-object v1, v0, Landroid/renderscript/ScriptIntrinsicBLAS;->mRS:Landroid/renderscript/RenderScript;

    move-object/from16 v6, p5

    invoke-virtual {v6, v1}, Landroid/renderscript/Allocation;->getID(Landroid/renderscript/RenderScript;)J

    move-result-wide v21

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v6, 0x4c

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const/16 v30, 0x0

    move/from16 v10, p1

    move/from16 v7, p2

    move/from16 v11, p3

    move/from16 v29, p6

    invoke-virtual/range {v3 .. v32}, Landroid/renderscript/RenderScript;->nScriptIntrinsicBLAS_Z(JIIIIIIIIIDDJJDDJIIII)V

    .line 980
    return-void
.end method
