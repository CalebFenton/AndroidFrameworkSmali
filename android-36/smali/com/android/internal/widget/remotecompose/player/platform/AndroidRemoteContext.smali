.class public Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;
.super Lcom/android/internal/widget/remotecompose/core/RemoteContext;
.source "AndroidRemoteContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;
    }
.end annotation


# instance fields
.field blacklist mVarNameHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/RemoteContext;-><init>()V

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    return-void
.end method

.method private blacklist decodePreferringAlpha8([B)Landroid/graphics/Bitmap;
    .registers 5
    .param p1, "data"    # [B

    .line 290
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 291
    .local v0, "options":Landroid/graphics/BitmapFactory$Options;
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 292
    const/4 v1, 0x0

    array-length v2, p1

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist addClickArea(IIFFFFI)V
    .registers 18
    .param p1, "id"    # I
    .param p2, "contentDescriptionId"    # I
    .param p3, "left"    # F
    .param p4, "top"    # F
    .param p5, "right"    # F
    .param p6, "bottom"    # F
    .param p7, "metadataId"    # I

    .line 436
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 437
    .local v3, "contentDescription":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    move/from16 v9, p7

    invoke-virtual {v0, v9}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 438
    .local v8, "metadata":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    move v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addClickArea(ILjava/lang/String;FFFFLjava/lang/String;)V

    .line 439
    return-void
.end method

.method public blacklist addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "collection"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;

    .line 183
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->addCollection(ILcom/android/internal/widget/remotecompose/core/operations/utilities/ArrayAccess;)V

    .line 184
    return-void
.end method

.method public blacklist addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V
    .registers 3
    .param p1, "touchExpression"    # Lcom/android/internal/widget/remotecompose/core/TouchListener;

    .line 420
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->addTouchListener(Lcom/android/internal/widget/remotecompose/core/TouchListener;)V

    .line 421
    return-void
.end method

.method public blacklist clearDataOverride(I)V
    .registers 3
    .param p1, "id"    # I

    .line 317
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->clearDataOverride(I)V

    .line 318
    return-void
.end method

.method public blacklist clearFloatOverride(I)V
    .registers 3
    .param p1, "id"    # I

    .line 325
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->clearFloatOverride(I)V

    .line 326
    return-void
.end method

.method public blacklist clearIntegerOverride(I)V
    .registers 3
    .param p1, "id"    # I

    .line 321
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->clearIntegerOverride(I)V

    .line 322
    return-void
.end method

.method public blacklist clearNamedDataOverride(Ljava/lang/String;)V
    .registers 4
    .param p1, "dataName"    # Ljava/lang/String;

    .line 163
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 164
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 165
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearDataOverride(I)V

    .line 167
    .end local v0    # "id":I
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method

.method public blacklist clearNamedFloatOverride(Ljava/lang/String;)V
    .registers 4
    .param p1, "floatName"    # Ljava/lang/String;

    .line 136
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 137
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 138
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearFloatOverride(I)V

    .line 140
    .end local v0    # "id":I
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public blacklist clearNamedIntegerOverride(Ljava/lang/String;)V
    .registers 4
    .param p1, "integerName"    # Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 121
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearIntegerOverride(I)V

    .line 123
    .end local v0    # "id":I
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public blacklist clearNamedStringOverride(Ljava/lang/String;)V
    .registers 4
    .param p1, "stringName"    # Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 103
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 104
    .local v0, "id":I
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->clearDataOverride(I)V

    .line 106
    .end local v0    # "id":I
    :cond_15
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public blacklist getColor(I)I
    .registers 3
    .param p1, "id"    # I

    .line 399
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getColor(I)I

    move-result v0

    return v0
.end method

.method public blacklist getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;
    .registers 3
    .param p1, "id"    # I

    .line 193
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getDataMap(I)Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFloat(I)F
    .registers 3
    .param p1, "id"    # I

    .line 374
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public blacklist getInteger(I)I
    .registers 3
    .param p1, "id"    # I

    .line 389
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public blacklist getLong(I)J
    .registers 4
    .param p1, "id"    # I

    .line 394
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getObject(I)Ljava/lang/Object;
    .registers 3
    .param p1, "id"    # I

    .line 384
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getPathData(I)[F
    .registers 3
    .param p1, "instanceId"    # I

    .line 70
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getPathData(I)[F

    move-result-object v0

    return-object v0
.end method

.method public blacklist getShader(I)Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;
    .registers 3
    .param p1, "id"    # I

    .line 415
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    return-object v0
.end method

.method public blacklist getText(I)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # I

    .line 330
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getFromId(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hapticEffect(I)V
    .registers 3
    .param p1, "type"    # I

    .line 442
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->haptic(I)V

    .line 443
    return-void
.end method

.method public blacklist listensTo(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "variableSupport"    # Lcom/android/internal/widget/remotecompose/core/VariableSupport;

    .line 404
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->listenToVar(ILcom/android/internal/widget/remotecompose/core/VariableSupport;)V

    .line 405
    return-void
.end method

.method public blacklist loadAnimatedFloat(ILcom/android/internal/widget/remotecompose/core/operations/FloatExpression;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "animatedFloat"    # Lcom/android/internal/widget/remotecompose/core/operations/FloatExpression;

    .line 364
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    .line 365
    return-void
.end method

.method public blacklist loadBitmap(ISSII[B)V
    .registers 17
    .param p1, "imageId"    # I
    .param p2, "encoding"    # S
    .param p3, "type"    # S
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "data"    # [B

    .line 220
    move v4, p4

    move v8, p5

    move-object/from16 v9, p6

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v0

    if-nez v0, :cond_e5

    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, "image":Landroid/graphics/Bitmap;
    packed-switch p2, :pswitch_data_e6

    goto/16 :goto_e0

    .line 274
    :pswitch_12
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 275
    goto/16 :goto_e0

    .line 278
    :pswitch_1d
    :try_start_1d
    new-instance v0, Ljava/net/URL;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v9}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_2f
    .catch Ljava/net/MalformedURLException; {:try_start_1d .. :try_end_2f} :catch_39
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_2f} :catch_32

    move-object v1, v0

    .line 283
    goto/16 :goto_e0

    .line 281
    :catch_32
    move-exception v0

    .line 282
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 279
    .end local v0    # "e":Ljava/io/IOException;
    :catch_39
    move-exception v0

    .line 280
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 224
    .end local v0    # "e":Ljava/net/MalformedURLException;
    :pswitch_40
    packed-switch p3, :pswitch_data_f0

    :pswitch_43
    goto/16 :goto_df

    .line 229
    :pswitch_45
    invoke-direct {p0, v9}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->decodePreferringAlpha8([B)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 232
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap$Config;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_df

    .line 233
    nop

    .line 235
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 236
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    .line 234
    invoke-static {v0, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    .local v0, "alpha8Bitmap":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 239
    .local v2, "canvas":Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 240
    .local v3, "paint":Landroid/graphics/Paint;
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 243
    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 244
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 246
    move-object v1, v0

    .line 247
    .end local v0    # "alpha8Bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "paint":Landroid/graphics/Paint;
    goto :goto_df

    .line 250
    :pswitch_81
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 251
    array-length v0, v9

    div-int/lit8 v0, v0, 0x4

    new-array v2, v0, [I

    .line 252
    .local v2, "idata":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_8d
    array-length v3, v2

    if-ge v0, v3, :cond_ae

    .line 253
    mul-int/lit8 v3, v0, 0x4

    .line 254
    .local v3, "p":I
    aget-byte v5, v9, v3

    shl-int/lit8 v5, v5, 0x18

    add-int/lit8 v6, v3, 0x1

    aget-byte v6, v9, v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x2

    aget-byte v6, v9, v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    add-int/lit8 v6, v3, 0x3

    aget-byte v6, v9, v6

    or-int/2addr v5, v6

    aput v5, v2, v0

    .line 252
    .end local v3    # "p":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    .line 260
    .end local v0    # "i":I
    :cond_ae
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, p4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 261
    goto :goto_df

    .line 263
    .end local v2    # "idata":[I
    :pswitch_b6
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 264
    array-length v0, v9

    div-int/lit8 v0, v0, 0x4

    new-array v2, v0, [I

    .line 265
    .local v2, "bdata":[I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_c2
    array-length v3, v2

    if-ge v0, v3, :cond_d0

    .line 267
    const v3, 0x1010101

    aget-byte v5, v9, v0

    mul-int/2addr v5, v3

    aput v5, v2, v0

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_c2

    .line 269
    .end local v0    # "i":I
    :cond_d0
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move v7, p4

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    goto :goto_df

    .line 226
    .end local v2    # "bdata":[I
    :pswitch_d8
    const/4 v0, 0x0

    array-length v2, v9

    invoke-static {v9, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 227
    nop

    .line 272
    :cond_df
    :goto_df
    nop

    .line 285
    :goto_e0
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    .line 287
    .end local v1    # "image":Landroid/graphics/Bitmap;
    :cond_e5
    return-void

    :pswitch_data_e6
    .packed-switch 0x0
        :pswitch_40
        :pswitch_1d
        :pswitch_12
    .end packed-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_d8
        :pswitch_43
        :pswitch_b6
        :pswitch_81
        :pswitch_45
    .end packed-switch
.end method

.method public blacklist loadColor(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "color"    # I

    .line 359
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateColor(II)V

    .line 360
    return-void
.end method

.method public blacklist loadFloat(IF)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # F

    .line 335
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateFloat(IF)V

    .line 336
    return-void
.end method

.method public blacklist loadInteger(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 345
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateInteger(II)V

    .line 346
    return-void
.end method

.method public blacklist loadPathData(I[F)V
    .registers 4
    .param p1, "instanceId"    # I
    .param p2, "floatPath"    # [F

    .line 65
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putPathData(I[F)V

    .line 66
    return-void
.end method

.method public blacklist loadShader(ILcom/android/internal/widget/remotecompose/core/operations/ShaderData;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # Lcom/android/internal/widget/remotecompose/core/operations/ShaderData;

    .line 369
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    .line 370
    return-void
.end method

.method public blacklist loadText(ILjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->containsId(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 298
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->cacheData(ILjava/lang/Object;)V

    goto :goto_13

    .line 300
    :cond_e
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateData(ILjava/lang/Object;)V

    .line 302
    :goto_13
    return-void
.end method

.method public blacklist loadVariableName(Ljava/lang/String;II)V
    .registers 6
    .param p1, "varName"    # Ljava/lang/String;
    .param p2, "varId"    # I
    .param p3, "varType"    # I

    .line 89
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    new-instance v1, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public blacklist overrideData(ILjava/lang/Object;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 313
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideData(ILjava/lang/Object;)V

    .line 314
    return-void
.end method

.method public blacklist overrideFloat(IF)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # F

    .line 340
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideFloat(IF)V

    .line 341
    return-void
.end method

.method public blacklist overrideInt(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 309
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideInteger(II)V

    .line 310
    return-void
.end method

.method public blacklist overrideInteger(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # I

    .line 349
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideInteger(II)V

    .line 350
    return-void
.end method

.method public blacklist overrideText(II)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "valueId"    # I

    .line 353
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideText(ILjava/lang/String;)V

    .line 355
    return-void
.end method

.method public blacklist overrideText(ILjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideData(ILjava/lang/Object;)V

    .line 306
    return-void
.end method

.method public blacklist putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "map"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;

    .line 188
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->putDataMap(ILcom/android/internal/widget/remotecompose/core/operations/utilities/DataMap;)V

    .line 189
    return-void
.end method

.method public blacklist putObject(ILjava/lang/Object;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->updateObject(ILjava/lang/Object;)V

    .line 380
    return-void
.end method

.method public blacklist runAction(ILjava/lang/String;)V
    .registers 4
    .param p1, "id"    # I
    .param p2, "metadata"    # Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->performClick(Lcom/android/internal/widget/remotecompose/core/RemoteContext;ILjava/lang/String;)V

    .line 199
    return-void
.end method

.method public blacklist runNamedAction(ILjava/lang/Object;)V
    .registers 5
    .param p1, "id"    # I
    .param p2, "value"    # Ljava/lang/Object;

    .line 203
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->getText(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mDocument:Lcom/android/internal/widget/remotecompose/core/CoreDocument;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/CoreDocument;->runNamedAction(Ljava/lang/String;Ljava/lang/Object;)V

    .line 205
    return-void
.end method

.method public blacklist setNamedColorOverride(Ljava/lang/String;I)V
    .registers 5
    .param p1, "colorName"    # Ljava/lang/String;
    .param p2, "color"    # I

    .line 177
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 178
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v1, v0, p2}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->overrideColor(II)V

    .line 179
    return-void
.end method

.method public blacklist setNamedDataOverride(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .param p1, "dataName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 155
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 156
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 157
    .local v0, "id":I
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideData(ILjava/lang/Object;)V

    .line 159
    .end local v0    # "id":I
    :cond_15
    return-void
.end method

.method public blacklist setNamedFloatOverride(Ljava/lang/String;F)V
    .registers 4
    .param p1, "floatName"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 128
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 129
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 130
    .local v0, "id":I
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideFloat(IF)V

    .line 132
    .end local v0    # "id":I
    :cond_15
    return-void
.end method

.method public blacklist setNamedIntegerOverride(Ljava/lang/String;I)V
    .registers 4
    .param p1, "stringName"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 111
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 112
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 113
    .local v0, "id":I
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideInt(II)V

    .line 115
    .end local v0    # "id":I
    :cond_15
    return-void
.end method

.method public blacklist setNamedLong(Ljava/lang/String;J)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    .line 146
    .local v0, "entry":Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;
    if-eqz v0, :cond_17

    .line 147
    iget v1, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 148
    .local v1, "id":I
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;

    .line 149
    .local v2, "longConstant":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    invoke-virtual {v2, p2, p3}, Lcom/android/internal/widget/remotecompose/core/types/LongConstant;->setValue(J)V

    .line 151
    .end local v1    # "id":I
    .end local v2    # "longConstant":Lcom/android/internal/widget/remotecompose/core/types/LongConstant;
    :cond_17
    return-void
.end method

.method public blacklist setNamedStringOverride(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "stringName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mVarNameHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;

    iget v0, v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext$VarName;->mId:I

    .line 96
    .local v0, "id":I
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->overrideText(ILjava/lang/String;)V

    .line 98
    .end local v0    # "id":I
    :cond_15
    return-void
.end method

.method public blacklist updateOps()I
    .registers 2

    .line 409
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mRemoteComposeState:Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/remotecompose/core/RemoteComposeState;->getOpsToUpdate(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)I

    move-result v0

    return v0
.end method

.method public blacklist useCanvas(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 48
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    if-nez v0, :cond_c

    .line 49
    new-instance v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;-><init>(Lcom/android/internal/widget/remotecompose/core/RemoteContext;Landroid/graphics/Canvas;)V

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    goto :goto_18

    .line 52
    :cond_c
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/PaintContext;->reset()V

    .line 53
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mPaintContext:Lcom/android/internal/widget/remotecompose/core/PaintContext;

    check-cast v0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/remotecompose/player/platform/AndroidPaintContext;->setCanvas(Landroid/graphics/Canvas;)V

    .line 55
    :goto_18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mWidth:F

    .line 56
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/player/platform/AndroidRemoteContext;->mHeight:F

    .line 57
    return-void
.end method
