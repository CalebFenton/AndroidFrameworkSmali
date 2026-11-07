.class public abstract Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;
.super Ljava/lang/Object;
.source "HarakaBase.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Digest;


# static fields
.field protected static final blacklist DIGEST_SIZE:I = 0x20

.field static final blacklist RC:[[B

.field private static final blacklist S:[[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 42

    .line 17
    const/16 v0, 0x10

    new-array v1, v0, [B

    fill-array-data v1, :array_194

    new-array v2, v0, [B

    fill-array-data v2, :array_1a0

    new-array v3, v0, [B

    fill-array-data v3, :array_1ac

    new-array v4, v0, [B

    fill-array-data v4, :array_1b8

    new-array v5, v0, [B

    fill-array-data v5, :array_1c4

    new-array v6, v0, [B

    fill-array-data v6, :array_1d0

    new-array v7, v0, [B

    fill-array-data v7, :array_1dc

    new-array v8, v0, [B

    fill-array-data v8, :array_1e8

    new-array v9, v0, [B

    fill-array-data v9, :array_1f4

    new-array v10, v0, [B

    fill-array-data v10, :array_200

    new-array v11, v0, [B

    fill-array-data v11, :array_20c

    new-array v12, v0, [B

    fill-array-data v12, :array_218

    new-array v13, v0, [B

    fill-array-data v13, :array_224

    new-array v14, v0, [B

    fill-array-data v14, :array_230

    new-array v15, v0, [B

    fill-array-data v15, :array_23c

    move-object/from16 v16, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_248

    move-object/from16 v17, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_254

    move-object/from16 v18, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_260

    move-object/from16 v19, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_26c

    move-object/from16 v20, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_278

    move-object/from16 v21, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_284

    move-object/from16 v22, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_290

    move-object/from16 v23, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_29c

    move-object/from16 v24, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_2a8

    move-object/from16 v25, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_2b4

    move-object/from16 v26, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_2c0

    move-object/from16 v27, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_2cc

    move-object/from16 v28, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_2d8

    move-object/from16 v29, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_2e4

    move-object/from16 v30, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_2f0

    move-object/from16 v31, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_2fc

    move-object/from16 v32, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_308

    move-object/from16 v33, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_314

    move-object/from16 v34, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_320

    move-object/from16 v35, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_32c

    move-object/from16 v36, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_338

    move-object/from16 v37, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_344

    move-object/from16 v38, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_350

    move-object/from16 v39, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_35c

    move-object/from16 v40, v1

    new-array v1, v0, [B

    fill-array-data v1, :array_368

    move-object/from16 v41, v40

    move-object/from16 v40, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v26

    move-object/from16 v26, v27

    move-object/from16 v27, v28

    move-object/from16 v28, v29

    move-object/from16 v29, v30

    move-object/from16 v30, v31

    move-object/from16 v31, v32

    move-object/from16 v32, v33

    move-object/from16 v33, v34

    move-object/from16 v34, v35

    move-object/from16 v35, v36

    move-object/from16 v36, v37

    move-object/from16 v37, v38

    move-object/from16 v38, v39

    move-object/from16 v39, v41

    filled-new-array/range {v1 .. v40}, [[B

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->RC:[[B

    .line 61
    new-array v2, v0, [B

    fill-array-data v2, :array_374

    new-array v3, v0, [B

    fill-array-data v3, :array_380

    new-array v4, v0, [B

    fill-array-data v4, :array_38c

    new-array v5, v0, [B

    fill-array-data v5, :array_398

    new-array v6, v0, [B

    fill-array-data v6, :array_3a4

    new-array v7, v0, [B

    fill-array-data v7, :array_3b0

    new-array v8, v0, [B

    fill-array-data v8, :array_3bc

    new-array v9, v0, [B

    fill-array-data v9, :array_3c8

    new-array v10, v0, [B

    fill-array-data v10, :array_3d4

    new-array v11, v0, [B

    fill-array-data v11, :array_3e0

    new-array v12, v0, [B

    fill-array-data v12, :array_3ec

    new-array v13, v0, [B

    fill-array-data v13, :array_3f8

    new-array v14, v0, [B

    fill-array-data v14, :array_404

    new-array v15, v0, [B

    fill-array-data v15, :array_410

    new-array v1, v0, [B

    fill-array-data v1, :array_41c

    new-array v0, v0, [B

    fill-array-data v0, :array_428

    move-object/from16 v17, v0

    move-object/from16 v16, v1

    filled-new-array/range {v2 .. v17}, [[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->S:[[B

    return-void

    nop

    :array_194
    .array-data 1
        -0x63t
        0x7bt
        -0x7ft
        0x75t
        -0x10t
        -0x2t
        -0x3bt
        -0x4et
        0xat
        -0x40t
        0x20t
        -0x1at
        0x4ct
        0x70t
        -0x7ct
        0x6t
    .end array-data

    :array_1a0
    .array-data 1
        0x17t
        -0x9t
        0x8t
        0x2ft
        -0x5ct
        0x6bt
        0xft
        0x64t
        0x6bt
        -0x60t
        -0xdt
        -0x78t
        -0x1ft
        -0x4ct
        0x66t
        -0x75t
    .end array-data

    :array_1ac
    .array-data 1
        0x14t
        -0x6ft
        0x2t
        -0x61t
        0x60t
        -0x63t
        0x2t
        -0x31t
        -0x68t
        -0x7ct
        -0xet
        0x53t
        0x2dt
        -0x22t
        0x2t
        0x34t
    .end array-data

    :array_1b8
    .array-data 1
        0x79t
        0x4ft
        0x5bt
        -0x3t
        -0x51t
        -0x44t
        -0xdt
        -0x45t
        0x8t
        0x4ft
        0x7bt
        0x2et
        -0x1at
        -0x16t
        -0x2at
        0xet
    .end array-data

    :array_1c4
    .array-data 1
        0x44t
        0x70t
        0x39t
        -0x42t
        0x1ct
        -0x33t
        -0x12t
        0x79t
        -0x75t
        0x44t
        0x72t
        0x48t
        -0x35t
        -0x50t
        -0x31t
        -0x35t
    .end array-data

    :array_1d0
    .array-data 1
        0x7bt
        0x5t
        -0x76t
        0x2bt
        -0x13t
        0x35t
        0x53t
        -0x73t
        -0x49t
        0x32t
        -0x70t
        0x6et
        -0x12t
        -0x33t
        -0x16t
        0x7et
    .end array-data

    :array_1dc
    .array-data 1
        0x1bt
        -0x11t
        0x4ft
        -0x26t
        0x61t
        0x27t
        0x41t
        -0x1et
        -0x30t
        0x7ct
        0x2et
        0x5et
        0x43t
        -0x71t
        -0x3et
        0x67t
    .end array-data

    :array_1e8
    .array-data 1
        0x3bt
        0xbt
        -0x39t
        0x1ft
        -0x1et
        -0x3t
        0x5ft
        0x67t
        0x7t
        -0x34t
        -0x36t
        -0x51t
        -0x50t
        -0x27t
        0x24t
        0x29t
    .end array-data

    :array_1f4
    .array-data 1
        -0x12t
        0x65t
        -0x2ct
        -0x47t
        -0x36t
        -0x71t
        -0x25t
        -0x14t
        -0x17t
        0x7ft
        -0x7at
        -0x1at
        -0xft
        0x63t
        0x4dt
        -0x55t
    .end array-data

    :array_200
    .array-data 1
        0x33t
        0x7et
        0x3t
        -0x53t
        0x4ft
        0x40t
        0x2at
        0x5bt
        0x64t
        -0x33t
        -0x49t
        -0x2ct
        -0x7ct
        -0x41t
        0x30t
        0x1ct
    .end array-data

    :array_20c
    .array-data 1
        0x0t
        -0x68t
        -0xat
        -0x73t
        0x2et
        -0x75t
        0x2t
        0x69t
        -0x41t
        0x23t
        0x17t
        -0x6ct
        -0x47t
        0xbt
        -0x34t
        -0x4et
    .end array-data

    :array_218
    .array-data 1
        -0x76t
        0x2dt
        -0x63t
        0x5ct
        -0x38t
        -0x62t
        -0x56t
        0x4at
        0x72t
        0x55t
        0x6ft
        -0x22t
        -0x5at
        0x78t
        0x4t
        -0x6t
    .end array-data

    :array_224
    .array-data 1
        -0x2ct
        -0x61t
        0x12t
        0x29t
        0x2et
        0x4ft
        -0x6t
        0xet
        0x12t
        0x2at
        0x77t
        0x6bt
        0x2bt
        -0x61t
        -0x4ct
        -0x21t
    .end array-data

    :array_230
    .array-data 1
        -0x12t
        0x12t
        0x6at
        -0x45t
        -0x52t
        0x11t
        -0x2at
        0x32t
        0x36t
        -0x5et
        0x49t
        -0xct
        0x44t
        0x3t
        -0x5ft
        0x1et
    .end array-data

    :array_23c
    .array-data 1
        -0x5at
        -0x14t
        -0x58t
        -0x64t
        -0x37t
        0x0t
        -0x6at
        0x5ft
        -0x7ct
        0x0t
        0x5t
        0x4bt
        -0x78t
        0x49t
        0x4t
        -0x51t
    .end array-data

    :array_248
    .array-data 1
        -0x14t
        -0x6dt
        -0x1bt
        0x27t
        -0x1dt
        -0x39t
        -0x5et
        0x78t
        0x4ft
        -0x64t
        0x19t
        -0x63t
        -0x28t
        0x5et
        0x2t
        0x21t
    .end array-data

    :array_254
    .array-data 1
        0x73t
        0x1t
        -0x2ct
        -0x7et
        -0x33t
        0x2et
        0x28t
        -0x47t
        -0x49t
        -0x37t
        0x59t
        -0x59t
        -0x8t
        -0x56t
        0x3at
        -0x41t
    .end array-data

    :array_260
    .array-data 1
        0x6bt
        0x7dt
        0x30t
        0x10t
        -0x27t
        -0x11t
        -0xet
        0x37t
        0x17t
        -0x50t
        -0x7at
        0x61t
        0xdt
        0x70t
        0x60t
        0x62t
    .end array-data

    :array_26c
    .array-data 1
        -0x3at
        -0x66t
        -0x4t
        -0xat
        0x53t
        -0x6ft
        -0x3et
        -0x7ft
        0x43t
        0x4t
        0x30t
        0x21t
        -0x3et
        0x45t
        -0x36t
        0x5at
    .end array-data

    :array_278
    .array-data 1
        0x3at
        -0x6ct
        -0x2ft
        0x36t
        -0x18t
        -0x6et
        -0x51t
        0x2ct
        -0x45t
        0x68t
        0x6bt
        0x22t
        0x3ct
        -0x69t
        0x23t
        -0x6et
    .end array-data

    :array_284
    .array-data 1
        -0x4ct
        0x71t
        0x10t
        -0x1bt
        0x58t
        -0x47t
        -0x46t
        0x6ct
        -0x15t
        -0x7at
        0x58t
        0x22t
        0x38t
        -0x6et
        -0x41t
        -0x2dt
    .end array-data

    :array_290
    .array-data 1
        -0x73t
        0x12t
        -0x1ft
        0x24t
        -0x23t
        -0x3t
        0x3dt
        -0x6dt
        0x77t
        -0x3at
        -0x10t
        -0x52t
        -0x1bt
        0x3ct
        -0x7at
        -0x25t
    .end array-data

    :array_29c
    .array-data 1
        -0x4ft
        0x12t
        0x22t
        -0x35t
        -0x1dt
        -0x73t
        -0x1ct
        -0x7dt
        -0x64t
        -0x60t
        -0x15t
        -0x1t
        0x68t
        0x62t
        0x60t
        -0x45t
    .end array-data

    :array_2a8
    .array-data 1
        0x7dt
        -0x9t
        0x2bt
        -0x39t
        0x4et
        0x1at
        -0x47t
        0x2dt
        -0x64t
        -0x2ft
        -0x1ct
        -0x1et
        -0x24t
        -0x2dt
        0x4bt
        0x73t
    .end array-data

    :array_2b4
    .array-data 1
        0x4et
        -0x6et
        -0x4dt
        0x2ct
        -0x3ct
        0x15t
        0x14t
        0x4bt
        0x43t
        0x1bt
        0x30t
        0x61t
        -0x3dt
        0x47t
        -0x45t
        0x43t
    .end array-data

    :array_2c0
    .array-data 1
        -0x67t
        0x68t
        -0x15t
        0x16t
        -0x23t
        0x31t
        -0x4et
        0x3t
        -0xat
        -0x11t
        0x7t
        -0x19t
        -0x58t
        0x75t
        -0x59t
        -0x25t
    .end array-data

    :array_2cc
    .array-data 1
        0x2ct
        0x47t
        -0x36t
        0x7et
        0x2t
        0x23t
        0x5et
        -0x72t
        0x77t
        0x59t
        0x75t
        0x3ct
        0x4bt
        0x61t
        -0xdt
        0x6dt
    .end array-data

    :array_2d8
    .array-data 1
        -0x7t
        0x17t
        -0x7at
        -0x48t
        -0x47t
        -0x1bt
        0x1bt
        0x6dt
        0x77t
        0x7dt
        -0x22t
        -0x2at
        0x17t
        0x5at
        -0x59t
        -0x33t
    .end array-data

    :array_2e4
    .array-data 1
        0x5dt
        -0x12t
        0x46t
        -0x57t
        -0x63t
        0x6t
        0x6ct
        -0x63t
        -0x56t
        -0x17t
        -0x58t
        0x6bt
        -0x10t
        0x43t
        0x6bt
        -0x14t
    .end array-data

    :array_2f0
    .array-data 1
        -0x3ft
        0x27t
        -0xdt
        0x3bt
        0x59t
        0x11t
        0x53t
        -0x5et
        0x2bt
        0x33t
        0x57t
        -0x7t
        0x50t
        0x69t
        0x1et
        -0x35t
    .end array-data

    :array_2fc
    .array-data 1
        -0x27t
        -0x30t
        0xet
        0x60t
        0x53t
        0x3t
        -0x13t
        -0x1ct
        -0x64t
        0x61t
        -0x26t
        0x0t
        0x75t
        0xct
        -0x12t
        0x2ct
    .end array-data

    :array_308
    .array-data 1
        0x50t
        -0x5dt
        -0x5ct
        0x63t
        -0x44t
        -0x46t
        -0x45t
        -0x80t
        -0x55t
        0xct
        -0x17t
        -0x6at
        -0x5ft
        -0x5bt
        -0x4ft
        -0x10t
    .end array-data

    :array_314
    .array-data 1
        0x39t
        -0x36t
        -0x73t
        -0x6dt
        0x30t
        -0x22t
        0xdt
        -0x55t
        -0x78t
        0x29t
        -0x6at
        0x5et
        0x2t
        -0x4ft
        0x3dt
        -0x52t
    .end array-data

    :array_320
    .array-data 1
        0x42t
        -0x4ct
        0x75t
        0x2et
        -0x58t
        -0xdt
        0x14t
        -0x78t
        0xbt
        -0x5ct
        0x54t
        -0x2bt
        0x38t
        -0x71t
        -0x45t
        0x17t
    .end array-data

    :array_32c
    .array-data 1
        -0xat
        0x16t
        0xat
        0x36t
        0x79t
        -0x49t
        -0x4at
        -0x52t
        -0x29t
        0x7ft
        0x42t
        0x5ft
        0x5bt
        -0x76t
        -0x45t
        0x34t
    .end array-data

    :array_338
    .array-data 1
        -0x22t
        -0x51t
        -0x46t
        -0x1t
        0x18t
        0x59t
        -0x32t
        0x43t
        0x38t
        0x54t
        -0x1bt
        -0x35t
        0x41t
        0x52t
        -0xat
        0x26t
    .end array-data

    :array_344
    .array-data 1
        0x78t
        -0x37t
        -0x62t
        -0x7dt
        -0x9t
        -0x64t
        -0x36t
        -0x5et
        0x6at
        0x2t
        -0xdt
        -0x47t
        0x54t
        -0x66t
        -0x17t
        0x4ct
    .end array-data

    :array_350
    .array-data 1
        0x35t
        0x12t
        -0x70t
        0x22t
        0x28t
        0x6et
        -0x40t
        0x40t
        -0x42t
        -0x9t
        -0x21t
        0x1bt
        0x1at
        -0x5bt
        0x51t
        -0x52t
    .end array-data

    :array_35c
    .array-data 1
        -0x31t
        0x59t
        -0x5at
        0x48t
        0xft
        -0x44t
        0x73t
        -0x3ft
        0x2bt
        -0x2et
        0x7et
        -0x46t
        0x3ct
        0x61t
        -0x3ft
        -0x60t
    .end array-data

    :array_368
    .array-data 1
        -0x5ft
        -0x63t
        -0x3bt
        -0x17t
        -0x3t
        -0x43t
        -0x2at
        0x4at
        -0x78t
        -0x7et
        0x28t
        0x2t
        0x3t
        -0x34t
        0x6at
        0x75t
    .end array-data

    :array_374
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
    .end array-data

    :array_380
    .array-data 1
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
    .end array-data

    :array_38c
    .array-data 1
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
    .end array-data

    :array_398
    .array-data 1
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
    .end array-data

    :array_3a4
    .array-data 1
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
    .end array-data

    :array_3b0
    .array-data 1
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
    .end array-data

    :array_3bc
    .array-data 1
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
    .end array-data

    :array_3c8
    .array-data 1
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
    .end array-data

    :array_3d4
    .array-data 1
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
    .end array-data

    :array_3e0
    .array-data 1
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
    .end array-data

    :array_3ec
    .array-data 1
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
    .end array-data

    :array_3f8
    .array-data 1
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
    .end array-data

    :array_404
    .array-data 1
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
    .end array-data

    :array_410
    .array-data 1
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
    .end array-data

    :array_41c
    .array-data 1
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
    .end array-data

    :array_428
    .array-data 1
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist aesEnc([B[B)[B
    .registers 3
    .param p0, "s"    # [B
    .param p1, "rk"    # [B

    .line 119
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->subBytes([B)[B

    move-result-object p0

    .line 120
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->shiftRows([B)[B

    move-result-object p0

    .line 121
    invoke-static {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->mixColumns([B)[B

    move-result-object p0

    .line 122
    const/16 v0, 0x10

    invoke-static {v0, p1, p0}, Lcom/android/internal/org/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    .line 123
    return-object p0
.end method

.method private static blacklist mixColumns([B)[B
    .registers 7
    .param p0, "s"    # [B

    .line 133
    array-length v0, p0

    new-array v0, v0, [B

    .line 134
    .local v0, "out":[B
    const/4 v1, 0x0

    .line 135
    .local v1, "j":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5
    const/4 v3, 0x4

    if-ge v2, v3, :cond_be

    .line 137
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .local v3, "j":I
    mul-int/lit8 v4, v2, 0x4

    aget-byte v4, p0, v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v4

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 138
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "j":I
    .restart local v1    # "j":I
    mul-int/lit8 v4, v2, 0x4

    aget-byte v4, p0, v4

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 139
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "j":I
    .restart local v3    # "j":I
    mul-int/lit8 v4, v2, 0x4

    aget-byte v4, p0, v4

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v1

    .line 140
    add-int/lit8 v1, v3, 0x1

    .end local v3    # "j":I
    .restart local v1    # "j":I
    mul-int/lit8 v4, v2, 0x4

    aget-byte v4, p0, v4

    invoke-static {v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v4

    mul-int/lit8 v5, v2, 0x4

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p0, v5

    invoke-static {v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_5

    .line 142
    .end local v2    # "i":I
    :cond_be
    return-object v0
.end method

.method static blacklist mulX(B)B
    .registers 3
    .param p0, "p"    # B

    .line 128
    and-int/lit8 v0, p0, 0x7f

    shl-int/lit8 v0, v0, 0x1

    and-int/lit16 v1, p0, 0x80

    shr-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method static blacklist sBox(B)B
    .registers 3
    .param p0, "x"    # B

    .line 82
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->S:[[B

    and-int/lit16 v1, p0, 0xff

    ushr-int/lit8 v1, v1, 0x4

    aget-object v0, v0, v1

    and-int/lit8 v1, p0, 0xf

    aget-byte v0, v0, v1

    return v0
.end method

.method static blacklist shiftRows([B)[B
    .registers 34
    .param p0, "s"    # [B

    .line 109
    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v2, 0x5

    aget-byte v3, p0, v2

    const/16 v4, 0xa

    aget-byte v5, p0, v4

    const/16 v6, 0xf

    aget-byte v7, p0, v6

    const/4 v8, 0x4

    aget-byte v9, p0, v8

    const/16 v10, 0x9

    aget-byte v11, p0, v10

    const/16 v12, 0xe

    aget-byte v13, p0, v12

    const/4 v14, 0x3

    aget-byte v15, p0, v14

    const/16 v16, 0x8

    aget-byte v17, p0, v16

    const/16 v18, 0xd

    aget-byte v19, p0, v18

    const/16 v20, 0x2

    aget-byte v21, p0, v20

    const/16 v22, 0x7

    aget-byte v23, p0, v22

    const/16 v24, 0xc

    aget-byte v25, p0, v24

    const/16 v26, 0x1

    aget-byte v27, p0, v26

    const/16 v28, 0x6

    aget-byte v29, p0, v28

    const/16 v30, 0xb

    aget-byte v31, p0, v30

    move/from16 v32, v0

    const/16 v0, 0x10

    new-array v0, v0, [B

    aput-byte v1, v0, v32

    aput-byte v3, v0, v26

    aput-byte v5, v0, v20

    aput-byte v7, v0, v14

    aput-byte v9, v0, v8

    aput-byte v11, v0, v2

    aput-byte v13, v0, v28

    aput-byte v15, v0, v22

    aput-byte v17, v0, v16

    aput-byte v19, v0, v10

    aput-byte v21, v0, v4

    aput-byte v23, v0, v30

    aput-byte v25, v0, v24

    aput-byte v27, v0, v18

    aput-byte v29, v0, v12

    aput-byte v31, v0, v6

    return-object v0
.end method

.method static blacklist subBytes([B)[B
    .registers 4
    .param p0, "s"    # [B

    .line 87
    array-length v0, p0

    new-array v0, v0, [B

    .line 88
    .local v0, "out":[B
    const/4 v1, 0x0

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 89
    const/4 v1, 0x1

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 90
    const/4 v1, 0x2

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 91
    const/4 v1, 0x3

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 92
    const/4 v1, 0x4

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 93
    const/4 v1, 0x5

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 94
    const/4 v1, 0x6

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 95
    const/4 v1, 0x7

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 96
    const/16 v1, 0x8

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 97
    const/16 v1, 0x9

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 98
    const/16 v1, 0xa

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 99
    const/16 v1, 0xb

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 100
    const/16 v1, 0xc

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 101
    const/16 v1, 0xd

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 102
    const/16 v1, 0xe

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 103
    const/16 v1, 0xf

    aget-byte v2, p0, v1

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    .line 104
    return-object v0
.end method


# virtual methods
.method public blacklist getDigestSize()I
    .registers 2

    .line 147
    const/16 v0, 0x20

    return v0
.end method
